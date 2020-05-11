Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613201CDC9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZXhR1DFPr2ZxXPNQu2Dm92reQKu77JGiU3L+q/VoPU=; b=njgHfAfKy/9puk
	3jsGLhj/IBJ6eFKYikGIJFL1jytQ9pybhvjF7pqkf4ADft9gbe22eGdYZSiMg4yel+sMTfO18uY0U
	qINQ6clGe7B6IEtqc6fz5qlohci1GDPA/R9+y2ChpZvXHPCEr+IG9lqnexw2tzVQMbePAuN6PzV8L
	00vVGb4bojnEJiK9pBni34Z0SZe/twCWDQ/MXRgicTeZkeyDsTUVt5BwG2PaVO5YyMShqXAdcgboI
	bQhaJgtCaom4FkESnRlZILNdDe7YykGyQvgIt5BX2mwhvcA7A5tL2myd3rvLfU/n8dG5hy0P4nE5/
	C7zc5SgrseVT8Mb2oq8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY94c-00021A-Fn; Mon, 11 May 2020 14:06:26 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY93j-0001He-8K
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:05:34 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 61BBE2000E;
 Mon, 11 May 2020 14:05:28 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/5] dt-bindings: microchip: atmel,
 at91rm9200-tcb: add sama5d2 compatible
Date: Mon, 11 May 2020 16:05:03 +0200
Message-Id: <20200511140505.1649111-4-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511140505.1649111-1-kamel.bouhara@bootlin.com>
References: <20200511140505.1649111-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_070531_458400_13C106C0 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

The sama5d2 TC block TIMER_CLOCK1 is different from the at91sam9x5 one.
Instead of being MCK / 2, it is the TCB GCLK.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 36 +++++++++++++++----
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
index 4b683151265e..38403760f64d 100644
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
@@ -72,6 +67,35 @@ patternProperties:
       - compatible
       - reg

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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
