Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B301DA6EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/DOgcrE7geabDJSMl0Pe6l+LWNTmmkyU8G0iJwFmGY=; b=oFh1s5yiFUJ9xa
	+qJYpsvAwiuK+2bO/Tc02UfXPdnUhxKEbjf40+uvSS6OqPBqLg4/r97mGFbCZbQmvOF8Lp3QfdIzR
	WyJha3YynpJ4KiXegtSQ9GaSbUrp4+pF1/wZSuka3DTxgv+3SU0o6VZIAP7P1JjpvfcrFYgtjkeIc
	JGgFrzEiQOZHA6nydn6VIx5USQ/RsTFFDT0CoOqSKAAmW/Bu4b1XEcshZDYUETs+dcNfTCcIb2Ryl
	/t542dadPjaJKP0Fuyfu6Jqiu4jhZYk7HVzWQwEFWYKCSHWBIkn+DhqvF6hViRLF5QILNOJCJl6mz
	YLUG2hBKLwh786dxLUpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDBZ-0008Ey-W6; Wed, 20 May 2020 01:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDBM-0008Dr-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:06:06 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE4A620708;
 Wed, 20 May 2020 01:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589936764;
 bh=zor48bXJQ4c2kAxaJluW7+9Ew89ICgOqiSGEW4LgzI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=alcv5suyhyRxqBPQAM026Gtjv1cHG5anqpF86KMAtYP0hwh+PBQlJF/PVGXhNv4py
 BdZ2zF9jIdu1TFQSXWQHstetWrldKlrOCS89qy6W4QoeRvKVUGZi21LE4NNxm3hWte
 jSQa+8bLDq2vusmQL0Q7BQVLd8MkMS+Qp6fNoi9g=
Date: Wed, 20 May 2020 09:05:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add node for SPDIF
Message-ID: <20200520010558.GF11739@dragon>
References: <20200502132011.196045-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502132011.196045-1-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_180604_930770_4B009DF2 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 08:20:11AM -0500, Adam Ford wrote:
> The i.MX8M Mini can support SPIDF which is very similar to the
> IP used on the i.MX35.
> 
> This patch adds the SPIF node.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index d46e727fc362..00aad55ece65 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -358,6 +358,29 @@ micfil: micfil@30080000 {
>  				status = "disabled";
>  			};
>  
> +			spdif1: spdif@30090000 {

It should be in a patch series with previous micfil one, as it cannot be
applied independently.

> +				compatible = "fsl,imx8mm-spdif", "fsl,imx35-spdif";
> +				reg = <0x30090000 0x10000>;
> +				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_AUDIO_AHB>, /* core */
> +					 <&clk IMX8MM_CLK_24M>, /* rxtx0 */
> +					 <&clk IMX8MM_CLK_SPDIF1>, /* rxtx1 */
> +					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx2 */
> +					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx3 */
> +					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx4 */
> +					 <&clk IMX8MM_CLK_AUDIO_AHB>, /* rxtx5 */
> +					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx6 */
> +					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx7 */
> +					 <&clk IMX8MM_CLK_DUMMY>; /* spba */
> +				clock-names = "core", "rxtx0",
> +					      "rxtx1", "rxtx2",
> +					      "rxtx3", "rxtx4",
> +					      "rxtx5", "rxtx6",
> +					      "rxtx7", "spba";
> +				dmas = <&sdma2 28 18 0>, <&sdma2 29 18 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};

Have a newline between nodes.

Shawn

>  			gpio1: gpio@30200000 {
>  				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
>  				reg = <0x30200000 0x10000>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
