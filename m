Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CC0200821
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6R5kc5/tY+1AKXw5eo2pTjvHqyIh232kT/ssvbUiF0k=; b=DjmtAKEvDWrDhXUbl1CRaVBljd
	6aWBeGeqOXXdQzfyUOAWvZGPHRSWsFrBc5JsEEaYo0441b1Y5RlavRoUeNaXYc67nozmxAlw5igqG
	zAFMXt0H9CZ8+Dl3hEw4/stsYHlO6OuNFMQcqDuwbN6LG162p+9P7VZI5UJP/7G6chKT3HxBsTu4i
	+yrzwcEpHRS2sJMAtY1A0MLMoa5cOswDRsdNxVlW2D5sv911+bmgN+Fdfi3CCj1DrZZlVnZNRkxEB
	zTNAp+grEmRZCtbg9QVoYvp7kjf5kzjMm42cMzE9NWHxyrqQ9YPjn20ptDt/8l9wJqzk8zFgFZu9j
	gqqLPMZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFbm-0007UI-JT; Fri, 19 Jun 2020 11:54:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFbM-0007NO-4X; Fri, 19 Jun 2020 11:54:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id n9so3852275plk.1;
 Fri, 19 Jun 2020 04:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=649vrouwnwNw8hZJmDui7hqgFQ4vaLHMeburQrpsbms=;
 b=cEbG/vDax/+j3lSPHK8/nHyvCjYB2tiiBwqR60bvfnEHJoxK4blTHPBKwKhBAp3cIp
 bsErxLaZ49/662w8ilOcd5ylWAwD0KnZip+va+BWpfAEaTVqCMOFys5qfpr5zz+5RCwf
 UsROPptozBcXt43gbOg+mLqShquDKaQIcnZK/gyT6r9fSOhzJ8HR+5QE6h+cOo+W2TQz
 NebvFnXFTQUsFEtTGRAvNMyzvTLJXsmAWG4MrT5BeYFI8sDxmEv23yVSWjTr8xtc6xav
 U/ZZB9WSMhh2+Vw20ZeVI0yUS+mJ0JW95JiNp2Q90n/JktQZ+m4IualUzUEyrhDAloI6
 MZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=649vrouwnwNw8hZJmDui7hqgFQ4vaLHMeburQrpsbms=;
 b=mi0WbLhhb5J3/AxYHfj8ixoWTmIH/ONOx+xz//5S0fI7T3FSVjZuIApVBXdecIuuVz
 SGsDwvvuAkPhqcvglEj2yR6yN5FyKy3XPN/t/9Ghy1DnBdr05w9mjqy9SRHJfmgE+5vK
 4eHLDi0fP/KIte3g8zsbebF9KpW8FV14C7rSKl2JW1H62COrVMpAsQk5Pdzy87DrNl7V
 WPgB/4DauiGeFZNsOO3LkU+vn45KIzMSnJnj0nw/mkZUFtl0uLjHlb7L0e1bJY+SAnRN
 phOqpEwezrYaSEu+nA4zAcSW1KTrDLv4uvyVgFFU9hs3wXduR90+sUAOG9o1UcBdIlNa
 oTTQ==
X-Gm-Message-State: AOAM531RYoeiVvo8lqMzFZa9dh4oVGPyL34NrGWZ1ar+IkxqIv15HAbX
 tgizyIE3AhPzu5BkoDHGBQIwgQUR
X-Google-Smtp-Source: ABdhPJzebrHgH8OaOUPSrWFqgAVqn30OWaq7q/7pjgpLWyM8CBheEmOSw1CN+ye0n7VavPf/P0ypMQ==
X-Received: by 2002:a17:902:6ac2:: with SMTP id
 i2mr7667948plt.243.1592567671500; 
 Fri, 19 Jun 2020 04:54:31 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:46c:79b7:a5d3:5b37:1d99:175a])
 by smtp.gmail.com with ESMTPSA id n64sm5026712pga.38.2020.06.19.04.54.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:54:31 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: lee.jones@linaro.org, jic23@kernel.org, jacek.anaszewski@gmail.com,
 pavel@ucw.cz, matthias.bgg@gmail.com
Subject: [PATCH v2 1/4] dt-bindings: mfd: Add bindings for the Mediatek MT6360
 PMIC
Date: Fri, 19 Jun 2020 19:53:48 +0800
Message-Id: <1592567631-20363-2-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
References: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_045432_216266_8A4C0E53 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, lars@metafoo.de, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, dmurphy@ti.com,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

