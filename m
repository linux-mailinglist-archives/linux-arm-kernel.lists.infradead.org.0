Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091001548AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZnjb4tHnw/ulwC1nWradnvAkPCCUtxUkM/zhx4Clgs=; b=t3zoNwcYsdW//I
	DTgrO7WDJFm1MFgfRE5wcO1iGXmJaLzDodNzHlGRi/tCUQL5rgyvbZAIKazeAeT9pIUmTkPFgj267
	imSq2yQpdlo+83KyN98iO+uMO8FYUO4M2AOV7GhGq6y9HLQR0LGiTEFiyT3vXxWGjKZSyOIAkqa7i
	SRYrpLAz3//xHb22JyvMGt0loqaV+hp11i1ArKZSwV7qv02vRE8iRcowxBN24oaITXORecSmEJFRf
	+RACbQQtt47WdjH8VcLBqZRcggRNhBbaiFqFkshvg7lubFUPMg0ohXPdaI7qEy4pp4eFrsY1Riq5z
	XkrJ2D7szDOBcSLA6ZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjWl-0003aD-Pf; Thu, 06 Feb 2020 15:57:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjWe-0003Zc-Ky
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1581004623; bh=Haoacbj1oR8jAZ/+z1mMEH6C0wNO66P8twZW4816v38=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=SmyZvJrvntWZ9bg2ivEI9G8FdrqYkMwCdVplGX9cdlFGyBFEYe7Babbv6FSFyp4mA
 OOMKGASHg+sg5L6nP6hU7A2jcRM8CZJuHneiLn3DBqzQoRM2LmTusOqG2mF9j2ZglU
 1OwCIBmNyEYhTjoLwPqYohjmiLBWdWlj54jW1j88=
Date: Thu, 6 Feb 2020 16:57:03 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20200206155703.fyry7nh473mc7pqy@core.my.home>
Mail-Followup-To: Amit Kucheria <amit.kucheria@verdurent.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 lakml <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_075709_025679_6EBB8607 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On Thu, Feb 06, 2020 at 07:43:59PM +0530, Amit Kucheria wrote:
> Hi Vasily,
> 
> For this entire series, the DTS files don't contain any trip points.
> Did I miss some other series?
> 
> At a minimum, you should add some "hot" or "critical" trip points
> since then don't require a cooling-map with throttling actions. If you
> have "passive" trip points, then you need to provide cooling-maps.
> 
> Since this series has been merged, could you please follow up with a
> fixup series to add the trip points?

I don't think lack of trip points causes runtime issues. Or does it? I planned
to send update with some trip points and cooling maps for 5.7 merge window.
Is this acceptable?

If not, I can send a patch that adds:

+ trips {
+         cpu-very-hot {
+                 temperature = <100000>;
+                 hysteresis = <0>;
+                 type = "critical";
+         };
+ };

and 

+ trips {
+         gpu-very-hot {
+                 temperature = <100000>;
+                 hysteresis = <0>;
+                 type = "critical";
+         };
+ };

everywhere where appropriate. Though that will make rebase of out of
tree patches that already have a more complicated setup to be sent for the next
merge window a bit tedious.

thank you,
	Ondrej

> Regards,
> Amit
> p.s. We should catch all this automatically, I'll send out yaml
> bindings for the thermal framework soon that should catch this stuff.
> 
> On Thu, Dec 19, 2019 at 10:58 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > H6 and R40 SoCs.
> >
> > v8:
> >         - [vasily] Address more Maxime's comments for dt-schema
> >         - [vasily] Add myself to MAINTAINERS for the driver and schema
> >         - [vasily] Round calibration data size to word boundary for H6 and A64
> >         - [vasily] Change offset for A64 since it reports too low temp otherwise.
> >                    Likely conversion formula in user manual is not correct.
> >
> > v7:
> >         - [vasily] Address Maxime's comments for dt-schema
> >         - [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
> >         - [vasily] Add Maxime's a-b to the driver patch
> >
> > v6:
> >         - [ondrej, vasily] Squash all driver related changes into a
> >                            single patch
> >         - [ondrej] Rename calib -> calibration
> >         - [ondrej] Fix thermal zone registration check
> >         - [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
> >         - [ondrej] Rework scale/offset values, H6 calibration
> >         - [ondrej] Explicitly set mod clock to 24 MHz
> >         - [ondrej] Set undocumented bits in CTRL0 for H6
> >         - [ondrej] Add support for A83T
> >         - [ondrej] Add dts changes for A83T, H3, H5, H6
> >         - [vasily] Add dts changes for A64
> >         - [vasily] Address Maxime's comments for YAML scheme
> >         - [vasily] Make .calc_temp callback mandatory
> >         - [vasily] Set .max_register in regmap config, so regs can be
> >                    inspected using debugfs
> >
> > Ondrej Jirman (4):
> >   ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
> >   ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
> >   arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
> >   arm64: dts: allwinner: h6: Add thermal sensor and thermal zones
> >
> > Vasily Khoruzhick (1):
> >   arm64: dts: allwinner: a64: Add thermal sensors and thermal zones
> >
> > Yangtao Li (2):
> >   thermal: sun8i: add thermal driver for H6/H5/H3/A64/A83T/R40
> >   dt-bindings: thermal: add YAML schema for sun8i-thermal driver
> >     bindings
> >
> >  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 +++++
> >  MAINTAINERS                                   |   8 +
> >  arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
> >  arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
> >  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
> >  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
> >  drivers/thermal/Kconfig                       |  14 +
> >  drivers/thermal/Makefile                      |   1 +
> >  drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
> >  11 files changed, 985 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> >  create mode 100644 drivers/thermal/sun8i_thermal.c
> >
> > --
> > 2.24.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
