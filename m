Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AACF858F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 01:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fKQ6jAMI1rEBIcrBRoUQtIzj9tZl/f8ewPsCMuU9fvo=; b=cKv3VjvcS0kWhY
	vt9kS/TRxTvOK37ZJrfe7fMS0HrrsC34xipZfXyhK61hypO70joQYUwaECGhbanfokyPnWEqX9yus
	DT67Oa0HlRIOV0G06kuy/SCPX35RKvsD6gStrSglWalifIw85r8VL2cHksaYlCURV5NsoNYlV+l6U
	ugeIV9CPpjnxlxc6EqMHsWjF8i927sArklRpD1twi4/+J7PDOBA611VwW6UEAQ2zqc5r7cCDoz6Pq
	dJeFhO4FpOJVTB9Oht+Ktzuk3dCYGJZw6VBWiVEwqiMNYVLXAigxd5xUtSHJpmreLOIiVYkmcnrIS
	peRKGb18BtFCsYbr15UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUKLI-0008T9-RW; Tue, 12 Nov 2019 00:47:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUKLA-0008SI-BE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 00:47:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id w11so10595897pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 16:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=otvKJFMdJHlK0EYNAvznElTwY5tC0HSQCDgn+8/A+Zo=;
 b=W0yPIfp712aSTwJEcSD2ZavpuaB/VX5/sYj6akZAPvptK1M6Fbrt3gAEYB7UNlhonf
 Kx5ztl03VN3oqnAnKHzkxSz5GPhgJ7tJL4oFgwRgl15hHWKO7VZOk955PulJkK6/E4AJ
 GUSDsflpfmPCaWsZ40UYq4FKuXf/KvP+M0c68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=otvKJFMdJHlK0EYNAvznElTwY5tC0HSQCDgn+8/A+Zo=;
 b=adHAKrue/pTN7WDheeATUPH4G7q8OKcUJawE4rgiGS/Tg1kcZJZlawW7iIrixrzOqK
 k6bXzA3GclyZqQTGW8IloK1prqZ0AEBDR1ymGQ/Xc/NTz97V5yXH49lXYpk6CpjgYcgG
 fcY6np6oJh5qie7wWtHVTWiPAKhRvD6ZQMIvk5aIep+1yMa+wRge20QCC3EEBMjqIOsQ
 rKvyE04nu582rZ8wuGM1YlvE4sDRx47+4EVnbsYumXDc6b7sabI/oVLGtU9NjgQ9KCDt
 0wzUKf+s27XB+dwVITQEj4FRYwmOqqvpGr9D56WZL7x3BNv8BVB0OfdN6bE9Mpr6f3dz
 KaYw==
X-Gm-Message-State: APjAAAV53u1xjRbd1zM28CYfMcvyb99tUL4ecu5KCtFwFyNRo+HXTrmp
 DSUEfE9WkdnSxcF47C+vJKAs9w==
X-Google-Smtp-Source: APXvYqzoqt2f8i6rq/LbzgEXo9UeuqEz3V8E4mK/rdi6Jat2272DVPZzB31QnpNf7UztRPkfi1JkvQ==
X-Received: by 2002:a17:90b:438b:: with SMTP id
 in11mr2499088pjb.129.1573519647128; 
 Mon, 11 Nov 2019 16:47:27 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id z63sm14466129pgb.75.2019.11.11.16.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 16:47:26 -0800 (PST)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Mon, 11 Nov 2019 16:47:00 -0800
Message-Id: <20191112004700.185304-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_164728_413591_79660388 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables the Broadcom uart bluetooth driver on uart0 and gives it
ownership of its gpios. In order to use this, you must enable the
following kconfig options:
- CONFIG_BT_HCIUART_BCM
- CONFIG_SERIAL_DEV

This is applicable to rk3288-veyron series boards that use the bcm43540
wifi+bt chips.

As part of this change, also refactor the pinctrl across the various
boards. All the boards using broadcom bluetooth shouldn't touch the
bt_dev_wake pin.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
---

