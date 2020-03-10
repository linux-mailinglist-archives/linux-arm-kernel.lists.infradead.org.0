Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBEA17FF60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFBmUZgGSH+frvi5mwPL2JRMmsB5CCdZAa6+ShIuFUU=; b=U9Nt+4414o69qC
	pxa3ZFm7fHCHGoGuP/Jnc1Tiw0izo7chxpNBmgdynBjVkCAeLN81WV/6CEvuF+L2SPRP6x8GYcoL4
	jHfDT1Cil9IU6ml/WqywWiYNYOhb9xG6iI9vpRjXi3RxTz7V9hZPvZACTBRMXrKc7c2DV0S7f51V4
	Lx6vhvaHrQp0LJFvTtmvhTrQVsIcTxrUECPnFCdcF+bkr3NDc3juoxOBR3Ez7Mo9JAswi+ii4VGDB
	V1TpQ3oW91OVhyAytjAVgMWSHM8cwv/4ix0uNdwYnoSqQwDQxVmxQvFuYLYVX7TAA5AehcLzA7dSj
	Cn+Adxu7Ty2VzsQxXRIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfDY-0004TQ-Gq; Tue, 10 Mar 2020 13:46:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfD0-00049k-Ig
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 13:46:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so1408529wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5NwK13KieE3g1pIeISpKvFgafrteuLKq6QKuAvKr48w=;
 b=rXeiEXfdr7tjum0cLwUO3W6F2kslF/2sogUyrT2+BzLXOSZ5FDRTKKnUxD/2OnR4KU
 QhGF45RfRZrsJX3jzztasXZvdaRCYT7jXLEhYv0228ryhXtrVKPfEefIYRpee0hfwaSW
 3zHp8m60zHbsae3fzH/X7rkoXOdHXwZ05Vvs3WJ38yuOruHMfb2JhQLoaIb17Ppxu/gX
 ZnTx2S9+esDpmKekZGJWHeR6tYipahZfAjzHWIIGfgOBlcH8aOeDfho3nenzVHF90NHM
 iQpyHOjQc7oQLYpAvRXAbKU/OQZDmzuTLgdbITfCUb0uIGHeOwo3g1OrsDjr6PXa1QkN
 TN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5NwK13KieE3g1pIeISpKvFgafrteuLKq6QKuAvKr48w=;
 b=bR5yQoD4C3YqLmksCi+7WM6YQ90o4t7mTFDFo5q6K/UptKs342Gr5CEKIs88bGGEfA
 4RKQkP68Ci0Avs3MkVPfgJbAFkvo9HkfThEnx7+FzhtNGfu6QQdsi2ahW6xwKrISY/Ht
 CnUFiwd/GBRtqNyXRK/kHyuVNUHPP5fyTeLFtdH+GEA+VlIoeJOBWL2eUrPg8P34z7Vg
 0agaU+PXwHfFTCFVW4GPuKV0ePpHR7OOF2PJ8r9ZxlHEdhybxrgTgOtNcZ77lPGUzSyD
 mPCQiQ34Z25wV21liArjZkoW54BZJLwC80dXOVW08707tzxWLdJ8LQQOM3qzDGjSjkqI
 5piQ==
X-Gm-Message-State: ANhLgQ1HwTLzDAEfKi0oCEZHGvVwry58fSJIYoPSswufSTYZO0a00e3A
 sPiWQUlw145bWUFl0s9UGqCtKQ==
X-Google-Smtp-Source: ADFU+vvWt6YpCG/aVLT7zR8itYjJEPxmlt7m0lDbV7z3qHBNn7BGYYp5d5wuRM+Dt+u1OBEAV74Yew==
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr2306219wmh.186.1583847968866; 
 Tue, 10 Mar 2020 06:46:08 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e50c:c780:9a1:8b61])
 by smtp.gmail.com with ESMTPSA id d63sm4074009wmd.44.2020.03.10.06.46.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 06:46:08 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: ben.kao@intel.com, mchehab@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
Date: Tue, 10 Mar 2020 14:46:01 +0100
Message-Id: <20200310134603.30260-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310134603.30260-1-robert.foss@linaro.org>
References: <20200310134603.30260-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_064610_638081_61549A85 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

This patch adds documentation of device tree in YAML schema for the
OV8856 CMOS image sensor.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

- Changes since v3:
  * robher: Fix syntax error
  * robher: Removed maxItems
  * Fixes yaml 'make dt-binding-check' errors

- Changes since v2:
  Fixes comments from from Andy, Tomasz, Sakari, Rob.
  * Convert text documentation to YAML schema.

- Changes since v1:
  Fixes comments from Sakari, Tomasz
  * Add clock-frequency and link-frequencies in DT

 .../devicetree/bindings/media/i2c/ov8856.yaml | 129 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 130 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
new file mode 100644
index 000000000000..c8099ccab1d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
@@ -0,0 +1,129 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2019 MediaTek Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
+
+maintainers:
+  - Ben Kao <ben.kao@intel.com>
+  - Dongchun Zhu <dongchun.zhu@mediatek.com>
+
+description: |-
+  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
+  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
+  sub-sampled, and windowed 10-bit MIPI images in various formats via the
+  Serial Camera Control Bus (SCCB) interface. This chip is programmable
+  through I2C and two-wire SCCB. The sensor output is available via CSI-2
+  serial data output (up to 4-lane).
+
+properties:
+  compatible:
+    const: ovti,ov8856
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    description:
+      Input clock for the sensor.
+    items:
+      - const: xvclk
+
+  clock-frequency:
+    description:
+      Frequency of the xvclk clock in Hertz.
+
+  dovdd-supply:
+    description:
+      Definition of the regulator used as interface power supply.
+
+  avdd-supply:
+    description:
+      Definition of the regulator used as analog power supply.
+
+  dvdd-supply:
+    description:
+      Definition of the regulator used as digital power supply.
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+
+  port:
+    type: object
+    additionalProperties: false
+    description:
+      A node containing input and output port nodes with endpoint definitions
+      as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+
+    properties:
+      endpoint:
+        type: object
+
+        properties:
+          clock-lanes:
+            maxItems: 1
+
+          data-lanes:
+            maxItems: 1
+
+          remote-endpoint: true
+
+        required:
+          - clock-lanes
+          - data-lanes
+          - remote-endpoint
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-frequency
+  - dovdd-supply
+  - avdd-supply
+  - dvdd-supply
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    ov8856: camera-sensor@10 {
+        compatible = "ovti,ov8856";
+        reg = <0x10>;
+        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&clk_24m_cam>;
+
+        clocks = <&cru SCLK_TESTCLKOUT1>;
+        clock-names = "xvclk";
+        clock-frequency = <19200000>;
+
+        avdd-supply = <&mt6358_vcama2_reg>;
+        dvdd-supply = <&mt6358_vcamd_reg>;
+        dovdd-supply = <&mt6358_vcamio_reg>;
+
+        port {
+            wcam_out: endpoint {
+                remote-endpoint = <&mipi_in_wcam>;
+                data-lanes = <1 2 3 4>;
+                link-frequencies = /bits/ 64 <360000000 180000000>;
+            };
+        };
+    };
+
+...
\ No newline at end of file
diff --git a/MAINTAINERS b/MAINTAINERS
index a6fbdf354d34..0f99e863978a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12355,6 +12355,7 @@ L:	linux-media@vger.kernel.org
 T:	git git://linuxtv.org/media_tree.git
 S:	Maintained
 F:	drivers/media/i2c/ov8856.c
+F:	Documentation/devicetree/bindings/media/i2c/ov8856.yaml
 
 OMNIVISION OV9650 SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
