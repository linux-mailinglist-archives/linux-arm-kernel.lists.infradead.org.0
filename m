Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35638E1D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zv+EtbLnasKfg4S1R59RyqNXIVVUIrTy9DKvaeGodE=; b=iBCh+Hzh6HDBRL
	Ag4Y/xSVHVw6zdS9Z2KkWP+4NqRsf86aYWTfmQHv/ghSE69a+n1bvQBZ4XYgF80xKLaHKY9NiWsxP
	K8tmXiYcJaKHR5mRX+MtEagGz33+rGfdpXBLsaPnlny6UC7ODn9vd8MUejNKt6UkcWsbfNcAE+/rU
	XR93PN6BwRxii6PThDBYjjh8vSuM0gCKDajArqt4+G2wp/f70njkBlGqStt96g47K5DP+RxKRXYyl
	+7j0SV3emoDRj23nhJ8XY7ZO24ueOhjTpSROkoLU5QPODSSM7Xp4VVL/3r6ROZYmN0D5wVO39tcqr
	vSCnw5WBnZv8WE4ytd6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3c8-0006uF-FZ; Thu, 15 Aug 2019 00:27:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3bu-0006sx-7q; Thu, 15 Aug 2019 00:27:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A71C72083B;
 Thu, 15 Aug 2019 00:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565828841;
 bh=4QD7Yk9ya09l1BYXkFzaH6f/MQAdtDiTlU/hy2yf93s=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=GWEev4ti/zpH5NkWvdRHWHVC5rtGnCFwG9y0sBVYQBJp6ooktPmxhpe9Lvyd9C5dj
 ORtsiqRQ/hl+Q//gM3NuYjiRF/V6lDE7d8o0a4hGuTY3mGZCGhxENp0572tM7+mePH
 kcvE2LJVBvyBLaLD6Hhj0BSxxvxQOQwo08dN1r2c=
MIME-Version: 1.0
In-Reply-To: <1562924653-10056-6-git-send-email-macpaul.lin@mediatek.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
 <1562924653-10056-6-git-send-email-macpaul.lin@mediatek.com>
Subject: Re: [PATCH v6 5/8] clk: mediatek: Add MT6765 clock support
From: Stephen Boyd <sboyd@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Owen Chen <owen.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 17:27:20 -0700
Message-Id: <20190815002721.A71C72083B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_172722_342843_D2B7ED11 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Macpaul Lin (2019-07-12 02:43:41)
> diff --git a/drivers/clk/mediatek/clk-mt6765-audio.c b/drivers/clk/mediatek/clk-mt6765-audio.c
> new file mode 100644
> index 000000000000..41f19343dfb9
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt6765-audio.c
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Owen Chen <owen.chen@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.

Please use SPDX tags.

> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +
> +#include "clk-mtk.h"
> +#include "clk-gate.h"
> +
> diff --git a/drivers/clk/mediatek/clk-mt6765-vcodec.c b/drivers/clk/mediatek/clk-mt6765-vcodec.c
> new file mode 100644
> index 000000000000..eb9ae1c2c99c
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt6765-vcodec.c
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Owen Chen <owen.chen@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */

SPDX tags.

> diff --git a/drivers/clk/mediatek/clk-mt6765.c b/drivers/clk/mediatek/clk-mt6765.c
> new file mode 100644
> index 000000000000..f716a48a926d
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt6765.c
> @@ -0,0 +1,961 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Owen Chen <owen.chen@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.

SPDX tags.

> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +#include <linux/mfd/syscon.h>

Is this used? Maybe I deleted it.

> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
[...]
> +
> +static const char * const axi_parents[] = {
> +       "clk26m",
> +       "syspll_d7",
> +       "syspll1_d4",
> +       "syspll3_d2"
> +};
> +
> +static const char * const mem_parents[] = {
> +       "clk26m",
> +       "dmpll_ck",
> +       "apll1_ck"
> +};
> +
> +static const char * const mm_parents[] = {
> +       "clk26m",
> +       "mmpll_ck",
> +       "syspll1_d2",
> +       "syspll_d5",
> +       "syspll1_d4",
> +       "univpll_d5",
> +       "univpll1_d2",
> +       "mmpll_d2"
> +};
> +
> +static const char * const scp_parents[] = {
> +       "clk26m",
> +       "syspll4_d2",
> +       "univpll2_d2",
> +       "syspll1_d2",
> +       "univpll1_d2",
> +       "syspll_d3",
> +       "univpll_d3"
> +};
> +
> +static const char * const mfg_parents[] = {
> +       "clk26m",
> +       "mfgpll_ck",
> +       "syspll_d3",
> +       "univpll_d3"
> +};
> +
> +static const char * const atb_parents[] = {
> +       "clk26m",
> +       "syspll1_d4",
> +       "syspll1_d2"
> +};
> +
> +static const char * const camtg_parents[] = {
> +       "clk26m",
> +       "usb20_192m_d8",
> +       "univpll2_d8",
> +       "usb20_192m_d4",
> +       "univpll2_d32",
> +       "usb20_192m_d16",
> +       "usb20_192m_d32"
> +};
> +
> +static const char * const uart_parents[] = {
> +       "clk26m",
> +       "univpll2_d8"
> +};
> +
> +static const char * const spi_parents[] = {
> +       "clk26m",
> +       "syspll3_d2",
> +       "syspll4_d2",
> +       "syspll2_d4"
> +};
> +
> +static const char * const msdc5hclk_parents[] = {
> +       "clk26m",
> +       "syspll1_d2",
> +       "univpll1_d4",
> +       "syspll2_d2"
> +};
> +
> +static const char * const msdc50_0_parents[] = {
> +       "clk26m",
> +       "msdcpll_ck",
> +       "syspll2_d2",
> +       "syspll4_d2",
> +       "univpll1_d2",
> +       "syspll1_d2",
> +       "univpll_d5",
> +       "univpll1_d4"
> +};
> +
> +static const char * const msdc30_1_parents[] = {
> +       "clk26m",
> +       "msdcpll_d2",
> +       "univpll2_d2",
> +       "syspll2_d2",
> +       "syspll1_d4",
> +       "univpll1_d4",
> +       "usb20_192m_d4",
> +       "syspll2_d4"
> +};
> +
> +static const char * const audio_parents[] = {
> +       "clk26m",
> +       "syspll3_d4",
> +       "syspll4_d4",
> +       "syspll1_d16"
> +};
> +
> +static const char * const aud_intbus_parents[] = {
> +       "clk26m",
> +       "syspll1_d4",
> +       "syspll4_d2"
> +};
> +
> +static const char * const aud_1_parents[] = {
> +       "clk26m",
> +       "apll1_ck"
> +};
> +
> +static const char * const aud_engen1_parents[] = {
> +       "clk26m",
> +       "apll1_d2",
> +       "apll1_d4",
> +       "apll1_d8"
> +};
> +
> +static const char * const disp_pwm_parents[] = {
> +       "clk26m",
> +       "univpll2_d4",
> +       "ulposc1_d2",
> +       "ulposc1_d8"
> +};
> +
> +static const char * const sspm_parents[] = {
> +       "clk26m",
> +       "syspll1_d2",
> +       "syspll_d3"
> +};
> +
> +static const char * const dxcc_parents[] = {
> +       "clk26m",
> +       "syspll1_d2",
> +       "syspll1_d4",
> +       "syspll1_d8"
> +};
> +
> +static const char * const usb_top_parents[] = {
> +       "clk26m",
> +       "univpll3_d4"
> +};
> +
> +static const char * const spm_parents[] = {
> +       "clk26m",
> +       "syspll1_d8"
> +};
> +
> +static const char * const i2c_parents[] = {
> +       "clk26m",
> +       "univpll3_d4",
> +       "univpll3_d2",
> +       "syspll1_d8",
> +       "syspll2_d8"
> +};
> +
> +static const char * const pwm_parents[] = {
> +       "clk26m",
> +       "univpll3_d4",
> +       "syspll1_d8"
> +};
> +
> +static const char * const seninf_parents[] = {
> +       "clk26m",
> +       "univpll1_d4",
> +       "univpll1_d2",
> +       "univpll2_d2"
> +};
> +
> +static const char * const aes_fde_parents[] = {
> +       "clk26m",
> +       "msdcpll_ck",
> +       "univpll_d3",
> +       "univpll2_d2",
> +       "univpll1_d2",
> +       "syspll1_d2"
> +};
> +
> +static const char * const ulposc_parents[] = {
> +       "clk26m",
> +       "ulposc1_d4",
> +       "ulposc1_d8",
> +       "ulposc1_d16",
> +       "ulposc1_d32"
> +};
> +
> +static const char * const camtm_parents[] = {
> +       "clk26m",
> +       "univpll1_d4",
> +       "univpll1_d2",
> +       "univpll2_d2"
> +};
> +