Add devicetree binding document support Mediatek MT6360 PMIC

Signed-off-by: Gene Chen <gene_chen@richtek.com>
---
 Documentation/devicetree/bindings/mfd/mt6360.txt | 122 +++++++++++++++++++++++
 include/dt-bindings/mfd/mt6360.h                 |  15 +++
 2 files changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/mt6360.txt
 create mode 100644 include/dt-bindings/mfd/mt6360.h

diff --git a/Documentation/devicetree/bindings/mfd/mt6360.txt b/Documentation/devicetree/bindings/mfd/mt6360.txt
new file mode 100644
index 0000000..7d7d349
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/mt6360.txt
@@ -0,0 +1,122 @@
+MediaTek MT6360 PMIC Driver
+
+MT6360 is a multifunction device with the following sub modules:
+It is interfaced to host controller using I2C interface.
+This document describes the binding for PMIC device and its sub module.
+
+- ADC
+- Battery Charger/OTG boost
+- Flash LED/RGB LED/moonlight LED
+- 2-channel Buck and 6-channel LDO
+- USB_PD
+
+Required properties:
+- compatible:	Must be "mediatek,mt6360-pmu"
+- reg:		Specifies the I2C slave address of PMIC block, Must be <0x34>
+- interrupts:	I2C device IRQ line connected to the main SoC.
+
+Optional subnodes:
+- ADC
+	Required properties:
+		- compatible: "mediatek,mt6360-adc"
+- battery charger/OTG boost
+	Required properties:
+		- compatible: "mediatek,mt6360-chg"
+- Flash LED/RGB LED/moonlight LED
+	Required properties:
+		- compatible: "mediatek,mt6360-led"
+- 2-channel Buck and 6-channel LDO
+	Required properties:
+		- compatible: "mediatek,mt6360-regulator"
+- USB_PD
+	Required properties:
+		- compatible: "mediatek,mt6360-tcpc"
+
+Example:
+
+	#include <dt-bindings/interrupt-controller/irq.h>
+	#include <dt-bindings/mfd/mt6360.h>
+
+	mt6360@34 {
+		compatible = "mediatek,mt6360";
+		reg = <0x34>;
+		wakeup-source;
+		interrupts-extended = <&gpio26 0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "IRQB";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		adc {
+			compatible = "mediatek,mt6360-adc";
+			#io-channel-cells = <1>;
+		};
+		regulator {
+			compatible = "mediatek,mt6360-regulator";
+			LDO_VIN3-supply = <&BUCK2>;
+			buck1 {
+				regulator-compatible = "BUCK1";
+				regulator-name = "mt6360,buck1";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP
+							   MT6360_OPMODE_ULP>;
+			};
+			BUCK2: buck2 {
+				regulator-compatible = "BUCK2";
+				regulator-name = "mt6360,buck2";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP
+							   MT6360_OPMODE_ULP>;
+			};
+			ldo6 {
+				regulator-compatible = "LDO6";
+				regulator-name = "mt6360,ldo6";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+			ldo7 {
+				regulator-compatible = "LDO7";
+				regulator-name = "mt6360,ldo7";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+			ldo1 {
+				regulator-compatible = "LDO1";
+				regulator-name = "mt6360,ldo1";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+			ldo2 {
+				regulator-compatible = "LDO2";
+				regulator-name = "mt6360,ldo2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+			ldo3 {
+				regulator-compatible = "LDO3";
+				regulator-name = "mt6360,ldo3";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+			ldo5 {
+				regulator-compatible = "LDO5";
+				regulator-name = "mt6360,ldo5";
+				regulator-min-microvolt = <2700000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+		};
+	};
diff --git a/include/dt-bindings/mfd/mt6360.h b/include/dt-bindings/mfd/mt6360.h
new file mode 100644
index 0000000..6368388
--- /dev/null
+++ b/include/dt-bindings/mfd/mt6360.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides macros for MT6360 device bindings.
+ *
+ * Copyright (c) 2020 Mediatek Inc.
+ */
+
+#ifndef __DT_BINDINGS_MT6360_H__
+#define __DT_BINDINGS_MT6360_H__
+
+#define MT6360_OPMODE_LP		(2)
+#define MT6360_OPMODE_ULP		(3)
+#define MT6360_OPMODE_NORMAL		(0)
+
+#endif /* __DT_BINDINGS_MT6360_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
