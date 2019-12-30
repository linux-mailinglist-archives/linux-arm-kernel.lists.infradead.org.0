Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6149812CDF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eqIS78cl02VnOFyUMb5BlxqVM/XUf0T6EesDP2/Y2b8=; b=g28w0Mx5NkLJVPxMA6W8+42flE
	6pjwR8Hf3fSJ2zf0a4cT1iCJ2p+vRrtfY821sdQPBqMrwD8TRWBm0XAcS4NgycrBnlIE1Gyj8WO91
	CKJJaTd+fG4RtE5DWZWZAPTaDsw6Q0xauFXJrx90dSCPUEaARPOXy1W+Wptk9mh4TDyDeSG5/Ss9C
	ClmW3OinDG1785Ln+s4yXoFJrLo69JoAN8u2+bSCVJskdxtruLbWbEp5X8rXf3GmI25H3854XAgvz
	6cV+bdOxhUZIQj2KVHxCYx+8qZhCNCEqtH7BlfPyw6NSKypjnBrqjYDgpqebifNypnPX2DpAn8FP7
	awK+50rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr11-0003jx-Bk; Mon, 30 Dec 2019 09:07:07 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr0i-0003hm-FE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:06:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577696809; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: To:
 Subject: Sender; bh=LV7xfSg7Fvcq4FbHammYw5/k3x8J77zufwq24k9cwiA=;
 b=Vh63mnHv4rKgRkXhUSINdPu+xBvKvG8gX5HtCUDLKJsHKgLyR8+4n5yM0zVkbkUzP2Vj5Bwh
 J69RO8pmt+CtvR1j3wl0m9v6INprlg2Wqyl/WpavbIn8bdGj/OPmQGw8XQNBGVHIn4l4AZds
 CoSno5qHXeaUc9TNwA44TDKkcLw=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e09be20.7f9f6a985570-smtp-out-n03;
 Mon, 30 Dec 2019 09:06:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AB547C433A2; Mon, 30 Dec 2019 09:06:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DABE9C43383;
 Mon, 30 Dec 2019 09:06:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DABE9C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V2 5/7] clk: qcom: Add ipq6018 Global Clock Controller
 support
To: Stephen Boyd <sboyd@kernel.org>, agross@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-6-git-send-email-sricharan@codeaurora.org>
 <20191227013317.C7E912080D@mail.kernel.org>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <9b2e4eae-34d2-ec3c-9111-4fa6a1276229@codeaurora.org>
Date: Mon, 30 Dec 2019 14:36:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191227013317.C7E912080D@mail.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_010649_723142_9AE9F7EC 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Stephen,
  Thanks for the review.

On 12/27/2019 7:03 AM, Stephen Boyd wrote:
> Quoting Sricharan R (2019-12-19 02:41:47)
>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>> index 3b33ef1..d0392f1 100644
>> --- a/drivers/clk/qcom/Kconfig
>> +++ b/drivers/clk/qcom/Kconfig
>> @@ -95,6 +95,14 @@ config IPQ_GCC_4019
>>           Say Y if you want to use peripheral devices such as UART, SPI,
>>           i2c, USB, SD/eMMC, etc.
>>  
>> +config IPQ_GCC_6018
>> +       tristate "IPQ6018 Global Clock Controller"
>> +       help
>> +         Support for global clock controller on ipq6018 devices.
>> +         Say Y if you want to use peripheral devices such as UART, SPI,
>> +         i2c, USB, SD/eMMC, etc. Select this for the root clock
>> +         of ipq6018.
> 
> What is the root clock of ipq6018?
> 

	root clock is 'xo'. But i guess this statement is not correct.
	will remove that line.

