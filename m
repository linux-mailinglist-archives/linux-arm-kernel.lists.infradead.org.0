Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6C1CC71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=MRXRmRXgfRgkt6boXJ9PoXudha3wNBCZDCgKYL1BAs8=; b=Cr
	zW0/BN1Wj2stKwBQ5WWNyu0eHGsB//QeyDtAsP9sTgywSbZvR7mOzSduDwMjrXPm+xA/UOz9bL+Tg
	BmYPO7wuQs57yW1FxYFZ8UCcGv3yCpcCUAHMR+uLMkUTTFRnZeeCzkEUaOHjo+jR6ulFJYk5gPXKr
	UPwFTmjR0zaWk7IquIEpru9yOmuXZRNFoX/zN3r5GutWIr81doTJQUPtpy121N8NHL7qOyotpXYnT
	azcNlFesbnm8oXtLkfkqK3H27k4YmTTyWmvNDfx/7kCpGQ6U4ExENaf64ZVKBQbtniRLWL4YxCL9e
	wgtbT3HpH5bJB2k5mvShLOsTxuultxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZtp-0001Hd-Bc; Tue, 14 May 2019 16:03:29 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZtO-0000t3-7D
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:03:08 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 9EAC768C7B; Tue, 14 May 2019 18:02:41 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Archit Taneja <architt@codeaurora.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>
Subject: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
References: <20190514155911.6C0AC68B05@newverein.lst.de>
Message-Id: <20190514160241.9EAC768C7B@newverein.lst.de>
Date: Tue, 14 May 2019 18:02:41 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_090302_788893_16B89BA8 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

TERES-I has an ANX6345 bridge connected to the RGB666 LCD output, and
the I2C controlling signals are connected to I2C0 bus.

Enable it in the device tree.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Torsten Duwe <duwe@suse.de>
---

originally: patchwork.kernel.org/patch/10646867

Changed the reset polarity, which is active low,
according to the (terse) datasheet, Teres-I and pinebook schematics,
and the confusing parts of the linux driver code (not yet included here).
Active low -> no more confusion.

---
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 40 +++++++++++++++++--
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index c455b24dd079..bc1d0d6c0672 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -72,20 +72,38 @@
 	};
 };
 
+&de {
+	status = "okay";
+};
+
 &ehci1 {
 	status = "okay";
 };
 
 
-/* The ANX6345 eDP-bridge is on i2c0. There is no linux (mainline)
- * driver for this chip at the moment, the bootloader initializes it.
- * However it can be accessed with the i2c-dev driver from user space.
- */
 &i2c0 {
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
 	status = "okay";
+
+	anx6345: anx6345@38 {
+		compatible = "analogix,anx6345";
+		reg = <0x38>;
+		reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
+		dvdd25-supply = <&reg_dldo2>;
+		dvdd12-supply = <&reg_dldo3>;
+
+		port {
+			anx6345_in: endpoint {
+				remote-endpoint = <&tcon0_out_anx6345>;
+			};
+		};
+	};
+};
+
+&mixer0 {
+	status = "okay";
 };
 
 &mmc0 {
@@ -258,6 +276,20 @@
 	vcc-hdmi-supply = <&reg_dldo1>;
 };
 
+&tcon0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcd_rgb666_pins>;
+
+	status = "okay";
+};
+
+&tcon0_out {
+	tcon0_out_anx6345: endpoint@0 {
+		reg = <0>;
+		remote-endpoint = <&anx6345_in>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
