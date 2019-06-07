Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EF8393CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 19:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tw000R5rdpTM3iUP9JswJbbKVX5rz/OB1pgsC1yO26c=; b=p0Nr8lly6HgGWb
	Pp4oo8urnknns88u4r+pSIyX0DIGSvPZDyjWccFMJaUC23V5t8EQjRlP7nMJUgjmBmQbBy8MdmDQ8
	KTahU7JUGFquKwMlsWqLmRwFEmYQGRKlP+QhB9qPEvVDXwA9vjVedeVDg55LXT5UiWCf7yKYCgS7Z
	W8bQQl2xF6X7vYDrJ/Udw52U31Lu/1UxDr+d6uAv0Dg99VDQ8hwLKttYl0unmF8k/3VBQkBWOLz46
	HVQJnBOPGwkGExl2R3XUzQHoCvnFx6c+h1kpxbN6WSji1V/T2q9afuwQmTf3SVxevHChkTmqKOH9Y
	vI9aUPd236V9fx8knZAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJ9H-0003Jq-W5; Fri, 07 Jun 2019 17:59:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJ99-0003JS-G2; Fri, 07 Jun 2019 17:59:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D5F5208C0;
 Fri,  7 Jun 2019 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559930362;
 bh=9dKMZGCodIC7GBJF2KTazZroE2B9B8QOzrgq3LpSTsQ=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=XfxpMEW6MNIwAhNik2mOzmu24+FyFp1A0uIkPo4OOO1D/9Ahk2YJUYbZwD0O9zBtn
 QAoVzL/Dqg/4eXuX9bHK0ezkVRuJncdkBsJ7JrDMJAaDJ2o5ycXYr4yU+AIQcWtHLh
 DTVFeJtIA/PeklsvZn15h5uskwVM/3/96b0yt+9w=
MIME-Version: 1.0
In-Reply-To: <1559877112-21064-1-git-send-email-weiyi.lu@mediatek.com>
References: <1559877112-21064-1-git-send-email-weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 10:59:21 -0700
Message-Id: <20190607175922.6D5F5208C0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_105923_554544_AC9778C7 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, James Liao <jamesjj.liao@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-06-06 20:11:52)
> diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> index 9d86510..a8f50bc 100644
> --- a/drivers/clk/mediatek/clk-mt8183.c
> +++ b/drivers/clk/mediatek/clk-mt8183.c
> @@ -1167,37 +1169,62 @@ static int clk_mt8183_apmixed_probe(struct platform_device *pdev)
>         return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
>  }
>  
> +static struct clk_onecell_data *top_clk_data;
> +
> +static void clk_mt8183_top_init_early(struct device_node *node)
> +{
> +       int i;
> +
> +       if (!top_clk_data) {

Is this function ever called more than once? I believe the answer is no
so this check should be removed.

> +               top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
> +
> +               for (i = 0; i < CLK_TOP_NR_CLK; i++)
> +                       top_clk_data->clks[i] = ERR_PTR(-EPROBE_DEFER);
> +       }
> +
> +       mtk_clk_register_factors(top_early_divs, ARRAY_SIZE(top_early_divs),
> +                       top_clk_data);
> +
> +       of_clk_add_provider(node, of_clk_src_onecell_get, top_clk_data);
> +}
> +
> +CLK_OF_DECLARE_DRIVER(mt8183_topckgen, "mediatek,mt8183-topckgen",
> +                       clk_mt8183_top_init_early);
> +
>  static int clk_mt8183_top_probe(struct platform_device *pdev)
>  {
>         struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         void __iomem *base;
> -       struct clk_onecell_data *clk_data;
>         struct device_node *node = pdev->dev.of_node;
>  
>         base = devm_ioremap_resource(&pdev->dev, res);
>         if (IS_ERR(base))
>                 return PTR_ERR(base);
>  
> -       clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
> +       if (!top_clk_data)
> +               top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);

And then this can be removed because top_clk_data must be allocated at
this point.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
