%%
clc;
clear all;
load('project_559');
 
 
%%
%%---------------------------------------
% RACE
u = unique(race);
for i = 1:length(u)
    race2(strcmp(u(i),race)) = i;
end
 
for j = 1:length(race2)
    if race2(j) == 1
        race2(j) = mode(race2);
    end
end
 
race2 = race2';
race2_1 = zeros(length(race2),1);
race2_2 = zeros(length(race2),1);
race2_3 = zeros(length(race2),1);
race2_4 = zeros(length(race2),1);
race2_5 = zeros(length(race2),1);
 
race2_1(race2(:)==2)=1;race2_2(race2(:)==3)=1;
race2_3(race2(:)==4)=1;race2_4(race2(:)==5)=1;
race2_5(race2(:)==6)=1;
 
new_race = [race2_1 race2_2 race2_3 race2_4 race2_5];
 
 
%%
% GENDER
u = unique(gender);
for i = 1:length(u)
    gender2(strcmp(u(i),gender)) = i;
end
 
length(find(gender2==1))/length(find(gender2==2));
 
for j = 1:length(gender2)
    if gender2(j) == 3;
        gender2(j) = 1;
    end
end
 
gender2 = gender2';
 
gender2_1 = zeros(length(gender2),1);
 
gender2_1(gender2(:)==1)=1;
 
new_gender = gender2_1;
 
%%
% AGE
u = unique(age);
for i = 1:length(u)
    age2(strcmp(u(i),age)) = i;
end
 
age2 = age2';
 
ten=zeros(length(age2),1);
twenty=zeros(length(age2),1);
thirty=zeros(length(age2),1);
forty=zeros(length(age2),1);
fifty=zeros(length(age2),1);
sixty=zeros(length(age2),1);
seventy=zeros(length(age2),1);
eighty=zeros(length(age2),1);
ninety=zeros(length(age2),1);
hundred=zeros(length(age2),1);
 
ten(age2==1)=1;twenty(age2==2)=1;thirty(age2==3)=1;forty(age2==4)=1;fifty(age2==5)=1;sixty(age2==6)=1;
seventy(age2==7)=1;eighty(age2==8)=1;ninety(age2==9)=1;hundred(age2==10)=1;
 
new_age = [ten twenty thirty forty fifty sixty seventy eighty ninety hundred];
 
 
%%
% WEIGHT - removed
 
%%
% ADMISSION TYPE ID
id1 = admission_type_id;
a = find(id1 == 5 | id1 == 6 | id1 == 8);
id_array1 = randperm(length(find(id1 == 5 | id1 == 6 | id1 == 8)),10396);
one = 0.6*length(id_array1);
id1(a(id_array1(1:6238)))=1;
id1(a(id_array1(6239:8317)))=2;
id1(a(id_array1(8317:10396)))=3;
 
id_1 = zeros(length(id1),1);
id_2 = zeros(length(id1),1);
id_3 = zeros(length(id1),1);
id_4 = zeros(length(id1),1);
id_5 = zeros(length(id1),1);
id_6 = zeros(length(id1),1);
id_7 = zeros(length(id1),1);
id_8 = zeros(length(id1),1);
 
id_1(id1(:)==1)=1;id_2(id1(:)==2)=1;id_3(id1(:)==3)=1;id_4(id1(:)==4)=1;id_5(id1(:)==5)=1;
id_6(id1(:)==6)=1;id_7(id1(:)==7)=1;id_8(id1(:)==8)=1;
 
new_admission_type_id = [id_1 id_2 id_3 id_4 id_5 id_6 id_7 id_8];
 
 
%%
% DISCHARGE DISPOSITION ID
id2 = discharge_disposition_id;
missing_values2 = find(discharge_disposition_id==18 | discharge_disposition_id==25);
id_array2 = randperm(length(missing_values2),length(missing_values2));
two = 0.6*length(id_array2);
id2(missing_values2(id_array2(1:2770)))=1;
id2(missing_values2(id_array2(2771:3411)))=3;
id2(missing_values2(id_array2(3412:end)))=6;
 
