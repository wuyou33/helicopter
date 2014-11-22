function data = loadData(filename)
    rawData = load(filename);
    data.time = rawData(:,1);
    data.V = rawData(:,2:4)';
    data.W = rawData(:,5:7)';
    data.X = rawData(:,8:10)';
    data.Q = rawData(:,11:14)';
    data.rX = rawData(:,15:17)';
    data.rQ = rawData(:,18:21)';
    data.uV = rawData(:,22:24)';
    data.uW = rawData(:,25:27)';
