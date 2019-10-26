Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99801E5A61
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 14:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKoPR5Cw92DJXbag4ugF+x9Zecwj3XrBCSc0GlmV58w=; b=GZNKS/syfqE1+m
	lc0qsoKyQw+vHDuDm0a9KyvTi92WgYWKuntJX3unPXlOA1vxlxwV06xuBWVnX+2fwz1RSgcb/peZx
	gjxZpZy7WDqhGtHanKzM84J7sh8NZFEYqUMDPT/1Gepp6A9zPGTH1/EjFLUNOGu3oX0WzyJm8hvQM
	ffviMq/yPfb5sqdavKvvVtig1vF+d9wZdB170s9nFsdxGVBBg1swDaFQhSQflEQY7hlP+vSgeEoX4
	ThaG863fuuWXfBa29enIQDGJwE+xIc7ANurbn90wLyEk9JfBpkJ27/fnKjAH1rp+jJ2JfSc63Zsq/
	S2/MJ5gGL2t/tE5Zue2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKtG-0000Lu-MG; Sat, 26 Oct 2019 12:09:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKt6-0000Kg-E3
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 12:09:47 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F5EB20863;
 Sat, 26 Oct 2019 12:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572091784;
 bh=jnqy6bpsu7LwjMxf9NYpjRqZhY+UHjFFE6P1vS48bDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n13omwEvmRS5ku6EtIGlC+GXQZ+ohSuieGHMbPeDN8jC99dfYfzVASeLtYWuAA2h4
 pqS3hvO8hnplwNVMwPmISNV9m7lvm6B8LG1IMxny7J075rD29yvSCC4lA41RmxJf+y
 jnCDx0wp1zXoQPRlHzce3hNXx9R4x/WV/bHnwyQQ=
Date: Sat, 26 Oct 2019 20:09:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Message-ID: <20191026120902.GL14401@dragon>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_050944_521282_C240FA38 
X-CRM114-Status: GOOD (  14.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, baruch@tkos.co.il, dafna.hirschfeld@collabora.com,
 ping.bai@nxp.com, ccaione@baylibre.com, agx@sigxcpu.org, angus@akkea.ca,
 peng.fan@nxp.com, gary.bisson@boundarydevices.com, pavel@ucw.cz,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 richard.hu@technexion.com, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 daniel.lezcano@linaro.org, jon@solid-run.com, Linux-imx@nxp.com,
 devicetree@vger.kernel.org, andradanciu1997@gmail.com, s.hauer@pengutronix.de,
 troy.kisky@boundarydevices.com, robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 jun.li@nxp.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:14:23AM +0800, Anson Huang wrote:
> usdhc's clock rate is different according to different devices
> connected, so clock rate assignment should be placed in board
> DT according to different devices connected on each usdhc port.

I think it should be fine that we have a reasonable default settings in
soc.dtsi, and boards that need a different setup can overwrite the
settings in board.dts.

Shawn

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts | 4 ++++
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts   | 4 ++++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi      | 6 ------
>  3 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> index 91eef97..a3f8cf1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> @@ -133,6 +133,8 @@
>  &usdhc1 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> +	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	bus-width = <4>;
> @@ -149,6 +151,8 @@
>  
>  /* SD */
>  &usdhc2 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc2>;
>  	bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 88dd9132..d3d26cc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -137,6 +137,8 @@
>  };
>  
>  &usdhc1 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	bus-width = <8>;
> @@ -147,6 +149,8 @@
>  };
>  
>  &usdhc2 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc2>;
>  	bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 2d69f1a..9646a41 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -368,8 +368,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_0>;
>  			status = "disabled";
>  		};
> @@ -383,8 +381,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_1>;
>  			fsl,tuning-start-tap = <20>;
>  			fsl,tuning-step= <2>;
> @@ -400,8 +396,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_2>;
>  			status = "disabled";
>  		};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
