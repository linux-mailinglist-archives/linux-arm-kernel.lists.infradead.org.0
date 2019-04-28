Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72217B673
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=br+/dbF/zcpk7G3cYjCBUrdCoLk5+N9FoTfwIB3JyVA=; b=UpvbGdiNkkVPNk
	muV/RuwhQtTt3ACGQeWsHPLLTjzR7PPjG6CH/Gn127plTHNh0PUUF9Xf0p0wvJaRw10+u1WPy5jDC
	2SVe2YMdSRKi+0Z16KwtKKka2vJw7sEqRzkz23/kyczBCLzaPBbiHCxWl6gAidEnSsc+w2f/bPPnp
	3IA3t/AIUrM8VHcgmkEv7qW8HRdxBrIZ23qMOlL/lsOHpFqSHQB4HtScWb9DNRMaVGtmQgyHO1v1Z
	j3npSGKPeoKkKk+nJwfYNXwHpILOHegg5+0i66LKjazYcBD8OsNP4vUkuIuM6vXjWp2/MueIQwv8j
	7fkXaREE+uTuIHYt+alQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqBQ-0005Nx-4R; Sun, 28 Apr 2019 20:13:56 +0000
Received: from mailoutvs37.siol.net ([185.57.226.228] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqBI-0005N7-9N
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:13:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 97A98520C22;
 Sun, 28 Apr 2019 22:13:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 6vuNExv9i3Mx; Sun, 28 Apr 2019 22:13:35 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 4221B520C36;
 Sun, 28 Apr 2019 22:13:35 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 810DD520C22;
 Sun, 28 Apr 2019 22:13:34 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH] arm64: dts: allwinner: a64: orangepi-win: Add wifi and
 bluetooth nodes
Date: Sun, 28 Apr 2019 22:13:26 +0200
Message-Id: <20190428201326.27767-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131348_479650_46C23D93 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.228 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AP6212 is based on the Broadcom BCM43430 or BCM43438. The WiFi side
identifies as BCM43430, while the Bluetooth side identifies as BCM43438.

WiFi is connected to mmc1 and the Bluetooth side is connected to UART1
in a 4 wire configuration. Same as the WiFi side, due to being the same
chip and package, DLDO2 provides overall power via VBAT, and DLDO4
provides I/O power via VDDIO. The RTC clock output provides the LPO low
power clock at 32.768 kHz.

This patch enables WiFi and Bluetooth on OrangePi Win boards and adds
missing LPO clock on the WiFi side. PCM connection also exists for
Bluetooth audio, but it's not used here.

Bluetooth UART speed is set to 1.5 MBaud in order to be able transmit
audio. While module supports even higher speeds, currently sunxi UART
driver doesn't support higher speed.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../dts/allwinner/sun50i-a64-orangepi-win.dts | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
index 510f661229dc..5ef3c62c765e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
@@ -109,6 +109,8 @@
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 8 GPIO_ACTIVE_LOW>; /* PL8 */
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
 	};
 };
 
@@ -170,6 +172,14 @@
 	bus-width = <4>;
 	non-removable;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&r_pio>;
+		interrupts = <0 7 IRQ_TYPE_LEVEL_LOW>; /* PL7 */
+		interrupt-names = "host-wake";
+	};
 };
 
 &ohci0 {
@@ -342,7 +352,20 @@
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <1500000>;
+		clocks = <&rtc 1>;
+		clock-names = "lpo";
+		vbat-supply = <&reg_dldo2>;
+		vddio-supply = <&reg_dldo4>;
+		device-wakeup-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		host-wakeup-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+		shutdown-gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+	};
 };
 
 /* On Pi-2 connector, RTS/CTS optional */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
