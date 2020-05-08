Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5751CA8D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 12:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqrJ00LY9PGRzQ93/eaCSB/EwvnPa2uDSako6NsEwd8=; b=PQzMmEJR2jo9OT
	tMAxH4mxxPyZ2MGJXxI/769Notd1wQAB/oqM3sLKOHW6XECKVaLNu0bITwPJgUCmoakbb2bPQwPGa
	BVSVpHFn9xIT6Mzs8xLOCXFZJmsVO/4uFEhHLoZ4yULxuSC4yrG3S/ks6vucp2gln7JJHhG7NYyyy
	JOYOEcOKF2Ir9FuihrYFVP2eyCErfFflY2Jm8Rvi43T3xXCSK7D7kaVg892+niWsRZwci1WKljuL0
	8H4dDZoJdL7aN5Yqrdm5MwyAf8D9JFoXiLmjBQQYHjPHz5RPHFauZC9eheTSTqwEpIsQxN5YPyVcr
	+ihrjzsU9UERQjJp0H8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX0ft-00059l-8q; Fri, 08 May 2020 10:56:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX0fi-00055E-SC; Fri, 08 May 2020 10:56:05 +0000
Received: from p5b127ea8.dip0.t-ipconnect.de ([91.18.126.168]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jX0fV-0004DA-5n; Fri, 08 May 2020 12:55:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Fri, 08 May 2020 12:55:48 +0200
Message-ID: <2855296.rNCsY6NMd3@phil>
In-Reply-To: <7112d1fa-a872-c66f-0ece-a77ba1f852de@gmail.com>
References: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
 <20200507202558.GK2422122@aptenodytes>
 <7112d1fa-a872-c66f-0ece-a77ba1f852de@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_035602_910854_B73A9E14 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 8. Mai 2020, 01:40:08 CEST schrieb Johan Jonker:
> Hi Paul,
> 
> On 5/7/20 10:25 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Fri 01 May 20, 00:05, Johan Jonker wrote:
> >> Hi Paul,
> >>
> >>> The PX30 features a RGA block: add the necessary node to support it.
> >>>
> >>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >>>  1 file changed, 11 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> index f809dd6d5dc3..3de70aa4f1ce 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> @@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
> >>>  		status = "disabled";
> >>>  	};
> >>>  
> >>> +	rga: rga@ff480000 {
> >>> +		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
> >>> +		reg = <0x0 0xff480000 0x0 0x10000>;
> >>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> >>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> >>> +		clock-names = "aclk", "hclk", "sclk";
> >>
> >>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >>> +		reset-names = "core", "axi", "ahb";
> >>> +		power-domains = <&power PX30_PD_VO>;
> >>
> >> sort
> >>
> >> 		power-domains = <&power PX30_PD_VO>;
> >> 		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >> 		reset-names = "core", "axi", "ahb";
> > 
> > What's the rationale behind this (besides alphabetic sorting, which I don't
> > believe is a rule for dt properties)? Some nodes above in the file have it in
> > the same order that I do, and I like to see clocks followed by resets.
> 
> My short list.
> There is no hard rule... It mostly depend on Heiko...

For the record, if needed I do any re-sorting myself normally, so there is
no need to respin patches just because nodes are sorted differently.

But yes, since the early Chromebook project in 2014 we agreed on
doing in Rockchip dts files:

----
compatible
reg
interrupts
[alphabetical]
status [if needed]
----

This works most of the time, but sometimes gets missed but is not _that_
big a deal if that happens ;-) .


Heiko


> For nodes:
> If exists on top: model, compatible and chosen.
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
> 
> Inside nodes:
> If exists on top: compatible, reg and interrupts.
> In alphabetical order the required properties.
> Then in alphabetical order the other properties.
> And as last things that start with '#' in alphabetical order.
> Add status below all other properties for soc internal components with
> any board-specifics.
> Keep an empty line between properties and nodes.
> 
> Exceptions:
> Sort pinctrl-0 above pinctrl-names, so it stays in line with clock-names
> and dma-names.
> Sort simple-audio-card,name above other simple-audio-card properties.
> Sort regulator-name above other regulator properties.
> Sort regulator-min-microvolt above regulator-max-microvolt.
> 
> > 
> > Cheers,
> > 
> > Paul
> > 
> >>
> >>
> >>> +	};
> >>> +
> >>>  	qos_gmac: qos@ff518000 {
> >>>  		compatible = "syscon";
> >>>  		reg = <0x0 0xff518000 0x0 0x20>;
> >>
> > 
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
