Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DF31EBFBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWANQhSfE02C5h+qkE1Oz5zQU746VcECyOV2SXHL5Gw=; b=LyjOWuQOzLTUlA
	vgGqIfcHpIiFeAsVfgWubQ8DjokHLMAq0pOG4ob06WiaHHLMvZhaCylROLKyksWdXjnH0WtSEBH7s
	A9xGWbUjRsQp6tn/MlnzLybmbYZk4ga3xbvYV585vNHdplAa0gpo70YtZJG+qFY9UmRw1EMQW9Z41
	vxSdm7MWAE4g5sRFstH4qUpWBx4SaX8f1bIdmAadZ2Jeo05nfqBYUSNaKG7BUK4VjQMo2IwvGuQ2M
	dr1MLmrMY9rC4Tc0gxSbuCSEg5obM67O4o2Bvaua03rdOgbhH5yD5jg/kFShiSE8ilpX/Wudg0l4U
	d03uxKdUgsI4zWHYKjBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9YA-0005s5-DF; Tue, 02 Jun 2020 16:14:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9XY-0005RI-I6
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:13:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id r15so3717270wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 09:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wRxyk7AgJAjBP1wGNSxBpMY9GpEBrSY1kU+d8H0i7g4=;
 b=Ba7KzQriq4ldTyFY9mdZUjBqtOiBpnQ+CEELdLxzKIXDI/jSv7ozfOxr0ps/Wwu8Bh
 RDWvmuJDYLZTCjObQdfk92Xh7Ypv30SKo/duZv8uqWABimxepLOb5bOjMuWljT8mg0zX
 wejpuH8riYTCLR+MDVAZ7M1/Es/8TtUTiCaeXhBi/+D8vJsOSNfKJNQZBYQAbuSdLG8q
 25uB9MQwMFRglqZg97KtDhVHHEHVWu7qDF88OLYkX+FFbwG0pAsCE1aLq+KfUaEUZduY
 sD9U7nNMgfuLlwNn86T2qUtYKSVpxJpAU5DvMlmmR5lzp7lDVsCNnCZ8B8VwxyT6Sfz4
 thWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wRxyk7AgJAjBP1wGNSxBpMY9GpEBrSY1kU+d8H0i7g4=;
 b=bvhwsVsJYkb2+AlU+B82vePOUNMUPvH5hWWwTGdThcc73XBr451enSDfRo2ZAj5lX8
 nJ4NGpjIjDIO6OXN84wntLLFmLzlFbFKA1Rewv/4u3whXdOzX04UXk4hvVF++wOTxqYS
 s4VneqJWttQg9HpKjWUyZkP6KjDFMYcGwI2XdZJD+8F4B827wMtlygKb3l7/bezdEBfa
 dmj1/6mqKiofwvfTu1aUmYFwP4KKE0vgVPgHoiV7y931dSzQhA1ZCG8+2M5jkGoke8kZ
 2P8rMRAbritMWl4GRI/1GNOYE1AJ8G5wsgReFfvFd71r8J6PkXf7LE6VVzeE/mafml3t
 RfCw==
X-Gm-Message-State: AOAM533KmHoEq7D3hyL0MSnqQhvdxWax1T2I4XPZA/s00St1nl+smlrm
 pXMBf/pfSz/dxIi+HG97eXfu2WW9pxE=
X-Google-Smtp-Source: ABdhPJyhyXS+zlCY2FEcEC9B+zbR+jwx7JHDxGRXIcKw1wuN3lHDEaJjI9hgdrBfKlWlnVJ4br5dYA==
X-Received: by 2002:a05:600c:218b:: with SMTP id
 e11mr4765547wme.162.1591114402656; 
 Tue, 02 Jun 2020 09:13:22 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id s132sm338062wmf.12.2020.06.02.09.13.22
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 02 Jun 2020 09:13:22 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 2/3] ARM: dts: NSP: Add support for Cisco Meraki MX64(W)
Date: Tue,  2 Jun 2020 17:11:18 +0100
Message-Id: <dc4c69de81ecc422d0b2895c6020832e28ba8839.1591114003.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <cover.1591114003.git.mnhagan88@gmail.com>
References: <cover.1591114003.git.mnhagan88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091324_603730_BCB3FB59 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hardware Info
-------------

