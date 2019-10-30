Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A271AE997D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NaNTYMzYnRI9f//KyWLKoFUpwShf/lR/U0IpJx1vxcU=; b=jIxStytzNiiTUmCKpsi87GtChA
	Av2etdxUPjy9AUW/yT+SQWh1EsMvGgJxY0DERDIH57lgWSq/bpt4X1jzHda87Fz4rsLEnB9rCDoR8
	CVt+9s80EdKfR2vQ3lGhuNU9L45DHTdUePd+k0tRFfyK1CODnL1RoWdnEwwklToK8joF/uMgpvGpl
	Gg4buSlJk0fJHHOh99UhDHYsSuhNSiRHLoMaAHiXt1fr9C4l/1RRvBA8czUcBIGUqff8zQLzlPD4p
	yGf8i/L6pz2eazmU2bEZJ+RoBAXjmilsErOOC9XPNwqBfio89J1WZPWaLJeJElqnfPCHWykbOIC5y
	VN58cKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkct-0001Qq-49; Wed, 30 Oct 2019 09:50:51 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkcR-0001Fa-PB
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:50:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id c184so1240237pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cftdRVtAP8UQA9RZHk0z4GAx0m9Po/cdw/g0rW6uNcc=;
 b=wCdwA8cDhGfP5x35MPbKU+N2lcODb5ADD1ZdosQ9P1AD9v+CY/1Ivk72MjrDwA9IcY
 4keYhmYK6mey0FY84tfA6G4xJut1d3DST6qfp+zzACfPIZ3SzM3BKY3kjgzbUwOy7eaq
 CJ+FwHlqPVo8hIBr2momd3M+it81ipB5kVvz6UjGKzCC8hrDDbmMRT1tUN/Ru5h/llLo
 c0LR6zTTogqUgQ7tX2V3O/xLHlbKFYSUvjhFJ7uX2jE9nX9lEoy5+3h3cEDJ7lkEIG/c
 xOuE0kqO66JULtB2d8/H7iLZD5Tvfgd097ckzS6uEf1zutX2SXXeHMfl5guq2EUm/eCb
 00UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cftdRVtAP8UQA9RZHk0z4GAx0m9Po/cdw/g0rW6uNcc=;
 b=CxMygwWPIjTdC4+9FsAOr20dfUguMF7015oMHTQshBgEd8TEQOBtE7lsa3yPJorKdA
 qa2VQQjMTG+hJ786QrfGvh3uCmSLOiD87ldbZwdB232jSF2RvmlAGoXt4z8gvOTxpNFH
 Cs55c4wHZfffZ5CMVjC18tlnP2z+nSAjXB8bBUp+jjSB6h1v1Zi2+QIcv827NkmD6Y4h
 uYRFbJQ4svSVTzcDLbyHI55uhNmfKGM7zfblrQTh2/bAYygUG4PXOm34ABnxl4kWbVsQ
 SqlRJv8qIrG95G+IfHax9q864V/f9/RFIui2okht9utF3wQFUAGuHYfsXd0aTXaYAPPr
 3iyg==
X-Gm-Message-State: APjAAAVBP1u4a+UblRs5LBlMlh3zur635xfNr7iyYrH8Ym+J/jTq8rmj
 A6q+pK/ryznrVa2bGy+8seYf
X-Google-Smtp-Source: APXvYqxc4nIJKggYP3YGCmdXDUVXHR+G1fS7IEc9x7gSziWCnoF0WyDLvXL7vMZlHVfbUF4IM9KpKQ==
X-Received: by 2002:a65:6203:: with SMTP id d3mr32446041pgv.272.1572429022561; 
 Wed, 30 Oct 2019 02:50:22 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id n23sm2301329pff.137.2019.10.30.02.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:50:21 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
Date: Wed, 30 Oct 2019 15:19:01 +0530
Message-Id: <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_025023_832874_0A6D6F10 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
add MAINTAINERS entry for the binding and driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
 MAINTAINERS                                   |  8 ++
 2 files changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
new file mode 100644
index 000000000000..c04ec2203268
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
@@ -0,0 +1,94 @@
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
+
+  vddo-supply:
+    description:
+      Definition of the regulator used as interface power supply.
+
+  vdda-supply:
+    description:
+      Definition of the regulator used as analog power supply.
+
+  vddd-supply:
+    description:
+      Definition of the regulator used as digital power supply.
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+    maxItems: 1
+
+  port: true
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef7fa74..51194bb2c392 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15140,6 +15140,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx274.c
 F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
 
+SONY IMX296 SENSOR DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx296.c
+F:	Documentation/devicetree/bindings/media/i2c/imx296.yaml
+
 SONY IMX319 SENSOR DRIVER
 M:	Bingbu Cao <bingbu.cao@intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
