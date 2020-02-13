Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC94315BEA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iwfSEk50bDLPdEVgZDZPGLARhGQCJeEshO41Js3NeJA=; b=cNHm+fOHr/QB0V
	jJ+KmHTETj6sfcuLguKje7fMyoTTt2QHmZhk1PbHasWPfhcV59n1SQXvr209U7yhTDqmZ0hLMB2VR
	EvMaG5SGfiLBHxTBYtx9FngkRKguKYZ21u0o+EhlUtocijpMO3nkaPVo5wyq24Fcln18SQXtcBvHw
	dqiAYYccSQHvHW24uCuHPaQDwhoGA70gOsKaMKpRddTGAHFSVUJg+I+L4grTCilg0MR0pfGGQoOjq
	63fxNKnOcojJBCVc3DH4BLi7k546MQt0GKxE3SZFDL8yU0AAU34UuFr/nFbpm8B4f2ABMskdZyYfK
	n2dICYQ3EEnHgVS0xyCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DtS-0002UH-0r; Thu, 13 Feb 2020 12:46:58 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Dt4-0002Jh-Gv
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:46:36 +0000
Received: by mail-lf1-x144.google.com with SMTP id m30so4160381lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 04:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KVG6n3U//xPXGVSSKSNURJ+hYLlhk5sIndNvOvXvluk=;
 b=iymsOcVz5YQJTiTPW/ZRvBWUVozaeBXfqwxZ7sP92D1AfV4efpUxXKAYi56Qc95YNf
 vEMGleomaQb/rMLP+9xB3B5E7slHRU7deuKFKcsG3IBwUYVzty4dTaCBEKEr9s/RdXf3
 GrZ03Zwkz4L+o4DXPiuiXCpXx5BN35FOxofjp2AFfByh451IAZnnyOCf7soaKJNGC6sK
 TUlX6EVyKI2A2wtUjmB44pTZ0YqrEMNNP/kriYOksnICF+ocGIZOGVrysDN776nKjDAr
 gOx6f1zMgUrwo9AIzOurfAcO3z2f3ce3voNzqwPxXzafFbHuzBsTtFoOKBulI8emL+L/
 BeAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KVG6n3U//xPXGVSSKSNURJ+hYLlhk5sIndNvOvXvluk=;
 b=U8V1V/Py+AQRqZkHtCALJcenjZSSdGB/sjy1K2zTsRkNwY9Npkj34d4La6Tzrf2OuS
 T8RB8/hVLFzKpVWTEwB63Rsu2ApGHdgLzpeDgHeald4plqkGkxd7+5WyKXoWZXvrIIHK
 4W9713zb6HaN+Ijn59N3e/jfqUUA58/y3ILxZiLHHEoU/HG4leot8xWR8jo9Xsqt6TFV
 1h8VgnVgr7PamGp/thSFaLH91FbJLzwydAQr+yn2zKJiBGNwAqjVOZyUwhTy6Y79EBUX
 LEFKTODm/tunqYiosc38DcnghUZlKyEsA54C645xLpDcaKqZjN0vl3urJm0YAuOFYltX
 If6A==
X-Gm-Message-State: APjAAAUGsMRPHSZftm/g/4y65U15fFKgbK97QgSUZQXBUuS9dtwuJd4Q
 L6iSwV7SojbYjZc34dDZaVshZJtH+9w=
X-Google-Smtp-Source: APXvYqyB4Gpi72cah1IhY/oSi6hXj6VsSn/n1Qp+/Gch9IAgCKK9Ns778aCes0djRhsN1LJ2Nwbl9Q==
X-Received: by 2002:a19:c210:: with SMTP id l16mr9431224lfc.35.1581597984516; 
 Thu, 13 Feb 2020 04:46:24 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id g15sm1398642ljl.10.2020.02.13.04.46.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 04:46:23 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] bus: Add DT bindings for Integrator/AP logical modules
Date: Thu, 13 Feb 2020 13:46:19 +0100
Message-Id: <20200213124620.34982-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_044634_563282_7F0948CB 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds YAML device tree bindings for the Integrator/AP
logical modules. These are plug-in tiles used typically for
FPGA prototyping.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/bus/arm,integrator-ap-lm.yaml    | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml

diff --git a/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
new file mode 100644
index 000000000000..dfabfa466c05
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/arm,integrator-ap-lm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Integrator/AP Logical Module extension bus
+
+maintainers:
+  - Linus Walleij <linusw@kernel.org>
+
+description: The Integrator/AP is a prototyping platform and as such has a
+  site for stacking up to four logical modules (LM) designed specifically for
+  use with this platform. A special system controller register can be read to
+  determine if a logical module is connected at index 0, 1, 2 or 3. The logical
+  module connector is described in this binding. The logical modules per se
+  then have their own specific per-module bindings and they will be described
+  as subnodes under this logical module extension bus.
+
+properties:
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  compatible:
+    items:
+      - const: arm,integrator-ap-lm
+
+  ranges: true
+  dma-ranges: true
+
+patternProperties:
+  "^.*@[0-3],[0-9a-f]+$":
+    description: Nodes on the Logical Module bus represent logical modules
+      and are named with index,relative-address. The first module is at
+      0x00000000, the second at 0x10000000 and so on until the top of the
+      memory of the system at 0xffffffff.
+    type: object
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+
+required:
+  - compatible
+
+examples:
+  - |
+    external-bus@c0000000 {
+      compatible = "arm,integrator-ap-lm";
+      #address-cells = <2>;
+      #size-cells = <1>;
+      ranges = <0 0x0 0xc0000000 0x10000000>,
+               <1 0x0 0xd0000000 0x10000000>,
+               <2 0x0 0xe0000000 0x10000000>,
+               <3 0x0 0xf0000000 0x10000000>;
+      dma-ranges = <0 0x0 0xc0000000 0x10000000>,
+               <1 0x0 0xd0000000 0x10000000>,
+               <2 0x0 0xe0000000 0x10000000>,
+               <3 0x0 0xf0000000 0x10000000>;
+      im-pd1@0,0 {
+        compatible = "simple-bus";
+        ranges = <0 0 0 0x10000000>;
+        dma-ranges = <0 0 0 0x10000000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        uart@c0100000 {
+          compatible = "arm,pl011", "arm,primecell";
+          reg = <0x00100000 0x1000>;
+          interrupts-extended = <&impd1_vic 1>;
+        };
+
+        impd1_vic: interrupt-controller@c3000000 {
+          compatible = "arm,pl192-vic";
+          interrupt-controller;
+          #interrupt-cells = <1>;
+          reg = <0x03000000 0x1000>;
+          valid-mask = <0x00000bff>;
+          interrupts-extended = <&pic 9>;
+        };
+      };
+    };
+
+additionalProperties: false
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
