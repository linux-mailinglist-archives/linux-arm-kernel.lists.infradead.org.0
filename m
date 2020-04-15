Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCCE1AA2BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iejJKg/L1lddbTqyS7wg/O5s3/l1C77gKQttSxRWfRo=; b=UegPC9EQMiCjdI
	YDC6YXM5a8saBh3aETWY4oc5UZHVemWF3BdaDFpDYpgSo7heiESo2IWPVgwne4P/D2L9FTiU06GsB
	JFa8b/3bwjuasN79QLpsFYFWvnOjcaVXej15O2dcvqm5sYLeQ/sqBKstg1EAwldkTYVATdL+jam0l
	3YKiIqtAXaENwPEmjRjaPjdWcTKItD3RqF4/P58f2eEKrXwl8zsBObYOwhDW4KyaH2JQm6V/DM4vB
	hEgoq8sXuFdo7I5dI6ppe2GX59UISyII7O+6nVta46abmJsN8cpMxBvJp9VMR9YDeT1GpoiSTv1qq
	XTzqvCmzfvL7dYKFCuaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhjU-0004KZ-En; Wed, 15 Apr 2020 13:05:36 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhj4-00033p-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:05:13 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9671DFF80A;
 Wed, 15 Apr 2020 13:05:08 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] dt-bindings: counter: microchip-tcb-capture counter
Date: Wed, 15 Apr 2020 15:04:54 +0200
Message-Id: <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_060511_323198_E64869C0 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe the devicetree binding for the Microchip TCB module.
Each counter blocks exposes three independent counters.

However, when configured in quadrature decoder, both channel <0> and <1>
are required for speed/position and rotation capture (yet only the
position is captured).

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
Changes from v3:
 - Updated the brand name: s/atmel/microchip/.

Changes from v2:
 - Fixed errors reported by dt_binding_check

 .../counter/microchip-tcb-capture.yaml        | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml

diff --git a/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
new file mode 100644
index 000000000000..183e9ee4c049
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/microchip-tcb-capture.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip TCB Counter
+
+maintainers:
+  - Kamel Bouhara <kamel.bouhara@bootlin.com>
+
+properties:
+  compatible:
+    const: "microchip,tcb-capture"
+
+  reg:
+    description: TCB capture channel to register as counter device.
+      Each channel is independent therefore only one channel is
+      registered by default execpt for the QDEC mode where both TCB0's
+      channels <0> and  <1> are required.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    tcb0: timer@f800c000 {
+        compatible = "microchip,tcb-capture";
+        reg = <0>, <1>;
+    };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
