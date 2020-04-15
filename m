Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADA71A9955
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKjQB9wf1F3Vq/B+X5LBWLdSNRxzt4hra1GDE5G1jhg=; b=sXFb5nUEDX5bqI
	fM43UDA22bIfDr5liJg8hmrdb99X0kpSqgOXF/LWsoPZmyN8tsC/oCmq7bUDBWIA4ev/iMJFV9cWj
	pH3qTlFr4mxqi9QnFBcAPPxtJWnZ2rhBN+/LVXapnRo0w02p0XS7WC6RjIS0gneLLaI7YeD443xMx
	PXJcKxVxWRORQbKH+XrqQ2i5Xre/6qLqdDKop0AxYMBNJ875BCn7aNVi3fkFTeYWn4whZt59cayrs
	h8/KV4enf5lrUJI6g7lw4GKmdYuLNhLjMd18hRvlhAi+pCaRvZw3AVzx/mujy6fT96zzf89KS4INo
	c1G8iQYDw6CGqD48Y9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOefx-0006zm-3a; Wed, 15 Apr 2020 09:49:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOef5-0006MK-3B
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:48:56 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F243E240016;
 Wed, 15 Apr 2020 09:48:47 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 2/9] dt-bindings: microchip: atmel,
 at91rm9200-tcb: add sama5d2 compatible
Date: Wed, 15 Apr 2020 11:48:19 +0200
Message-Id: <20200415094826.132562-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
References: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_024851_275533_9BD297EA 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sama5d2 TC block TIMER_CLOCK1 is different from the at91sam9x5 one.
Instead of being MCK / 2, it is the TCB GCLK.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
Cc: Rob Herring <robh+dt@kernel.org>

 .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 36 +++++++++++++++----
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
index 2522fb1f4ce4..37c68c0a13d2 100644
--- a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
+++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - atmel,at91rm9200-tcb
           - atmel,at91sam9x5-tcb
+          - atmel,sama5d2-tcb
       - const: simple-mfd
       - const: syscon
 
@@ -38,12 +39,6 @@ properties:
       t1_clk and t2_clk if a clock per channel is available.
     minItems: 2
     maxItems: 4
-    items:
-      enum:
-        - t0_clk
-        - t1_clk
-        - t2_clk
-        - slow_clk
 
   clocks:
     minItems: 2
@@ -55,6 +50,35 @@ properties:
   '#size-cells':
     const: 0
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: atmel,sama5d2-tcb
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: t0_clk
+            - const: gclk
+            - const: slow_clk
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 4
+        clock-names:
+          items:
+            enum:
+              - t0_clk
+              - t1_clk
+              - t2_clk
+              - slow_clk
+
 required:
   - compatible
   - reg
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
