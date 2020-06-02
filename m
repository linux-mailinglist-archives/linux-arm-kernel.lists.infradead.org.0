Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CE1EBFBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVI6/PvfeYUrQ7e2wC3uNDqkRbQtGcZKcInuxDIk64M=; b=mHszAysSKa2sjL
	oeADquQuwyTqC3P+kp6jO77nczWHLTVTjmnrMTyOZsJCtLHkX7onwRBnWy/AEx7vA3TfFDcromvls
	ScOnrXGtS7+c7dmaxxH1Wgh5J5G9v5Nf6rQh6MgFBNWO2uG+rWPbCyggXaoUYapxvoH9bWeel4c7G
	GHjSxP6wNvdXr3otWTU2dLKNMxTkaasNTRoHLK2zzy5SZdlBRmxe1y9tpnsqIOQA/y0xzQcvf0LnM
	ZOLZRIu8twNmGvsBwzmY1T3fvAlp0/5dHFVWL2yTZ0m+VLu0cNbdCn69RwQK5vhr93s5fVZrGQ6ZV
	ZFApVg6aWlmQHxKZs0XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9Xs-0005aW-RF; Tue, 02 Jun 2020 16:13:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9XX-0005Qp-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:13:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so3943477wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 09:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YCc3Aqf4BIr9Rnf1jzyRRww8U9DCaXD931Bc2v9LHGk=;
 b=RoRrDRQ+wD+Q30mxCNkTZsCyOMwpWwgQvWv9uanSn6cmrlMar1iPbj8tiWB+vk8o1V
 7YVB1mKdedpI4U0wJXL5Ny/Ecbe/EELxODi1LpHdpLPjTgF8Z0KWV9+LrQGqufNd4xGk
 yQIy7+CkagZgk9IT5nzX0hJR9DPwuPFU1jwu1sNNQtDUpl6Kx5N08ZbbdBqV/ugWzr8z
 gxfxdh5pC0WmkOavqVVUe1uhuVhg1Bzwf+KpkMVSKCXCKHy9Niy+lOcFOoAoSEOZk/oE
 qidriLh1QmHPx2dN5bBd0vyRYMFSQHVii2WsIKQsrH2vG2FMEqMrZoyy5YYKEZpwhjY8
 q52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YCc3Aqf4BIr9Rnf1jzyRRww8U9DCaXD931Bc2v9LHGk=;
 b=Z++Xz+oM7WQSx9AJZzhtccMXsChC3jPGz3lQ6BD90FQyjzwBMPnlxLUYl5hEwsCohg
 oJ2jUwvseQGMPeOG/pC23wkoliJoNBz8pHYuYGShQfUbtVIIb6fnmEJbjC145FdSNpUN
 G61UPkZte/B2TX7zESTJKM1CfIe4cT9P5MKQXG+NP75LEHIWeeTwl+43araljCto8LEi
 kL6+cJ5Kd0VYzcFRXIeoiF0zV2X+b1u/jlS1P9CXhNOgMQrHNLUuDUNJGHHFszrpAmaB
 mtag8ggpc6ab7rRtxaso+otvHzP7PFvfho2WadSny6WXaaKd+2KKSzlQyXCC1UeJWAXF
 lwGw==
X-Gm-Message-State: AOAM533fBrckghwAmI6CTtZN/kprpvDYaNpzOEU3qa1pIuBELEZQ8bLS
 PyyieAdPus4XdFtODUhL+1WtHlAN8pw=
X-Google-Smtp-Source: ABdhPJy5ltrqEymhwegMFG4Q9FZ9dFa7xPt8JJj3b23N9OLf5r+kpZ1CgmhluHc2969SgNBk3ZJlvw==
X-Received: by 2002:adf:d84c:: with SMTP id k12mr26912631wrl.265.1591114401767; 
 Tue, 02 Jun 2020 09:13:21 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id c140sm291884wmd.18.2020.06.02.09.13.21
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 02 Jun 2020 09:13:21 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 1/3] ARM: dts: NSP: Add common bindings for Meraki MX64/65
Date: Tue,  2 Jun 2020 17:11:17 +0100
Message-Id: <d2db4e0aafff74cd16b2c2a9b2c86fba7d8f5f84.1591114003.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <cover.1591114003.git.mnhagan88@gmail.com>
References: <cover.1591114003.git.mnhagan88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091323_485520_64780B13 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/boot/dts/bcm958625-mx6x-common.dtsi | 172 +++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm958625-mx6x-common.dtsi

