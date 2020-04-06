Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BC219F97F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTQcG8f1fSCyzPD47fauqjfW4Pa1KxBF2dRGMKmZCfk=; b=uavxtsi30WwQY7
	qTQvV6bHOh1HDmjb6OZFH2VNU28yCs0Hde0D27L8Jf+zPwttRuStilzVB8hgthNLq3IoNcOxFHigM
	0rdNLQCNhkubDUvE89xoa3DxqmbD71P2a2moSg2TkcPIfOgltkUxb4Sh8qKIr+LfgC9zL2ivm4Q74
	GddlhH65VY8zq/KHt5bLkJbIUkAVczv8LYDFiqfANPNmSNe21NLLUAmgYnty8hJpcFTAkGp9orQSU
	TAd+x8uRbO88Kz3IOW7YZ1tRIjtIkT/QRBX4fimpwUkPLFelGNCSkrUZAETt4H8zgNkwVgCYRJcmr
	f012bdUmOHGcoLZ8GDRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU9J-00083O-Uj; Mon, 06 Apr 2020 15:58:57 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU8r-0007o9-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:58:31 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id D216B20000E;
 Mon,  6 Apr 2020 15:58:26 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Date: Mon,  6 Apr 2020 17:58:05 +0200
Message-Id: <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085829_275808_CB2FE0A1 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dt binding for the counter variant of the rotary encoder driver.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml

diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
new file mode 100644
index 000000000000..a59f7c1faf0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rotary Encoder Counter
+
+maintainers:
+  - Kamel Bouhara <kamel.bouhara@bootlin.com>
+
+description:
+  Registers a Rotary encoder connected through a counter device.
+
+properties:
+  compatible:
+    const: rotary-encoder-counter
+
+  counter:
+    description: Phandle for the counter device providing rotary position.
+
+  linux-axis:
+    description: The input subsystem axis to map to this rotary encoder.
+    type: boolean
+
+  qdec-mode:
+    description: |
+      Quadrature decoder function to set in the counter device.
+      3: x1-PHA
+      4: x1-PHB
+      5: x2-PHA
+      6: x2-PHB
+      7: x4-PHA and PHB
+
+  steps:
+    description: Number of steps in a full turnaround of the encoder.
+      Only relevant for absolute axis. Defaults to 24 which is a typical
+      value for such devices.
+
+  relative-axis:
+    description: Register a relative axis rather than an absolute one.
+    type: boolean
+
+  rollover:
+    description: Automatic rollover when the rotary value becomes greater
+      than the specified steps or smaller than 0. For absolute axis only.
+    type: boolean
+
+  poll-interval:
+    description: Poll interval at which the position is read from the counter
+      device (default 500ms).
+
+required:
+  - compatible
+  - counter
+  - qdec-mode
+
+examples:
+  - |
+    rotary@0 {
+        compatible = "rotary-encoder-counter";
+
+        counter =<&qdec>;
+        qdec-mode = <7>;
+        relative-axis;
+    };
+...
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
