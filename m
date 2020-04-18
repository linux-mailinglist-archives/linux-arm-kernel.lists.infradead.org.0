Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27101AEBEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 12:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZPiTmrUKQU0JjKQe1DfMzO+iMusfymHxrBzwirAQvk=; b=dm8TdxyvA3BpAK
	4s91NdfwN2uvLuU6vymmaPZC/SoTcHi65v0qzN9o95zNIgGmoDcU1e927kUC5/MeFyOVRvq0VP/9I
	s/3ZXDzazZDVtUkDsyzZV0JhsCgzs00X9v6uOIt0rx/uEGNZZfv2I1dIy2V8g4LJvCfzBQx6CidQ6
	1ZhxPUu3A9+8TtC8BdwmeaS60NSdcY9/JNubPEASvDQxYrRFQC3xbXIFjknac5vjt0SSNyCVESSsz
	f30CCyaQlbJpomuK3jP9KMP8AEGKAcaS7IJ2o+TIBxlxOE//ex8xwF3zweDzKanY4DwRQE9IOEMUv
	D10+pKFTVfF8vVfLwgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPl6c-0002tq-Rx; Sat, 18 Apr 2020 10:53:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPl6S-0002sU-OB; Sat, 18 Apr 2020 10:53:42 +0000
Received: from p57b77241.dip0.t-ipconnect.de ([87.183.114.65]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jPl6J-00011g-3g; Sat, 18 Apr 2020 12:53:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
Date: Sat, 18 Apr 2020 12:53:30 +0200
Message-ID: <2533855.f5ZhyS2AsA@phil>
In-Reply-To: <b77422198df7c285d824086131371284@risingedge.co.za>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
 <3593382.iQIKm1rSL1@phil> <b77422198df7c285d824086131371284@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_035340_786371_8EF4DA76 
X-CRM114-Status: GOOD (  18.75  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 18. April 2020, 11:56:03 CEST schrieb Justin Swartz:
> Hi Johan, Heiko,
> 
> On 2020-04-18 11:49, Heiko Stuebner wrote:
> 
> > Am Samstag, 18. April 2020, 11:15:27 CEST schrieb Johan Jonker:
> > 
> >> Hi Justin, Heiko,
> >> 
> >> In the discussion about "rockchip,px30-rga" it was mentioned that:
> >> "no status for soc internal components without any board-specifics".
> >> The binding is in mainline, but the dts node is missing I think.
> >> Should this also be changed?
> > 
> > yep, drop the status disabled from the dtsi and that then results
> > in not needing the board-level enablement
> > 
> > (background: rga is a simple mem2mem device without any
> > board-specific hooks)
> 
> Shall I submit version 5 of this patch series?

I guess so ... especially as we expect patch1 to go through the
media tree and sending a new version might serve as a ping :-)
and include the Ack by Rob for easy applying


Heiko


> 
> > Johan
> > 
> > +&rga {
> > +    status = "okay";
> > +};
> > +
> > 
> > Add a node to define the presence of RGA, a 2D raster
> > graphic acceleration unit.
> > 
> > Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> > ---
> > arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
> > 1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> > b/arch/arm/boot/dts/rk322x.dtsi
> > index 340ed6ccb..29d50bebc 100644
> > --- a/arch/arm/boot/dts/rk322x.dtsi
> > +++ b/arch/arm/boot/dts/rk322x.dtsi
> > @@ -621,6 +621,17 @@
> > status = "disabled";
> > };
> > 
> > +    rga: rga@20060000 {
> > +        compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> > +        reg = <0x20060000 0x1000>;
> > +        interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> > +        clock-names = "aclk", "hclk", "sclk";
> > +        resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru 
> > SRST_RGA_H>;
> > +        reset-names = "core", "axi", "ahb";
> > +        status = "disabled";
> > remove?
> > 
> > +    };
> > +
> > iep_mmu: iommu@20070800 {
> > compatible = "rockchip,iommu";
> > reg = <0x20070800 0x100>;
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
