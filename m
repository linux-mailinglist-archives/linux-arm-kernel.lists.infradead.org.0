Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DEB164F2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 20:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XARVrWUvs0lDJOwYIMXacNPKQzSj7y1SNGLAcFzamGE=; b=FftXv5QCXr1DO5
	u3+nn5MTVZqWIcBaLlBXI2IJzi9ptALgPOpUeTV+y9H4PRnl4Gd39dz6FBew7cChGRzG1IZJ0SbBi
	Jt2T7M8VXNvAT12+LBkuN6Ww6WhzNz7Uh8BP7qYsgwW/eHmp0aZN0gnJzlgGEaI9W1+d0Y/eXt0rA
	wXhm320h1brdeisECPCSZ2ob+7OIKkgb6G/kgcdkD4aHfoGoqy+pKbyptEnEWJkhyNhHY95SE7smO
	+O+2/RUN24SXSxA+oR92cfMVvB2rb4xg9Vu1VFlemEQ/RpccUGU6A3IdkNqelVRs4N+BEW/9p4sBi
	dDP4tejdi+gSiINCrByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4VIB-0005xC-BJ; Wed, 19 Feb 2020 19:45:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4VI4-0005wE-1u
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 19:45:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id CC44580F3;
 Wed, 19 Feb 2020 19:46:27 +0000 (UTC)
Date: Wed, 19 Feb 2020 11:45:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200219194540.GD37466@atomide.com>
References: <20200219191412.GA15905@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219191412.GA15905@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_114548_136923_8C726939 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [200219 19:15]:
> From: Tomi Valkeinen <tomi.valkeinen@ti.com>
> 
> This patch adds a led-backlight driver (led_bl), which is similar to
> pwm_bl except the driver uses a LED class driver to adjust the
> brightness in the HW. Multiple LEDs can be used for a single backlight.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
> Acked-by: Pavel Machek <pavel@ucw.cz>
> Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Tony Lindgren <tony@atomide.com>
> Tested-by: Tony Lindgren <tony@atomide.com>
> Signed-off-by: Pavel Machek <pavel@ucw.cz>
> ---
>  drivers/video/backlight/Kconfig  |   7 ++
>  drivers/video/backlight/Makefile |   1 +
>  drivers/video/backlight/led_bl.c | 260 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 268 insertions(+)
>  create mode 100644 drivers/video/backlight/led_bl.c
> 
> Hi!
> 
> Here's the version of the driver I have. AFAICT
> default-brightness-level handling is ok, so does not need to be
> changed.
> 
> Lee, it would be easiest for me if you could apply it to your tree and
> push, but given enough time I can push it to Linus, too.

Oh you're using quoted-printable for patches.. Got it applied now,
and it still works. Below is also the related dts change that
I tested with.

Feel free to pick the dts change too, naturally that should
not be applied before the driver.

If you guys instead want me to pick these both into my fixes
branch, just let me know and I'll do the explaining why these
are needed as fixes. Basically we no longer have a way to enable
the LCD backlight for droid4 manually starting with v5.6-rc1
unlike earlier.

Regards,

Tony

8< ------------------
From tony Mon Sep 17 00:00:00 2001
From: Tony Lindgren <tony@atomide.com>
Date: Wed, 19 Feb 2020 11:25:27 -0800
Subject: [PATCH] ARM: dts: droid4: Configure LED backlight for lm3532

With the LED backlight changes merged, we still need the dts configured
to have backlight working for droid4. Based on an earlier patch from
Pavel Machek <pavel@ucw.cz>, let's configure the backlight but update
the value range to be more usable.

We have a range of 256 register values split into 8 steps, so we can
generate the brightness levels backwards with:

$ for i in 0 1 2 3 4 5 6 7; do echo "255 - ${i} * (256 / 8)" | bc; done

To avoid more confusion why the LCD backlight is still not on, let's
also enable LED backlight as a loadable module for omap2plus_defconfig.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/motorola-mapphone-common.dtsi | 13 +++++++++++--
 arch/arm/configs/omap2plus_defconfig            |  1 +
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/motorola-mapphone-common.dtsi b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
--- a/arch/arm/boot/dts/motorola-mapphone-common.dtsi
+++ b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
@@ -182,6 +182,14 @@ vibrator {
 		pwm-names = "enable", "direction";
 		direction-duty-cycle-ns = <10000000>;
 	};
+
+	backlight: backlight {
+		compatible = "led-backlight";
+
+		leds = <&backlight_led>;
+		brightness-levels = <31 63 95 127 159 191 223 255>;
+		default-brightness-level = <6>;
+	};
 };
 
 &dss {
@@ -205,6 +213,8 @@ lcd0: display {
 		vddi-supply = <&lcd_regulator>;
 		reset-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;	/* gpio101 */
 
+		backlight = <&backlight>;
+
 		width-mm = <50>;
 		height-mm = <89>;
 
@@ -393,12 +403,11 @@ led-controller@38 {
 		ramp-up-us = <1024>;
 		ramp-down-us = <8193>;
 
-		led@0 {
+		backlight_led: led@0 {
 			reg = <0>;
 			led-sources = <2>;
 			ti,led-mode = <0>;
 			label = ":backlight";
-			linux,default-trigger = "backlight";
 		};
 
 		led@1 {
diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -375,6 +375,7 @@ CONFIG_BACKLIGHT_GENERIC=m
 CONFIG_BACKLIGHT_PWM=m
 CONFIG_BACKLIGHT_PANDORA=m
 CONFIG_BACKLIGHT_GPIO=m
+CONFIG_BACKLIGHT_LED=m
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
 CONFIG_LOGO=y
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
