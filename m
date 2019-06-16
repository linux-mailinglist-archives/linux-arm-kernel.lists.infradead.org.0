Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34E94752B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 16:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KDry4mj+5NYnULPIufJgD5SSFU0kLIMKsFHxGwbG+w=; b=Od/gakUoCTo7DF
	Uh3gm8IpyJ59/W3/H0BxbREgy2xH8FRjFqnEtAak1FIvkbzh6GynqEceq1H1KcFyd/3XOCIFySOzs
	SWCUGEvdFjaqulTcSBtLxJZleB2LfaQfkckNikC+JBy8o4kfxowesep53JRzdzXmQGOzRXVWLLP3o
	3SW5LEC0podPdAedQ3Hby0kpCkxgBcg1hm/d+xLKur1F7KQ2ZgQGwwXNrXxlQN3S3AdJLe492Ceqv
	z1oyMy0UeNDKsD1PMJsrgc6TSXFeQdkKSBn7LFDq4dMU+ohJy0Vnu1y/CHZgZNU41lVOpo+Q7axaB
	FMgiYQDMVlw3tkkMzCAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcW6n-0008U3-9d; Sun, 16 Jun 2019 14:26:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcW6U-0008Sm-8a; Sun, 16 Jun 2019 14:25:56 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcW6A-0006Xe-U6; Sun, 16 Jun 2019 16:25:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
Date: Sun, 16 Jun 2019 16:25:34 +0200
Message-ID: <1624608.ah9ZKqicGs@diego>
In-Reply-To: <a3050da7-9b99-c6fd-ee06-f65503f1ae87@arm.com>
References: <20190613162745.12195-1-enric.balletbo@collabora.com>
 <a685fef9-8f45-700c-17d6-59d792fca092@collabora.com>
 <a3050da7-9b99-c6fd-ee06-f65503f1ae87@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_072554_459324_7DC90359 
X-CRM114-Status: GOOD (  25.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-rockchip@lists.infradead.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 13. Juni 2019, 19:44:43 CEST schrieb Robin Murphy:
> On 13/06/2019 18:20, Enric Balletbo i Serra wrote:
> > Hi Robin,
> > 
> > On 13/6/19 18:56, Robin Murphy wrote:
> >> On 13/06/2019 17:27, Enric Balletbo i Serra wrote:
> >>> As per binding documentation [1], the DWC3 core should have the "ref",
> >>> "bus_early" and "suspend" clocks. As explained in the binding, those
> >>> clocks are required for new platforms but not for existing platforms
> >>> before commit fe8abf332b8f ("usb: dwc3: support clocks and resets for
> >>> DWC3 core").
> >>>
> >>> However, as those clocks are really treated as required, this ends with
> >>> having some annoying messages when the "rockchip,rk3399-dwc3" is used:
> >>>
> >>> [    1.724107] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> >>> [    1.731893] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> >>> [    2.495937] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> >>> [    2.647239] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> >>>
> >>> In order to remove those annoying messages, update the DWC3 hardware
> >>> module node and add all the required clocks. With this change, both, the
> >>> glue node and the DWC3 core node, have the clocks defined, but that's
> >>> not really a problem and there isn't a side effect on do this. So, we
> >>> can get rid of the annoying get clk error messages.
> >>
> >> Can we not just move these clocks entirely from the glue layer to the core
> >> layer? That didn't seem to break when I tried it, although I'll admit my
> >> 'testing' was no more than booting and mounting a USB 3.0 flash drive, no
> >> suspend or anything fancy.
> >>
> > 
> > AFAICT usb doesn't break, but we won't break backward compability then? (/me
> > still doesn't know when backward compability is really important or not)
> 
> Ah, fair point - I was imagining the glue layer's heavy-handed "turn 
> everything on" approach potentially interfering with the core layer's 
> ability to exert finer-grained control of the clocks it knows more 
> about, but the "old kernel, new DT" situation might indeed be a problem. 
> I guess that's Heiko's call in the end.

I really try to stay with the "backwards-compatible" philosophy
(at least with the old dt with new kernel variant) and so far that worked
surprisingly well ;-) .

Personally I don't believe in the other direction, old kernel with new dt,
as we're always adding features, so updating the devicetree without
updating the kernel doesn't look like it would make very much sense.

So if you just keep the old-dt+new-kernel variant intact, I'll be happy.


Heiko



> Plus I'm no CCF expert so my 
> concern might be unfounded anyway.
> 
> >> My own attempt to shut up these errors got sidetracked into c0c61471ef86 ("usb:
> >> dwc3: of-simple: Convert to bulk clk API"), then apparently stalled :)
> >>
> > 
> > There was any off the record discussion and stalled or simply you didn't get
> > feedback?
> 
> More that the 3399 board got put away in a freak "tidying the kitchen" 
> incident, and I've just had too many other things on the go since :)
> 
> Robin.
> 
> > 
> > I'll take a look.
> > 
> > Thanks,
> > ~ Enric
> > 
> >> Robin.
> >>
> >>>
> >>> [1] Documentation/devicetree/bindings/usb/dwc3.txt
> >>>
> >>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >>> ---
> >>>
> >>>    arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
> >>>    1 file changed, 6 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> index 196ac9b78076..a15348d185ce 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> @@ -414,6 +414,9 @@
> >>>                compatible = "snps,dwc3";
> >>>                reg = <0x0 0xfe800000 0x0 0x100000>;
> >>>                interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
> >>> +            clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
> >>> +                 <&cru SCLK_USB3OTG0_SUSPEND>;
> >>> +            clock-names = "ref", "bus_early", "suspend";
> >>>                dr_mode = "otg";
> >>>                phys = <&u2phy0_otg>, <&tcphy0_usb3>;
> >>>                phy-names = "usb2-phy", "usb3-phy";
> >>> @@ -447,6 +450,9 @@
> >>>                compatible = "snps,dwc3";
> >>>                reg = <0x0 0xfe900000 0x0 0x100000>;
> >>>                interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
> >>> +            clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
> >>> +                 <&cru SCLK_USB3OTG1_SUSPEND>;
> >>> +            clock-names = "ref", "bus_early", "suspend";
> >>>                dr_mode = "otg";
> >>>                phys = <&u2phy1_otg>, <&tcphy1_usb3>;
> >>>                phy-names = "usb2-phy", "usb3-phy";
> >>>
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