transferred_to_snf = zeros(length(id2),1);
back_home = zeros(length(id2),1);
health_service = zeros(length(id2),1);
short_term = zeros(length(id2),1);
inpatient = zeros(length(id2),1);
expired = zeros(length(id2),1);
rehab = zeros(length(id2),1);
 
transferred_to_snf(id2 == 1) = 1;
short_term(id2 == 2) = 1;
back_home(id2 == 3) = 1;
inpatient(id2 == 5) = 1;
health_service(id2 == 6) = 1;
expired(id2 == 11) = 1;
rehab(id2 == 22) = 1;
 
new_discharge_disposition_id  =[transferred_to_snf short_term back_home inpatient health_service expired rehab];
 
 
%%
% ADMISSION SOURCE ID
for i = 1:25
    occurrence3(i) = length(find(admission_source_id==i));
end
 
id3 = admission_source_id;
missing_values3 = find(admission_source_id==9 | admission_source_id==17 | admission_source_id==20);
id_array3 = randperm(length(missing_values3),length(missing_values3));
three1 = 0.56*length(id_array3);
three2 = 0.29*length(id_array3);
id3(missing_values3(id_array3(1:3957)))=7;
id3(missing_values3(id_array3(3958:6007)))=1;
id3(missing_values3(id_array3(6008:end)))=4;
 
source_id1 = zeros(length(admission_source_id),1);
source_id2 = zeros(length(admission_source_id),1);
source_id3 = zeros(length(admission_source_id),1);
source_id4 = zeros(length(admission_source_id),1);
source_id5 = zeros(length(admission_source_id),1);
 
 
source_id1(admission_source_id(:)==7)=1;
source_id2(admission_source_id(:)==1)=1;
source_id3(admission_source_id(:)==4)=1;
source_id4(admission_source_id(:)==2)=1;
source_id5(admission_source_id(:)==6)=1;
 
new_admission_source_id = [source_id1 source_id2 source_id3 source_id4 source_id5];
 
 
%%
% TIME IN HOSPITAL - retain as it is
 
%%
% PAYER CODE - removed
 
%%
% MEDICAL SPECIALITY - removed
 
%%
% NUMBER OF LAB PROCEDURES, NUMBER OF PROCEDURES AND NUMBER OF MEDICATIONS - retained as it is
 
 
%%
% NUMBER OF INPATIENT, OUTPATIENT AND EMERGENCY VISITS - retained as it is
 
%%
% DIAGNOSIS - includes all three
ICD9_1 = zeros(19,2);
ICD9_1(1,:) = [0 139];ICD9_1(2,:) = [140 239];ICD9_1(3,:) = [240 279];
ICD9_1(4,:) = [280 289];ICD9_1(5,:) = [290 319];ICD9_1(6,:) = [320 389];
ICD9_1(7,:) = [390 459];ICD9_1(8,:) = [460 519];ICD9_1(9,:) = [520 579];
ICD9_1(10,:) = [580 629];ICD9_1(11,:) = [630 679];ICD9_1(12,:) = [680 709];
ICD9_1(13,:) = [710 739];ICD9_1(14,:) = [740 759];ICD9_1(15,:) = [760 779];
ICD9_1(16,:) = [780 799];ICD9_1(17,:) = [800 999];
 
a = cellfun(@(y) strcmp(y(1),'?'),diabeticdata);
%
b = cellfun(@(y) strcmp(y(1),'V'),diabeticdata);
%
c = cellfun(@(y) strcmp(y(1),'E'),diabeticdata);
 
diabeticdata(a==1) = cellstr('-20');
diabeticdata(b==1) = cellstr('-18');
diabeticdata(c==1) = cellstr('-19');
d = cellfun(@(x) str2double(x),diabeticdata);
 
