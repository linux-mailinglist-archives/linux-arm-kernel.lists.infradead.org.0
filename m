Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4219BFFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJW0STCEZo+57yFeLXYjbkMvCmtMnhJnlN0ptoajFeA=; b=XjNwTjHmfnkC12
	0v+4YAPDO7QBTxwOCFQJ9jz+eZcUCwdPHcj3TrsWk5WoMlbu7taUYFP2a2WUuxiC29zOdWLzXvUkh
	IjfTsMfiDMugVnjJQXiiLO+WYN44VqQCTVqm3vy9AwY4agpprY/14NoZdWX4N8cFBVmZ0cj6QSzVR
	qu4cPxYkxHeDTVdvSJImsVaawYZ+lHREWm5LFPDtDwz1WdW1tPpK4jXLg9CiPqfwbdosDKb7MUB+8
	LZQW7x7PXLxb6YXvz3/+tNgaeDaJZHO1Y2ryrPi5bsML3qzn6xQTnah5nvQzmZfbFptNCUvNpyVVW
	D99vtlnPUSdb3YDd6zhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxoK-0008Du-5j; Thu, 02 Apr 2020 11:15:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxoD-0008DU-93
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:14:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id 65so3740929wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 04:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SDs4zuo8Fdrx0/BhpHUdc4mQVobyyDeGMbFPg+VANt0=;
 b=VW4C1RXeiATTjMblfhQuecvruYT/IC7MI/vEz2eeagJNZto9ena934cklaW3kYyhRI
 vimek7b4nlyWZNqR/Boxiz0Yfi5EQ5QvaTu9s8aGOqINqi+s4LUAIYsVmYZajvec2BjH
 3w1m8yTFJVWlcyawqZgKoHYykKYILKcZqMsH77eTXYZLmFgXyretFJYhEcOeRu4pYtit
 u4OduA3QJFleNOMsDA/ySwvFUGKj7RWi/1LHtCl5dghF2AvhkBr+/10junAP3S9pWc5j
 RHx+OMHszmd1dsOXSmQ3N6rVe3YcLVLtgjvzdD2FRnfsCM5OIRJPGBtar+QW/pAI62Yw
 K2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SDs4zuo8Fdrx0/BhpHUdc4mQVobyyDeGMbFPg+VANt0=;
 b=R8V4OP3+mRnrY16y8rsD1TwhjM3oWtrQenCcgtjasU601OCXxTsDIrTi2++CeQFGfe
 u0/Tgri1AolnFe23aFaXfOA8LHIp0ESwL//2olPv6Z5+lnPmePnAKQRBzCFOBPFIo8XE
 R5IQ24FXJQwo2WlIjaXtTH5kNdFlr2KhQbILOO6HNN9HMYshPcIIkjxb6FAJAWeVk1eG
 /7r1ywaTxbk3bYbrXd8BVsAKu7QR8Sgzxuxt+kIju9zUzdpTr8MVhASF4ne+SrEPBHaD
 EFlXP6DiTxsbQdaSnsclWjmGvM8R8DJu7xP9YhCFgjUPa3qSjmJztH6/ZVmIsicMo1cE
 0n4Q==
X-Gm-Message-State: AGi0PuYw+OzvvfvwHs6v4zdpULSuK3yxMkMswVVP8ZkiRSDzatsWU64Q
 swV+5DSh7JC/Jj/nFBRhFqdkHYIeBKY=
X-Google-Smtp-Source: APiQypL1ekZTXiUol8IHZefuL6Myzzuv1O0qJlnWrSN9p0tcDTrKaVQYNWjWZziyqbPghOblQZnzIw==
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr3180378wrw.170.1585826090503; 
 Thu, 02 Apr 2020 04:14:50 -0700 (PDT)
Received: from [192.168.0.136] ([87.120.218.65])
 by smtp.googlemail.com with ESMTPSA id y4sm614361wma.20.2020.04.02.04.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 04:14:49 -0700 (PDT)
