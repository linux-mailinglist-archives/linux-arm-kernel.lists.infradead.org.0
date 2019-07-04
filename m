Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C355F556
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=guDQwbfPqnM/zLMKPFCVMyaOci2BZOP6PjLyEaEyn3c=; b=o16mvxqZlqerfn81ALIt+TLCB
	QcDKY5TpAIwCEvx1GF+QYdxItstepeUu4tgVWR3yrlE/MFiEtNx4IWr4wmpaS5QrleGKtT5gnfkhA
	6gT6jLz+3yWE4rV+4KMmfEqgKRp9gIj3cnZjBCiRfmzVCn12UoE0SiIkw6/8ZpMg+fsr2c01GZOfI
	0DwQIOK7uVnKfY+RQUDKysE07Ierz1VSpbKq9ooLlRjH2rn3WnJjHZ7q2YRBcwiPc1XzF8+flzBdC
	BPdr34aN1g7FiiTGeoWd63bJYjX6/vreYJUmKUN04tjNLGhFsnIaEZR4rM+lmsPFD8y+dfpRFiu6U
	zxMoE8kvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixsU-0005ZI-Ey; Thu, 04 Jul 2019 09:18:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixs6-0005Yg-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:17:43 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1hixs2-0007bX-Vh; Thu, 04 Jul 2019 11:17:38 +0200
Subject: Re: [RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
To: Richard Zhu <hongxing.zhu@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>
References: <1562220905-13875-1-git-send-email-hongxing.zhu@nxp.com>
 <1562220905-13875-2-git-send-email-hongxing.zhu@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <eacde261-071a-c6eb-2cbb-a7695cd0ae90@pengutronix.de>
Date: Thu, 4 Jul 2019 11:17:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1562220905-13875-2-git-send-email-hongxing.zhu@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_021742_225675_6BF7DED7 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

this patch is mixing SoC and application specific parts.
Adding mu: mu@30aa0000  is SoC specific and should go to separate patch.
Every thing else is application specific and needed for demonstration only.
Correct?

On 04.07.19 08:36, Richard Zhu wrote:
> Add the iMX8MQ RPMSG support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>   arch/arm64/boot/dts/freescale/Makefile             |  2 +-
>   arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts | 67 ++++++++++++++++++++++
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi          | 23 ++++++++
>   3 files changed, 91 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c043aca..478f448 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -21,7 +21,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
>   dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
>   
>   dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> -dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb imx8mq-evk-rpmsg.dtb
>   dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
>   dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>   dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts
> new file mode 100644
> index 0000000..185a5c4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mq-evk.dts"
> +
> +/ {
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		m4_reserved: m4@0x80000000 {
> +			no-map;
> +			reg = <0 0x80000000 0 0x1000000>;
> +		};
> +		rpmsg_reserved: rpmsg@0xb8000000 {
> +			no-map;
> +			reg = <0 0xb8000000 0 0x400000>;
> +		};
> +		rpmsg_dma_reserved:rpmsg_dma@0xb8400000 {
> +			compatible = "shared-dma-pool";
> +			no-map;
> +			reg = <0 0xb8400000 0 0x100000>;
> +		};
> +	};
> +};
> +
> +/*
> + * Regarding to the HW conflications, the following module should be disabled
> + * when M4 is running on evk board.
> + * gpt1, i2c2, pwm4, tmu, uart2, wdog3
> + */
> +
> +&i2c2 {
> +	status = "disabled";
> +};
> +
> +&pwm4 {
> +	status = "disabled";
> +};
> +
> +&rpmsg{
> +	/*
> +	 * 64K for one rpmsg instance:
> +	 * --0xb8000000~0xb800ffff: pingpong
> +	 */
> +	vdev-nums = <1>;
> +	reg = <0x0 0xb8000000 0x0 0x10000>;
> +	memory-region = <&rpmsg_dma_reserved>;
> +	status = "okay";
> +};
> +
> +&tmu {
> +	status = "disabled";
> +};
> +
> +&uart2 {
> +	status = "disabled";
> +};
> +
> +&wdog3{
> +	status = "disabled";
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 85008dc..93d90e2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -777,6 +777,15 @@
>   				status = "disabled";
>   			};
>   
> +			mu: mu@30aa0000 {
> +				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>   			usdhc1: mmc@30b40000 {
>   				compatible = "fsl,imx8mq-usdhc",
>   				             "fsl,imx7d-usdhc";
> @@ -1032,4 +1041,18 @@
>   			interrupt-parent = <&gic>;
>   		};
>   	};
> +
> +	rpmsg: rpmsg{
> +		compatible = "fsl,imx8mq-rpmsg";
> +		/* up to now, the following channels are used in imx rpmsg
> +		 * - tx1/rx1: messages channel.
> +		 * - general interrupt1: remote proc finish re-init rpmsg stack
> +		 *   when A core is partition reset.
> +		 */
> +		mbox-names = "tx", "rx", "rxdb";
> +		mboxes = <&mu 0 1
> +			  &mu 1 1
> +			  &mu 3 1>;
> +		status = "disabled";
> +	};
>   };
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