for i = 1:17
    d(d>=ICD9_1(i,1) & d<=ICD9_1(i,2))=i;
    e(i) = length(find(d==i));
end
(max(e)/101766)*100
d(d==-20)=20;
d(d==-18)=18;
d(d==-19)=19;
 
 
 
new_d1 = zeros(101766,20);
new_d2 = zeros(101766,20);
new_d3 = zeros(101766,20);
for k = 1:20
    new_d1(d(:,1)==k,k)=1;
    new_d2(d(:,2)==k,k)=1;
    new_d3(d(:,3)==k,k)=1;
end
 
new_d = [new_d1 new_d2 new_d3];
 
%%
% NUMBER OF DIAGNOSIS - retain as it is
 
%%
% Insulin : 'Up'     = 1
%           'Steady' = 2
%           'Down'   = 3
%           'No'     = 4 or 0
u = unique(insulin);
for i = 1:length(u)
    new_insulin(strcmp(u(i),insulin)) = i;
end
 
for j = 1:length(new_insulin)
    if new_insulin(j) == 1
        new_insulin(j) = 3;
    elseif new_insulin(j) == 2
        new_insulin(j) = 0;
    elseif new_insulin(j) == 3
        new_insulin(j) = 2;
    else
        new_insulin(j) = 1;
    end
end
 
new_insulin = new_insulin';
 
insulin1 = zeros(length(new_insulin),1);
insulin2 = zeros(length(new_insulin),1);
insulin3 = zeros(length(new_insulin),1);
insulin4 = zeros(length(new_insulin),1);
 
insulin1(new_insulin(:) == 1) = 1;
insulin2(new_insulin(:) == 2) = 1;
insulin3(new_insulin(:) == 3) = 1;
insulin4(new_insulin(:) == 4) = 1;
 
insulin_new = [insulin1 insulin2 insulin3 insulin4];
 
 
%%
% CHANGE
new_change = zeros(length(change),1);
 
new_change(strcmp(change(:),'Ch')) = 1;
new_change(strcmp(change(:),'No')) = 0;
 
 
%%
% DIABETEDMED
 
new_diabetesMed = zeros(length(diabetesMed),1);
new_diabetesMed(strcmp(diabetesMed(:),'Yes')) = 1;
new_diabetesMed(strcmp(diabetesMed(:),'No')) = 0;
 
%%
 
new_final_project_data1 = [new_race new_gender new_age new_admission_type_id new_discharge_disposition_id new_admission_source_id];
new_final_project_data2 = [time_in_hospital num_lab_procedures num_procedures];
new_final_project_data3 = [num_medications number_emergency number_inpatient number_outpatient new_d number_diagnoses insulin_new new_change new_diabetesMed];
new_final_project_data = [new_final_project_data1 new_final_project_data2 new_final_project_data3];
 
%%
% READMITTED
new_readmitted = readmitted;
new_readmitted1 = cellfun(@(z) strcmp(z(1),'N'),readmitted);
new_readmitted2 = cellfun(@(z) strcmp(z(1),'>'),readmitted);
new_readmitted3 = cellfun(@(z) strcmp(z(1),'<'),readmitted);
 
new_readmitted(new_readmitted1==1) = cellstr('3');
new_readmitted(new_readmitted2==1) = cellstr('1');
new_readmitted(new_readmitted3==1) = cellstr('2');
 
label = cellfun(@(w) str2double(w),new_readmitted);
 
 
%%
finally = [patient_nbr new_final_project_data label];
finally_sort = sortrows(finally,112);
[C,IA,IC] = unique(finally_sort(:,1),'rows','first');
reduced_dataset = finally_sort(IA,:);
reduced_dataset(:,1) = [];
 
%%
    reduced_sort = sortrows(reduced_dataset,111);
 