Subject: Re: [PATCH v2 5/8] interconnect: imx: Add platform driver for imx8mm
To: Leonard Crestez <leonard.crestez@nxp.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <823cd307bea7416cf7df804bbcb77ab2887e0687.1585751281.git.leonard.crestez@nxp.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <512ce59a-5718-3fab-1968-bbe3c5b38120@linaro.org>
Date: Thu, 2 Apr 2020 14:14:48 +0300
MIME-Version: 1.0
In-Reply-To: <823cd307bea7416cf7df804bbcb77ab2887e0687.1585751281.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_041453_331715_CEBC4D2C 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 4/1/20 17:33, Leonard Crestez wrote:
> Add a platform driver for the i.MX8MM SoC describing bus topology.
> 
> Bandwidth adjustments is currently only supported on the DDRC and main
> NOC. Scaling for the vpu/gpu/display NICs could be added in the future.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/interconnect/imx/Kconfig          |   4 +
>  drivers/interconnect/imx/Makefile         |   2 +
>  drivers/interconnect/imx/imx8mm.c         | 108 ++++++++++++++++++++++
>  include/dt-bindings/interconnect/imx8mm.h |  49 ++++++++++
>  4 files changed, 163 insertions(+)
>  create mode 100644 drivers/interconnect/imx/imx8mm.c
>  create mode 100644 include/dt-bindings/interconnect/imx8mm.h
> 
> diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
> index f39336f8d603..2cd4fad4976a 100644
> --- a/drivers/interconnect/imx/Kconfig
> +++ b/drivers/interconnect/imx/Kconfig
> @@ -1,5 +1,9 @@
>  config INTERCONNECT_IMX
>  	tristate "i.MX interconnect drivers"
>  	depends on ARCH_MXC || COMPILE_TEST
>  	help
>  	  Generic interconnect drivers for i.MX SOCs
> +
> +config INTERCONNECT_IMX8MM
> +	tristate "i.MX8MM interconnect driver"
> +	depends on INTERCONNECT_IMX
> diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
> index 86ae0bd28d8c..c234e5d3dfd1 100644
> --- a/drivers/interconnect/imx/Makefile
> +++ b/drivers/interconnect/imx/Makefile
> @@ -1,3 +1,5 @@
>  imx-interconnect-objs			:= imx.o
> +imx8mm-interconnect-objs       		:= imx8mm.o
>  
>  obj-$(CONFIG_INTERCONNECT_IMX)		+= imx-interconnect.o
> +obj-$(CONFIG_INTERCONNECT_IMX8MM)	+= imx8mm-interconnect.o
> diff --git a/drivers/interconnect/imx/imx8mm.c b/drivers/interconnect/imx/imx8mm.c
> new file mode 100644
> index 000000000000..ee3783a98c01
> --- /dev/null
> +++ b/drivers/interconnect/imx/imx8mm.c
> @@ -0,0 +1,108 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Interconnect framework driver for i.MX SoC
> + *
> + * Copyright (c) 2019, BayLibre
> + * Copyright (c) 2019, NXP
> + * Author: Alexandre Bailon <abailon@baylibre.com>
> + * Author: Leonard Crestez <leonard.crestez@nxp.com>
> + */
> +
> +#include <linux/device.h>

Is this used?

> +#include <linux/module.h>
> +#include <linux/of_platform.h>

Is this used?