Can you migrate this driver to the new way of specifying clk parents?
That way we don't just have lists of strings.

> +#define INVALID_UPDATE_REG 0xFFFFFFFF
> +#define INVALID_UPDATE_SHIFT -1
> +#define INVALID_MUX_GATE -1
> +
> +static const struct mtk_mux top_muxes[] = {
> +       /* CLK_CFG_0 */
> +       MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_AXI_SEL, "axi_sel", axi_parents,
> +                             CLK_CFG_0, CLK_CFG_0_SET, CLK_CFG_0_CLR,
> +                             0, 2, 7, CLK_CFG_UPDATE, 0, CLK_IS_CRITICAL),

Please add a comment why CLK_IS_CRITICAL flag is used in each place.

> +       MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_MEM_SEL, "mem_sel", mem_parents,
> +                             CLK_CFG_0, CLK_CFG_0_SET, CLK_CFG_0_CLR,
> +                             8, 2, 15, CLK_CFG_UPDATE, 1, CLK_IS_CRITICAL),
> +       MUX_GATE_CLR_SET_UPD(CLK_TOP_MM_SEL, "mm_sel", mm_parents, CLK_CFG_0,
> +                       CLK_CFG_0_SET, CLK_CFG_0_CLR, 16, 3, 23,
> +                       CLK_CFG_UPDATE, 2),
> +       MUX_GATE_CLR_SET_UPD(CLK_TOP_SCP_SEL, "scp_sel", scp_parents, CLK_CFG_0,
> +                       CLK_CFG_0_SET, CLK_CFG_0_CLR, 24, 3, 31,
> +                       CLK_CFG_UPDATE, 3),
[...]
> +       }, {
> +               .compatible = "mediatek,mt6765-topckgen",
> +               .data = clk_mt6765_top_probe,
> +       }, {
> +               .compatible = "mediatek,mt6765-infracfg",
> +               .data = clk_mt6765_ifr_probe,
> +       }, {
> +               /* sentinel */
> +       }
> +};
> +
> +static int clk_mt6765_probe(struct platform_device *pdev)
> +{
> +       int (*clk_probe)(struct platform_device *d);
> +       int r;
> +
> +       clk_probe = of_device_get_match_data(&pdev->dev);
> +       if (!clk_probe)
> +               return -EINVAL;
> +
> +       r = clk_probe(pdev);
> +       if (r)
> +               dev_err(&pdev->dev,
> +                       "could not register clock provider: %s: %d\n",
> +                       pdev->name, r);
> +
> +       return r;
> +}
> +
> +static struct platform_driver clk_mt6765_drv = {
> +       .probe = clk_mt6765_probe,
> +       .driver = {
> +               .name = "clk-mt6765",
> +               .owner = THIS_MODULE,

Remove this line, platform_driver_register() should take care of it.

> +               .of_match_table = of_match_clk_mt6765,
> +       },
> +};
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
