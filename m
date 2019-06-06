Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE337EDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 22:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BY2oCbFkpN6kkBHpiMEB9jzZtppCQ5V4sqr78AruOMw=; b=NP1dmox9g2mAa5
	1E5d/1bsbWvVeEkihh5L2o1+W5OvrkgqaEEcDLQnkBghrzfwe6CvZ+4DvFsrxqMFPjDGjoKX8r00l
	putqii0NQ3TepQp+L4Z+ioS1oXRw/F0rGwtQvZwwN990A3amGSoFdHgNw1JUHJww2kpH2DREXn74x
	hSAt3QjqEGL+fhggprflr89/w8TCE/XsuhLT8k31hsC/8BlFi24uHjOzL3jzVOkHdRTZr49RsdC5x
	TkUF1PyGzCJFDn41G270Qq6dCaf28moalYquqzBMUElSdZE/t8geYHtr8LEykefPlvkLk4tUeSQ3Z
	CLYiqq7TJr1B8B+fmJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYz4C-0004uv-Nk; Thu, 06 Jun 2019 20:32:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYz43-0004uT-Am; Thu, 06 Jun 2019 20:32:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 859CE2083E;
 Thu,  6 Jun 2019 20:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559853165;
 bh=OounUXk+tiGTpkzzL2Iid2RFnzsNDeTISBGebz6VV+M=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=BiLlxVjg9desT3+bE1paeuqsPhiUC04uM5H5zBTqsafuvc/bwzV9eKH+No2R6r91+
 0zZageNyUBF3QjjpIzDd6/bxki9FupkETWwUMm+kGLtHPNJNIqPxHDJ41VDsQRkqyO
 1EYJSUtWLBrZgQNcCHwOJ86g0OBw7rzj4s5DQhKU=
MIME-Version: 1.0
In-Reply-To: <1556607888-10301-2-git-send-email-yong.liang@mediatek.com>
References: <1556607888-10301-1-git-send-email-yong.liang@mediatek.com>
 <1556607888-10301-2-git-send-email-yong.liang@mediatek.com>
To: Yong Liang <yong.liang@mediatek.com>, chunhui.dai@mediatek.com,
 drinkcat@chromium.org, eddie.huang@mediatek.com, erin.lo@mediatek.com,
 jamesjj.liao@mediatek.com, jasu@njomotys.info, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, owen.chen@mediatek.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, weiyi.lu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] clk: reset: Modify reset-controller driver
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 13:32:44 -0700
Message-Id: <20190606203245.859CE2083E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_133247_403787_AA1BF8E0 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Yong Liang (2019-04-30 00:04:48)
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Set reset signal by a register and clear reset signal by another register for 8183.

Wrap this at the appropriate line length. Read the submitting patches
doc for more help with this.

> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
> 
> Base on https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git branch clk-next and https://patchwork.kernel.org/patch/10856987/

You can use git format-patch --base=<commit> with newer git to indicate
this stuff. Please consider using that.

> diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> index 9d86510..ea28587 100644
> --- a/drivers/clk/mediatek/clk-mt8183.c
> +++ b/drivers/clk/mediatek/clk-mt8183.c
> @@ -1204,13 +1204,21 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
>  {
>         struct clk_onecell_data *clk_data;
>         struct device_node *node = pdev->dev.of_node;
> +       int r;
>  
>         clk_data = mtk_alloc_clk_data(CLK_INFRA_NR_CLK);
>  
>         mtk_clk_register_gates(node, infra_clks, ARRAY_SIZE(infra_clks),
>                 clk_data);
>  
> -       return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       if (r)
> +               dev_err(&pdev->dev,
> +                       "%s(): could not register clock provider: %d\n",__func__, r);
> +
> +       mtk_register_reset_controller_set_clr(node, 4, 0x120);

We still do this if we can't register the clks? Why?

> +
> +       return r;
>  }
>  
>  static int clk_mt8183_mcu_probe(struct platform_device *pdev)
> diff --git a/drivers/clk/mediatek/clk-mtk.h b/drivers/clk/mediatek/clk-mtk.h
> index 33ab173..7a74a54 100644
> --- a/drivers/clk/mediatek/clk-mtk.h
> +++ b/drivers/clk/mediatek/clk-mtk.h
> @@ -248,4 +248,7 @@ struct clk *mtk_clk_register_ref2usb_tx(const char *name,
>  void mtk_register_reset_controller(struct device_node *np,
>                         unsigned int num_regs, int regofs);
>  
> +void mtk_register_reset_controller_set_clr(struct device_node *np,
> +       unsigned int num_regs, int regofs);
> +
>  #endif /* __DRV_CLK_MTK_H */
> diff --git a/drivers/clk/mediatek/reset.c b/drivers/clk/mediatek/reset.c
> index d3551d5..ee70798 100644
> --- a/drivers/clk/mediatek/reset.c
> +++ b/drivers/clk/mediatek/reset.c
> @@ -27,6 +27,21 @@ struct mtk_reset {
>         struct reset_controller_dev rcdev;
>  };
>  
> +static int mtk_reset_assert_set_clr(struct reset_controller_dev *rcdev,
> +       unsigned long id)
> +{
> +       struct mtk_reset *data = container_of(rcdev, struct mtk_reset, rcdev);
> +       return regmap_write(data->regmap, data->regofs + ((id / 32) << 4), 1);
> +}
> +
> +static int mtk_reset_deassert_set_clr(struct reset_controller_dev *rcdev,
> +       unsigned long id)
> +{
> +       struct mtk_reset *data = container_of(rcdev, struct mtk_reset, rcdev);
> +       return regmap_write(data->regmap,
> +               data->regofs + ((id / 32) << 4) + 0x4, 1);
> +}

Sorry, the above two are hard to read. Can you add some newlines?

static int mtk_reset_assert_set_clr(struct reset_controller_dev *rcdev,
       unsigned long id)
{
       struct mtk_reset *data = container_of(rcdev, struct mtk_reset, rcdev);
       unsigned int reg = data->regofs + ((id / 32) << 4);

       return regmap_write(data->regmap, reg, 1);
}

static int mtk_reset_deassert_set_clr(struct reset_controller_dev *rcdev,
       unsigned long id)
{
       struct mtk_reset *data = container_of(rcdev, struct mtk_reset, rcdev);
       unsigned int reg = data->regofs + ((id / 32) << 4) + 0x4;

       return regmap_write(data->regmap, reg, 1);
}


> +
>  static int mtk_reset_assert(struct reset_controller_dev *rcdev,
>                               unsigned long id)
>  {
> @@ -57,14 +72,31 @@ static int mtk_reset(struct reset_controller_dev *rcdev,
>         return mtk_reset_deassert(rcdev, id);
>  }
>  
> +static int mtk_reset_set_clr(struct reset_controller_dev *rcdev,
> +       unsigned long id)
> +{
> +       int ret;

Nitpick: Add a newline between local variables and code.

> +       ret = mtk_reset_assert_set_clr(rcdev, id);
> +       if (ret)
> +               return ret;
> +       return mtk_reset_deassert_set_clr(rcdev, id);
> +}
> +
>  static const struct reset_control_ops mtk_reset_ops = {
>         .assert = mtk_reset_assert,
>         .deassert = mtk_reset_deassert,
>         .reset = mtk_reset,
>  };
>  
> -void mtk_register_reset_controller(struct device_node *np,
> -                       unsigned int num_regs, int regofs)
> +static const struct reset_control_ops mtk_reset_ops_set_clr = {
> +       .assert = mtk_reset_assert_set_clr,
> +               .deassert = mtk_reset_deassert_set_clr,
> +               .reset = mtk_reset_set_clr,

Something weird happened to the tabs and spaces here.

> +};
> +
> +void mtk_register_reset_controller_common(struct device_node *np,
> +                       unsigned int num_regs, int regofs,
> +                       const struct reset_control_ops *reset_ops)
>  {
>         struct mtk_reset *data;
>         int ret;
> diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> new file mode 100644
> index 0000000..f0d92af
> --- /dev/null
> +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> @@ -0,0 +1,89 @@
> +/*
> + * Copyright (c) 2017 MediaTek Inc.
> + * Author: Yong Liang, MediaTek
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.

Please use SPDX tags instead of this boilerplate.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
