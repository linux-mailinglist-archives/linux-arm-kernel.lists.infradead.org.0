Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C181A630C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDL5w5vZnYBQ0PUTw6qJBkHxsbMh/lWHkTLXaOCFh/k=; b=K1mzoA+IcaJgC7
	O85EEGa9ohavxoOWi51/LCTQfpUhAUW8Q6LJXgWkVZGzDYJbWirv80omRnFpOiOxMTUukBDTns4yY
	huIysYFsiX1ds1Y74wbsyzPDNe8tdvIkbedilqpNlL29OvwrAYaHtxSx/05WGskhKniQQ4u6XeHd3
	VlRYayTyUeLVwzhclPyL3eX2gQsxAGQR1+aLLBafVl0oEwzaz/2AsaoulEW00IAEjGqitJYK96eJR
	oVCo6XGVaDoU5mvJZIUuAcpeMAg5o32PEI0QqQ9GR258TP3XV/1YhvMNPJIIIf7pXvdd3IcArqQgP
	3tM53W58sfyoN+wV+u6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsXc-0003cx-3f; Mon, 13 Apr 2020 06:25:56 +0000
Received: from mailoutvs59.siol.net ([185.57.226.250] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsWf-0000bq-Pz
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:24:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id BCF35522E4F;
 Mon, 13 Apr 2020 08:24:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Mzr1GCkd2ohL; Mon, 13 Apr 2020 08:24:55 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 67A33522E48;
 Mon, 13 Apr 2020 08:24:55 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 20C81522E4F;
 Mon, 13 Apr 2020 08:24:53 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 3/3] arm64: allwinner: h6: orangepi-lite2: Support BT+WIFI
 combo module
Date: Mon, 13 Apr 2020 08:24:33 +0200
Message-Id: <20200413062433.1145043-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413062433.1145043-1-jernej.skrabec@siol.net>
References: <20200413062433.1145043-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_232458_000230_13116FCA 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.250 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Sebastian Meyer <git-commit@mailhell.seb7.de>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sebastian Meyer <git-commit@mailhell.seb7.de>

OrangePi Lite2 has AP6255 BT+WIFI combo chip. Add support for it.

Signed-off-by: Sebastian Meyer <git-commit@mailhell.seb7.de>
[merged BT and WIFI patches and updated commit message]
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../allwinner/sun50i-h6-orangepi-lite2.dts    | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
index e7ca75c0d0f7..e8770858b5d0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
@@ -6,4 +6,69 @@
 / {
 	model = "OrangePi Lite2";
 	compatible = "xunlong,orangepi-lite2", "allwinner,sun50i-h6";
+
+	aliases {
+		serial1 = &uart1; /* BT-UART */
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
+		reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
+		post-power-on-delay-ms = <200>;
+	};
+};
+
+&mmc1 {
+	vmmc-supply = <&reg_cldo2>;
+	vqmmc-supply = <&reg_bldo3>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	brcm: sdio-wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&r_pio>;
+		interrupts = <1 0 IRQ_TYPE_LEVEL_LOW>;	/* PM0 */
+		interrupt-names = "host-wake";
+	};
+};
+
+&reg_cldo2 {
+	/*
+	 * This regulator is connected with CLDO3.
+	 * Before the kernel can support synchronized
+	 * enable of coupled regulators, keep them
+	 * both always on as a ugly hack.
+	 */
+	regulator-always-on;
+};
+
+&reg_cldo3 {
+	/*
+	 * This regulator is connected with CLDO2.
+	 * See the comments for CLDO2.
+	 */
+	regulator-always-on;
+};
+
+/* There's the BT part of the AP6255 connected to that UART */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rtc 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&r_pio 1 2 GPIO_ACTIVE_HIGH>; /* PM2 */
+		host-wakeup-gpios = <&r_pio 1 1 GPIO_ACTIVE_HIGH>; /* PM1 */
+		shutdown-gpios = <&r_pio 1 4 GPIO_ACTIVE_HIGH>; /* PM4 */
+		max-speed = <1500000>;
+	};
 };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
