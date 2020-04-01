Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E986E19AD18
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y2/mJIuQubX3YN+fR6i4aPsc0djCcb3gghpRcoK6Exw=; b=fF1W6VaUfF4wY9
	LRUPeMnyJXS2uRWWmN3OdHCtfLXffNi1H+Ol2TNWJr741dHwlTAQpuwbz4E45bXbOYHn8zCeS/9kA
	BlgitWS45ZrTapc4Pix0qnvEQ2PjsGSSgd2qf4jZsiIOXRv8tW97205KrDSPV75W+/xdws2cuRQVG
	2Dl0WoP9xCvjINT/NbXDl5Cmbm1rVZwPPYtYW2ZXUmSJpGYrE8pB8NnyPFeM3Afy2P86QftbmPsrK
	RbyE8w/ZoiFwc3vyf+Mm0ZFJsZjCthKw2iZzP06Flwk05znwOCYV7yHt6bDxPa8nijA2DrcZXR1Zi
	eUxDNSa+rlHLkiOsB6/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdiE-0008Qs-9q; Wed, 01 Apr 2020 13:47:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdi7-0008QY-Os
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:47:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so5810498pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 06:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nigauri-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gpcjNNLQA0WgFogrno8/hAByG7ANx+ntF+/9mZ/TVN0=;
 b=bxn6fusrh8FVy2J1x16GTpyVB+/j78MoEQlJme2KHWxAyQBGUi18q52lW/oKJmVES5
 nlpcRV89pUL0TF2wXgCWm042y5phxbswTlr0vrVpqBUAAvlD1zSwkY8fNdf/JtfImS/e
 kv3+HC8g9Yof0Dmta4iAmQ4u039SVq5wz9Xb/wWuy5IZ6fFOXzkeel/hYe7NfvfXTPzP
 dZCAA2S67+LmkFw0eJugL7URDV/RQ6Uv0ffGXc0Ic5EyvEuWrsHLCp+d+91gLMcfSdfx
 nk+DkMW2lA4Bpxdc5bBXKRH8n3g+OsScOC7pkcVvddsF7dBk/nVm1x7RzPM2U0vjMJRP
 lWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gpcjNNLQA0WgFogrno8/hAByG7ANx+ntF+/9mZ/TVN0=;
 b=L+RRDy8nA2ir5SfPUCZ827cKALewRBJLmlYrRctGo3xSsxBGZGwFJdHDQafsdA5MTM
 QjvEHDPjwaA2AqlZHXwGiiIyokncTS6vtkiBzQFPHmNfiXAM9k4I6eG/9kyzJM3kbmZ0
 NJHDve6ZzbZUfOZxuy3GZeNEWHOZhgI+lZQmZXEebPL4vcudxs+zZCS6eoRXcjlFe9eE
 Y7G5jJzPev98UoH8ZSLkG4sun5iqSnbtQOBv413Ln/nrh+IQmzfeDR/AAwDRQYDaLs21
 nGmg7zdSG+G90gH7I/qBkVfWBaoqzGro5iAuHoNd13KPohgV5UN2uqn8YPhypFUzq35p
 LZAQ==
X-Gm-Message-State: AGi0PuboENIMcarFoswpZTGChO/n1i+vywvGRCNTYD2uPNwPzqLjZqz3
 tX7oxpI2uCNsLWmgtWtpmUUsCJLRFQ==
X-Google-Smtp-Source: APiQypLFZPHBpXoYMtd+0WFz5JReMGyPKKF6vkPKqKWUXp48l3vkOnvM3cUBSMhQ3ZV66bG76ztBBw==
X-Received: by 2002:a17:902:7788:: with SMTP id
 o8mr18610843pll.9.1585748834975; 
 Wed, 01 Apr 2020 06:47:14 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:bf52:1f8e:88d2:6ec])
 by smtp.gmail.com with ESMTPSA id b17sm1661930pff.81.2020.04.01.06.47.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 06:47:14 -0700 (PDT)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: i2c: xiic: Migrate i2c-xiic documentation to YAML
Date: Wed,  1 Apr 2020 22:47:09 +0900
Message-Id: <20200401134709.60421-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_064715_806895_CD06F16A 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>, Wolfram Sang <wsa@the-dreams.de>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The document was migrated to YAML format and renamed xlnx,xps-iic-2.00.a.yaml

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../devicetree/bindings/i2c/i2c-xiic.txt      | 25 ----------
 .../bindings/i2c/xlnx,xps-iic-2.00.a.yaml     | 49 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 50 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-xiic.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-xiic.txt b/Documentation/devicetree/bindings/i2c/i2c-xiic.txt
deleted file mode 100644
index caf42e9894625..0000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-xiic.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-Xilinx IIC controller:
-
-Required properties:
-- compatible : Must be "xlnx,xps-iic-2.00.a"
-- reg : IIC register location and length
-- interrupts : IIC controller unterrupt
-- #address-cells = <1>
-- #size-cells = <0>
-- clocks: Input clock specifier. Refer to common clock bindings.
-
-Optional properties:
-- Child nodes conforming to i2c bus binding
-- clock-names: Input clock name, should be 'pclk'.
-
-Example:
-
-	axi_iic_0: i2c@40800000 {
-		compatible = "xlnx,xps-iic-2.00.a";
-		clocks = <&clkc 15>;
-		interrupts = < 1 2 >;
-		reg = < 0x40800000 0x10000 >;
-
-		#size-cells = <0>;
-		#address-cells = <1>;
-	};
diff --git a/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
new file mode 100644
index 0000000000000..67c1c84ba3dc2
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/i2c/xlnx,xps-iic-2.00.a.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ilinx IIC controller Device Tree Bindings
+
+maintainers:
+  - info@mocean-labs.com
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: xlnx,xps-iic-2.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  clock-name:
+    const: pclk
+    description: |
+      Input clock name.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    axi_iic_0: i2c@40800000 {
+      compatible = "xlnx,xps-iic-2.00.a";
+      clocks = <&clkc 15>;
+      interrupts = < 1 2 >;
+      reg = < 0x40800000 0x10000 >;
+
+      #size-cells = <0>;
+      #address-cells = <1>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 1fb95a12eda48..ffaf0053aba86 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2673,7 +2673,7 @@ F:	drivers/block/xsysace.c
 N:	zynq
 N:	xilinx
 F:	Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
-F:	Documentation/devicetree/bindings/i2c/i2c-xiic.txt
+F:	Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
 F:	drivers/clocksource/timer-cadence-ttc.c
 F:	drivers/i2c/busses/i2c-cadence.c
 F:	drivers/mmc/host/sdhci-of-arasan.c
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
