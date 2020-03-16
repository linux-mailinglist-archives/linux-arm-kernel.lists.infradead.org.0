Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5D9186361
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEzCTQr7YeA3TXhrRFHOQZxyvxSKi9pnrU7EEolElWE=; b=jdTtMSY3Zd5F5c
	JZKemgXOagnaDXemJ6qDkZo/44BLgPqYPiv1M6docR/zHbkbJ8xM64zjKxAszJZ6ckJYSifUEapYa
	Z/TctJer5eogXFAgBbMb4nboezGmCbhYax6f9iM5r2kxQpvMyFH2HQF80LphjvKAyviBPkM2gP/5P
	w6ALOM2ogAEtiWxGPOyn3u3c7g+Q1MNv0265X0+ry9rdRrImUCZNYfPCW8sB1kcHCtv/WIrDiDQWC
	YwGaG6wo2ewrhB9ypcl1mTKM16pWCkLc0dPe7XoYIbWPF3Gx7WLuTPAmVpQvlj2FLt2DDClcuzE7F
	v9ZOfDxorpx3dvGuKrlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfmz-0001y4-Pe; Mon, 16 Mar 2020 02:47:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfdH-0006oI-Pz
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:37:40 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39590206E9;
 Mon, 16 Mar 2020 02:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326255;
 bh=XrwwTekwQ2HDHfKOkxj8tKgmnEkC52AJfRIvVSYZKFg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dABnWIbR5/3oZQlzrowP1QyTOPSxORhSDtsEK8hZvL4Nc67uSpOKc6RsT3uE98oCW
 B0xS2L53xF8PfXWwLWe5Op99hOVf17jmIsq1BttwDt54T17mStUcf3bgp5wDRZdQDk
 hjNIH3A3Mi4TgU1pSVdrdpfyM8zn9OAhSDnisf64=
Date: Mon, 16 Mar 2020 10:37:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v4 2/2] ARM: dts: colibri: introduce dts with UHS-I
 support enabled
Message-ID: <20200316023727.GX17221@dragon>
References: <20200312185113.2504-1-igor.opaniuk@gmail.com>
 <20200312185113.2504-2-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312185113.2504-2-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193735_927874_76504766 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 08:51:13PM +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Introduce DTS for Colibri iMX6S/DL V1.1x re-design, where UHS-I support was
> added. Provide proper configuration for VGEN3, which allows that rail to
> be automatically switched to 1.8 volts for proper UHS-I operation mode.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> ---
> 
> v4:
> - Document Colibri iMX6S/DL V1.1x re-design devicetree binding [Shawn Guo]
> - wakeup-source property fix [Shawn Guo]
> 
> v3:
> - change hierarchy according to Marco's suggestions [Marco Felsch]
> - adjust compatible string adding v1.1 [Stefan Agner]
> 
> v2:
> - rework hierarchy of dts files, and a separate dtsi for Colibri
>   iMX6S/DL V1.1x re-design, where UHS-I was added [Marcel Ziswiler]
> - add comments about vgen3 power rail [Marcel Ziswiler]
> - fix other minor issues, addressing Marcel's comments. [Marcel Ziswiler]
> 
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../boot/dts/imx6dl-colibri-v1_1-eval-v3.dts  | 59 +++++++++++++++++++
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 11 +++-
>  3 files changed, 70 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..97da51be1de6 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -412,6 +412,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6dl-aristainetos2_4.dtb \
>  	imx6dl-aristainetos2_7.dtb \
>  	imx6dl-colibri-eval-v3.dtb \
> +	imx6dl-colibri-v1_1-eval-v3.dtb \
>  	imx6dl-cubox-i.dtb \
>  	imx6dl-cubox-i-emmc-som-v15.dtb \
>  	imx6dl-cubox-i-som-v15.dtb \
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> new file mode 100644
> index 000000000000..fced7d99f5d5
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +/*
> + * Copyright 2019 Toradex AG
> + */

Shouldn't this follow what you just updated for other Toradex boards?

Shawn

> +
> +/dts-v1/;
> +
> +#include "imx6dl-colibri-eval-v3.dts"
> +
> +/ {
> +	model = "Toradex Colibri iMX6DL/S V1.1 on Colibri Evaluation Board V3";
> +	compatible = "toradex,colibri_imx6dl-v1_1-eval-v3",
> +		     "toradex,colibri_imx6dl-v1_1",
> +		     "toradex,colibri_imx6dl-eval-v3",
> +		     "toradex,colibri_imx6dl",
> +		     "fsl,imx6dl";
> +};
> +
> +&iomuxc {
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
> +		>;
> +	};
> +};
> +
> +/* Colibri MMC */
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
> +	vmmc-supply = <&reg_module_3v3>;
> +	vqmmc-supply = <&vgen3_reg>;
> +	wakeup-source;
> +	keep-power-in-suspend;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +	/delete-property/no-1-8-v;
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index d03dff23863d..e85a41e84fd4 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -229,7 +229,16 @@
>  				regulator-always-on;
>  			};
>  
> -			/* vgen3: unused */
> +			/*
> +			 * +V3.3_1.8_SD1 coming off VGEN3 and supplying
> +			 * the i.MX 6 NVCC_SD1.
> +			 */
> +			vgen3_reg: vgen3 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
>  
>  			vgen4_reg: vgen4 {
>  				regulator-min-microvolt = <1800000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
