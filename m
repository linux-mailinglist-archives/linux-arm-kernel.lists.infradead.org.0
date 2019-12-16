Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA980120758
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=78OvO6p5vMjUJUR3xsVbeTXmZyP1a6C8pC+iLlxfx3Y=; b=Wkb1JGi3G1kJClXREArXzzQNR
	Wwpkmq63ZPQnB/SWMmeLDb/1NnbDd0yQ3YMjdmGKLrBvaOZ99ZZE4D5Cfbi+CJvx4C/WAN/IQE3if
	5FXi+AXuPyX5UKWdBK9YWAHbs1bQI6ZW5Ehg8Mk+Ym/1Blie3e2d9/NYG7gSVbyayt8Dhq9uHoSmT
	tHOf3xLjT86vYfthvrE9qDBDYOwxadZZdIul03yO8G4W8kBRBidJmsHN+/bmu6UcifPhtyvRVgIjv
	vLCy1USIWyssJ3EXjmMbI58GpUtQShl6d0pM/ctD5xhcpUYaDmC73yMyBy/NdkGvpEmM9w2pyFoRI
	uDwigHuww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqb8-0006bi-39; Mon, 16 Dec 2019 13:39:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqaz-0006bI-QZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:39:35 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 121A620409;
 Mon, 16 Dec 2019 13:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503573;
 bh=7SGMKiJuU0qvOnDKNSk19Hh1fTjIukPVmdPORtDYtmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vfLGXmzS2aEJJUXCz87hGKfWnfKZK5c+nQN4ASKWZC/3ARcgJPTTGa+WMDjs1sCGz
 hAJOTeLNBGoTrgn63VcheYdOsnr3rihcQ7gSl17aXmp5oXdeYdin1sQ0wtwpLbkMPd
 gvnWCW7oIuMe3ciOPsbHGa/nr2xx6KpcjOQZK1DI=
Date: Mon, 16 Dec 2019 14:39:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 11/14] ARM: dts: sun8i: r40: Add device node for CSI0
Message-ID: <20191216133931.wliwn5woy3hstdg3@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-12-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-12-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053933_903322_A4EF7C19 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6627342556643609767=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6627342556643609767==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qmlybd2b72avx3db"
Content-Disposition: inline


--qmlybd2b72avx3db
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:21AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The CSI0 and CSI1 blocks are the same as found on the A20. However only
> CSI0 is supported upstream right now.
>
> Add a device node for CSI0 using the A20 compatible as a fallback, and
> the standard pinctrl options. Also add the MBUS interconnect.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 36 ++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 82ea0b5b0710..2d1e97cc4155 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -180,6 +180,20 @@ nmi_intc: interrupt-controller@1c00030 {
>  			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>
> +		csi0: csi@1c09000 {
> +			compatible = "allwinner,sun8i-r40-csi0",
> +				     "allwinner,sun7i-a20-csi0";
> +			reg = <0x01c09000 0x1000>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_CSI0>, <&ccu CLK_CSI_SCLK>,
> +				 <&ccu CLK_DRAM_CSI0>;
> +			clock-names = "bus", "isp", "ram";
> +			resets = <&ccu RST_BUS_CSI0>;
> +			interconnects = <&mbus 5>;
> +			interconnect-names = "dma-mem";
> +			status = "disabled";
> +		};
> +
>  		mmc0: mmc@1c0f000 {
>  			compatible = "allwinner,sun8i-r40-mmc",
>  				     "allwinner,sun50i-a64-mmc";
> @@ -355,6 +369,20 @@ clk_out_a_pin: clk-out-a-pin {
>  				function = "clk_out_a";
>  			};
>
> +			/omit-if-no-ref/
> +			csi0_8bits_pins: csi0-8bits-pins {
> +				pins = "PE0", "PE2", "PE3", "PE4", "PE5",
> +				       "PE6", "PE7", "PE8", "PE9", "PE10",
> +				       "PE11";
> +				function = "csi0";
> +			};
> +
> +			/omit-if-no-ref/
> +			csi0_mclk_pin: csi0-mclk-pin {
> +				pins = "PE1";
> +				function = "csi0";
> +			};
> +
>  			gmac_rgmii_pins: gmac-rgmii-pins {
>  				pins = "PA0", "PA1", "PA2", "PA3",
>  				       "PA4", "PA5", "PA6", "PA7",
> @@ -624,6 +652,14 @@ gmac_mdio: mdio {
>  			};
>  		};
>
> +		mbus: dram-controller@1c62000 {
> +			compatible = "allwinner,sun8i-r40-mbus";
> +			reg = <0x01c62000 0x1000>;
> +			clocks = <&ccu 155>;

We should export the clock too?

Maxime
>

--qmlybd2b72avx3db
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeJEwAKCRDj7w1vZxhR
xX4mAP9raoaBd1QdA12eLJMz9YoIz/KDkCY7IQsU8z/3jU+6kAEA/VtzPoBPHD0K
JHbPLHhucKTZH4r3G5PLW3g/rkleMQA=
=CsA8
-----END PGP SIGNATURE-----

--qmlybd2b72avx3db--


--===============6627342556643609767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6627342556643609767==--