>> +
>>  config IPQ_GCC_806X
>>         tristate "IPQ806x Global Clock Controller"
>>         help
>> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
>> new file mode 100644
>> index 0000000..b6f0148
>> --- /dev/null
>> +++ b/drivers/clk/qcom/gcc-ipq6018.c
>> @@ -0,0 +1,4674 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2018, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/err.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include <linux/clk-provider.h>
>> +#include <linux/regmap.h>
>> +
>> +#include <linux/reset-controller.h>
>> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
>> +#include <dt-bindings/reset/qcom,gcc-ipq6018.h>
>> +
>> +#include "common.h"
>> +#include "clk-regmap.h"
>> +#include "clk-pll.h"
>> +#include "clk-rcg.h"
>> +#include "clk-branch.h"
>> +#include "clk-alpha-pll.h"
>> +#include "clk-regmap-divider.h"
>> +#include "clk-regmap-mux.h"
>> +#include "reset.h"
>> +
>> +#define F(f, s, h, m, n) { (f), (s), (2 * (h) - 1), (m), (n) }
>> +
>> +enum {
>> +       P_XO,
>> +       P_BIAS_PLL,
>> +       P_UNIPHY0_RX,
>> +       P_UNIPHY0_TX,
>> +       P_UNIPHY1_RX,
>> +       P_BIAS_PLL_NSS_NOC,
>> +       P_UNIPHY1_TX,
>> +       P_PCIE20_PHY0_PIPE,
>> +       P_USB3PHY_0_PIPE,
>> +       P_GPLL0,
>> +       P_GPLL0_DIV2,
>> +       P_GPLL2,
>> +       P_GPLL4,
>> +       P_GPLL6,
>> +       P_SLEEP_CLK,
>> +       P_UBI32_PLL,
>> +       P_NSS_CRYPTO_PLL,
>> +       P_PI_SLEEP,
>> +};
>> +
>> +static const struct clk_parent_data gcc_xo_gpll0_gpll0_out_main_div2[] = {
>> +       { .fw_name = "xo", .name = "xo"},
>> +       { .fw_name = "gpll0", .name = "gpll0"},
>> +       { .fw_name = "gpll0_out_main_div2", .name = "gpll0_out_main_div2"},
> 
> Because we aren't migrating this from existing DT to new DT we should be
> able to leave out .name in all these structs. That's the legacy fallback
> mechanism used to migrate DT over to the new way.
> 

	ok will fix it.

>> +};
>> +
>> +static const struct parent_map gcc_xo_gpll0_gpll0_out_main_div2_map[] = {
>> +       { P_XO, 0 },
>> +       { P_GPLL0, 1 },
>> +       { P_GPLL0_DIV2, 4 },
>> +};
>> +
> [...]
>> +
>> +static int gcc_ipq6018_probe(struct platform_device *pdev)
>> +{
>> +       int i, ret;
>> +       struct regmap *regmap;
>> +       struct clk *clk;
>> +       struct device *dev = &pdev->dev;
>> +
>> +       regmap = qcom_cc_map(pdev, &gcc_ipq6018_desc);
>> +       if (IS_ERR(regmap))
>> +               return PTR_ERR(regmap);
>> +
>> +       for (i = 0; i < ARRAY_SIZE(gcc_ipq6018_hws); i++) {
>> +               clk = devm_clk_register(&pdev->dev, gcc_ipq6018_hws[i]);
>> +               if (IS_ERR(clk))
>> +                       return PTR_ERR(clk);
>> +       }
>> +
>> +       clk_register_fixed_rate(dev, "pcie20_phy0_pipe_clk", NULL, 0, 250000000);
> 
> Why do we need to register this? Can it come from DT then? Also what if
> it fails? And what if really_probe fails? Then we'll need to undo this
> registration. Ideally this is created somewhere else.
> 

	ok, will move this in to the actual clk list.

>> +
>> +       /* Disable SW_COLLAPSE for USB0 GDSCR */
>> +       regmap_update_bits(regmap, 0x3e078, BIT(0), 0x0);
>> +       /* Enable SW_OVERRIDE for USB0 GDSCR */
>> +       regmap_update_bits(regmap, 0x3e078, BIT(2), BIT(2));
>> +       /* Disable SW_COLLAPSE for USB1 GDSCR */
>> +       regmap_update_bits(regmap, 0x3f078, BIT(0), 0x0);
>> +       /* Enable SW_OVERRIDE for USB1 GDSCR */
>> +       regmap_update_bits(regmap, 0x3f078, BIT(2), BIT(2));
>> +
>> +       /* SW Workaround for UBI Huyara PLL */
>> +       regmap_update_bits(regmap, 0x2501c, BIT(26), BIT(26));
>> +
>> +       clk_alpha_pll_configure(&ubi32_pll_main, regmap, &ubi32_pll_config);
>> +
>> +       clk_alpha_pll_configure(&nss_crypto_pll_main, regmap,
>> +                               &nss_crypto_pll_config);
>> +
>> +       ret = qcom_cc_really_probe(pdev, &gcc_ipq6018_desc, regmap);
>> +
>> +       dev_dbg(&pdev->dev, "Registered ipq6018 clock provider");
> 
> Please remove this and just return the result of really_probe.
> 

 ok, will fix it

Regards,
  Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
