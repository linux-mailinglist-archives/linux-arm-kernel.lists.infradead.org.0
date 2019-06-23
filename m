Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368E4FCFF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/3iARik4MAfgesQPUnJrefBn8MgSiHmd9AiIeqlIXEw=; b=P3E5bI3DOT8YCpbS0+5BieNs80
	xCfX74tfP4cqBjGGkiPnQ588W58IQcvglmwna8Y5iK1gVei/Vt31ueI5o0EgWXkJFxIQiIrN3Nak5
	avj6l63WBMGVs45+80yOrQ21gQLQJHM9K8lY4dL0L2ydJAt1/9a9IxfmHQXaMNvAF3yzxg3RQlN2G
	vvIo/1K96KdIA4xiwAEKXKyBKcuVBcecOJK8NlFqszh44KMKZm6ARzaoYLeBERdB7a7SKcIP98U5a
	/czQuI6feyrsESa63rXzOYpaZXVNFk1+M/BD6O2LjGobghrC6sc97wK0gZFrDDQFd3hub42v/nPXP
	8AClFYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5d8-0006Q4-EL; Sun, 23 Jun 2019 16:46:14 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5Za-0002lP-1S
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:35 +0000
Received: by mail-pf1-x42c.google.com with SMTP id q10so6104538pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vc2TrqpD10fc/Gfq4unesnc+WEyy7mH5ktLy+6dZnog=;
 b=na5YZxEqKvs5q15uC5P1TVCCMSkxBW5asCpG+6XNTePIxjvDEvT+nm/nJ7Mhtz5n20
 IOL8H362bj7nNRmdZxlMJuiG43M5be4/MzEz/4tbEjzcZIhVOpUlTVZQD3SkHTx+r9gD
 vhAV2xRiKaGcRlZ0j5RsCsvmR4GdP+CxJnSyGdkB3YcG2lDyALrhAZKPreixUBDpkOPe
 KbhdYO+xaP7XWzoUy9L27kkSPZymBFpNFsOzgZypoZfhhSN/vKyRxfU630VyVWxq8iV8
 Fn+epGdLDRGIJdu/0IBsiiuui42sm5NKERE9jBgfZZyF+QvXmeFWmLs5x5oGd5IgyUFO
 k15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vc2TrqpD10fc/Gfq4unesnc+WEyy7mH5ktLy+6dZnog=;
 b=MgHxb4dgDDKscK2VpGG3NsYID1Z90SElm8yh14ZuGFnei1xCuvhLoWuAkwRO78q4x4
 8uAoE8vifMML7mZFotqwfbSB1rUwkvW3CswvmlSuJdxrCYPpxl9W6zhZ0PCuUpoH8IOD
 jE3NAWrPsUiApjBJfIkewzrPs9mPVE0cjWj4sHKlMxlrLepmPGRZmIMl3fRML9fxYpDc
 MD+kItl/WlFQOr7fCdW9PKc6g73xJu+vM5tU2xp6FySB3WPnZjbj7HpMOPjMD+MUzhru
 q1i5X0u1GiCQMdtm1luhvoZGYumCGf27QhyRBvMLqs07+1GilrWdTCeOoBPbzRIYYSs9
 jKGQ==
X-Gm-Message-State: APjAAAWtMhRbiaski/4psCIYeqAqwVlBNaG1cQg7PEQ3e7tIbd91egBr
 Ms9l+IBXI6mYnwlZnuD2V5U=
X-Google-Smtp-Source: APXvYqyN7ZztOZynAS2zVYioqIvY15L9IUm9DgxfrduwN8r28+SgkhFt/Fx4DayR43s+eDagPc/BCg==
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr19898276pjq.134.1561308153126; 
 Sun, 23 Jun 2019 09:42:33 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id j2sm10687361pfn.135.2019.06.23.09.42.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:32 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 10/11] dt-bindings: thermal: add binding document for h3
 thermal controller
Date: Sun, 23 Jun 2019 12:42:05 -0400
Message-Id: <20190623164206.7467-11-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094234_204844_CBB6514B 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner h3 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun8i-thermal.yaml       | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
index 2c5acc61ed03..1eaf68b5dd5a 100644
--- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -16,6 +16,7 @@ description: |-
 properties:
   compatible:
     enum:
+      - allwinner,sun8i-h3-ths
       - allwinner,sun50i-h6-ths
 
   reg:
@@ -29,13 +30,22 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 1
+    maxItems: 2
 
   clock-names:
-    const: bus
+    items:
+      - const: bus
+      - const: ahb
 
   '#thermal-sensor-cells':
-    const: 1
+    enum: [ 0, 1 ]
+    description: |
+      Definition depends on soc version:
+
+      For "allwinner,sun8i-h3-ths",
+      value must be 0.
+      For "allwinner,sun50i-h6-ths",
+      value must be 1.
 
   nvmem-cells:
     items:
@@ -55,6 +65,19 @@ required:
   - '#thermal-sensor-cells'
 
 examples:
+  - |
+    ths: ths@1c25000 {
+         compatible = "allwinner,sun8i-h3-ths";
+         reg = <0x01c25000 0x400>;
+         clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+         clock-names = "bus", "ahb";
+         resets = <&ccu RST_BUS_THS>;
+         interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+         nvmem-cells = <&tsen_calib>;
+         nvmem-cell-names = "calib";
+         #thermal-sensor-cells = <0>;
+    };
+
   - |
     ths: ths@5070400 {
          compatible = "allwinner,sun50i-h6-ths";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
