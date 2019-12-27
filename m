Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB32312B03D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 02:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wlma4A/d5BK+EepqflXTIGDi+45g7Jz8JNyT4lk4j/8=; b=KJ8Wksxr11KXGKm6W/ygDHipVq
	yXt/i3dXpSrnkVzA8WOOeG3tnDTZJxs6yUklSY6WJuj90RVJB1W437c0qjZxoOsldIGw+c0Bfsa47
	HXh1pEUMyVLHbqT2A0rtNNqQ2WEYGOBGS3sNWMdq7O50aUf5DyFljl7t3NkI3kNuJwtCr4Cm0wFpT
	qXjXH5as/3KHSV6IFfBHEe+o15de8gaHCh87dET4caNtL8itdwoePRrn/57CaSziSi2vAzqgbAo4S
	J4XgJ+Ef5nzhuHz2iyQ8z+3Q8vsbuhkoeLmg/jMJJ7reoDEriovGGS4F9ebKKowEqGiIp9PmfymMU
	BXqR1+VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikeVN-0006s1-5v; Fri, 27 Dec 2019 01:33:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikeVD-0006r5-73
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 01:33:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7E912080D;
 Fri, 27 Dec 2019 01:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577410397;
 bh=5Yx3y9PHsdQln0iIJjCGPleS3otmhTjrs6Rx8bNhXJI=;
 h=In-Reply-To:References:From:To:Subject:Date:From;
 b=XI+Zisoxpm8SwwYJNDsvSQkTzHwpTwZsSfUEWofgzSM16z8W8FIw6ba4xmhq+xBK2
 fBHr9PUlNxRqckDZJeXlJj4ucC70RecitokBRLdysZ0XaCyun70yO9W/kHDpwt5w2v
 awLJaUtqmWgnr8E6hc2tLTjRoD90CRRlb9mflaOQ=
MIME-Version: 1.0
In-Reply-To: <1576752109-24497-6-git-send-email-sricharan@codeaurora.org>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-6-git-send-email-sricharan@codeaurora.org>
From: Stephen Boyd <sboyd@kernel.org>
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org, sricharan@codeaurora.org
Subject: Re: [PATCH V2 5/7] clk: qcom: Add ipq6018 Global Clock Controller
 support
User-Agent: alot/0.8.1
Date: Thu, 26 Dec 2019 17:33:16 -0800
Message-Id: <20191227013317.C7E912080D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_173319_300817_96F1C6A1 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2019-12-19 02:41:47)
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 3b33ef1..d0392f1 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -95,6 +95,14 @@ config IPQ_GCC_4019
>           Say Y if you want to use peripheral devices such as UART, SPI,
>           i2c, USB, SD/eMMC, etc.
>  
> +config IPQ_GCC_6018
> +       tristate "IPQ6018 Global Clock Controller"
> +       help
> +         Support for global clock controller on ipq6018 devices.
> +         Say Y if you want to use peripheral devices such as UART, SPI,
> +         i2c, USB, SD/eMMC, etc. Select this for the root clock
> +         of ipq6018.

What is the root clock of ipq6018?

