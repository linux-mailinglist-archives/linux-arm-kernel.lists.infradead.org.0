Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA7226E8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 15:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X4xv9nSJfrQM8sz0fZ6+2W8MDSAO+wizSJsptvfe2A=; b=BUx9YbiM1jmI4P
	+RBMgaN+9RnO8Llz+IZLHWN2GRc9Aq9z+TOF97XuCLfhSFaqTjaCnf64DxBSWAJArgJaPEsSD2GTM
	o8LKVPo8ZSl9s1Vr3KbKChYRmVOlqrdWoT1YXUVxLN5Ku3MBlS+pPK+oAlFx30cZr7j1YzdcfFj8u
	U7B5Emja4OxCJlpGAMcXr/efAmcjjWGZocVo/wkru+4JchDpfLyBSc43uIVp9aqXNhQvpT4a7oWsR
	+oeiabvVng3nd66kfDlfHoSNjwUVWfZx7/IfcyANRXVeAApPBKX/WVziMP92zEbuWCa+jRK/DIeiw
	OZxn+7CyhHiqvV3VgHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSMGt-0000Qf-58; Sun, 19 May 2019 13:54:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSMGl-0000Q8-Et
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 13:54:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558274063; bh=lXTBePQTd66A2iS+g6VRPcxOuAD2+KiPtXMZZvonC7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=neK8JtgsXP3XLtC81Zyx6VE8nBcKHll5MldQfBfDf7T2/nzOZo+FNT3sptDKnPgmE
 Tt9Ugu3Y18OSBH3bCGeTdfE5HCGy/zLHCqWsBwzWotZHkiMyMJLnxvgwh7af1zsLbg
 P0RKVp9/xpl+lcEUJIMHU/qO5UIlr2qwLZsQPHUU=
Date: Sun, 19 May 2019 15:54:22 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 4/6] ARM: dts: sun8i: a83t: Add device node for CSI
 (Camera Sensor Interface)
Message-ID: <20190519135422.l2bnumyjr3dxehhx@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20190408165744.11672-1-wens@kernel.org>
 <20190408165744.11672-5-wens@kernel.org>
 <20190409075804.4zrwjil7ie2gjigu@flea>
 <CAGb2v64CYV68Q0a7x5p-XabS74vaQWP3paPopodmqQPTOrq2gQ@mail.gmail.com>
 <20190409082818.z33mq2qrxethldzf@flea>
 <CAGb2v67pX+7ccihmGEWPKrXg8mMhht-vh37p2auWYgt=qGDA6A@mail.gmail.com>
 <20190409145225.2ltluiyqa5xha4zd@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190409145225.2ltluiyqa5xha4zd@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_065432_005396_9E085EAB 
X-CRM114-Status: GOOD (  33.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, Apr 09, 2019 at 04:52:25PM +0200, Maxime Ripard wrote:
> On Tue, Apr 09, 2019 at 04:40:40PM +0800, Chen-Yu Tsai wrote:
> > On Tue, Apr 9, 2019 at 4:28 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Tue, Apr 09, 2019 at 04:07:34PM +0800, Chen-Yu Tsai wrote:
> > > > On Tue, Apr 9, 2019 at 3:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > On Tue, Apr 09, 2019 at 12:57:42AM +0800, Chen-Yu Tsai wrote:
> > > > > > From: Chen-Yu Tsai <wens@csie.org>
> > > > > >
> > > > > > The A83T SoC has a camera sensor interface (known as CSI in Allwinner
> > > > > > lingo), which is similar to the one found on the A64 and H3. The only
> > > > > > difference seems to be that support of MIPI CSI through a connected
> > > > > > MIPI CSI-2 bridge.
> > > > > >
> > > > > > Add a device node for it, and pinctrl nodes for the commonly used MCLK
> > > > > > and 8-bit parallel interface. The property /omit-if-no-ref/ is added to
> > > > > > the pinctrl nodes to keep the device tree blob size down if they are
> > > > > > unused.
> > > > > >
> > > > > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > > > > > ---
> > > > > >  arch/arm/boot/dts/sun8i-a83t.dtsi | 31 +++++++++++++++++++++++++++++++
> > > > > >  1 file changed, 31 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > index f739b88efb53..0c52f945fd5f 100644
> > > > > > --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > @@ -682,6 +682,20 @@
> > > > > >                       #interrupt-cells = <3>;
> > > > > >                       #gpio-cells = <3>;
> > > > > >
> > > > > > +                     /omit-if-no-ref/
> > > > > > +                     csi_8bit_parallel_pins: csi-8bit-parallel-pins {
> > > > > > +                             pins = "PE0", "PE2", "PE3", "PE6", "PE7",
> > > > > > +                                    "PE8", "PE9", "PE10", "PE11",
> > > > > > +                                    "PE12", "PE13";
> > > > > > +                             function = "csi";
> > > > > > +                     };
> > > > > > +
> > > > > > +                     /omit-if-no-ref/
> > > > > > +                     csi_mclk_pin: csi-mclk-pin {
> > > > > > +                             pins = "PE1";
> > > > > > +                             function = "csi";
> > > > > > +                     };
> > > > > > +
> > > > > >                       emac_rgmii_pins: emac-rgmii-pins {
> > > > > >                               pins = "PD2", "PD3", "PD4", "PD5", "PD6", "PD7",
> > > > > >                                      "PD11", "PD12", "PD13", "PD14", "PD18",
> > > > > > @@ -994,6 +1008,23 @@
> > > > > >                       interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
> > > > > >               };
> > > > > >
> > > > > > +             csi: camera@1cb0000 {
> > > > > > +                     compatible = "allwinner,sun8i-a83t-csi";
> > > > > > +                     reg = <0x01cb0000 0x1000>;
> > > > > > +                     interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +                     clocks = <&ccu CLK_BUS_CSI>,
> > > > > > +                              <&ccu CLK_CSI_SCLK>,
> > > > > > +                              <&ccu CLK_DRAM_CSI>;
> > > > > > +                     clock-names = "bus", "mod", "ram";
> > > > > > +                     resets = <&ccu RST_BUS_CSI>;
> > > > > > +                     status = "disabled";
> > > > > > +
> > > > > > +                     csi_in: port {
> > > > > > +                             #address-cells = <1>;
> > > > > > +                             #size-cells = <0>;
> > > > >
> > > > > If we expect a single enpoint, then we don't need the address-cells
> > > > > and size-cells properties.
> > > >
> > > > I wouldn't bet on anything. The way the Q8 tablets did front/back cameras
> > > > is kind of genius if not very hacky. They have two "identical" sensors
> > > > on the same I2C bus and CSI bus, with shared reset line but separate
> > > > shutdown lines. Since they are identical, they also have the same I2C
> > > > address. I haven't figured out how to model this in the device tree.
> > > >
> > > > The point is, it's perfectly possible to have two or more sensors use
> > > > the same controller, provided only one be active at a time.
> > >
> > > Right, but I guess the common case would be to have a single sensor,
> > > where that wouldn't be needed.
> > >
> > > In odd cases, we can always specify it in the DTS, and if it becomes
> > > common enough, we can move it to the DTSI.
> >
> > Makes sense. Do you want me to re-spin?
> 
> If there's no other comment, we'll fix it when applying.

This patch series seems to have been forgotten. It doesn't seem there are any
blockers. Can you please apply it now? I have some further series (camera module
support for TBS-A711) that depend on this.

thank you and regards,
	Ondrej

> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