> +#include <linux/platform_device.h>
> +
> +#include <dt-bindings/interconnect/imx8mm.h>
> +
> +#include "imx.h"
> +
> +static const struct imx_icc_node_adj_desc imx8mm_dram_adj = {
> +	.bw_mul = 1,
> +	.bw_div = 16,
> +	.phandle_name = "fsl,ddrc",
> +};
> +
> +static const struct imx_icc_node_adj_desc imx8mm_noc_adj = {
> +	.bw_mul = 1,
> +	.bw_div = 16,
> +	.main_noc = true,
> +};
> +
> +/*
> + * Describe bus masters, slaves and connections between them
> + *
> + * This is a simplified subset of the bus diagram, there are several other
> + * PL301 nics which are skipped/merged into PL301_MAIN
> + */
> +static struct imx_icc_node_desc nodes[] = {
> +	DEFINE_BUS_INTERCONNECT("NOC", IMX8MM_ICN_NOC, &imx8mm_noc_adj,
> +			IMX8MM_ICS_DRAM, IMX8MM_ICN_MAIN),
> +
> +	DEFINE_BUS_SLAVE("DRAM", IMX8MM_ICS_DRAM, &imx8mm_dram_adj),
> +	DEFINE_BUS_SLAVE("OCRAM", IMX8MM_ICS_OCRAM, NULL),
> +	DEFINE_BUS_MASTER("A53", IMX8MM_ICM_A53, IMX8MM_ICN_NOC),
> +
> +	/* VPUMIX */
> +	DEFINE_BUS_MASTER("VPU H1", IMX8MM_ICM_VPU_H1, IMX8MM_ICN_VIDEO),
> +	DEFINE_BUS_MASTER("VPU G1", IMX8MM_ICM_VPU_G1, IMX8MM_ICN_VIDEO),
> +	DEFINE_BUS_MASTER("VPU G2", IMX8MM_ICM_VPU_G2, IMX8MM_ICN_VIDEO),
> +	DEFINE_BUS_INTERCONNECT("PL301_VIDEO", IMX8MM_ICN_VIDEO, NULL, IMX8MM_ICN_NOC),
> +
> +	/* GPUMIX */
> +	DEFINE_BUS_MASTER("GPU 2D", IMX8MM_ICM_GPU2D, IMX8MM_ICN_GPU),
> +	DEFINE_BUS_MASTER("GPU 3D", IMX8MM_ICM_GPU3D, IMX8MM_ICN_GPU),
> +	DEFINE_BUS_INTERCONNECT("PL301_GPU", IMX8MM_ICN_GPU, NULL, IMX8MM_ICN_NOC),
> +
> +	/* DISPLAYMIX */
> +	DEFINE_BUS_MASTER("CSI", IMX8MM_ICM_CSI, IMX8MM_ICN_MIPI),
> +	DEFINE_BUS_MASTER("LCDIF", IMX8MM_ICM_LCDIF, IMX8MM_ICN_MIPI),
> +	DEFINE_BUS_INTERCONNECT("PL301_MIPI", IMX8MM_ICN_MIPI, NULL, IMX8MM_ICN_NOC),
> +
> +	/* HSIO */
> +	DEFINE_BUS_MASTER("USB1", IMX8MM_ICM_USB1, IMX8MM_ICN_HSIO),
> +	DEFINE_BUS_MASTER("USB2", IMX8MM_ICM_USB2, IMX8MM_ICN_HSIO),
> +	DEFINE_BUS_MASTER("PCIE", IMX8MM_ICM_PCIE, IMX8MM_ICN_HSIO),
> +	DEFINE_BUS_INTERCONNECT("PL301_HSIO", IMX8MM_ICN_HSIO, NULL, IMX8MM_ICN_NOC),
> +
> +	/* Audio */
> +	DEFINE_BUS_MASTER("SDMA2", IMX8MM_ICM_SDMA2, IMX8MM_ICN_AUDIO),
> +	DEFINE_BUS_MASTER("SDMA3", IMX8MM_ICM_SDMA3, IMX8MM_ICN_AUDIO),
> +	DEFINE_BUS_INTERCONNECT("PL301_AUDIO", IMX8MM_ICN_AUDIO, NULL, IMX8MM_ICN_MAIN),
> +
> +	/* Ethernet */
> +	DEFINE_BUS_MASTER("ENET", IMX8MM_ICM_ENET, IMX8MM_ICN_ENET),
> +	DEFINE_BUS_INTERCONNECT("PL301_ENET", IMX8MM_ICN_ENET, NULL, IMX8MM_ICN_MAIN),
> +
> +	/* Other */
> +	DEFINE_BUS_MASTER("SDMA1", IMX8MM_ICM_SDMA1, IMX8MM_ICN_MAIN),
> +	DEFINE_BUS_MASTER("NAND", IMX8MM_ICM_NAND, IMX8MM_ICN_MAIN),
> +	DEFINE_BUS_MASTER("USDHC1", IMX8MM_ICM_USDHC1, IMX8MM_ICN_MAIN),
> +	DEFINE_BUS_MASTER("USDHC2", IMX8MM_ICM_USDHC2, IMX8MM_ICN_MAIN),
> +	DEFINE_BUS_MASTER("USDHC3", IMX8MM_ICM_USDHC3, IMX8MM_ICN_MAIN),
> +	DEFINE_BUS_INTERCONNECT("PL301_MAIN", IMX8MM_ICN_MAIN, NULL,
> +			IMX8MM_ICN_NOC, IMX8MM_ICS_OCRAM),
> +};
> +
> +static int imx8mm_icc_probe(struct platform_device *pdev)
> +{
> +	return imx_icc_register(pdev, nodes, ARRAY_SIZE(nodes));
> +}
> +
> +static int imx8mm_icc_remove(struct platform_device *pdev)
> +{
> +	return imx_icc_unregister(pdev);
> +}
> +
> +static struct platform_driver imx8mm_icc_driver = {
> +	.probe = imx8mm_icc_probe,
> +	.remove = imx8mm_icc_remove,
> +	.driver = {
> +		.name = "imx8mm-interconnect",
> +	},
> +};
> +
> +module_platform_driver(imx8mm_icc_driver);
> +MODULE_AUTHOR("Alexandre Bailon <abailon@baylibre.com>");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("platform:imx8mm-interconnect");
> diff --git a/include/dt-bindings/interconnect/imx8mm.h b/include/dt-bindings/interconnect/imx8mm.h
> new file mode 100644
> index 000000000000..5404f2af15c3
> --- /dev/null
> +++ b/include/dt-bindings/interconnect/imx8mm.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Interconnect framework driver for i.MX SoC
> + *
> + * Copyright (c) 2019, BayLibre
> + * Author: Alexandre Bailon <abailon@baylibre.com>
> + */
> +
> +#ifndef __IMX8MM_ICM_INTERCONNECT_IDS_H
> +#define __IMX8MM_ICM_INTERCONNECT_IDS_H

