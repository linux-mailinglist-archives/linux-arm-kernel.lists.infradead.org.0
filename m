Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B253F12590A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 02:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCCECtzq8FqQdMtaHY7o2hCBdA2Tm3tslSAqiF3Wk2Q=; b=WAxEh8HCSJlCS3
	d9O6rw5hNg746Cqbo6Ye0N+eCY3stIsyxzsFX3/afqSoUEWCyHoNcku4cuEHjdL9rLzkw18CuazrT
	DS3oLEqkimawlfizTc6ogDqbPukSL+WTjEe4MziaPC6smFeBrxqls7v8+rfJ2Mb8Aj8md8FFlQ3K/
	ILzZ5kTwHp38fqWfzV8dTfuk0ibrP8vq/lo/qBl/CCTg0yAyZP0PmbxbJpVWEXJfxoi1Ke4HtyQ7l
	GD4JYUoLhy3Ttk3R7wPVGh3w/N/1CGQFvzdnQ2kP5l61LaVVm+LOXA736VmfCYjWFwrDX8ZQj2107
	FaBep6K1rCUxSzrwsk9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihkE4-0002YF-CJ; Thu, 19 Dec 2019 01:03:36 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihkDv-0002WV-68
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 01:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1576717401; bh=hTtYEKPfKcEQF9zxM3iLzPQCOmc0v1ZBKSXbqSJHaxk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=U716KQDW0NA1TYZk7/LCB8IjiqPyVfh9ZWp0+sI9GXC506EcUxTq1F+OZsKQRtAu/
 Yajp1L7cH5MqaUqoqofwt4pNzAdsOS9z3h8zPpFu6tlAYgFipDLkk7z6riPtwr9VNd
 zTYBOItSg+xmlAc37i9nGe0+tpt1nuvwHkQ2C2Iw=
Date: Thu, 19 Dec 2019 02:03:21 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
Message-ID: <20191219010321.kri5e7knjhc5d6ts@core.my.home>
Mail-Followup-To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-7-anarsoul@gmail.com>
 <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
 <CA+E=qVdKwkUSsG9WA_4x5QntaOxQqfH1eZQ7TEeUrM_3W5mqTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVdKwkUSsG9WA_4x5QntaOxQqfH1eZQ7TEeUrM_3W5mqTg@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_170327_399655_1AFF141C 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 03:18:51PM -0800, Vasily Khoruzhick wrote:
> On Tue, Dec 17, 2019 at 8:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Wed, Dec 18, 2019 at 12:22 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> > >
> > > From: Ondrej Jirman <megous@megous.com>
> > >
> > > There are two sensors, one for CPU, one for GPU.
> > >
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
> > >  1 file changed, 33 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > index 29824081b43b..cdcb1a36301a 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > @@ -11,6 +11,7 @@
> > >  #include <dt-bindings/reset/sun50i-h6-ccu.h>
> > >  #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
> > >  #include <dt-bindings/reset/sun8i-de2.h>
> > > +#include <dt-bindings/thermal/thermal.h>
> > >
> > >  / {
> > >         interrupt-parent = <&gic>;
> > > @@ -233,6 +234,12 @@ dma: dma-controller@3002000 {
> > >                 sid: efuse@3006000 {
> > >                         compatible = "allwinner,sun50i-h6-sid";
> > >                         reg = <0x03006000 0x400>;
> > > +                       #address-cells = <1>;
> > > +                       #size-cells = <1>;
> > > +
> > > +                       ths_calibration: thermal-sensor-calibration@14 {
> > > +                               reg = <0x14 0x6>;
> >
> > Nit: my preference is to use words as the smallest increment, so this
> > would have a size of 8 instead of 6. Same goes for the A64 dts.
> >
> > AFAICT this doesn't impact the driver in any way.
> 
> H6 has only 2 sensors, so it should be 4. That's my overlook, I'll
> change it to 4 for H6 and to 8 for A64.

No it's correct. There's 2 bytes reference temperature and 2x 2 byte
values for individual sensor calibration constants.

regards,
	o.

> >
> > ChenYu
> >
> >
> > > +                       };
> > >                 };
> > >
> > >                 watchdog: watchdog@30090a0 {
> > > @@ -856,5 +863,31 @@ r_i2c: i2c@7081400 {
> > >                         #address-cells = <1>;
> > >                         #size-cells = <0>;
> > >                 };
> > > +
> > > +               ths: thermal-sensor@5070400 {
> > > +                       compatible = "allwinner,sun50i-h6-ths";
> > > +                       reg = <0x05070400 0x100>;
> > > +                       interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       clocks = <&ccu CLK_BUS_THS>;
> > > +                       clock-names = "bus";
> > > +                       resets = <&ccu RST_BUS_THS>;
> > > +                       nvmem-cells = <&ths_calibration>;
> > > +                       nvmem-cell-names = "calibration";
> > > +                       #thermal-sensor-cells = <1>;
> > > +               };
> > > +       };
> > > +
> > > +       thermal-zones {
> > > +               cpu-thermal {
> > > +                       polling-delay-passive = <0>;
> > > +                       polling-delay = <0>;
> > > +                       thermal-sensors = <&ths 0>;
> > > +               };
> > > +
> > > +               gpu-thermal {
> > > +                       polling-delay-passive = <0>;
> > > +                       polling-delay = <0>;
> > > +                       thermal-sensors = <&ths 1>;
> > > +               };
> > >         };
> > >  };
> > > --
> > > 2.24.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
