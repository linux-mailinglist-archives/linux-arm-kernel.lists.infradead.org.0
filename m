Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2F53ACC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZ2x6HAIGhrfi+D/RxsAaRC1BMVuGY0MJ1fyGuevgTw=; b=IjjOwbKTvomoLr
	sPrvb5w/5lePnPNAQBvbdlIH1n4acsbp9/A+D1jnMYV1w57CAfQzHvrIrqGsBjWH9KPVHP5Vqwb0G
	q8WY7tEPPszYJ4NJofGzmui6xe0U9Vx1KgjFqFoZNMh5ApBQ3jCQYIvm78pKyBKT4WbbKUyjnoOla
	PDlRLqMBIDA7xDDS+p7fTh2uEVesnSf2Vy7pwjD1PQooRHrl8Lq4tR4TOFvKEaqQSnnqi/3Qe/WNw
	eQWqw91J09ltZHoN7d7mY8Kj+MlNiENPIwzC0CdUbP8BBNxHA+tSSZUCQESSsPqj4INLkDY0Uf513
	1p76xlnS5V3sHNshHoow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9kU-0003mX-Ik; Mon, 10 Jun 2019 02:09:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9kL-0003m0-Hy; Mon, 10 Jun 2019 02:09:18 +0000
X-UUID: 91462e071ff1404c8a41618b2578b227-20190609
X-UUID: 91462e071ff1404c8a41618b2578b227-20190609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1933198069; Sun, 09 Jun 2019 18:09:12 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 19:09:10 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 10:09:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 10:09:09 +0800
Message-ID: <1560132549.16837.1.camel@mtksdaap41>
Subject: Re: [PATCH v1] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Mon, 10 Jun 2019 10:09:09 +0800
In-Reply-To: <20190607175922.6D5F5208C0@mail.kernel.org>
References: <1559877112-21064-1-git-send-email-weiyi.lu@mediatek.com>
 <20190607175922.6D5F5208C0@mail.kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_190917_601711_477A75FE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dehui Sun <dehui.sun@mediatek.com>, Rob Herring <robh@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-07 at 10:59 -0700, Stephen Boyd wrote:
> Quoting Weiyi Lu (2019-06-06 20:11:52)
> > diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> > index 9d86510..a8f50bc 100644
> > --- a/drivers/clk/mediatek/clk-mt8183.c
> > +++ b/drivers/clk/mediatek/clk-mt8183.c
> > @@ -1167,37 +1169,62 @@ static int clk_mt8183_apmixed_probe(struct platform_device *pdev)
> >         return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> >  }
> >  
> > +static struct clk_onecell_data *top_clk_data;
> > +
> > +static void clk_mt8183_top_init_early(struct device_node *node)
> > +{
> > +       int i;
> > +
> > +       if (!top_clk_data) {
> 
> Is this function ever called more than once? I believe the answer is no
> so this check should be removed.
> 

Thanks for reminding. I'll fix in next version.

> > +               top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
> > +
> > +               for (i = 0; i < CLK_TOP_NR_CLK; i++)
> > +                       top_clk_data->clks[i] = ERR_PTR(-EPROBE_DEFER);
> > +       }
> > +
> > +       mtk_clk_register_factors(top_early_divs, ARRAY_SIZE(top_early_divs),
> > +                       top_clk_data);
> > +
> > +       of_clk_add_provider(node, of_clk_src_onecell_get, top_clk_data);
> > +}
> > +
> > +CLK_OF_DECLARE_DRIVER(mt8183_topckgen, "mediatek,mt8183-topckgen",
> > +                       clk_mt8183_top_init_early);
> > +
> >  static int clk_mt8183_top_probe(struct platform_device *pdev)
> >  {
> >         struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >         void __iomem *base;
> > -       struct clk_onecell_data *clk_data;
> >         struct device_node *node = pdev->dev.of_node;
> >  
> >         base = devm_ioremap_resource(&pdev->dev, res);
> >         if (IS_ERR(base))
> >                 return PTR_ERR(base);
> >  
> > -       clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
> > +       if (!top_clk_data)
> > +               top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
> 
> And then this can be removed because top_clk_data must be allocated at
> this point.
> 

I'll fix in next version. Many thanks.

> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
