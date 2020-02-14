Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8053615D09A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2IN+FprqEfbBu/heYIIjuz9NLoA3WmoTr8olKCTimo=; b=UcI9VdHfcW1TJh
	UVfAhuuvBlhMaY7RL+2aKT6LRzpOLkd/yjvZk+LCPQ8V9Mcw8z9SMoSKueY0wCsNSQ25tUwGBUGcl
	fFjhJM+cA9LYDxvjDL/owPZSIgt7zzjtUPXSKN+ITTrwjcsyhLgsiBKJrt6oAYEjrZssevaRrAFVf
	0vlFlBKHK4/GLqaO0wEQ3K4SWi++bU6TqaISB5anaiS96tA3aFuSm7hx8yb8bzWJcb6gNLs/ttngK
	UcFlyoTDNfbHddR8SIzecFH1Lp8JdrM0su54iyYZLOcfuH+FfeLK6rzzAWu7xtzPX/FflvdRct1UD
	lNm4ZTJJ8wxk3vMxAGYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RmB-00078r-LY; Fri, 14 Feb 2020 03:36:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Rm2-00078O-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:36:16 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B013320661;
 Fri, 14 Feb 2020 03:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581651374;
 bh=FQq2eSsY4LMduKHB5Lrk+/8WyGuLFYrA6vIr5eefBcQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qhOJijaNMbRRFaXbZQ4jSwTstmesoXm74LV3twO/zVG2G33fqiGGEjdey6ttv5Ot7
 WMAh1HQNKUOtgLpfcojpSHcgcJ0CaRuGXnc9W0wEpDpUicLBXhlTeLS98V2klIZFXv
 Qce17kAsJdh/ZVQvswKLS84bkApa+StnM6nq4VhU=
Date: Fri, 14 Feb 2020 11:36:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 5/5] arm64: dts: enable fspi in imx8mm dts
Message-ID: <20200214033605.GP22842@dragon>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202125950.1825013-5-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_193614_989905_16576BB9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Ashish Kumar <ashish.kumar@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 02, 2020 at 06:59:50AM -0600, Adam Ford wrote:
> Pull in upstream patch from NXP repo to:
> enable fspi in imx8mm DT file
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2: Reorder s-o-b lines to give credit in proper order.
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 1e5e11592f7b..679769fe6cab 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -558,7 +558,21 @@ aips3: bus@30800000 {
>  			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> -			ranges = <0x30800000 0x30800000 0x400000>;
> +			ranges = <0x30800000 0x30800000 0x400000>,
> +				 <0x8000000 0x8000000 0x10000000>;
> +
> +			flexspi: spi@30bb0000 {

Keep the node sort in unit-address.

Shawn

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "nxp,imx8mm-fspi";
> +				reg = <0x30bb0000 0x10000>, <0x8000000 0x10000000>;
> +				reg-names = "fspi_base", "fspi_mmap";
> +				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_QSPI_ROOT>,
> +					 <&clk IMX8MM_CLK_QSPI_ROOT>;
> +				clock-names = "fspi", "fspi_en";
> +				status = "disabled";
> +			};
>  
>  			ecspi1: spi@30820000 {
>  				compatible = "fsl,imx8mm-ecspi", "fsl,imx51-ecspi";
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