class1(1:length(find(reduced_sort(:,111)==1))) = crossvalind('Kfold',length(find(reduced_sort(:,111)==1)),2);
class2(1:length(find(reduced_sort(:,111)==2))) = crossvalind('Kfold',length(find(reduced_sort(:,111)==2)),2);
class3(1:length(find(reduced_sort(:,111)==3))) = crossvalind('Kfold',length(find(reduced_sort(:,111)==3)),2);
 
class3(class3==2)=3;
class = [class1';class2';class3'];
dummy_model = [reduced_sort class];
 
 
for i = 1:71518
    if dummy_model(i,111) == dummy_model(i,112)
        final_model(i,:) = dummy_model(i,:);
    end
end
 
final_model( ~any(final_model,2), : ) = [];  %rows
train = final_model;
train(:,112) = [];
label1 = train(:,111);
train(:,111) = [];
 
for j = 1:71518
    if dummy_model(j,111) ~= dummy_model(j,112)
        test_model(j,:) = dummy_model(j,:);
    end
end
 
test_model( ~any(test_model,2), : ) = [];  %rows
test = test_model;
test(:,112) = [];
label2 = test(:,111);
test(:,111) = [];
 
%%
norm_train = zscore(train);
norm_test = zscore(test);
 
%%
% Maximal value method - minimum distance to class means classifier
 
means1 = mean(train(1:12070,:));
means2 = mean(train(12071:14392,:));
means3 = mean(train(14393:end,:));
means = [means1;means2;means3];
 
for i = 1:3
    DIST(:,i) = pdist2(test,means(i,:));
end
 
new_label = zeros(length(DIST),1);
 
for j = 1:length(DIST)
    if DIST(j,1) < DIST(j,2) && DIST(j,1) < DIST(j,3)
        new_label(j) = 1;
    elseif DIST(j,2) < DIST(j,1) && DIST(j,2) < DIST(j,3)
        new_label(j) = 2;
    elseif DIST(j,3) < DIST(j,1) && DIST(j,3) < DIST(j,2)
        new_label(j) = 3;
    end
end
 
accuracy = 0;
for k = 1:length(new_label)
    if new_label(k) == label2(k)
        accuracy = accuracy+1;
    end
end
 
display((accuracy/length(new_label))*100);
 
%%
% NORMALIZATION - finally train has 110 features/dimensions (degrees of freedom)
%                         test has 110 features
 
% Normalization between -1 and 1
% for i = 1:110
%     train_mean(i) = mean(train(:,i));
%     train_std(i) = std(train(:,i));
% end
%
% norm_train = zeros(size(train));
% for j = 1:110
%     norm_train(:,j) = (train(:,j) - train_mean(j))./train_std(j);
% end
%
% norm_test = zeros(size(test));
% for j = 1:110
%     norm_test(:,j) = (test(:,j) - train_mean(j))./train_std(j);
% end
 
 
% Normalization between 0 and 1
for i = 1:110
    minimum(i) = min(train(:,i));
    maximum(i) = max(train(:,i));
end
 
norm_train1 = zeros(size(train));
for j = 1:110
    norm_train1(:,j) = (train(:,j)-minimum(j))/(maximum(j)-minimum(j));
end
 
 
norm_test1 = zeros(size(test));
for k = 1:110
    norm_test1(:,k) = (test(:,k)-minimum(k))/(maximum(k)-minimum(k));
end
 
%%
model1 = fitcnb(train,label1,'DistributionNames','mvmn');
l1 = predict(model1,test);
[ m_f1, conf ] = classification_report( label2, l1, 1)
 
%%
model2 = fitcknn(train,label1,'NumNeighbors',15);
l2 = predict(model2,test);
[ m_f1, conf ] = classification_report( label2, l2, 1)
 
%%
model3 = fitctree(train,label1,'Prune','on');
l3 = predict(model3,test);
[ m_f1, conf ] = classification_report( label2, l3, 1)
 
%%
% Bagged trees and linear discriminant are from classification learner toolbox
 


