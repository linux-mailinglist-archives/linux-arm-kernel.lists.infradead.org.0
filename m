Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2291B4CC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UjXiscrGY3ByK/0X2Fx16n2WeVF6OQlBQ0S5kZH1aE=; b=Ra8gCqnO7gK1F2
	dN8zss8Oh9be2AOnliyITEaZgPoEkRGux3eX58iyJCT+8pIXHT8L/WjnKJ3OYQWvM9TuVH1jwBFb+
	iAoLeHogsKi4WD0HavoQSr4+D5KkXWk9HqYm+HVJ7HVFKLxplaj+2c+dS9Ex9lGW9Y99TEBG+V7zq
	zKxNJwbjEJLB9W2Sj4e99vrOETivin0i9yKp8V/qkLS+LQ5VMnqwZGzR8d7hJ+eDQgNvrSFdo3WG3
	rF5BJmOqvq5NkefTWvlJGsex9fbza/QWuQEIZ9eTQiJxoAc+tGbFV7d09Doe5Vn2Cix5nRtDghVvP
	b/mXCJ44uVG02jNOTW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKGz-0000qI-Uq; Wed, 22 Apr 2020 18:39:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKGo-0000oq-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 18:38:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F2232075A;
 Wed, 22 Apr 2020 18:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587580730;
 bh=4RCEebdN3SKWIn8s+iOr8Vy+art0cBYVk74ItwVQ2+A=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=IsPzmCPmtlUBuzteTciUbcrZ+myoeIhym7uyO31Lm1heXh91RcZXgoFM2GesTo2/x
 lNfd2eyXs4cvWB3UVN+kaxMPF0qyl1tUL/AUfOgRnGqugkQR2mx1WUiBLT79VZErhA
 PZFpoXbBaICpEeWotJvbvVzT3gUvp6le2EDMvnzU=
MIME-Version: 1.0
In-Reply-To: <1586937773-5836-10-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-10-git-send-email-abel.vesa@nxp.com>
Subject: Re: [PATCH v3 09/13] clk: imx: Add audiomix clock controller support
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Date: Wed, 22 Apr 2020 11:38:49 -0700
Message-ID: <158758072945.163502.17393357985434075011@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_113850_657481_FA9C6899 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2020-04-15 01:02:49)
> diff --git a/drivers/clk/imx/clk-audiomix.c b/drivers/clk/imx/clk-audiomix.c
> new file mode 100644
> index 00000000..aa48b06
> --- /dev/null
> +++ b/drivers/clk/imx/clk-audiomix.c
> @@ -0,0 +1,175 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/clock/imx8mp-clock.h>
> +#include <linux/clk.h>

Include <linux/clk-provider.h> because this is a clk provider.

> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>

Is this include used?

> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#include "clk.h"
> +
> +static int shared_count_pdm;
> +static struct clk_hw **hws;
> +static struct clk_hw_onecell_data *clk_hw_data;
> +static uint32_t audiomix_clk_saved_regs[14];
> +static struct clk *clk_audio_root;
> +static struct clk *clk_audio_ahb;
> +static struct clk *clk_audio_axi_div;
> +
> +static const struct imx_pll14xx_rate_table imx_audiomix_sai_pll_tbl[] = {
> +       PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> +};
> +
> +static const struct imx_pll14xx_clk imx_audiomix_sai_pll = {
> +       .type = PLL_1443X,
> +       .rate_table = imx_audiomix_sai_pll_tbl,
> +};
> +
> +static const char * const imx_sai_mclk2_sels[] = {"sai1", "sai2", "sai3", "dummy",
> +                                       "sai5", "sai6", "sai7", "dummy",
> +                                       "dummy", "dummy", "dummy",
> +                                       "dummy", "dummy", "dummy", "dummy"};
> +static const char * const imx_sai1_mclk1_sels[] = {"sai1", "dummy", };
> +static const char * const imx_sai2_mclk1_sels[] = {"sai2", "dummy", };
> +static const char * const imx_sai3_mclk1_sels[] = {"sai3", "dummy", };
> +static const char * const imx_sai5_mclk1_sels[] = {"sai5", "dummy", };
> +static const char * const imx_sai6_mclk1_sels[] = {"sai6", "dummy", };
> +static const char * const imx_sai7_mclk1_sels[] = {"sai7", "dummy", };
> +static const char * const imx_pdm_sels[] = {"pdm", "sai_pll_div2", "dummy", "dummy" };
> +static const char * const imx_sai_pll_ref_sels[] = {"osc_24m", "dummy", "dummy", "dummy", };
> +static const char * const imx_sai_pll_bypass_sels[] = {"sai_pll", "sai_pll_ref_sel", };
> +
> +static int imx_audiomix_clk_probe(struct platform_device *pdev)
[..]
> +
> +       /* unbypass the pll */
> +       clk_hw_set_parent(hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS],
> +                               hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL]);
> +
> +       imx_check_clk_hws(hws, IMX8MP_CLK_AUDIOMIX_END);
> +
> +       of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
> +                               clk_hw_data);

What if this fails?

> +
> +       return 0;
> +}
> +
> +static const struct of_device_id imx_audiomix_clk_of_match[] = {
> +       { .compatible = "fsl,imx8mp-audiomix-clk" },
> +       { /* Sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_audiomix_clk_of_match);
> +
> +

Nitpick: Remove double newline?

> +static struct platform_driver imx_audiomix_clk_driver = {
> +       .probe = imx_audiomix_clk_probe,
> +       .driver = {
> +               .name = "imx-audiomix-clk",
> +               .of_match_table = of_match_ptr(imx_audiomix_clk_of_match),

Add suppress_bind_attr here so that this can't be removed from
userspace?

> +       },
> +};
> +module_platform_driver(imx_audiomix_clk_driver);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
