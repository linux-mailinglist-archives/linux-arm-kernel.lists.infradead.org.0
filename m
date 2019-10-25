Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04587E52F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g6zZJh5hsxmsdpB8GAF0HR5e8HdExBm8y6UELQ6BuA4=; b=DGXapPD+r/7B3FEyf67roD5E0e
	MujLF35Va3MlWEHubRQjbF5W0COffyQBoGH+0aS350d1GePPFsFWtm4pBjthYaf1j6RbLLH8lgLsa
	SM/PyrhTa177ix8iMAY3rXp63qb0cnJbebavjjdNGfCBtfNpKFYBe2BPw47XkX6n3EKEdHO+45/lX
	rq9HZCrje88KIgNCeRcG6JrC1LLVsDGg61fIb46ICrvYCAZK3J+ASMpsj7qnqaQGdX36sGWV/rpkM
	1H9m9jcruyu+VHzHvtV8vE7dwkVWnjfVCzT/khOMbr6S/4+cT/ZA4nA6GW/LMsGLOLxgb+Deje3dI
	q7I8ck8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3vp-0001Jc-LO; Fri, 25 Oct 2019 18:03:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3s0-0004zc-Ss
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:59:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id f19so1992421pgn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6V9eAy/RohgQEVA68KP/vsczzh/tYT69NUQZuToo9f4=;
 b=SedUa1wgJBBopKAyjCiRP6GFJU9zVsE4B+95tJXT23XiXtgvX/WaMtIX/1onoiJWZa
 P1j/KQdRDHVpjOwxdcTACHjq2PdAQqSSh8r7nB6okCHryac3/NKO6BplNpHNku9P5Ui7
 E44aHFSIuR4xcbMAJKGdPZIr75QtQsWLJW0zqgYztIB1HW+vAEUVKzGJjjrfBcM7C7v4
 dUtIDVpREH1ApvCNwYzSiUrVWi1SNhyCfpSW6FNo8oed5b+3tW94VtYabW6QfGX+V2jl
 T6ZUkfgkuKbswpQfP2u7es9qmyaeBAZX65vPkObBQc/tTf5OWv65c0v23cUlKv4QfoWJ
 3sSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6V9eAy/RohgQEVA68KP/vsczzh/tYT69NUQZuToo9f4=;
 b=gtJYZnBYmUzHAtlotH4AW7T1JoYumCvz4sFSlxxyqVFc5HkCWkfK8XvqjlZdby9Omy
 Hvur0ujCdzAKet0MHlFX1dZHCmJXB72BnhsVXsR7YxZ/5GTdYOOJkFhSOWREOJZzY4Gr
 aVBP47AP7Qop1URkHHqvAksu4O5RhTh0x9BrLmZJUwmZAKHw0iyX5nvI3sdNGK/N/2Yi
 n3QKE0KrTopMPa+IiEg80LwXOtIyx57JrFHSlzvoH10jX6XnueeRtfE4FkP3G/8cfTYv
 SIDqL/JQpdmoHF0FHjrdwfPW80I7qFzQZGwunv+hGow0sJIIVnL+OaKncZBP1zHNgy6H
 wIOQ==
X-Gm-Message-State: APjAAAVy6t/MbKDxKy+LKbDMrJfejk/E0/8qxskWMLH8QZCLecxOLydS
 JoDSz5acHZBuQRYouY5Kzrt6
X-Google-Smtp-Source: APXvYqz3piyw+cOfNWbtwHTeWyr2/cMXnuAPV9qLBZz+W+Tcdvl44tJdS08iO34Vyrxy3OC08OiSCg==
X-Received: by 2002:a63:1f52:: with SMTP id q18mr6010328pgm.35.1572026367191; 
 Fri, 25 Oct 2019 10:59:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7108:7f86:4131:5b00:9fc5:5eaa])
 by smtp.gmail.com with ESMTPSA id r13sm3430303pfg.3.2019.10.25.10.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:59:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
Date: Fri, 25 Oct 2019 23:29:07 +0530
Message-Id: <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105929_170547_9A5112FB 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add YAML devicetree binding for IMX296 CMOS image sensor.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/media/i2c/imx296.yaml | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
new file mode 100644
index 000000000000..4e204fd7cf90
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description: |-
+  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
+  sensor with square pixel array and 1.58 M effective pixels. This chip
+  features a global shutter with variable charge-integration time. It is
+  programmable through I2C and 4-wire interfaces. The sensor output is
+  available via CSI-2 serial data output (1 Lane).
+
+properties:
+  compatible:
+    const: sony,imx296
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
+      - const: mclk
+
+  clock-frequency:
+    description:
+      Frequency of the mclk clock in Hertz.
+    default: 37125000
+
+  vddo-supply:
+    description:
+      Definition of the regulator used as interface power supply.
+    maxItems: 1
+
+  vdda-supply:
+    description:
+      Definition of the regulator used as analog power supply.
+    maxItems: 1
+
+  vddd-supply:
+    description:
+      Definition of the regulator used as digital power supply.
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+    maxItems: 1
+
+  # See ../video-interfaces.txt for details
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-frequency
+  - vddo-supply
+  - vdda-supply
+  - vddd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    imx296: camera-sensor@1a {
+        compatible = "sony,imx296";
+        reg = <0x1a>;
+        reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&camera_rear_default>;
+        clocks = <&gcc 90>;
+        clock-names = "mclk";
+        clock-frequency = <37125000>;
+        vddo-supply = <&camera_vddo_1v8>;
+        vdda-supply = <&camera_vdda_3v3>;
+        vddd-supply = <&camera_vddd_1v2>;
+
+        port {
+            imx296_ep: endpoint {
+                remote-endpoint = <&csiphy0_ep>;
+            };
+        };
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