diff --git a/arch/arm/boot/dts/bcm958625-mx6x-common.dtsi b/arch/arm/boot/dts/bcm958625-mx6x-common.dtsi
new file mode 100644
index 000000000000..1e253dd0941a
--- /dev/null
+++ b/arch/arm/boot/dts/bcm958625-mx6x-common.dtsi
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Common Bindings for Cisco Meraki MX64 (Kingpin) and MX65 (Alamo) devices.
+ *
+ * Copyright (C) 2020 Matthew Hagan <mnhagan88@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm-nsp.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x60000000 0x80000000>;
+	};
+
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		red {
+			label = "pwm:led:red";
+			pwms = <&pwm 1 50000>;
+		};
+
+		green {
+			label = "pwm:led:green";
+			pwms = <&pwm 2 50000>;
+		};
+
+		blue {
+			label = "pwm:led:blue";
+			pwms = <&pwm 3 50000>;
+		};
+	};
+};
+
+&L2 {
+        arm,io-coherent;
+        prefetch-data = <1>;
+        prefetch-instr = <1>;
+};
+
+&uart0 {
+	clock-frequency = <62500000>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	eeprom: at24@50 {
+		compatible = "atmel,24c64";
+		pagesize = <32>;
+		reg = <0x50>;
+	};
+};
+
+&amac2 {
+	status = "okay";
+};
+
+&nand {
+	nandcs@0 {
+		compatible = "brcm,nandcs";
+		reg = <0>;
+		nand-on-flash-bbt;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		nand-ecc-strength = <24>;
+		nand-ecc-step-size = <1024>;
+
+		brcm,nand-oob-sector-size = <27>;
+
+		partition@0 {
+			label = "U-boot";
+			reg = <0x00 0x80000>;
+			read-only;
+		};
+
+		partition@80000 {
+			label = "Shmoo";
+			reg = <0x80000 0x80000>;
+			read-only;
+		};
+
+		partition@100000 {
+			label = "bootkernel1";
+			reg = <0x100000 0x300000>;
+		};
+
+		partition@400000 {
+			label = "senao_nvram";
+			reg = <0x400000 0x100000>;
+		};
+
+		partition@500000 {
+			label = "bootkernel2";
+			reg = <0x500000 0x300000>;
+		};
+
+		partition@800000 {
+			label = "ubi";
+			reg = <0x800000 0x3f700000>;
+		};
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&pwm {
+	status = "okay";
+	#pwm-cells = <2>;
+	chan0 {
+		channel = <1>;
+		active_low = <1>;
+		};
+	chan1 {
+		channel = <2>;
+		active_low = <1>;
+	};
+	chan2 {
+		channel = <3>;
+		active_low = <1>;
+	};
+};
+
+&ccbtimer1 {
+	status = "disabled";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&nand_sel>, <&gpiobs>, <&pwmc>;
+
+	nand_sel: nand_sel {
+		function = "nand";
+		groups = "nand_grp";
+	};
+
+	gpiobs: gpiobs {
+		function = "gpio_b";
+		groups = "gpio_b_0_grp", "gpio_b_1_grp", "gpio_b_2_grp",
+			 "gpio_b_3_grp";
+	};
+
+	pwmc: pwmc {
+		function = "pwm";
+		groups = "pwm0_grp", "pwm1_grp", "pwm2_grp", "pwm3_grp";
+	};
+
+	i2c_sel: i2c {
+		function = "i2c";
+		groups = "i2c_grp";
+	};
+};
+
+&sata_phy {
+	status = "disabled";
+};
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
