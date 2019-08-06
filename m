Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FD58322A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dj+zmknoql2uug+lx90GkafxwZXjdBPexsn/vfAS9CM=; b=H6d9H9EfUObdmNcC79hcXb9OjZ
	CK6Yz2no/hd7jxF82BQ9qOG4xCRaBztVk3W70vhf5vMFGySXxrOfJMVjOGMqKuarru+Nt1u8MBe06
	zr63jpqhvC6NMSQjoaX0Q7oPAfB8STAPTmML/0yj/yIkPB38c06BHZWC9OntZUcSFQ6vdij43l31e
	1OjP+scMckaez5Z+jJ5alJ40r6wQUHaQDUvdUNh2eQtA5RDs1sav/sRZgIfYQPQWp/ZJsI+KSEDkx
	sOmCL6V3GMXpN7XLF5Kk9MxidwZ/7lGAC8T8ZFpNUxvFoz+k3YizhfI3Ex9PB9eq1pv1xHcdkxrZN
	4yI+2Cpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huz9x-0000i7-Fv; Tue, 06 Aug 2019 13:05:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz9M-0000J8-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:05:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so78101985wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MU/41RFECDspWBa3sc+F8Zp39+RFWaJYY0sZSPREqvA=;
 b=dMgLNtg6IB/G4JAEZ3gnOVQg+IAWnmWkO+EUx8o+nfCf2wRwi/CyWA9dWmAEgKwgDf
 +zeDEHMZRJ1mlwUPCPKsiT3dNwwWqJa5d1YMs9mOxV8yRESy3FvWmwBTK7OnJuw5Qrz+
 tuo3Q86hyJMOSljkAjcn1r8DLep2abJXdysO5L6ymzWRhjDyXrjSzcajBI2rLVbS0psM
 Stmh5yfUBJE8/nXQMswyjU4uYeKk4TbUOWdFsRjI/WUb/ux6v/yHw0tgE4/jgW6cDtQU
 OGPrDhBsGbirU37wPrcDhnKn2x4n4EqNf8zgEirUsi6U53KF5Hh8qGO/mGOtOdrfqqMU
 xrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MU/41RFECDspWBa3sc+F8Zp39+RFWaJYY0sZSPREqvA=;
 b=UYJTZIJ9b4dl98k35To16gWLdL2fFDtly51X/17ftXAjLxUjj2dkMf5x0YfV85sq1d
 0Jke7V+hQCrq3KC3wT6puXWd9//v5/EB0whBtQLO1Y2svN1brtkyRYW3g5B64pOXBa4+
 eN6JBbrUmMR1gGLJBHRbmNjWmFSqVXErJMNeFV7Vh5ivbzIUdY1iBt4oGA4HX8O8DETm
 9iEKqpAf9iD1ydA4dpDyj0oeXITSHAKqeg0uCOMsmOU808eswUEh+m2EdhZQJ5fD58bZ
 Z7/LMAFT5CafVaaghcXnZ5fP3m8eQzxgYL9EdUCoi4jG0GnmnA58LWDxdsHx1jjJIu6h
 8ldQ==
X-Gm-Message-State: APjAAAXRfojtKHe2ukraAh5S3vtO4f78+sgmfbFknp3PKnrHAPAxKgED
 jkWQxeSTdanFFyMtmrl6BQ/4HA==
X-Google-Smtp-Source: APXvYqxMHvYaJ55mSpFSMmQD9n9qF8WkY+OoQWCPbiPLbkpx1d0Xyg+zVQoK8Ysivq0YgXQDiUeARw==
X-Received: by 2002:a05:600c:2503:: with SMTP id
 d3mr5010397wma.41.1565096711633; 
 Tue, 06 Aug 2019 06:05:11 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:05:10 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v3 1/6] dt-bindings: thermal: Add DT bindings documentation
 for Amlogic Thermal
Date: Tue,  6 Aug 2019 15:05:01 +0200
Message-Id: <20190806130506.8753-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060512_783634_F7AB65EB 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
sensor found in the Amlogic Meson G12 SoCs.
the G12A  and G12B SoCs are supported.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../bindings/thermal/amlogic,thermal.yaml     | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
new file mode 100644
index 000000000000..d25e59113398
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
+description: Binding for Amlogic Thermal Driver
+
+properties:
+  compatible:
+      items:
+        - enum:
+            - amlogic,g12-cpu-thermal
+            - amlogic,g12-ddr-thermal
+        - const: amlogic,g12-thermal
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
+                compatible = "amlogic,g12-cpu-thermal",
+                             "amlogic,g12-thermal";
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
