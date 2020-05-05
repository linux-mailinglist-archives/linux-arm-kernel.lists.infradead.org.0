Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4CC1C5274
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vJIP9DSCzlOy0dy2OgUb4M1FPvbVrygaA+Yg+PvwLA=; b=KOPrhaX99fFjOe
	uYhwaX+Z8pXywnxxbbrzMSYsFCHu817vxPVsbLsHvTkdkB8chROCem8pGlvXSugJ39X+JKE86TC7K
	gyLrPZlHIcZxs5IvkYN1GC0Mrt5JycLPnYzFz5jcU6liVySfDlXh+KvXZ4+GpbPCnPTHwB6xOLTcT
	fcm2PBpZ6ji8EP4RjzQS0KmwlJDTzKs2051LBmDTynLKM873IeR3SE57CmXw5UhgZJz0Lbsl3PfHU
	s5IW7YHHCc+jJCwzzSBO9F42YVQt01R9GyAaaA82BHN2R19LcGWSlVU3QqdbpMnkDx9Qq+pC6MOHq
	BimP8+ie8givkxHmFobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuP6-0006nC-Me; Tue, 05 May 2020 10:02:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuOk-0006ca-35
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:02:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id s8so1961887wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 03:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eVMq4biPw2C3OxaFJKI0NCtZj+TI0Go4ArcFXFoxJjI=;
 b=XkUAmWOwNRwPTRloJvF6TTHGAr/zGrmJ4/KQ6rs8i0Xd7ReDVquOd7B6Qx3Dtu4a5g
 /KFFdCzv5BuHX71+b3fOODkN1W1mBnS4VXI+qmm4odA/5Diy+MQwV+2mxRy1PvKpsV9e
 QBGNaWVLpJIlaE+6Ak0vfgzBTMfftVYXrFDLUY7rNOu6yCzgmS3FYkwwXNK1TmAU3PsF
 iKxpIju6/HP9yp5cD6QhS/ExJTZ4iqKr6Tj4lno+wuqh0B85v3cisIUeNmkdJjGWIjey
 YMoyNQuyZWqlffTyhD0EHzWPln2yffDYjfUjhYN5kocRyhgN+3JhJ5v0BRGFSVOoaVYF
 +YZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVMq4biPw2C3OxaFJKI0NCtZj+TI0Go4ArcFXFoxJjI=;
 b=THX6Bnsp/VKTdbV4DBBt6NvTQhxEPlS8DXWz9fK12dhUvUJ8yCv6g/bqcuxK0V1jDA
 8UDtZoghhieyjDAmZGDN+bqbRgLHzpkQFbvl6wnkkx8QlisHbmcxSPWUM7pKjd0uoKoV
 s+dNq0FwdRndQMHukau95R224BBCRMwkCuW18Xd/p85KKz9Bw7wkFfSzhkTBBsl4whOs
 2Kdxx2w994ho5qNMj6bf/ASGjtIbQsTCjgTISomzlRjrdQVJW07jRE1pyl+IqEQnGrt6
 h/KJXeqpwoONuaIP46vsUA378s5h8YwDnr2iAW8W3e00DpHHDVihBybE8cXEP6+hvGPn
 EmNw==
X-Gm-Message-State: AGi0PuZoZm8yhxdbqGo51X9Lce/yPw9/VBWsAl6ZmaeWNE8+CS78ani2
 Qq90u50A4az56juG5/ea9DIcHw==
X-Google-Smtp-Source: APiQypLQuT9S9pF1oeQzW0rI5/ILHlkfbTubBTKuNRRmcVZb+RqdRlaZFm9JcCoGB85S/qyQkr1zTQ==
X-Received: by 2002:a5d:494a:: with SMTP id r10mr2632648wrs.136.1588672916269; 
 Tue, 05 May 2020 03:01:56 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
 by smtp.gmail.com with ESMTPSA id n6sm2884258wmc.28.2020.05.05.03.01.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 03:01:55 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
Date: Tue,  5 May 2020 12:01:29 +0200
Message-Id: <20200505100129.104673-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505100129.104673-1-robert.foss@linaro.org>
References: <20200505100129.104673-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030158_142839_022D9DB4 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robert Foss <robert.foss@linaro.org>, Maxime Ripard <mripard@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Ben Kao <ben.kao@intel.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

This patch adds documentation of device tree in YAML schema for the
OV8856 CMOS image sensor.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---

- Changes since v9:
  * Remove remote-endpoint property
  * Marco: Make port property required again
  * Sakari: Remove Ben as a maintainer
  * Sakari: Replace data-lanes with const items
  * Sakari: Remove clock-lanes property
  * Sakari & Rob Herring: Change type of link-frequency
    work around dt-schema bug

- Changes since v8:
  * Maxime: Added r-b

- Changes since v7:
  * Marco: Make 'port' property optional
  * Maxime & Sakari: Add 'link-frequencies' property to dt binding
  * robher: Improve description for 'port' property

- Changes since v6:
  * Marco: remove qcom specifics from DT example
   
- Changes since v5:
  * Add assigned-clocks and assigned-clock-rates
  * robher: dt-schema errors

- Changes since v4:
  * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
  * Add clock-lanes property to example
  * robher: Fix syntax error in devicetree example

- Changes since v3:
  * robher: Fix syntax error
  * robher: Removed maxItems
  * Fixes yaml 'make dt-binding-check' errors

- Changes since v2:

- Changes since v1:
  Fixes comments from Sakari, Tomasz
  * Add clock-frequency and link-frequencies in DT

 .../devicetree/bindings/media/i2c/ov8856.yaml | 142 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 143 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
new file mode 100644
index 000000000000..d6af685ad3ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
@@ -0,0 +1,142 @@
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
+      This corresponds to the hardware pin XSHUTDOWN which is physically
+      active low.
+
+  port:
+    type: object
+    additionalProperties: false
+    description:
+      A node containing an output port node with an endpoint definition
+      as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+
+    properties:
+      endpoint:
+        type: object
+
+        properties:
+          data-lanes:
+            description: |-
+              The driver only supports four-lane operation.
+            items:
+              - const: 1
+              - const: 2
+              - const: 3
+              - const: 4
+
+          link-frequencies:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint64-array
+            description:
+              Allowed data bus frequencies. 360000000, 180000000 Hz or both
+              are supported by the driver.
+
+
+        required:
+          - link-frequencies
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov8856: camera@10 {
+            compatible = "ovti,ov8856";
+            reg = <0x10>;
+
+            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&clk_24m_cam>;
+
+            clocks = <&cam_osc>;
+            clock-names = "xvclk";
+            clock-frequency = <19200000>;
+
+            avdd-supply = <&mt6358_vcama2_reg>;
+            dvdd-supply = <&mt6358_vcamd_reg>;
+            dovdd-supply = <&mt6358_vcamio_reg>;
+
+            port {
+                wcam_out: endpoint {
+                    remote-endpoint = <&mipi_in_wcam>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <360000000>;
+                };
+            };
+        };
+    };
+...
\ No newline at end of file
diff --git a/MAINTAINERS b/MAINTAINERS
index 26f281d9f32a..84b262afd13d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12489,6 +12489,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
 F:	drivers/media/i2c/ov8856.c
+F:	Documentation/devicetree/bindings/media/i2c/ov8856.yaml
 
 OMNIVISION OV9640 SENSOR DRIVER
 M:	Petr Cvek <petrcvekcz@gmail.com>
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
