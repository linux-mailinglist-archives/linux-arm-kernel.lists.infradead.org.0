Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C099B10DF42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 21:25:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwVKLI2Vijpfp5GK/LZVSregUSqXu1KPDy5xqnfr0nE=; b=OFmmP+TdE7Pj1F
	QfrlZ1/FNsUh5RaAuzH7j9U6Cfpp3NT1fSOABsMR7Sy0SXBuq/qmYDv73j+4V6E3Dv5Ob205JaLVG
	6oDqQQiyMXrVmVHZH9cKpFLaprUXx2Wo90K5zJmuCd+ymgDZTwTWiRUU+BchIpQYs7PpxFjj13iVQ
	P5dlgAilBxlHSQNx+A/wuE+Z46UQYBStx+cI7yyCUDdBSAwhWr3gb1Cyq9IdU6i8Fk6EUI36xs3yY
	A4dqGAl2dWMtSHpCOD80b5WcYe+5IbVGbEHwY8rIpOIXTLLcOVvwGbmc9rCM9ECTIDpMyuykCRoya
	lqNRCIB2A6cIPW9Fe5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib9IZ-0001Dk-Gi; Sat, 30 Nov 2019 20:24:59 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib9HQ-0000NZ-KO
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 20:23:50 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 5AE05BFB8E;
 Sat, 30 Nov 2019 20:23:37 +0000 (UTC)
Received: from localhost.localdomain (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id CA0AB64C19;
 Sat, 30 Nov 2019 21:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1575145415; x=1576355015;
 bh=fqwZp4emGYLlyQ0o+53kk6KDHW9jOpE2pSUA1m6BOFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=l6wNRbZbeYS9xY4v0AGgWdEjy0W34sEuN/6S+MA1gGyPF3ywOcRfjL55NCnyfe4BE
 iEMjsF8gRttcUcKUezRy1qWQlAB6Q2h+mk/1q7MJYRKRR8fRyYBuuLeYhNIl8DZBua
 KwKetKi0UAWj//WjpFfDJ2WtKqKIk/jqlyFFW9Fs2WTQJ+9tR25eaMViHECvWtsah6
 lvGeGvJ8tlCTuFc7INasKaQVCVVuxrc04Qicrf6GX7u/Q9NNEzT5XoRdY94A+utHmb
 xnXXVArVryuQ7FX9iwv2St+Hx4Sf2/Kd1v5cALaKOvN+RB7d7BCqbVDzflYO7Erd2x
 7BhGKbdvvc3xA==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 1/3] dt-bindings: net: bluetooth: add DT bindings for
 Realtek controllers
Date: Sat, 30 Nov 2019 21:23:12 +0100
Message-Id: <20191130202314.142096-2-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_122348_802238_3A7DCE71 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rtl_bt driver already supports some Realtek controllers on ACPI
platforms.
This commit adds bindings for DT-only platforms.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 .../bindings/net/realtek-bluetooth.yaml       | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
new file mode 100644
index 000000000000..6b62e5132c90
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Bluetooth controllers device tree bindings
+
+description: |
+  Device tree bindings for serial attached Realtek Bluetooth controllers.
+
+maintainers:
+  - Marcel Holtmann <marcel@holtmann.org>
+  - Johan Hedberg <johan.hedberg@gmail.com>
+
+properties:
+  compatible:
+    items:
+      - const: realtek,rt8723bs-bt
+
+  powerdown-gpios:
+    description: GPIO line controlling the power down (BT_DIS#) signal
+    maxItems: 1
+
+  device-wake-gpios:
+    description: GPIO line controlling the device wakeup (BT_WAKE) signal
+    maxItems: 1
+
+  host-wake-gpios:
+    description: GPIO line sampling the host wakeup (BT_HOST_WAKE) signal
+    maxItems: 1
+
+  firmware-name:
+    description: |
+      Name of the configuration file to load in addition to firmware
+    $ref: http://devicetree.org/schemas/types.yaml#/definitions/string
+
+required:
+  - compatible
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    uart1 {
+      bluetooth {
+        compatible = "realtek,rtl8723bs-bt";
+        powerdown-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>;
+        host-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>;
+        device-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>;
+        firmware-name = "rtl8723bs_config-teres_a64_i.bin";
+      };
+    };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
