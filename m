Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8483B12A260
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opVfR7qZ3hhe5BwvtN0T1KYRWBwVdRCPceqSC+LMvq0=; b=gYyiDzqzqLyKCg
	D9wQS21CZZ0pj5MUqPnDkKUljoUl8G5xVMP9xQxQ5QZp//HtPVP2ssngaKISHPrj0SmtAbTTlk625
	mjz/YONifUPMEZsg6uIX1H1dVSZw4440FfFP350rxOemL8TTywiiIOgj+exQmVqPVZ3ZAKXegvwkB
	9a3iCB/xweJsvo2Pa4bKAmkixgt5OzBlFf3IGPHxwFbv20RWTsSAZsgF2Zz11u49mObXZLxJK/CL7
	zvKM67+0Qiye/MUlrnVnFMUOfUdtV5U0Job21ur3m5AzKT2Cow+zFPmwbPyoNMoyhhTLUxhScbjTj
	dDh3nDQ7+d9SeHPiRk9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlIW-0001HG-U3; Tue, 24 Dec 2019 14:36:32 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlIP-0001Gr-OB
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:36:27 +0000
Received: by mail-il1-x143.google.com with SMTP id x5so16709558ila.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 06:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G9zkxlG0xGgO+RRXE1qCUqKdI6X1YDvo84gC40D1YMA=;
 b=UENJhR05eMmRMNkdU0xPT2lQ/MGiaGVITW2wEVcWT6xP2cqYXBd21PJhRVC920AKui
 la7e9Rbd+AfDd4SZoUH84TqdjqDPvRRMkYrkv7tFNQ8XGe9rHSDuyWhs6MK5iSVg9U48
 E+zo3OfxE/aZLdAmkAoXF9lHEFGfUw1IDWAmjEiHRMtL12Z64BzbYacl8cOXf3+45rxM
 d/0cKP7ASJBLO6vWHdaqomKHvQ//Ky+qhfbT1LjXuJ/BaTyeqVOSNREBybSbNeB3YfNp
 0W+/QEW1BOW0GzCqgcp1MFbhlPpxXBdxr4EjyiBxplu8yhKY93f6gPA8bRE3FCQcfWPp
 588w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G9zkxlG0xGgO+RRXE1qCUqKdI6X1YDvo84gC40D1YMA=;
 b=LdbLEYEV9X2ugVkMSoxkM0HzvGTJIQ4uw9zT3K1NcnsR1nGTF7wqq0CAMSEsKkGp2h
 Tbyg49AOs+RgDaLIbkWse5pbkYfdyij1FmxRdM6Sjm9iGpZic2QM86MHUtA4slaa77zA
 qIUD/jBkn8Yg+p2OBCFa2UgA4NpEObAYSMsMXLSk8Ozkl1tcB422r3Gv4ROLvFXcUcIp
 MnDctpGbTMO70CHlA8vGm6Gat6no43Gxnu9pMXjgrUnhOk7uCpSIpgIzRnZwsBZkRFJC
 orhz6Df/gePYRThiuloKwFNH0CFCQ4HNeAikbjhdC+jpASMXR5wYT0wPYl/wd7zLU+0d
 034g==
X-Gm-Message-State: APjAAAXnrGMweh9adshU3jU830v8eYMD2Dhrp4iykMCq9vLlPJXERfSR
 XmQWQYmYWs1EROBRUGKXxmzpPU9r8fv4Vd53UbM=
X-Google-Smtp-Source: APXvYqxG8pDiLHd5VSObHKHTgDMwnSvIsqwUj8mvUXwF+9cHnHTohFIFhPuHUPAw+Ib0CQ5GMcRS40lNr5fQh583H3g=
X-Received: by 2002:a92:1a0a:: with SMTP id a10mr30442586ila.295.1577198184778; 
 Tue, 24 Dec 2019 06:36:24 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191224131155.GA17359@Red>
