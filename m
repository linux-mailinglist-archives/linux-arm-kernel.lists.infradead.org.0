Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7ADC0B91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BQwvjoSa+EgZ1y8b9HOThvzDixD7kvYJr+YgmZy/7+o=; b=nNvRS66IxbHwMg1kE3WWye7zU7
	YNlXgzvPT+24wsXI5eHRfe41JJNFrrJOdjYMVdl2O1GemQn+LPTTU7OmfNpHOBSCluQMQjiPs3L6U
	rIo1PrUbtBCPGdZaUz5vVrLhAlvfv8pV0jCh1Ngzrb7fXNFWapABowV2s9FOtqzBlV9R7ll6Xfgd7
	ZFd9QXxkXkg5JWVfKXJcCANFHt5L6Laj3GH9QhKUzoRQPKc8Ci9mGaWAs7kzWqGEEgDgsxsAgfIK7
	Q75OfVSPuXmJudINbb88ryFzvn9HtkSsYdEcMGXTfqNsmqsPm6bHaLOef9zBMBy0WJETZgLXNFjXO
	j6okMuDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvEJ-000179-Rk; Fri, 27 Sep 2019 18:44:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDh-0000BD-IJ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:44:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id y135so9234391wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aeDGNakdvDCwTy0gCOMkwdHE4LANquitP3dscaSQqkM=;
 b=kaYBd8rH9bcXTFA4OPZMOwh+968cPJqFoj1MvvNeruj0/cWDGcsTCB+MHNAGiPdQHs
 6btlJ/k3MnKZr6f1FfeJA6aIdjjQz0kxPN1DljwbJmW1iXUUG9Tj2FhnbxuwcxvfZJch
 sKRCca2nV4FS3xxPw9gQ1v79iB0vUujfaodA0H0JbitwjodhDuxPteWzuheciFlZZHp+
 bq9PFerB2M4+7MsLNtfZuacAeaMNGZS1HN98HBErZA+y1Pc2IyqQoZ6JfR9t3nK5H+02
 c4fA+1j0rcQPvGNCOxxlxs0j2P+7PEiM1Bu83PooDzArubKpXFTubl+lE5Na9f2nBKgN
 HbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aeDGNakdvDCwTy0gCOMkwdHE4LANquitP3dscaSQqkM=;
 b=oDpoeDDKSIFnSFMN0NVWnZqRGnBcwGruJMsGleANyRQd+VfElob3gQkSlKzDXxkJcj
 4q04oSN6uIifWfuRR+ZMKom+PZjGNEhSkmnU1nLMKCdcWqUtLmO7PSNwlfHiCwo6U2+W
 cj0GtjI6xtzVtqd4SyTavVXbSjoiBTILt0C3NTMEEm0UZyBwoG4JRDkYxQwl2JFU41sN
 agX2Yph2eFLt8Qd6tOg9XbTDd4JuvFjKOKRhYTC9YZE62NlhZHOOqk5Xw0aG1jUOv45a
 uDTy0rh8P6a7AUxiyG3Le08gRXCNMtE+kho/DyKHxA8/yquwuqyJK4IGepPmcucnmGFY
 9QEw==
X-Gm-Message-State: APjAAAXeE1UVEoZbkx/WKwAKXEvETgzYwZ+jV1xQrhsP/AMPaRBrS6x/
 gLAb5M+Krsymbd7LiFB2Ar0ibA==
X-Google-Smtp-Source: APXvYqzipwsRnU6H56hrDhOIw0POLTGn5VRaLhCOHcCogfJsqaBk9g35PRYJtCTeEgddUX5Eu5Z1KA==
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr8714597wmo.114.1569609836134; 
 Fri, 27 Sep 2019 11:43:56 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:43:55 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 1/7] dt-bindings: thermal: Add DT bindings documentation
 for Amlogic Thermal
Date: Fri, 27 Sep 2019 20:43:46 +0200
Message-Id: <20190927184352.28759-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114357_618213_3A18B997 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding the devicetree binding documentation for the Amlogic temperature
sensor found in the Amlogic Meson G12A and G12B SoCs.

Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../bindings/thermal/amlogic,thermal.yaml     | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
new file mode 100644
index 000000000000..f761681e4c0d
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Thermal
+
+maintainers:
+  - Guillaume La Roque <glaroque@baylibre.com>
+
+description: Binding for Amlogic Thermal
+
+properties:
+  compatible:
+      items:
+        - enum:
+            - amlogic,g12a-cpu-thermal
+            - amlogic,g12a-ddr-thermal
+        - const: amlogic,g12a-thermal
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  amlogic,ao-secure:
+    description: phandle to the ao-secure syscon
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - amlogic,ao-secure
+
+examples:
+  - |
+        cpu_temp: temperature-sensor@ff634800 {
+                compatible = "amlogic,g12a-cpu-thermal",
+                             "amlogic,g12a-thermal";
+                reg = <0xff634800 0x50>;
+                interrupts = <0x0 0x24 0x0>;
+                clocks = <&clk 164>;
+                #thermal-sensor-cells = <0>;
+                amlogic,ao-secure = <&sec_AO>;
+        };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
