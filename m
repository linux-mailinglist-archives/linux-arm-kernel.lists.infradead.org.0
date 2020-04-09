Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930891A35A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtpdU9gz1hN727Dr5+eCzQIiCabyrc65Jgm13y0W/Xs=; b=m9S/rWPqWCrg7j
	LKzQvklFohBZGvnkh+SaolGXXWmNqDkugiiKHcH5hg0fTx66O9eVV6wKC6fn/6W6Rk1wyH1iE1bYH
	k62x2IKD4GDXKCCUtOnevJGcIAtEnMTwbteo6FmmgkBvrNNAVaCYz1pTA8VEHIx2yHTHXe3oGkOMT
	EqKXXwoNM4N7nwgtcMhfQfKOEoAxpmwqCS9OODYEPbC3s3R3BlL0p76Dkw/27NtovcyMLXvDEAzIm
	57PCFEX3jY9Uask/3Dplq32YMAInSOk9sGaSUVAjEz0m265A4hBqxNzzQDsWByvuWSv1gplP5gz7L
	Jy13/BEer/XiNmKPy01A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXxI-0002YE-F7; Thu, 09 Apr 2020 14:14:56 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXwX-0001vf-Tz
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:14:11 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B7EFAFF80E;
 Thu,  9 Apr 2020 14:14:07 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: counter: atmel-tcb-capture counter
Date: Thu,  9 Apr 2020 16:14:00 +0200
Message-Id: <20200409141401.321222-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
References: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_071410_117428_86AFFAD8 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
index 000000000000..ca8b31c1f869
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
