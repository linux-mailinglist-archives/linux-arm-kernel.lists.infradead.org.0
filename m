Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30526C2499
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sd8jYLQFuxQhkQ2d+ICi7b4wfeU4c8Vsk1TiAjLnXUc=; b=bWAkh8Wx1RtIk4EWkojGMaSD53
	/VS2iuHy9x3XwfOB6juTKokub68xZv+zmrOTiq1jQx9iQJ7WKGTk8TDsHkFfAaClqspz8A2y6mP5B
	fxQF5WQ5/gSyYSLQ3b1kIQFoCYj6+HNFMTeYkTxa97EOpfwqFUGhCqAV+mlM6vr/WTuFuloykM45a
	s00b6vh3XlYC+TGIFBkbL8befc1J6SteFzBYKLfJz0yWHsDAXxt4adb+OR27qr1zAhZ+5aFjJWemi
	HsflAOO23RKScsho6z6ogU3rxXVsUXh8rgXaG8zCjAIUGCCE1c3qvUVSkalYKLZ4JHHzSlcoE7uB/
	laqKRIFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExr7-0003yx-6o; Mon, 30 Sep 2019 15:44:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExqi-0003oM-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:44:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBF4A216F4;
 Mon, 30 Sep 2019 15:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569858272;
 bh=skUSr7NVncfczKSccCPKJaTNJjIZK3sHjCWlfEUPQT4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wNyvw/lFlMpNtko3VhBO69gyJuppCLVQKHjARi4han4ZbchOHTg6dancx3TfPk62J
 fssAmKjI5lWrYp/B7aALaXDzXT6notEIX431IyMtY3ghHthQNlzORVBLGEECCmp2DU
 aqhw+IiDu1dhHa2PZQB+Y3NLF22O5Xx6i7QaihvI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v5 2/2] dt-bindings: timer: Use defines instead of numbers in
 Exynos MCT examples
Date: Mon, 30 Sep 2019 17:44:18 +0200
Message-Id: <20190930154418.4884-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190930154418.4884-1-krzk@kernel.org>
References: <20190930154418.4884-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_084432_689213_6D495E3B 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the examples in Exynos Multi Core Timer bindings more readable and
bring them closer to real DTS by using defines for interrupt flags.
Fix also GIC interrupt type in example for Exynos4412 (from SPI to PPI).

Suggested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Use GIC_PPI where applicable.

Rebased on top of:
https://patchwork.kernel.org/project/linux-samsung-soc/list/?series=177667&state=*
---
 .../timer/samsung,exynos4210-mct.yaml         | 37 ++++++++++++++-----
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
index 3e26fd5e235a..273e359854dd 100644
--- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
+++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
@@ -57,51 +57,68 @@ examples:
     // In this example, the IP contains two local timers, using separate
     // interrupts, so two local timer interrupts have been specified,
     // in addition to four global timer interrupts.
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     timer@10050000 {
         compatible = "samsung,exynos4210-mct";
         reg = <0x10050000 0x800>;
-        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-                     <0 42 0>, <0 48 0>;
+        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
     };
 
   - |
     // In this example, the timer interrupts are connected to two separate
     // interrupt controllers. Hence, an interrupts-extended is needed.
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     timer@101c0000 {
         compatible = "samsung,exynos4210-mct";
         reg = <0x101C0000 0x800>;
-        interrupts-extended = <&gic 0 57 0>,
-                              <&gic 0 69 0>,
+        interrupts-extended = <&gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+                              <&gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
                               <&combiner 12 6>,
                               <&combiner 12 7>,
-                              <&gic 0 42 0>,
-                              <&gic 0 48 0>;
+                              <&gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+                              <&gic GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
     };
 
   - |
     // In this example, the IP contains four local timers, but using
     // a per-processor interrupt to handle them. Only one first local
     // interrupt is specified.
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     timer@10050000 {
         compatible = "samsung,exynos4412-mct";
         reg = <0x10050000 0x800>;
 
-        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-                     <0 42 0>;
+        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_PPI 42 IRQ_TYPE_LEVEL_HIGH>;
     };
 
   - |
     // In this example, the IP contains four local timers, but using
     // a per-processor interrupt to handle them. All the local timer
     // interrupts are specified.
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     timer@10050000 {
         compatible = "samsung,exynos4412-mct";
         reg = <0x10050000 0x800>;
 
-        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
+        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_PPI 42 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_PPI 42 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_PPI 42 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_PPI 42 IRQ_TYPE_LEVEL_HIGH>;
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
