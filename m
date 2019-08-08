Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27CD85D6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5h41zrrEA3tY3YDc1c4NTYIEo6Y8WoczCMnNxjIPXdw=; b=GV6lLtLBQkeDVb
	Tyo5lRX44il+suroZ57JBKBdAAa19gQz/3hXLRBqVacLnxy8+YoxddZe91kt0lXEFPClWP0cKmVie
	lSkq1AiQz3Op+YCTh9DC9C+ZPelrWnLpdlZscK7C3wGspEVct7Rcdl3pjgtRsZoSdkeYct4ZllvzW
	C6p1Q6y0VoKZghKMm4cLYsjBvJwW4NhUcEwqE5IHmTN9bYnxZOURf92+KxINLvnqu/kVPA1508T6e
	GFVyRFblL4wTf0ePkhfcnDupA2Wh8JfSCxEQuZSBNDi8rEAOWRrQeSsjsbODEkYrRGKhsf7cjFqnZ
	AAniGt1fe11PekD8wpuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveBR-0002P5-60; Thu, 08 Aug 2019 08:54:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9D-0000bh-7e
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so94075612wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMr8GdCW9yfg8pfq5s4VUilxc4J32ByvgFAWlbIwziA=;
 b=GAjRm4BIvFiMLvxxckU19EerTOdrWD/DbpRVQblgyxBc//HBD/l0BkqMcR16piV4IO
 23hiMBcxj8MPnC+VPXMJaH0tNpjQD+XJAWuRmiBzuZrWW12QOgoUO1suPYqqjQwY0Ur9
 xpMiAJDZN0YwOfdKI0Ph6nFfWtAePtNwZJ696E2V3APDjqOV45moCIX/SZTuIOXr9AUq
 n7yTmcT9/QI+PGt0INU1Q8VTlDf0hHChAX/KCG0c1bNtAgKne7Kt9M0+PwefHDVsH/Gd
 g9POH73jTmCuy7dR04Gji5eBcOJNRhiPx4SiaKdlLf+AJi+NkZGiWNWef1ujiHpD3Bje
 +ysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMr8GdCW9yfg8pfq5s4VUilxc4J32ByvgFAWlbIwziA=;
 b=fiJWZ0Q7NT1kGC1hDW5LCMMxxaptx4/GVdwKerBJoCD01m1KLwynBl16U2QE4JCLKG
 3Q3rYxN9uijd6J1RJpjBH0mj8+Q19DWG5FlNU0c8aVltpPeqAV/hIaga7SO9+npRxJ+K
 Av+nrAsLwA3Su2i+D+piy/7i3xl03DK3fvzxbr1+gIs8xEZPblJHnImy0z0q6bOdqhF7
 rOcyQGU5YTiKRboXfE0anYzURzMSjIi+ZLwIPKpiLxhP43ekuZIIJH+4KqCWoVq34JcZ
 rcdd8S4sTVjiDYveHmt+4ulmiw7kuQWDK8mARhzFw6VbO2BTPXkb78ym4965ZrlqYZ0F
 ahwg==
X-Gm-Message-State: APjAAAWpdBIAswzmP1+VTSgW5mH5ANiBOcjxVMCLAmC3TOBcZy4V66X2
 ZAxwIvi533WBMmpjPb0A9dFiQ+M/S/o/8A==
X-Google-Smtp-Source: APXvYqy6qwAlUrF5yzh6QDHSjyGkHiMc8eckATg+XKrl0xTf0XBl00GIzwIiI9AxNOmyUvHOsUMv9Q==
X-Received: by 2002:adf:b612:: with SMTP id f18mr15997677wre.97.1565254305808; 
 Thu, 08 Aug 2019 01:51:45 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:45 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 5/9] dt-bindings: arm: amlogic: amlogic,
 meson-gx-ao-secure: convert to yaml
Date: Thu,  8 Aug 2019 10:51:35 +0200
Message-Id: <20190808085139.21438-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015147_278058_FC39B4C9 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Always-On Secure Registers over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 ----------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
deleted file mode 100644
index c67d9f48fb91..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Amlogic Meson Firmware registers Interface
-------------------------------------------
-
-The Meson SoCs have a register bank with status and data shared with the
-secure firmware.
-
-Required properties:
- - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"
-
-Properties should indentify components of this register interface :
-
-Meson GX SoC Information
-------------------------
-A firmware register encodes the SoC type, package and revision information on
-the Meson GX SoCs.
-If present, the following property should be added :
-
-Optional properties:
-  - amlogic,has-chip-id: If present, the interface gives the current SoC version.
-
-Example
--------
-
-ao-secure@140 {
-	compatible = "amlogic,meson-gx-ao-secure", "syscon";
-	reg = <0x0 0x140 0x0 0x140>;
-	amlogic,has-chip-id;
-};
diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
new file mode 100644
index 000000000000..853d7d2b56f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Firmware registers Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Meson SoCs have a register bank with status and data shared with the
+  secure firmware.
+
+# We need a select here so we don't match all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        const: amlogic,meson-gx-ao-secure
+  required:
+    - compatible
+
+properties:
+  compatible:
+   items:
+      - const: amlogic,meson-gx-ao-secure
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  amlogic,has-chip-id:
+    description: |
+      A firmware register encodes the SoC type, package and revision
+      information on the Meson GX SoCs. If present, the interface gives
+      the current SoC version.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    ao-secure@140 {
+          compatible = "amlogic,meson-gx-ao-secure", "syscon";
+          reg = <0x140 0x140>;
+          amlogic,has-chip-id;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
