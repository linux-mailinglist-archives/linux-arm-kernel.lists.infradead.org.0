Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE919F95B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7/S1lmFB1bjxdPZTYU8LX3AZeNIip+FCWoYWgT0MaQ=; b=Eug57/YIJA4o0U
	lRa7FmLuDUwyQeWEkBfiinDEQfVf3vOOQSb57M/Sdyz2WZAOHViJp0czOgdVR/H69mzlxpVoV8isZ
	4vHDHWI6QX7ofDwV41eNva4/MlhITg0RIpPD2cOF2t9kTFuKey+HzTozP48F6ka1ETjWPs85FVoX6
	ZvA8P6MA5Q6wV0czng5+Ue5yOUs6TMVnqHmYQTOo9QN8KzLNI9e1hsGishbwBcmDsU7fTk91g2W9Q
	mPFPfuLKh0qAbD4Qb0BtkiYC2oBust2kgXyCbiXtZZs5ba7bp1CnVtaSH5lZ0j76c+khe7oE+XT96
	Lr3eKi9uSzuFJPvLXThA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU59-0003xq-T5; Mon, 06 Apr 2020 15:54:39 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU4q-0003p1-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:54:23 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1D9A7200007;
 Mon,  6 Apr 2020 15:54:12 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: counter: atmel-tcb-capture counter
Date: Mon,  6 Apr 2020 17:53:19 +0200
Message-Id: <20200406155320.1291701-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085421_713843_3F278679 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe the devicetree binding for the ATMEL TCB counter. Each counter
blocks exposes three independent counters.

However, when configured in quadrature decoder, both channel <0> and <1>
are required for speed/position and rotation capture (yet only the
position is captured).

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 .../bindings/counter/atmel-tcb-capture.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml

diff --git a/Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml b/Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
new file mode 100644
index 000000000000..484b2942ad5c
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/atmel-tcb-capture.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel TCB Counter
+
+maintainers:
+  - Kamel Bouhara <kamel.bouhara@bootlin.com>
+
+properties:
+  compatible:
+    const: "atmel,tcb-capture"
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
+        qdec: timer@0 {
+            compatible = "atmel,tcb-capture";
+            reg = <0>, <1>;
+        };
+    };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
