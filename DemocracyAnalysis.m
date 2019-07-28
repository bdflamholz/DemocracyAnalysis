clear all
close all
clc
load('DemocracyDataTable.mat')
countryNames=T.country_name;
resultsAccepted=T.v2elaccept_osp;
assumedOffice=T.v2elasmoff_osp;
electionFF=T.v2elfrfair_osp;
suffrage=T.v2asuffrage;
femaleSuffrage=T.v2elfemrst;
suffrageLevel=T.v2elgvsuflvl;
resultsAcceptedVsAssumedOffice=[];
for i=1:size(resultsAccepted,1)
    if ~isnan(resultsAccepted(i))
        resultsAcceptedVsAssumedOffice=[resultsAcceptedVsAssumedOffice;...
                                        resultsAccepted(i) assumedOffice(i)...
                                        electionFF(i) suffrage(i)...
                                        femaleSuffrage(i)];
    end
end
% resAcc=rescale(resultsAcceptedVsAssumedOffice(:,1),-1,1);
% assOff=rescale(resultsAcceptedVsAssumedOffice(:,2),-1,1);
% elecFF=rescale(resultsAcceptedVsAssumedOffice(:,3),-1,1);
resAcc=resultsAcceptedVsAssumedOffice(:,1);
assOff=resultsAcceptedVsAssumedOffice(:,2);
elecFF=resultsAcceptedVsAssumedOffice(:,3);
suffrage=resultsAcceptedVsAssumedOffice(:,4);
femaleSuffrage=resultsAcceptedVsAssumedOffice(:,5);
scatter(resAcc,assOff)
xlabel('Measure of Acceptance of Election Results')
ylabel('Measure of winner Assumption of Office')
% T2=table(countryNames, resultsAccepted);
% [r,lags] = xcorr(resAcc,assOff);
figure()
scatter(elecFF,resAcc)
ylabel('Measure of Acceptance of Election Results')
xlabel('Measure of Free and fairness of Election')
figure()
scatter(elecFF,assOff)
ylabel('Measure of winner Assumption of Office')
xlabel('Measure of Free and fairness of Election')
figure()
scatter(suffrage,resAcc)
xlabel('Sufferage %')
ylabel('Measure of Acceptance of Election Results')
figure()
scatter(suffrage,assOff)
xlabel('Sufferage %')
ylabel('Measure of winner Assumption of Office')
figure()
scatter(femaleSuffrage,assOff)
xlabel('female Sufferage')
ylabel('Measure of winner Assumption of Office')
figure()
scatter(femaleSuffrage,resAcc)
xlabel('female Sufferage')
ylabel('Measure of Acceptance of Election Results')
