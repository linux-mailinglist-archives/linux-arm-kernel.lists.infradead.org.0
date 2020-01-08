Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B84133EC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSqRlScsHG2OxWhXfqRIJn6qtF+MDNJ4kbQaCPH8Qjc=; b=O6J18+VLSOmmZB
	/pUk/oLAj+ffSXMxDtYVuh6Rr6OLyG6rj64NhNuYXLBl3MZAEsZMVaFx4lcdV2eYjy8tTW5n2qfBb
	N14qPdcyU5bDRZMHNGiR9HBja1Lo58b1dPJxE2E5nVY3TGglraa3OTVSvlFNTbfBFmn8Q6oU3wkzr
	KLcSXidTTGa1o/PKfKv7chX2aMsjYgeQBG8Nj3WPLv/w6/a5wPg0Tf0iQeSSmUhGanUe6YOF8i8il
	dDznZ5Aw6ZJ6h/Eix/yEW/m4DUWjmieLpSkHCsQ+TOOnP5icHvbnzHr6YJvTJjdSrZpfYtDH6CCoT
	NAKsF5BPUDnaooVNR1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip87j-0007sm-6Z; Wed, 08 Jan 2020 09:59:35 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip87W-0007s0-Hu
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:59:28 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5903CE0016;
 Wed,  8 Jan 2020 09:59:20 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Russell King <linux@armlinux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH 1/3] ARM: armada-38x-solidrun-microsom: move i2c0 to SOM DT
In-Reply-To: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
References: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
Date: Wed, 08 Jan 2020 10:59:20 +0100
Message-ID: <87d0bub75z.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_015926_775016_711FE51A 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dennis Gilmore <dennis@ausil.us>, Baruch Siach <baruch@tkos.co.il>,
 Aditya Prayoga <aditya@kobol.io>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch,

> Move the i2c0 controller properties to the SOM .dtsi. This is
> preparation for adding an i2c device at the SOM level.
>
> Cc: Dennis Gilmore <dennis@ausil.us>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  arch/arm/boot/dts/armada-388-clearfog.dtsi          | 5 -----
>  arch/arm/boot/dts/armada-388-helios4.dts            | 5 -----
>  arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi | 7 +++++++
>  3 files changed, 7 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/armada-388-clearfog.dtsi b/arch/arm/boot/dts/armada-388-clearfog.dtsi
> index 0d81600ca247..a6edea6f50d1 100644
> --- a/arch/arm/boot/dts/armada-388-clearfog.dtsi
> +++ b/arch/arm/boot/dts/armada-388-clearfog.dtsi
> @@ -111,11 +111,6 @@ &eth2 {
>  };
>  
>  &i2c0 {
> -	clock-frequency = <400000>;
> -	pinctrl-0 = <&i2c0_pins>;
> -	pinctrl-names = "default";
> -	status = "okay";
> -
>  	/*
>  	 * PCA9655 GPIO expander, up to 1MHz clock.
>  	 *  0-CON3 CLKREQ#
> diff --git a/arch/arm/boot/dts/armada-388-helios4.dts b/arch/arm/boot/dts/armada-388-helios4.dts
> index 705adfa8c680..fb49df2a3bce 100644
> --- a/arch/arm/boot/dts/armada-388-helios4.dts
> +++ b/arch/arm/boot/dts/armada-388-helios4.dts
> @@ -140,11 +140,6 @@ usb3_phy: usb3-phy {
>  	soc {
>  		internal-regs {
>  			i2c@11000 {
> -				clock-frequency = <400000>;
> -				pinctrl-0 = <&i2c0_pins>;
> -				pinctrl-names = "default";
> -				status = "okay";
> -
>  				/*
>  				 * PCA9655 GPIO expander, up to 1MHz clock.
>  				 *  0-Board Revision bit 0 #
> diff --git a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> index 3a7f9c1ac346..cd39312fb50d 100644
> --- a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> +++ b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> @@ -71,6 +71,13 @@ phy_dedicated: ethernet-phy@0 {
>  	};
>  };
>  
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	pinctrl-0 = <&i2c0_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	microsom_phy_clk_pins: microsom-phy-clk-pins {
>  		marvell,pins = "mpp45";
> -- 
> 2.24.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