In-Reply-To: <20191224131155.GA17359@Red>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 24 Dec 2019 22:36:13 +0800
Message-ID: <CAEExFWsN5-YNG0KQ7aZH8AUWpVudqkSx1G9dmaa7jnEp08K1hQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Corentin Labbe <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063625_808476_72EFE55D 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 9:11 PM Corentin Labbe
<clabbe.montjoie@gmail.com> wrote:
>
> On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> > This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > H6 and R40 SoCs.
> >
> > v8:
> >       - [vasily] Address more Maxime's comments for dt-schema
> >       - [vasily] Add myself to MAINTAINERS for the driver and schema
> >       - [vasily] Round calibration data size to word boundary for H6 and A64
> >       - [vasily] Change offset for A64 since it reports too low temp otherwise.
> >                  Likely conversion formula in user manual is not correct.
> >
> > v7:
> >       - [vasily] Address Maxime's comments for dt-schema
> >       - [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
> >       - [vasily] Add Maxime's a-b to the driver patch
> >
> > v6:
> >       - [ondrej, vasily] Squash all driver related changes into a
> >                          single patch
> >       - [ondrej] Rename calib -> calibration
> >       - [ondrej] Fix thermal zone registration check
> >       - [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
> >       - [ondrej] Rework scale/offset values, H6 calibration
> >       - [ondrej] Explicitly set mod clock to 24 MHz
> >       - [ondrej] Set undocumented bits in CTRL0 for H6
> >       - [ondrej] Add support for A83T
> >       - [ondrej] Add dts changes for A83T, H3, H5, H6
> >       - [vasily] Add dts changes for A64
> >       - [vasily] Address Maxime's comments for YAML scheme
> >       - [vasily] Make .calc_temp callback mandatory
> >       - [vasily] Set .max_register in regmap config, so regs can be
> >                  inspected using debugfs
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
>
> Hello
>
> Thanks for your work.
>
> Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> Tested-on: sun50i-h6-pine-h64-model-b
> Tested-on: sun50i-h6-pine-h64
> Tested-on: sun8i-a83t-bananapi-m3
> Tested-on: sun8i-h2-plus-orangepi-zero
> Tested-on: sun8i-h2-plus-orangepi-r1
> Tested-on: sun8i-h2-plus-libretech-all-h3-cc
> Tested-on: sun8i-h3-libretech-all-h3-cc
> Tested-on: sun50i-h5-libretech-all-h3-cc
> Tested-on: sun50i-a64-pine64-plus
>
> Note that your patch serie support R40 but you do not have any R40 DT patch.
> If you need testing, do not hesitate to ask.

How about this?  No one has yet added the R40's SID, and I'm not sure about
the available size of the sid. So the current therm sensor is not calibrated,
hope this is available.

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 421dfbbfd7ee..8ccda5cb873f 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -46,6 +46,7 @@
 #include <dt-bindings/clock/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
+#include <dt-bindings/thermal/thermal.h>

 / {
        #address-cells = <1>;
@@ -109,6 +110,22 @@
                status = "disabled";
        };

+       thermal-zones {
+               cpu_thermal: cpu0-thermal {
+                       /* milliseconds */
+                       polling-delay-passive = <0>;
+                       polling-delay = <0>;
+                       thermal-sensors = <&ths 0>;
+               };
+
+               gpu_thermal: gpu-thermal {
+                       /* milliseconds */
+                       polling-delay-passive = <0>;
+                       polling-delay = <0>;
+                       thermal-sensors = <&ths 1>;
+               };
+       };
+
        soc {
                compatible = "simple-bus";
                #address-cells = <1>;
@@ -421,6 +438,17 @@
                        clocks = <&osc24M>;
                };

+               ths: thermal-sensor@1c24c00 {
+                       compatible = "allwinner,sun8i-r40-ths";
+                       reg = <0x01c24c00 0x100>;
+                       clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+                       clock-names = "bus", "mod";
+                       interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+                       resets = <&ccu RST_BUS_THS>;
+                       /* TODO: add nvmem-cells for calibration */
+                       #thermal-sensor-cells = <1>;
+               };
+
                uart0: serial@1c28000 {
                        compatible = "snps,dw-apb-uart";
                        reg = <0x01c28000 0x400>;
diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 23a5f4aa4be4..c5661d7c3e20 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -565,7 +565,7 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 };

 static const struct ths_thermal_chip sun8i_r40_ths = {
-       .sensor_num = 3,
+       .sensor_num = 2,
        .offset = 251086,
        .scale = 1130,
        .has_mod_clk = true,

MBR,
Yangtao

>
> Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
