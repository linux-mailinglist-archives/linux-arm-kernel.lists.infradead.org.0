Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8B8F17E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wS/6idCMhf0i6G1PUvpRftKpxVM0jJAywekX18sOdqE=; b=odMI00Nuie5wCXgHtMSI7bHFxI
	nEgCQyuYJlZ7NpfWzmq3kSp+kZ5LTW8AzW7GIe6v3RFZ7Aibbo2wZNaGtiS50gGn0hOdtxbsBYHKf
	nWa2OAm08dk/8S969J0js+0+wNDBngBmCeKw1E9Fs1EBSsGZxPHbd5U3m8KeaMa+JjBrDZGIiwgyA
	ACEJ3/vjEqJ+nhURYTSPpv+kxoZtFTFF55TKbQ+6brBlTNKN2RPt5ty7nayuOg6oSxDPflSjrcpqq
	n1hxzBntiReTXIECSNbuyMzVQcTL5Z9Z6ysl7kFTMgMU88bWtFWP1ajlHEvGlsdT/W6n+n63K+EFN
	J2wVcVfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLvA-00032n-Hf; Wed, 06 Nov 2019 14:04:28 +0000
Received: from forward104o.mail.yandex.net ([37.140.190.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLuR-0002Zj-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:03:45 +0000
Received: from forward103q.mail.yandex.net (forward103q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:50:0:640:b21c:d009])
 by forward104o.mail.yandex.net (Yandex) with ESMTP id 2EF16940E5E;
 Wed,  6 Nov 2019 17:03:37 +0300 (MSK)
Received: from mxback1q.mail.yandex.net (mxback1q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:39:0:640:25b3:aea5])
 by forward103q.mail.yandex.net (Yandex) with ESMTP id 2987B61E0015;
 Wed,  6 Nov 2019 17:03:37 +0300 (MSK)
Received: from vla5-9cb0c276d29e.qloud-c.yandex.net
 (vla5-9cb0c276d29e.qloud-c.yandex.net [2a02:6b8:c18:3588:0:640:9cb0:c276])
 by mxback1q.mail.yandex.net (mxback/Yandex) with ESMTP id A4fqlvflAd-3b9GUHV2; 
 Wed, 06 Nov 2019 17:03:37 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573049017; bh=ScFPaG9UQrYGGId0CvVB3OieD16A0ZI82rTOVQODVyQ=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=DC45EuzOlPIlokiiMZn/+dHC1b+mNEFTBDYZidgPiezS0MKNzcapsL7LXUmPYb1Bh
 Bb5CXRKKntwIfRjeC113J8Okw8m95+fdwLV17fjhlBeyN4Xrf1qBVrmWH4xGfxgzhL
 QooPnJDD8MtBUuxqvgJ4mvnGbReZHqmxudONg9xU=
Authentication-Results: mxback1q.mail.yandex.net; dkim=pass header.i=@emlid.com
Received: by vla5-9cb0c276d29e.qloud-c.yandex.net (nwsmtp/Yandex) with ESMTPSA
 id S6vUK4L7IT-3a1uKwYa; Wed, 06 Nov 2019 17:03:36 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/2] arm: dts: sunxi: Add Neutis N5H3 support
Date: Wed,  6 Nov 2019 17:03:18 +0300
Message-Id: <1573048998-8913-3-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573048998-8913-1-git-send-email-georgii.staroselskii@emlid.com>
References: <1573048998-8913-1-git-send-email-georgii.staroselskii@emlid.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060344_000125_CB8C7AA0 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Emlid Neutis N5H3 is a version of Emlid Neutis SoM with H3 instead of H5
inside.

6eeb4180d4b9 ("ARM: dts: sunxi: h3-h5: Add Bananapi M2+ v1.2 device")
was used as reference.

Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
---
 arch/arm/boot/dts/Makefile                         |  1 +
 .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    | 61 ++++++++++++++++++++++
 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  | 11 ++++
 3 files changed, 73 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 3f13b88..c997b0c 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1119,6 +1119,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-h3-orangepi-plus2e.dtb \
 	sun8i-h3-orangepi-zero-plus2.dtb \
 	sun8i-h3-rervision-dvk.dtb \
+	sun8i-h3-emlid-neutis-n5h3-devboard.dtb \
 	sun8i-r16-bananapi-m2m.dtb \
 	sun8i-r16-nintendo-nes-classic.dtb \
 	sun8i-r16-nintendo-super-nes-classic.dtb \
diff --git a/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
new file mode 100644
index 00000000..3b68750
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * DTS for Emlid Neutis N5 Dev board.
+ *
+ * Copyright (C) 2019 Georgii Staroselskii <georgiii.staroselskii@emlid.com>
+ */
+
+/dts-v1/;
+
+#include "sun8i-h3-emlid-neutis-n5h3.dtsi"
+
+/ {
+	model = "Emlid Neutis N5H3 Developer board";
+	compatible = "emlid,neutis-n5h3-devboard",
+		     "emlid,neutis-n5h3",
+		     "allwinner,sun8i-h3";
+
+	vdd_cpux: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "vdd-cpux";
+		regulator-type = "voltage";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-ramp-delay = <50>; /* 4ms */
+		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		gpios-states = <0x1>;
+		states = <1100000 0x0
+			  1300000 0x1>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpux>;
+};
+
+&codec {
+	status = "okay";
+};
+
+&emac {
+	phy-handle = <&int_mii_phy>;
+	phy-mode = "mii";
+	allwinner,leds-active-low;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
new file mode 100644
index 00000000..eedd5da
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * DTSI for Emlid Neutis N5 SoM.
+ *
+ * Copyright (C) 2019 Georgii Staroselskii <georgii.staroselskii@emlid.com>
+ */
+
+/dts-v1/;
+
+#include "sun8i-h3.dtsi"
+#include <arm/sunxi-h3-h5-emlid-neutis.dtsi>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