Nit: Some people make this match the path, but it's up to you.

> +
> +#define IMX8MM_ICN_NOC		1
> +#define IMX8MM_ICS_DRAM		2
> +#define IMX8MM_ICS_OCRAM	3
> +#define IMX8MM_ICM_A53		4
> +
> +#define IMX8MM_ICM_VPU_H1	5
> +#define IMX8MM_ICM_VPU_G1	6
> +#define IMX8MM_ICM_VPU_G2	7
> +#define IMX8MM_ICN_VIDEO	8
> +
> +#define IMX8MM_ICM_GPU2D	9
> +#define IMX8MM_ICM_GPU3D	10
> +#define IMX8MM_ICN_GPU		11
> +
> +#define IMX8MM_ICM_CSI		12
> +#define IMX8MM_ICM_LCDIF	13
> +#define IMX8MM_ICN_MIPI		14
> +
> +#define IMX8MM_ICM_USB1		15
> +#define IMX8MM_ICM_USB2		16
> +#define IMX8MM_ICM_PCIE		17
> +#define IMX8MM_ICN_HSIO		18
> +
> +#define IMX8MM_ICM_SDMA2	19
> +#define IMX8MM_ICM_SDMA3	20
> +#define IMX8MM_ICN_AUDIO	21
> +
> +#define IMX8MM_ICN_ENET		22
> +#define IMX8MM_ICM_ENET		23
> +
> +#define IMX8MM_ICN_MAIN		24
> +#define IMX8MM_ICM_NAND		25
> +#define IMX8MM_ICM_SDMA1	26
> +#define IMX8MM_ICM_USDHC1	27
> +#define IMX8MM_ICM_USDHC2	28
> +#define IMX8MM_ICM_USDHC3	29
> +
> +#endif /* __IMX8MM_ICM_INTERCONNECT_IDS_H */
> 

Looks good!

Thanks,
Georgi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