> +
>  config IPQ_GCC_806X
>         tristate "IPQ806x Global Clock Controller"
>         help
> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
> new file mode 100644
> index 0000000..b6f0148
> --- /dev/null
> +++ b/drivers/clk/qcom/gcc-ipq6018.c
> @@ -0,0 +1,4674 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/err.h>
> +#include <linux/platform_device.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/clk-provider.h>
> +#include <linux/regmap.h>
> +
> +#include <linux/reset-controller.h>
> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
> +#include <dt-bindings/reset/qcom,gcc-ipq6018.h>
> +
> +#include "common.h"
> +#include "clk-regmap.h"
> +#include "clk-pll.h"
> +#include "clk-rcg.h"
> +#include "clk-branch.h"
> +#include "clk-alpha-pll.h"
> +#include "clk-regmap-divider.h"
> +#include "clk-regmap-mux.h"
> +#include "reset.h"
> +
> +#define F(f, s, h, m, n) { (f), (s), (2 * (h) - 1), (m), (n) }
> +
> +enum {
> +       P_XO,
> +       P_BIAS_PLL,
> +       P_UNIPHY0_RX,
> +       P_UNIPHY0_TX,
> +       P_UNIPHY1_RX,
> +       P_BIAS_PLL_NSS_NOC,
> +       P_UNIPHY1_TX,
> +       P_PCIE20_PHY0_PIPE,
> +       P_USB3PHY_0_PIPE,
> +       P_GPLL0,
> +       P_GPLL0_DIV2,
> +       P_GPLL2,
> +       P_GPLL4,
> +       P_GPLL6,
> +       P_SLEEP_CLK,
> +       P_UBI32_PLL,
> +       P_NSS_CRYPTO_PLL,
> +       P_PI_SLEEP,
> +};
> +
> +static const struct clk_parent_data gcc_xo_gpll0_gpll0_out_main_div2[] = {
> +       { .fw_name = "xo", .name = "xo"},
> +       { .fw_name = "gpll0", .name = "gpll0"},
> +       { .fw_name = "gpll0_out_main_div2", .name = "gpll0_out_main_div2"},

Because we aren't migrating this from existing DT to new DT we should be
able to leave out .name in all these structs. That's the legacy fallback
mechanism used to migrate DT over to the new way.

> +};
> +
> +static const struct parent_map gcc_xo_gpll0_gpll0_out_main_div2_map[] = {
> +       { P_XO, 0 },
> +       { P_GPLL0, 1 },
> +       { P_GPLL0_DIV2, 4 },
> +};
> +
[...]
> +
> +static int gcc_ipq6018_probe(struct platform_device *pdev)
> +{
> +       int i, ret;
> +       struct regmap *regmap;
> +       struct clk *clk;
> +       struct device *dev = &pdev->dev;
> +
> +       regmap = qcom_cc_map(pdev, &gcc_ipq6018_desc);
> +       if (IS_ERR(regmap))
> +               return PTR_ERR(regmap);
> +
> +       for (i = 0; i < ARRAY_SIZE(gcc_ipq6018_hws); i++) {
> +               clk = devm_clk_register(&pdev->dev, gcc_ipq6018_hws[i]);
> +               if (IS_ERR(clk))
> +                       return PTR_ERR(clk);
> +       }
> +
> +       clk_register_fixed_rate(dev, "pcie20_phy0_pipe_clk", NULL, 0, 250000000);

Why do we need to register this? Can it come from DT then? Also what if
it fails? And what if really_probe fails? Then we'll need to undo this
registration. Ideally this is created somewhere else.

> +
> +       /* Disable SW_COLLAPSE for USB0 GDSCR */
> +       regmap_update_bits(regmap, 0x3e078, BIT(0), 0x0);
> +       /* Enable SW_OVERRIDE for USB0 GDSCR */
> +       regmap_update_bits(regmap, 0x3e078, BIT(2), BIT(2));
> +       /* Disable SW_COLLAPSE for USB1 GDSCR */
> +       regmap_update_bits(regmap, 0x3f078, BIT(0), 0x0);
> +       /* Enable SW_OVERRIDE for USB1 GDSCR */
> +       regmap_update_bits(regmap, 0x3f078, BIT(2), BIT(2));
> +
> +       /* SW Workaround for UBI Huyara PLL */
> +       regmap_update_bits(regmap, 0x2501c, BIT(26), BIT(26));
> +
> +       clk_alpha_pll_configure(&ubi32_pll_main, regmap, &ubi32_pll_config);
> +
> +       clk_alpha_pll_configure(&nss_crypto_pll_main, regmap,
> +                               &nss_crypto_pll_config);
> +
> +       ret = qcom_cc_really_probe(pdev, &gcc_ipq6018_desc, regmap);
> +
> +       dev_dbg(&pdev->dev, "Registered ipq6018 clock provider");

Please remove this and just return the result of really_probe.

> +
> +       return ret;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
