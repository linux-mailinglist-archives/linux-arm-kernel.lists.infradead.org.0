Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC061FA85B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 07:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bQ2m5PbON+b/Oy1lrQlH7fHCw71MjV2FQE5OE8yyptY=; b=fe8
	TWLhhMpcNmwqy/zgsQayIB2m2qF88YWPAAwmcObiRiY71UJxG611r/c6o03JwrCPo8mZlcylqiix8
	kNR8gqzUqGg78TB08GlsfeVcj3C/l5XWD53yOSLVNaf5/3+JFuxRsfCPt0ysL5+yIQuCPDYAOjMso
	Z29EjTOCZTDDvgjlON9SLefksdAT3icR8sH+erQIVOwfaYcTNDxQfx8juOnf+5NEbJ/P6O7RpDggR
	5pPGHjm6iwQ4y+AVhWraeF3CfOS7h8F7gxo+vyDeC6NG9UF4ZohjW4Bi8HOuoP0djmsi6ZXSTPlfT
	ZHoxamK2T+wpmANeQdJTWBTKaMqOrAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl4Mh-0000yN-19; Tue, 16 Jun 2020 05:42:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl4MX-0000xc-4A
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 05:42:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 666D41A05D4;
 Tue, 16 Jun 2020 07:42:15 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EAF3B1A0592;
 Tue, 16 Jun 2020 07:42:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7292740302;
 Tue, 16 Jun 2020 13:42:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 gnuiyl@gmail.com, olof@lixom.net, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: input: Convert matrix-keymap to
 json-schema
Date: Tue, 16 Jun 2020 13:31:06 +0800
Message-Id: <1592285467-18371-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_224221_440049_3AD19E25 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the matrix-keymap binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 .../devicetree/bindings/input/matrix-keymap.txt    | 28 +------------
 .../devicetree/bindings/input/matrix-keymap.yaml   | 46 ++++++++++++++++++++++
 2 files changed, 47 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/input/matrix-keymap.yaml

diff --git a/Documentation/devicetree/bindings/input/matrix-keymap.txt b/Documentation/devicetree/bindings/input/matrix-keymap.txt
index c54919f..79f6d01 100644
--- a/Documentation/devicetree/bindings/input/matrix-keymap.txt
+++ b/Documentation/devicetree/bindings/input/matrix-keymap.txt
@@ -1,27 +1 @@
-A simple common binding for matrix-connected key boards. Currently targeted at
-defining the keys in the scope of linux key codes since that is a stable and
-standardized interface at this time.
-
-Required properties:
-- linux,keymap: an array of packed 1-cell entries containing the equivalent
-  of row, column and linux key-code. The 32-bit big endian cell is packed
-  as:
-	row << 24 | column << 16 | key-code
-
-Optional properties:
-Properties for the number of rows and columns are optional because some
-drivers will use fixed values for these.
-- keypad,num-rows: Number of row lines connected to the keypad controller.
-- keypad,num-columns: Number of column lines connected to the keypad
-  controller.
-
-Some users of this binding might choose to specify secondary keymaps for
-cases where there is a modifier key such as a Fn key. Proposed names
-for said properties are "linux,fn-keymap" or with another descriptive
-word for the modifier other from "Fn".
-
-Example:
-	linux,keymap = < 0x00030012
-			 0x0102003a >;
-	keypad,num-rows = <2>;
-	keypad,num-columns = <8>;
+This file has been moved to matrix-keymap.yaml
diff --git a/Documentation/devicetree/bindings/input/matrix-keymap.yaml b/Documentation/devicetree/bindings/input/matrix-keymap.yaml
new file mode 100644
index 0000000..c3bf091
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/matrix-keymap.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/matrix-keymap.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common key matrices binding for matrix-connected key boards
+
+maintainers:
+  - Olof Johansson <olof@lixom.net>
+
+description: |
+  A simple common binding for matrix-connected key boards. Currently targeted at
+  defining the keys in the scope of linux key codes since that is a stable and
+  standardized interface at this time.
+
+  Some users of this binding might choose to specify secondary keymaps for
+  cases where there is a modifier key such as a Fn key. Proposed names
+  for said properties are "linux,fn-keymap" or with another descriptive
+  word for the modifier other from "Fn".
+
+properties:
+  linux,keymap:
+    $ref: '/schemas/types.yaml#/definitions/uint32-array'
+    description: |
+      An array of packed 1-cell entries containing the equivalent of row,
+      column and linux key-code. The 32-bit big endian cell is packed as:
+          row << 24 | column << 16 | key-code
+
+  keypad,num-rows:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Number of row lines connected to the keypad controller.
+
+  keypad,num-columns:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Number of column lines connected to the keypad controller.
+
+examples:
+  - |
+    keypad {
+        /* ... */
+        linux,keymap = < 0x00030012
+                         0x0102003a >;
+        keypad,num-rows = <2>;
+        keypad,num-columns = <8>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
