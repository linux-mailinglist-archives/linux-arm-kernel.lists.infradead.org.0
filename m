Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69741A96E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRYeLG5qTYJVoCfYqP+qEjYSLQg89Rcgw4IG44VDqfA=; b=Ybthf9GMKUlxcy
	n2PrpNxALVCa9rozQ1MsU18mAdanK0kkdRCtRmbvc1fY0nZEPTrYriVzQ7z0NaWJvTrlRE6zAa8Cm
	K+oxAm+yN5UCBmmyI7nARX1JdS7WfhDLRr4joK8hkG/boOUvbVKph/jJO0nwb6D7d8xYMdIQ6TdkF
	A6LkOXh71KpZgNnZIhHrUqjNXXYhhqLy79gnji7rkNrXFaDyx1ONKYFWp2azHe+iBnCTLsG769gkc
	UP/hPq8Lbg3TAwRmUz1pGk11Dr5PLcbfU86ZDfC0g+ysQgsW+tbzhMrdQxOz/7QlyVFopFF5SqEgF
	lX/3VMvUJtl2SQoLan7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdaP-0002up-4G; Wed, 15 Apr 2020 08:39:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdYG-0001La-51; Wed, 15 Apr 2020 08:37:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jOKFk-0008I1-1j; Tue, 14 Apr 2020 14:01:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308.dtsi
Date: Tue, 14 Apr 2020 14:01:19 +0200
Message-ID: <2038198.JSHZf9jCco@diego>
In-Reply-To: <f19b6b48-2950-abca-7dee-31c24118c3ef@gmail.com>
References: <20200413193652.1952-1-jbx6244@gmail.com>
 <20c81edc-247c-8db0-2b3c-a6c2fcad6b4e@arm.com>
 <f19b6b48-2950-abca-7dee-31c24118c3ef@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013744_227120_EC5E8EC2 
X-CRM114-Status: GOOD (  21.19  )
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
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Dienstag, 14. April 2020, 13:45:00 CEST schrieb Johan Jonker:
> Hi Robin, Heiko,
> 
> If the Rockchip DT maintainers(= Heiko) agree that the new line for the
> 'bus-width' properties is that it should be placed in dtsi I'll produce
> a version 2. Please advise what should be done with the other Rockchip
> SoCs. Change them too?

(1) as Robin pointed out bus-width and pinctrl containing the bus-pins
    should be in the same file, as they describe parts of the same property
(2) essentially it is ok for pinctrl-defaults to live in the dtsi, when there
    are no pin variants ... (like the uartX_mY pin variants), so if you enable
    a node and only have essentially one pin variant to enable, this should
    live in the soc dtsi (like essentially all boards using 4-pin sdmmc
    and 8-pin emmc)
(3) Fixing other devicetrees is optional, so I won't oppose it of course
    but it's also not something "that must be done" ;-)


Heiko


> On 4/14/20 12:02 PM, Robin Murphy wrote:
> > On 2020-04-13 8:36 pm, Johan Jonker wrote:
> >> The 'bus-width' property for mmc nodes is defined both in
> >> 'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
> >> In line with the other Rockchip SoCs define that in a user dts only,
> >> so remove all entries from mmc nodes in 'rk3308.dtsi'.
> > 
> > Judging by the pinctrl entries, these represent the number of pins
> > provided by the SoC itself. Obviously boards need to override that if
> > for some reason they don't wire up all the available data lines, but it
> > seems backwards to have every board restate the SoC's default value.
> > 
> > In fact, having brought it up, for this particular case the pinctrl
> > setting is inherently related to the bus width, so having one without
> > the other in either place doesn't smell right.
> > 
> > Robin.
> > 
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 ---
> >>   1 file changed, 3 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> >> b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> >> index a9b98555d..130771ede 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> >> @@ -587,7 +587,6 @@
> >>           compatible = "rockchip,rk3308-dw-mshc",
> >> "rockchip,rk3288-dw-mshc";
> >>           reg = <0x0 0xff480000 0x0 0x4000>;
> >>           interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
> >> -        bus-width = <4>;
> >>           clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
> >>                <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
> >>           clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> >> @@ -602,7 +601,6 @@
> >>           compatible = "rockchip,rk3308-dw-mshc",
> >> "rockchip,rk3288-dw-mshc";
> >>           reg = <0x0 0xff490000 0x0 0x4000>;
> >>           interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> >> -        bus-width = <8>;
> >>           clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
> >>                <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
> >>           clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> >> @@ -615,7 +613,6 @@
> >>           compatible = "rockchip,rk3308-dw-mshc",
> >> "rockchip,rk3288-dw-mshc";
> >>           reg = <0x0 0xff4a0000 0x0 0x4000>;
> >>           interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> >> -        bus-width = <4>;
> >>           clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
> >>                <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
> >>           clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> >>
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
