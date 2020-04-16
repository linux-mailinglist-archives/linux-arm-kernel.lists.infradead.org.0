Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B15F1AC510
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDpTJEriiCljcO9jEQtM/4g7opYd74RpX8WPlWG3ioU=; b=q3/4pXfGC9Xe3p
	m8UZEjOsIY7g02hixFcuHIG+DlUr0/MLUIttwmepP2sSjTSb8jbaeXKc3ntTXa920K2PNtchMlCRC
	NfSLWoSq3D+0kykhH7MXF/lRJQMokdFdH+xR6Z8yXSi+4gZpfOrae9PEVz+iIu2jLawP4IAi2c287
	DwcARPytAS0iVaeZh1nxh1WUQQgEH35aKCBHMfTwkDrPIol3f/pudTy/NYGmvNQ9vs9iNbByiut1+
	36nF1sm7MxgVcJgzi9EV0N5kMECJb6Mcl26PSXlro74SNSnvJNagmIg/no2J3L/yyaKIAULjq2BTd
	kxAcKW1uio7I/3Hz5CCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5Ew-0008PH-2E; Thu, 16 Apr 2020 14:11:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5Ek-0008Oh-QH; Thu, 16 Apr 2020 14:11:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 117862A20C3
Message-ID: <765aa9ab4f354df47f587711603fba6ffd358147.camel@collabora.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Johan Jonker
 <jbx6244@gmail.com>
Date: Thu, 16 Apr 2020 11:11:12 -0300
In-Reply-To: <20200416135519.GJ125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
 <20200416135519.GJ125838@aptenodytes>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_071126_981980_6DB21717 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-04-16 at 15:55 +0200, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
> > On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
> > > Hi,
> > > 
> > > On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
> > > > Hi Paul,
> > > > 
> > > > The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
> > > > has been approved by robh.
> > > 
> > > Huh, I looked around for ongoing related work but missed it.
> > > I'll definitely rebase on top of your series and use the yaml description
> > > instead. Thanks!
> > > 
> > > > Maybe place dts patches at the end of a patch serie.
> > > > Could you include a &rga patch if your device is supported in mainline,
> > > > so we can test with:
> > > > make ARCH=arm64 dtbs_check
> > > > DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > > 
> > > I tested with the PX30 EVB so I can surely add a node there if that turns
> > > out necessary (see below).
> > > 
> > > > Johan
> > > > 
> > > > On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> > > > > The PX30 features a RGA block: add the necessary node to support it.
> > > > > 
> > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> > > > >  1 file changed, 11 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > > > > index 75908c587511..4bfbee9d4123 100644
> > > > > --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> > > > > +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > > > > @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
> > > > >  		status = "disabled";
> > > > >  	};
> > > > >  
> > > > > +	rga: rga@ff480000 {
> > > > > +		compatible = "rockchip,px30-rga";
> > > > > +		reg = <0x0 0xff480000 0x0 0x10000>;
> > > > > +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> > > > > +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> > > > > +		clock-names = "aclk", "hclk", "sclk";
> > > > > +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > > > > +		reset-names = "core", "axi", "ahb";
> > > > > +		power-domains = <&power PX30_PD_VO>;
> > > > 
> > > > 		status = "disabled";
> > > 
> > > As of 5.6, the rk3399 has the node enabled by default. Did that change?
> > 
> > 'status' disappeared during review for rk3399 between v2 and v3, but
> > doesn't mention the reason. If someone can give more info here?
> > 
> > https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen@iotwrt.com/
> > 
> > https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen@iotwrt.com/
> > 
> > > Since it's a standalone block that has no I/O dependency, I don't really see
> > > the point of disabling it by default.
> > 
> > Vop, hdmi and other video devices are also disabled.
> > Follow the rest I think...
> 
> Well, these blocks do have related I/O ports so it makes sense not to enable
> them by default because of pinmux, or because there might be no connector
> populated/routed.
> 
> For a memory to memory internal block, I don't see any reason why.
> It's definitely not board-specific and having to add these nodes for every board
> that has them is kind of a pain and might be overlooked. This will easily result
> in the feature not being available for end users without having to change the
> dt.
> 
> Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
> I think these are better examples to follow.
> 

It's exactly as Paul just said :-)

Not board specific, no reason to disable, and also
no way to know under what condition you'd enable.

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
