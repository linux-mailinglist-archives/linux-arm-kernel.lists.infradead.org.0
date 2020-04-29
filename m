Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53901BE3C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAVFGkuPT/TtvC7J7Trccymjr6DLoqpuMdDVcxJnFvE=; b=fZSFoEDwMBI0sF
	rRkFTtO37K3AlW7fi4AimZRCSfyrNKZwREXp5J5zRrcBCPZ+qGPzdIrsd5R82/LXdo6C8eMO8/+s5
	JQD5I97mE/pDDXQtGOlIFTBi29PMNCtARFFJFW3BlJh9B3HJbtYFtYHJC/zBmtlUYPBwlEsNNa4t6
	ZduA9QavSUTsrOvAKUyUDkah87VHV9kHuVVUoeZ3O5F+RHwpP4O7xLh5FdJAPMhGlrYNL1Fq8b49U
	Ivd3a/qXiCmYk/h9LqiNNDMMp3pUF3HfgB5FkEenb73j+iEOL2ahcUFGRLbZdjv4kMn/X6Q5cea40
	5azRl57mB/zeGtnpHh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpWa-0002Ew-NV; Wed, 29 Apr 2020 16:25:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpVu-00022g-Fm
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:24:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id 188so2721525wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 09:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PO/QuZ0Mf9WVJ0nQTHWav3atsf9nZINDw/pc6PWqalY=;
 b=y1j6BiIuOhRN1dvoRmKbvKatc/isFom1aaGdjrGoOQQ0T2PaBNDEzbA8XAvy9E19/c
 AIvfv0ZyNvWHgj+CykeiUt4jhzLK6akzbOiM/Vx115omW9dYQZJ250cLCDWpDMZtmoq6
 PH9X2kcsdETqXYEnHaSpeJ02UL9qzdXNwut5aazj+opWl/7DF3TjfhcTvoUjvx/lGcmA
 o8aBWz5vYOvpQsUxNMacdm9OK6iqUSSx9+2EsWL8F87ysfPJfLUhPQZoOXrWrB9o1VsC
 ZOy7V5xro9AqSQIdvOL+shKHHQbUo5vf5biUf95Ib6ZqQcsHk10sHq959BCK0yYOhjHF
 sgcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PO/QuZ0Mf9WVJ0nQTHWav3atsf9nZINDw/pc6PWqalY=;
 b=nNNNqwkKljvnFINY310FSIc56zD/+04ExCuRpkSS6jdZCNyUYqaDqZaejnlfK1rs7o
 eUQeay7WNndrBpRGBvQz+k056e1gXddjBw579KeUBESWbgKP9+bJDd7PVF9gOO7yjFCl
 mrOHs2nWQXFjodRVBwamq6oa+/twGV0qvdRcYfY9/bt9iODgMqzXadWAOkhBfMGjrZyN
 67iMOUyinPLUBec6dLJsMHPgPQIFOYb2rQdskdQKF0O9wPi359EtvfwAcZ3lS3E+pJNv
 fj1SBRjEUCg2kFd2dqehnvAxku/qW5EwMg81rcjrSr/uvoXCfnZhU9sCq0X6PMvU7ERU
 AQYg==
X-Gm-Message-State: AGi0PuZ9Wd9kBgD8oU1cp3CNYIALuVJrnpsrVXsUYjn5PgGJKr3wrb6I
 cglJgKRupyvhvklGqlDxwl+T6w==
X-Google-Smtp-Source: APiQypKjEZtumdB0vyxxWl7b7ZZQsrE9L+WMl0/qJ3WHrloyA2hmeAmRRPgp8Fl+zd6uOPynEHdmqw==
X-Received: by 2002:a1c:9a16:: with SMTP id c22mr4014872wme.38.1588177483772; 
 Wed, 29 Apr 2020 09:24:43 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
 by smtp.gmail.com with ESMTPSA id h2sm32616554wro.9.2020.04.29.09.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 09:24:43 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 1/3] media: dt-bindings: ov8856: Document YAML bindings
Date: Wed, 29 Apr 2020 18:24:35 +0200
Message-Id: <20200429162437.2025699-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200429162437.2025699-1-robert.foss@linaro.org>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092446_527592_E179CE5A 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <mripard@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
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
  Fixes comments from from Andy, Tomasz, Sakari, Rob.
  * Convert text documentation to YAML schema.

- Changes since v1:
  Fixes comments from Sakari, Tomasz
  * Add clock-frequency and link-frequencies in DT

 .../devicetree/bindings/media/i2c/ov8856.yaml | 140 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
new file mode 100644
index 000000000000..f78d3eae81cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
@@ -0,0 +1,140 @@
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
+          clock-lanes:
+            maxItems: 1
+
+          data-lanes:
+            maxItems: 1
+
+          link-frequencies:
+            maxItems: 1
+
+          remote-endpoint: true
+
+        required:
+          - clock-lanes
+          - data-lanes
+          - remote-endpoint
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
+                    clock-lanes = <0>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <360000000 180000000>;
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
