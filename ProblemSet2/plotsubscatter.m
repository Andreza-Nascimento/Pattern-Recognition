function plotsubscatter(varargin)
    % plotsubscatter(X1, X2, xlabel, ylabel, title)

    % narginchk(3, 6);
    addTitle = true;
    % addLegend = true;
    
    x1 = varargin{1};
    x2 = varargin{2};
    textxlab = varargin{3};
    textylab = varargin{4};
    titulo = varargin{5};
    
    fig = figure; clf

    scatter(x1,x2)

    hold on

    grid on

    % define figure properties
    opts.Colors     = get(groot,'defaultAxesColorOrder');
    opts.saveFolder = 'img/';
    opts.width      = 16;
    opts.height     = 10;
    opts.fontType   = 'Times';
    opts.fontSize   = 24.6;

    % add axis labels and title with centralization
    axis tight

    if addTitle
        title(titulo, 'HorizontalAlignment', 'center')
    end
    
    xlabel(textxlab, 'HorizontalAlignment', 'center')
    ylabel(textylab, 'HorizontalAlignment', 'center')
    
    % if addLegend
    %     legend(legendStr,'Location','best','FontSize',5);
    % end

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
    hold off