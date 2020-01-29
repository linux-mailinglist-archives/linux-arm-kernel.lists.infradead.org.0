Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ADC14C600
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 06:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgYgij9iABKmdgLrPrva+rfXi4Zaw9rfW3hk6fR8M0c=; b=gX6SB4r0Zz6Lw/
	cXbcxia4Xhx6P/0oAoe3xzdtBV3eQ6yI223gHGbz09rb65iJFZxUXR/Gy1IO8LmNM6KbREPKRNpra
	4adJ5CJkwtUETewnqmOHOy6MbDfgIC9oNdqUfLXI3NHbsNokc1uKbjYKoAi165CoXp89HoGHp4lEP
	cz4BZeBc/ppnu/0/WObDM2lGiPNJwSfOwF14Uyr52iOPEkd8lfSkVkZuvRbP/DldCo9nly24+atbF
	APiIIbSvwXcDnvr88s3BiwOc4GIQISaLi47bGsKjOsx0vJL+LG3CYdSKmtDap/hkPPKV4mwjThTcR
	NHr6ebEI8HLeIE5sx4Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwg85-00048C-6m; Wed, 29 Jan 2020 05:43:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwg7r-00047L-3P; Wed, 29 Jan 2020 05:42:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F8CD2071E;
 Wed, 29 Jan 2020 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580276573;
 bh=Srd47iZ1QD/K9zqx4GrY3uF68yiZ8dAcEhHeATBX5WM=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=aON+qyPEkoC+i3w9hHfhBnQMMCC8gdc2FyD3ftJl+KIQjg5hT3qY4pAVyVFVtHFwE
 vegrZjwjTPkd/TuQ+bPcYyDPxRuBF8tcCiWX7mpMbeNo0XrVbaKeZGeDl3oKZhsWGX
 duq6HMmRLplmAKTFD74a9bRkU4eeNtjv9BA+mztw=
MIME-Version: 1.0
In-Reply-To: <20200116080440.118679-6-jian.hu@amlogic.com>
References: <20200116080440.118679-1-jian.hu@amlogic.com>
 <20200116080440.118679-6-jian.hu@amlogic.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 5/5] clk: meson: a1: add support for Amlogic A1
 Peripheral clock driver
To: Jerome Brunet <jbrunet@baylibre.com>, Jian Hu <jian.hu@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 21:42:52 -0800
Message-Id: <20200129054253.6F8CD2071E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_214255_165351_B85B679D 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jian Hu (2020-01-16 00:04:40)
> diff --git a/drivers/clk/meson/a1.c b/drivers/clk/meson/a1.c
> new file mode 100644
> index 000000000000..2cf20ae1db75
> --- /dev/null
> +++ b/drivers/clk/meson/a1.c
> @@ -0,0 +1,2249 @@
[...]
> +       &a1_ceca_32k_clkout,
> +       &a1_cecb_32k_clkin,
> +       &a1_cecb_32k_div,
> +       &a1_cecb_32k_sel_pre,
> +       &a1_cecb_32k_sel,
> +       &a1_cecb_32k_clkout,
> +};
> +
> +static struct regmap_config clkc_regmap_config = {

Can this be const?

> +       .reg_bits       = 32,
> +       .val_bits       = 32,
> +       .reg_stride     = 4,
> +};
> +
> +static int meson_a1_periphs_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct resource *res;
> +       void __iomem *base;
> +       struct regmap *map;
> +       int ret, i;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +
> +       base = devm_ioremap_resource(dev, res);

Can you use the combination function that does the get resource and
ioremap in one function?

> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       map = devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
> +       if (IS_ERR(map))
> +               return PTR_ERR(map);
> +
> +       /* Populate regmap for the regmap backed clocks */

Seems like a useless comment.

> +       for (i = 0; i < ARRAY_SIZE(a1_periphs_regmaps); i++)
> +               a1_periphs_regmaps[i]->map = map;
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