This patch enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).

The changes are applicable to the minnie, mickey, speedy and brain
variants (all of which use the Broadcom chips). The bt-activity node was
removed for all Veyron boards and shouldn't affect the boards using
Marvell chips since they aren't using this out-of-band wakeup gpio.

A previous portion of this series adding the compatible string to the
hci_bcm driver has already been merged into bluetooth-next:
https://lore.kernel.org/r/4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org

There is also an ongoing series to fix up the baudrate settings and
configure the PCM parameters on bluetooth-next:
https://lore.kernel.org/linux-bluetooth/20191112001949.136377-1-abhishekpandit@chromium.org/


 arch/arm/boot/dts/rk3288-veyron-brain.dts     |  9 +++
 .../dts/rk3288-veyron-broadcom-bluetooth.dtsi | 26 ++++++++
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 21 -------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    |  2 -
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |  9 +++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 59 +++----------------
 11 files changed, 159 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi

diff --git a/arch/arm/boot/dts/rk3288-veyron-brain.dts b/arch/arm/boot/dts/rk3288-veyron-brain.dts
index 406146cbff29..aa33d09184ad 100644
--- a/arch/arm/boot/dts/rk3288-veyron-brain.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-brain.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "rk3288-veyron.dtsi"
+#include "rk3288-veyron-broadcom-bluetooth.dtsi"
 
 / {
 	model = "Google Brain";
@@ -40,6 +41,14 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+	>;
+
 	hdmi {
 		vcc50_hdmi_en: vcc50-hdmi-en {
 			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi b/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
new file mode 100644
index 000000000000..ffa14049c3b5
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Veyron (and derivatives) fragment for the Broadcom 43450 bluetooth
+ * chip.
+ *
+ * Copyright 2019 Google, Inc
+ */
+
+&uart0 {
+	bluetooth {
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l>, <&bt_enable_l>,
+			    <&bt_dev_wake>;
+
+		compatible = "brcm,bcm43540-bt";
+		host-wakeup-gpios	= <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios		= <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios	= <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		max-speed		= <3000000>;
+
+		brcm,bt-sco-routing	= [01];
+		brcm,pcm-interface-rate	= [02];
+		brcm,pcm-sync-mode	= [01];
+		brcm,pcm-clock-mode	= [01];
+	};
+};
diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index ffb60f880b39..05112c25176d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -136,27 +136,6 @@
 };
 
 &pinctrl {
-	pinctrl-0 = <
-		/* Common for sleep and wake, but no owners */
-		&ddr0_retention
-		&ddrio_pwroff
-		&global_pwroff
-
-		/* Wake only */
-		&suspend_l_wake
-		&bt_dev_wake_awake
-	>;
-	pinctrl-1 = <
-		/* Common for sleep and wake, but no owners */
-		&ddr0_retention
-		&ddrio_pwroff
-		&global_pwroff
-
-		/* Sleep only */
-		&suspend_l_sleep
-		&bt_dev_wake_sleep
-	>;
-
 	buttons {
 		ap_lid_int_l: ap-lid-int-l {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 9a0f55085839..7e7ef8e06b8d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -18,8 +18,6 @@
 		     "google,veyron-fievel-rev0", "google,veyron-fievel",
 		     "google,veyron", "rockchip,rk3288";
 
-	/delete-node/ bt-activity;
-
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vccsys";
diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index a4966e505a2f..171ba6185b6d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -273,6 +273,28 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&suspend_l_wake
+		&bt_dev_wake_awake
+	>;
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&suspend_l_sleep
+		&bt_dev_wake_sleep
+	>;
+
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index a6ee44f0fe13..66f00d28801a 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -418,6 +418,28 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&suspend_l_wake
+		&bt_dev_wake_awake
+	>;
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&suspend_l_sleep
+		&bt_dev_wake_sleep
+	>;
+
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index 06a6a9554c48..ffd1121d19be 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "rk3288-veyron.dtsi"
+#include "rk3288-veyron-broadcom-bluetooth.dtsi"
 
 / {
 	model = "Google Mickey";
@@ -411,6 +412,14 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+	>;
+
 	hdmi {
 		power_hdmi_on: power-hdmi-on {
 			rockchip,pins = <7 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index c833716dbe48..39f76e02875f 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "rk3288-veyron-chromebook.dtsi"
+#include "rk3288-veyron-broadcom-bluetooth.dtsi"
 
 / {
 	model = "Google Minnie";
@@ -344,6 +345,26 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&suspend_l_wake
+	>;
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&suspend_l_sleep
+	>;
+
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index f420499f300a..71e6629cc208 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -64,6 +64,28 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&suspend_l_wake
+		&bt_dev_wake_awake
+	>;
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&suspend_l_sleep
+		&bt_dev_wake_sleep
+	>;
+
 	/delete-node/ lcd;
 
 	backlight {
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 2f2989bc3f9c..e354c61a45e7 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "rk3288-veyron-chromebook.dtsi"
+#include "rk3288-veyron-broadcom-bluetooth.dtsi"
 #include "cros-ec-sbs.dtsi"
 
 / {
@@ -279,6 +280,26 @@
 };
 
 &pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&suspend_l_wake
+	>;
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&suspend_l_sleep
+	>;
+
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 7525e3dd1fc1..54a6838d73f5 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,30 +23,6 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
-	bt_activity: bt-activity {
-		compatible = "gpio-keys";
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake>;
-
-		/*
-		 * HACK: until we have an LPM driver, we'll use an
-		 * ugly GPIO key to allow Bluetooth to wake from S3.
-		 * This is expected to only be used by BT modules that
-		 * use UART for comms.  For BT modules that talk over
-		 * SDIO we should use a wakeup mechanism related to SDIO.
-		 *
-		 * Use KEY_RESERVED here since that will work as a wakeup but
-		 * doesn't get reported to higher levels (so doesn't confuse
-		 * Chrome).
-		 */
-		bt-wake {
-			label = "BT Wakeup";
-			gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RESERVED>;
-			wakeup-source;
-		};
-
-	};
 
 	power_button: power-button {
 		compatible = "gpio-keys";
@@ -82,22 +58,17 @@
 		clocks = <&rk808 RK808_CLKOUT1>;
 		clock-names = "ext_clock";
 		pinctrl-names = "default";
-		pinctrl-0 = <&bt_enable_l>, <&wifi_enable_h>;
+		pinctrl-0 = <&wifi_enable_h>;
 
 		/*
-		 * Depending on the actual card populated GPIO4 D4 and D5
+		 * Depending on the actual card populated GPIO4 D4
 		 * correspond to one of these signals on the module:
 		 *
 		 * D4:
 		 * - SDIO_RESET_L_WL_REG_ON
 		 * - PDN (power down when low)
-		 *
-		 * D5:
-		 * - BT_I2S_WS_BT_RFDISABLE_L
-		 * - No connect
 		 */
-		reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_LOW>,
-			      <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_LOW>;
 	};
 
 	vcc_5v: vcc-5v {
@@ -481,26 +452,6 @@
 };
 
 &pinctrl {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <
-		/* Common for sleep and wake, but no owners */
-		&ddr0_retention
-		&ddrio_pwroff
-		&global_pwroff
-
-		/* Wake only */
-		&bt_dev_wake_awake
-	>;
-	pinctrl-1 = <
-		/* Common for sleep and wake, but no owners */
-		&ddr0_retention
-		&ddrio_pwroff
-		&global_pwroff
-
-		/* Sleep only */
-		&bt_dev_wake_sleep
-	>;
-
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
 		bias-disable;
 		drive-strength = <8>;
@@ -622,6 +573,10 @@
 		bt_dev_wake_awake: bt-dev-wake-awake {
 			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_output_high>;
 		};
+
+		bt_dev_wake: bt-dev-wake {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	tpm {
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
