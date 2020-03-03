Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5233177D82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mr/ZVowat2N9lchwpVk8x76DuTKxwuNdklog/DWz2K8=; b=TU8CHfswplRnSq
	DKZKqmbjsD9g+ROnPeXS5q+v3LvQmde8hKoPfn/wYBSsYSMiAz9pKUg0Ssax83r1obf9hVq8uEqeX
	GKg1gB6XQztIuRdIVCnAKfdDJw0j7RyMDZ11PYSK2TPoFKDQhs9YiLmPf4ajvssfWxcZqxV7nRMpA
	9lcyKkCPuYSsXeO3kK5JTgeixlH2KpXAztFYSxU4zxxUm8oDlykSNi4HiEz3Vf3duAxqhen0L20UQ
	mVL65f1VEsQL4cHP24BUrQKX7DJDdDY6WlekYaj/aUia8khaehJ92jToD63gtEsIxYD9cGejVE/g8
	ObbOAZpIwKk6l5uVwviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BPV-00038u-IU; Tue, 03 Mar 2020 17:32:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BPN-00037x-QU; Tue, 03 Mar 2020 17:32:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D0F79B028;
 Tue,  3 Mar 2020 17:32:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <stefan.wahren@i2se.com>, Eric Anholt <eric@anholt.net>
Subject: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
Date: Tue,  3 Mar 2020 18:32:16 +0100
Message-Id: <20200303173217.3987-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_093242_004282_20FC2CD0 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register based driver turned out to be unstable, specially on RPi3a+
but not limited to it. While a fix is being worked on, we roll back to
using firmware based scheme.

Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

See https://github.com/raspberrypi/linux/issues/3046 for more reference.
Note: I tested this on RPi3b, RPi3a+ and RPi2b.

 arch/arm/boot/dts/bcm2835-common.dtsi     |  1 -
 arch/arm/boot/dts/bcm2835-rpi-common.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi            |  1 +
 arch/arm/boot/dts/bcm2836.dtsi            |  1 +
 arch/arm/boot/dts/bcm2837.dtsi            |  1 +
 5 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-rpi-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index 2b1d9d4c0cde..4119271c979d 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -130,7 +130,6 @@ v3d: v3d@7ec00000 {
 			compatible = "brcm,bcm2835-v3d";
 			reg = <0x7ec00000 0x1000>;
 			interrupts = <1 10>;
-			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
 		};
 
 		vc4: gpu {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-common.dtsi b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
new file mode 100644
index 000000000000..b78a57534611
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This include file covers the common peripherals and configuration between
+ * bcm2835, bcm2836 and bcm2837 implementations that interact with RPi's
+ * firmware interface.
+ */
+
+#include <dt-bindings/power/raspberrypi-power.h>
+
+&v3d {
+	power-domains = <&power RPI_POWER_DOMAIN_V3D>;
+};
diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
index 53bf4579cc22..0549686134ea 100644
--- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2835";
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index 82d6c4662ae4..b390006aef79 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2836";
diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
index 9e95fee78e19..0199ec98cd61 100644
--- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -1,5 +1,6 @@
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2837";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