Processor	- Broadcom BCM58625 dual-core @ 1.2 GHz
DDR3 RAM	- 2GB (4x SK Hynix H5TC4G83CFR)
Flash		- 1GB (Micron MT29F8G08ABACA)
Switch		- Broadcom BCM58625
Wireless(MX64W)	- Broadcom BCM43520KMLG (2x)
Ports		- 5 Ports
Serial Port	- 115200 8n1
USB		- 1x 2.0

Tested with Kernel 5.4. PCIe is inactive on the non-wireless MX64.

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/boot/dts/bcm958625-mx64.dts   |  15 +++
 arch/arm/boot/dts/bcm958625-mx64w.dts  |  23 +++++
 arch/arm/boot/dts/bcm958625-mx64x.dtsi | 136 +++++++++++++++++++++++++
 3 files changed, 174 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64w.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64x.dtsi

diff --git a/arch/arm/boot/dts/bcm958625-mx64.dts b/arch/arm/boot/dts/bcm958625-mx64.dts
new file mode 100644
index 000000000000..ec1017b8bf68
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx64.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX64.
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm958625-mx64x.dtsi"
+
+/ {
+	model = "Cisco Meraki MX64";
+	compatible = "meraki,mx64", "brcm,bcm58625", "brcm,nsp";
+};
diff --git a/arch/arm/boot/dts/bcm958625-mx64w.dts b/arch/arm/boot/dts/bcm958625-mx64w.dts
new file mode 100644
index 000000000000..a3fbf0fed218
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx64w.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX64W.
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm958625-mx64x.dtsi"
+
+/ {
+	model = "Cisco Meraki MX64W";
+	compatible = "meraki,mx64w", "brcm,bcm58625", "brcm,nsp";
+};
+
+&pcie0 {
+        status = "okay";
+};
+
+&pcie1 {
+        status = "okay";
+};
diff --git a/arch/arm/boot/dts/bcm958625-mx64x.dtsi b/arch/arm/boot/dts/bcm958625-mx64x.dtsi
new file mode 100644
index 000000000000..4be3dd314beb
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx64x.dtsi
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX64 series (Kingpin).
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm958625-mx6x-common.dtsi"
+
+#include <dt-bindings/input/input.h>
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+
+		power_orange {
+			label = "power:orange";
+			gpios = <&gpioa 0 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		lan1_right {
+			label = "lan1:right";
+			gpios = <&gpioa 18 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_left {
+			label = "lan1:left";
+			gpios = <&gpioa 19 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_right {
+			label = "lan2:right";
+			gpios = <&gpioa 20 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_left {
+			label = "lan2:left";
+			gpios = <&gpioa 24 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_right {
+			label = "lan3:right";
+			gpios = <&gpioa 25 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_left {
+			label = "lan3:left";
+			gpios = <&gpioa 26 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_right {
+			label = "lan4:right";
+			gpios = <&gpioa 27 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_left {
+			label = "lan4:left";
+			gpios = <&gpioa 28 GPIO_ACTIVE_LOW>;
+		};
+
+		wan0_right {
+			label = "wan0:right";
+			gpios = <&gpioa 29 GPIO_ACTIVE_LOW>;
+		};
+
+		wan0_left {
+			label = "wan0:left";
+			gpios = <&gpioa 30 GPIO_ACTIVE_LOW>;
+		};
+
+		power_white {
+			label = "power:white";
+			gpios = <&gpioa 31 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	gpio-buttons {
+		compatible = "gpio-keys-polled";
+		autorepeat;
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpioa 6 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&srab {
+	compatible = "brcm,bcm58625-srab", "brcm,nsp-srab";
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			label = "lan1";
+			reg = <0>;
+		};
+
+		port@1 {
+			label = "lan2";
+			reg = <1>;
+		};
+
+		port@2 {
+			label = "lan3";
+			reg = <2>;
+		};
+
+		port@3 {
+			label = "lan4";
+			reg = <3>;
+		};
+
+		port@4 {
+			label = "wan0";
+			reg = <4>;
+		};
+
+		port@8 {
+			ethernet = <&amac2>;
+			label = "cpu";
+			reg = <8>;
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+	};
+};
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
