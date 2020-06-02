Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA5A1EBFBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R60I2TvJ4iA5xJMz0cx9Nuk4KMYMv8xpPZvyjRv6lPU=; b=ufUIHMgKuRe/1i
	cvNsMSRx3LfR4sKrNg59AJ6BqVtaixpq+wRnUUr4I6TtJwF9snt1cYwzMkRQbmV8wZs0QYKPutuEZ
	NKKnIUcGVOanpTVuWYU8p9CRlizEzGJ5NrBG5Lx8DkNexD5bLTnzfazoeXRMw4RNjtFM414eQxTAb
	nPhY2bCvC5msBhcXIZqkb8xzL12znbuqLiU2auJFzHN+E2AuvQIOCBepPGUM4f3YWMzZSiSc6g/ky
	VwZ4s2Uzo3BdSXksomR2w6gosq5w6mxRz/YBlmXNaIfWXAy8iFBK37vxq6DwMf3xd0dCgX7Qsy6V6
	u+qDRobAfPr3gVqqmejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9YO-00066N-3Q; Tue, 02 Jun 2020 16:14:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9XZ-0005RW-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:13:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id p5so3970133wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 09:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2A9hisu7OCmqwJQRNm/eLMXrMSsroMPdlllTVf5Mc88=;
 b=ah5ZAsYQjmWmYiJC+YPLhMVumSOCWJ74DRWtWELgxxn1T3cXR/F0SKmj3X7ICKGGeW
 Kt2sO+YZZDqlK0HYjLa/YQyIIkWiUN+hNBsuI3PGjYg4mOyiFb6h8pPinuOqiMdw+I3i
 LvNTXzBGEC49gS5RTqkVMjy7liUTi6iQZK9RAT5PfZJ9d/07B5FjxCvEin+C4QQES/+8
 JXKUiZbpD/j5YNfmy+Z40Co2kxNVBAmccNXsIe5yOfS7V4Dwnb3PiyPUyqOEBTutIh6N
 sPOb9SJ70Fuc6fI9N7tLgrJ6yVDoN1chMxT0w0AtfzoArYi9t8T2k56fM8FDEUfYZrNq
 fnuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2A9hisu7OCmqwJQRNm/eLMXrMSsroMPdlllTVf5Mc88=;
 b=VASq3f/Nkqu7lv2XNuojNilciE1VE644ae0Pm3SG3gaxj1xYeWmx+7sOl9c2iW1aO9
 Iskwxz0zkraiotxCvMQ51a6nno40AI3UsQ6Nbqm2bzVSC7Kvcr1uY+CBdWOImwxUiw9C
 jdQXFyg65C20LmCQqP3Uk3xIi0DFd/jtBY0yQkAlmWD+TcPf0xNfV0o7xVzyhPT1CtFv
 /5/YUflD2QwIXyPR1q5or5Tu7HTpMCwA/cbixIDBxGivO5cMJ2T0g+kM0e0ylI0McPVy
 bW1UxCsiJOZgHmeiQTcEuKEjOiEj1vHBMdrqWh3hdJTFzdBiIezka2JYB/ssPUz7S7ul
 Amhg==
X-Gm-Message-State: AOAM530gujTLzLf6nWRz735e+xmpjKnrOzvmitKP8+HwVGaOrWky1Udq
 /Nd4ehSlgXjNI0qjFe2WTpYnmEvBfWs=
X-Google-Smtp-Source: ABdhPJzcrmjBQDGQXTWgzWTFICr9GkG3GW2ikvynC6gMlEGjRXqfuClkZYDY15Jqk+tGlOegPX5Esg==
X-Received: by 2002:a5d:604b:: with SMTP id j11mr26861530wrt.193.1591114403558; 
 Tue, 02 Jun 2020 09:13:23 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id l17sm273714wmi.3.2020.06.02.09.13.23
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 02 Jun 2020 09:13:23 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 3/3] ARM: dts: NSP: Add support for Cisco Meraki MX65(W)
Date: Tue,  2 Jun 2020 17:11:19 +0100
Message-Id: <bceec91d0c933cbe1dd365d6d532bb241c8be2af.1591114003.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <cover.1591114003.git.mnhagan88@gmail.com>
References: <cover.1591114003.git.mnhagan88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091325_440650_F5B3230F 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Switches	- Broadcom BCM58625, 2x Qualcomm Atheros QCA8337
Ports		- 12 Ports
Wireless(MX65W)	- Broadcom BCM43520KMLG (2X)
Serial Port	- 115200 8n1
USB		- 1x 2.0

Tested with Kernel 5.4. PCIe is inactive on non-wireless MX65.

Note: The QCA8337 switches are connected to ports 4 and 5 of the BCM58625
SRAB, which need be set to SGMII mode.

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/boot/dts/bcm958625-mx65.dts   |  15 ++
 arch/arm/boot/dts/bcm958625-mx65w.dts  |  23 ++
 arch/arm/boot/dts/bcm958625-mx65x.dtsi | 321 +++++++++++++++++++++++++
 3 files changed, 359 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65w.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65x.dtsi

