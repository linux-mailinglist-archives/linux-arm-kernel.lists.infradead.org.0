Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE619138DC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzCZuKqeAL1GXJoYZE21Zfoqgy4SvyOQukKtFs+91po=; b=TBSuwBEcYvY8a1
	i88eU+qPa5vSyZCHZle5e/2EdxPTNbAXykB3ZOmbgwx8bLU+0lTKgunIJr2ef4gV+pt6AI7AYh5vH
	PRj70Av/zrjhA/PmFp7G+OlNs9ZdncnryuZDg29PhnIvsp1cyE0NC0VtxLB6Dhe8VcKKrDNNHGBtn
	an5iEJfdleKYjSs28eW/W1J0WbBBu9FTSwEiEUcUHUFVkkPouQht7K/CFBzGICxr7w49XVZXh/oir
	Fe6lgR3oXfbK6PeTekAO+9kPKxwEkUqTJnRLgeH3KxG+n1XijavXLRnisSav4/rFEywPSfo6dnAKP
	/CpOJFKFf20hkewOj1Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvzh-0000DY-8d; Mon, 13 Jan 2020 09:26:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvzY-0000Cl-HN; Mon, 13 Jan 2020 09:26:38 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqvzU-000219-9u; Mon, 13 Jan 2020 10:26:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Mon, 13 Jan 2020 10:26:31 +0100
Message-ID: <2116127.mXfZQK7onI@phil>
In-Reply-To: <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
 <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012636_725607_A2B3AA46 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 10. Januar 2020, 16:40:24 CET schrieb Johan Jonker:
> Hi,
> 
> Question for Heiko or rob+dt.
> Where would should #address-cells and #size-cells go in the dts or to the dtsi.
> In case they become required in a futhure rockchip-dw-mshc.yaml?
> ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?

I don't think it is a required property for the dw-mmc itself, as only
in special-cases do you need subnodes there. Like emmc and sd-cards
are completely probeable without needing further information and
only the wifi/bt chips _might_ need these.

So I don't think that this is a property of the controller itself, but te
connected card - hence should stay in the board file.

Heiko


> 
> Thanks
> 
> 2020-01-10 15:21 GMT+01:00, Johan Jonker <jbx6244@gmail.com>:
> > An experimental test with the command below gives this error:
> > rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > So fix this by adding a reg property to the brcmf sub node.
> > Also add #address-cells and #size-cells to prevent more warnings.
> >
> > make ARCH=arm64 dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
> >  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
> >  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
> >  3 files changed, 9 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > index 92de83dd4..06043179f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > @@ -669,9 +669,12 @@
> >  	vqmmc-supply = &vcc1v8_s3;	/* IO line */
> >  	vmmc-supply = &vcc_sdio;	/* card's power */
> >
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > index 4944d78a0..e87a04477 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > @@ -654,9 +654,12 @@
> >  	sd-uhs-sdr104;
> >  	vqmmc-supply = <&vcc1v8_s3>;
> >  	vmmc-supply = <&vccio_sd>;
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > index 0541dfce9..9c659f311 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > @@ -648,9 +648,12 @@
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> >  	sd-uhs-sdr104;
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > --
> > 2.11.0
> >
> >
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
