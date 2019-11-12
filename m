Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D7F9553
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XkZuRwLHtIQj77FZgNIrY4xhdLhwLseTrgXBmCGUbaE=; b=FsPSDlUOGGvyX67gkpaxvgrMg6
	0o18pXSWvbIeMX59UShK8VlGZvBCUbbyRyt2u4YqsQhnuyIDPS72aUd75nY8/x9fV/RNbLe95h5Q7
	ldsiRTg8C78uAgtLvalG7QCRpDRnex9hn2pstfkt1qCqQJCJJiciQrCTwfrAxPspPxFi6kLws0oZ1
	763eqkEKYv/zt5B2C4lfun0tx7zDASb9//fjleTtVne4IYgQ7wlXTpxowVJGJhXPcglHSWltFMKH1
	gwx9If8ZHf0NBkQX2ZmQRACh0/UGUwxT8kmO9JJB37vJrwN1DSie+Mom1+xns5PRRELjMcNoj+IdU
	snkbicWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYpy-0007D0-Bv; Tue, 12 Nov 2019 16:16:14 +0000
Received: from forward105p.mail.yandex.net ([77.88.28.108])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYpM-0006kv-Lg
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:15:38 +0000
Received: from mxback14o.mail.yandex.net (mxback14o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::65])
 by forward105p.mail.yandex.net (Yandex) with ESMTP id E4F3A4D404C2;
 Tue, 12 Nov 2019 19:15:32 +0300 (MSK)
Received: from sas2-b0ca3cd64eaa.qloud-c.yandex.net
 (sas2-b0ca3cd64eaa.qloud-c.yandex.net [2a02:6b8:c14:718c:0:640:b0ca:3cd6])
 by mxback14o.mail.yandex.net (mxback/Yandex) with ESMTP id eOGnp5Fk7e-FWou1XhH;
 Tue, 12 Nov 2019 19:15:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573575332; bh=LjAghBh1BDWqK1SF6XGDyVfVWTAl0FT+2g+kElww2jA=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=pLtDSjj4lrttT7VMB4HOxSwqo8PGaUM4MBGGsyzIK+k/D6PpsEDTeGUB3hbcOYFf5
 /eY5auI62HnatOwEAoT8ykLgdIg7xbCKYtMiX/38XRVQwppkPokBNMh1Xt1I0uQ7KQ
 S6LGvtL83AMsw1n/awvFNitkgFBdNH+ab7xdPMEM=
Authentication-Results: mxback14o.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by sas2-b0ca3cd64eaa.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id xY2rOY0rn4-FVUCRr75; Tue, 12 Nov 2019 19:15:31 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 2/3] arm: dts: sunxi: Add Neutis N5H3 support
Date: Tue, 12 Nov 2019 19:15:19 +0300
Message-Id: <1573575320-29546-3-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
References: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_081537_105434_9F2BCF2A 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    | 72 ++++++++++++++++++++++
 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  | 11 ++++
 3 files changed, 84 insertions(+)
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
index 00000000..02fbe00
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
@@ -0,0 +1,72 @@
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
+		states = <1100000 0x0>, <1300000 0x1>;
+	};
+
+	connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
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