diff --git a/arch/arm/boot/dts/bcm958625-mx65.dts b/arch/arm/boot/dts/bcm958625-mx65.dts
new file mode 100644
index 000000000000..af161d268824
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx65.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX65.
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm958625-mx65x.dtsi"
+
+/ {
+	model = "Cisco Meraki MX65";
+	compatible = "meraki,mx65", "brcm,bcm58625", "brcm,nsp";
+};
diff --git a/arch/arm/boot/dts/bcm958625-mx65w.dts b/arch/arm/boot/dts/bcm958625-mx65w.dts
new file mode 100644
index 000000000000..67933ca7b598
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx65w.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX65W.
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm958625-mx65x.dtsi"
+
+/ {
+	model = "Cisco Meraki MX65W";
+	compatible = "meraki,mx65w", "brcm,bcm58625", "brcm,nsp";
+};
+
+&pcie0 {
+        status = "okay";
+};
+
+&pcie1 {
+        status = "okay";
+};
diff --git a/arch/arm/boot/dts/bcm958625-mx65x.dtsi b/arch/arm/boot/dts/bcm958625-mx65x.dtsi
new file mode 100644
index 000000000000..f69949be501e
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx65x.dtsi
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Device Tree Bindings for Cisco Meraki MX65 series (Alamo).
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
+	aliases {
+		mdio-mux-mmio = &mdiomux0;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power_orange {
+			label = "power:orange";
+			gpios = <&gpioa 3 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		lan_leds {
+			label = "lan:leds";
+			gpios = <&gpioa 12 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan1_right {
+			label = "wan1:right";
+			gpios = <&gpioa 24 GPIO_ACTIVE_LOW>;
+		};
+
+		wan1_left {
+			label = "wan1:left";
+			gpios = <&gpioa 25 GPIO_ACTIVE_LOW>;
+		};
+
+		wan2_right {
+			label = "wan2:right";
+			gpios = <&gpioa 26 GPIO_ACTIVE_LOW>;
+		};
+
+		wan2_left {
+			label = "wan2:left";
+			gpios = <&gpioa 27 GPIO_ACTIVE_LOW>;
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
+			gpios = <&gpioa 8 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	mdio: mdio@18032000 {
+                compatible = "brcm,iproc-mdio";
+                reg = <0x18032000 0x8>;
+                #size-cells = <0>;
+                #address-cells = <1>;
+        };
+
+	mdiomux0: mdio-mux {
+		compatible = "mdio-mux-mmioreg";
+		reg = <0x18032000 0x4>;
+		mux-mask = <0x200>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		mdio-parent-bus = <&mdio>;
+
+		mdio_int: mdio@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+	};
+		mdio_ext: mdio@200 {
+			reg = <0x200>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
+	mdio-mii-mux {
+		compatible = "mdio-mux-mmioreg";
+		reg = <0x1803f1c0 0x4>;
+		mux-mask = <0x2000>;
+		mdio-parent-bus = <&mdio_ext>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mdio@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			phy_port6: phy@0 {
+				reg = <0>;
+			};
+
+			phy_port7: phy@1 {
+				reg = <1>;
+			};
+
+			phy_port8: phy@2 {
+				reg = <2>;
+			};
+
+			phy_port9: phy@3 {
+				reg = <3>;
+			};
+
+			phy_port10: phy@4 {
+				reg = <4>;
+			};
+
+			switch@10 {
+				compatible = "qca,qca8337";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x10>;
+				dsa,member = <1 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						label = "cpu";
+						ethernet = <&sgmii1>;
+						phy-mode = "sgmii";
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan8";
+						phy-handle = <&phy_port6>;
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan9";
+						phy-handle = <&phy_port7>;
+					};
+
+					port@3 {
+						reg = <3>;
+						label = "lan10";
+						phy-handle = <&phy_port8>;
+					};
+
+					port@4 {
+						reg = <4>;
+						label = "lan11";
+						phy-handle = <&phy_port9>;
+					};
+
+					port@5 {
+						reg = <5>;
+						label = "lan12";
+						phy-handle = <&phy_port10>;
+					};
+				};
+			};
+		};
+
+		mdio-mii@2000 {
+			reg = <0x2000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			phy_port1: phy@0 {
+				reg = <0>;
+			};
+
+			phy_port2: phy@1 {
+				reg = <1>;
+			};
+
+			phy_port3: phy@2 {
+				reg = <2>;
+			};
+
+			phy_port4: phy@3 {
+				reg = <3>;
+			};
+
+			phy_port5: phy@4 {
+				reg = <4>;
+			};
+
+			switch@10 {
+				compatible = "qca,qca8337";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x10>;
+				dsa,member = <2 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						label = "cpu";
+						ethernet = <&sgmii0>;
+						phy-mode = "sgmii";
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan3";
+						phy-handle = <&phy_port1>;
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan4";
+						phy-handle = <&phy_port2>;
+					};
+
+					port@3 {
+						reg = <3>;
+						label = "lan5";
+						phy-handle = <&phy_port3>;
+					};
+
+					port@4 {
+						reg = <4>;
+						label = "lan6";
+						phy-handle = <&phy_port4>;
+					};
+
+					port@5 {
+						reg = <5>;
+						label = "lan7";
+						phy-handle = <&phy_port5>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&srab {
+	compatible = "brcm,bcm58625-srab", "brcm,nsp-srab";
+	status = "okay";
+	dsa,member = <0 0>;
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			label = "wan1";
+			reg = <0>;
+		};
+
+		port@1 {
+			label = "wan2";
+			reg = <1>;
+		};
+
+		sgmii0: port@4 {
+			label = "sw0";
+			reg = <4>;
+			fixed-link {
+			       speed = <1000>;
+			       full-duplex;
+		      };
+		};
+
+		sgmii1: port@5 {
+			label = "sw1";
+			reg = <5>;
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
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
+
+&pinctrl {
+	mdio_sel: mdio {
+		function = "mdio";
+		groups = "mdio_grp";
+	};
+};
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
