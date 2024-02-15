function plotVE(varargin)
    % plotVE(VEi, VE, xlabel, ylabel, legend)

    % narginchk(3, 6);
    % addTitle = true;
    addLegend = true;
    
    x = varargin{1};
    y = varargin{2};
    textxlab = varargin{3};
    textylab = varargin{4};
    legendStr = varargin{5};
    % titulo = varargin{6};

    fig = figure; clf

    bar(x)

    hold on

    grid on

    ylim([0 1.2])
    stairs(y,'LineWidth',2)

    % define figure properties
    opts.Colors     = get(groot,'defaultAxesColorOrder');
    opts.saveFolder = 'img/';
    opts.width      = 16;
    opts.height     = 10;
    opts.fontType   = 'Times';
    opts.fontSize   = 24.6;

    % add axis labels and title with centralization
    axis tight

    % if addTitle
    %     title(titulo, 'HorizontalAlignment', 'center')
    % end
    
    xlabel(textxlab, 'HorizontalAlignment', 'center')
    ylabel(textylab, 'HorizontalAlignment', 'center')
    
    if addLegend
        legend(legendStr,'Location','best','FontSize',5);
    end

    % scaling
    fig.Units               = 'centimeters';
    fig.Position(3)         = opts.width;
    fig.Position(4)         = opts.height;

    % set text properties
    set(fig.Children, ...
        'FontName',     'Times', ...
        'FontSize',     14);

    % remove unnecessary white space
    set(gca,'LooseInset',max(get(gca,'TightInset'), 0.02))

    CumulativeExplainedVarianceVEq = findobj(gcf, "DisplayName", "Cumulative Explained Variance - VE(q)");
    datatip(CumulativeExplainedVarianceVEq,4,0.9647);
    datatip(CumulativeExplainedVarianceVEq,3,0.9225);
    datatip(CumulativeExplainedVarianceVEq,2,0.8472);

    hold off
end