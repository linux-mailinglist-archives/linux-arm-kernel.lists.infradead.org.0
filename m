Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14729D79C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=794vwVOesuTKkvrOPUwOBhFg2P1VoavBco78Z0v7zmQ=; b=o8FVn1JrOCNIZekwqyng6pmquN
	rC/YJ1Ic1C7D0/ujokixYdevEaZfz5WBRv5AnuZo9kbaLV8kSG12a6LGdvCcbQHeIdfPPpOTpyDVI
	q0s0fcDAayAOjIwUkI/uxXjLqQLEu+kbgk4jkxmZjkfeEtfYPfLGu5TpXa/dsbp7JjROc/djnPlVP
	XtAR3Y7paaWyx5b/HJTwB0D6I1tT6E/G8pcFOUq5tWCseyJGaGDdFhT7RcViGFVtQI/espJZhAPst
	wE62Y91bCPIjpVXxlsSt426LnMw96yW7S7tOl1v7eWZ50og6C2WUqGUN5fkvPQLbpSWY0RX4rxnrN
	pviuTfkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2LrX-0002iP-8V; Mon, 26 Aug 2019 20:45:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Lr2-0002h9-2G
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:44:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so16620124wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fw7X0u9RSVpb9YP6GvJgpnhL1eZP3GnuovkdNKVahNQ=;
 b=l6sh4qDylt4FBGKZbeZbgdchgf+Ftcthdvk7xzUqt1v1xshu0jydYLG40UO/b9oXc4
 qsqbemoS4PVcuf0R1a+fcHbHXAJQe9PO5cq8UIcT7hRO8CxZSTmign0nSdfQhUu7fiZs
 Ms4ELGQ8eo5W1GDUT3mW3f57i3861kIE7zKLLD814esraGpUpxp8a1SNweInJCPEGwy6
 oD0q5ysgRBsCv1Qtksz98fu14zSZCdrq1hvnkz2RGUf5Oq3tqjIN2Rq4CGqrB20NHFwl
 UN4pC8rK2b/aqkRqY8aVpzUxULN2VbdJ1xSSPUls0YzvKhNNNg9ogsc4C72ylII9owiF
 IMXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fw7X0u9RSVpb9YP6GvJgpnhL1eZP3GnuovkdNKVahNQ=;
 b=dfnf0iWJ3MxtgbBc18Cktqbf6LciuAqJJ0wAIpoI0jBfvwRt2/dBEUVIZ0eFBHr3y8
 U1jC1aLlJqeWdob2vIfNo2ATl4FkL9NEgNBehDBup837xqWY7/IX1i7Ss8fxgjSJB3uv
 ljrh+4SSmkRNZSOXnUN+2ZJXA0THvc8CwIilKI8wZDqmWRR7bEWPS654MwgEOqGF48om
 Us7Te2FUPv7IfG8TKz9VS2ek1L2uOaKX+S5+HhPQDiFPyTAYCCKUiAvcew3VYfDNN6hp
 MnhdzmXPn3Oq8kHI/ekmLUyLdANFqhVkN/RlNzGJuuiLIoK8A7TBmZjy/TuqHqjLfxiY
 khfg==
X-Gm-Message-State: APjAAAUY9yM0GV+DckyU5cZ4mq4bgntjS1vhR1FWr/ivYZIEl596WAdj
 EpXBvC3A9WILaSXcMvMQikZQ5w==
X-Google-Smtp-Source: APXvYqzj79VdjmpatQooDLN5wdRSkNJ6Zpyso4T8UmaJwAtECyLsZt/J81BWLl/nWJE/nyibmLpEWg==
X-Received: by 2002:a5d:6a45:: with SMTP id t5mr23996401wrw.228.1566852281822; 
 Mon, 26 Aug 2019 13:44:41 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:41 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 02/20] dt-bindings: timer: Convert Allwinner A10 Timer to a
 schema
Date: Mon, 26 Aug 2019 22:43:49 +0200
Message-Id: <20190826204407.17759-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134444_112503_D0D8B4E6 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The older Allwinner SoCs have a Timer supported in Linux, with a matching
Device Tree binding.

While the original binding only mentions one interrupt, the timer actually
has 6 of them.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../timer/allwinner,sun4i-a10-timer.yaml      | 76 +++++++++++++++++++
 .../bindings/timer/allwinner,sun4i-timer.txt  | 19 -----
 2 files changed, 76 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt

diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
new file mode 100644
index 000000000000..7292a424092c
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/allwinner,sun4i-a10-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Timer Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-timer
+      - allwinner,suniv-f1c100s-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description:
+      List of timers interrupts
+
+  clocks:
+    maxItems: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,sun4i-a10-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+          maxItems: 6
+
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,suniv-f1c100s-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 3
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    timer {
+        compatible = "allwinner,sun4i-a10-timer";
+        reg = <0x01c20c00 0x400>;
+        interrupts = <22>,
+                     <23>,
+                     <24>,
+                     <25>,
+                     <67>,
+                     <68>;
+        clocks = <&osc>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt b/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt
deleted file mode 100644
index 3da9d515c03a..000000000000
--- a/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Allwinner A1X SoCs Timer Controller
-
-Required properties:
-
-- compatible : should be one of the following:
-              "allwinner,sun4i-a10-timer"
-              "allwinner,suniv-f1c100s-timer"
-- reg : Specifies base physical address and size of the registers.
-- interrupts : The interrupt of the first timer
-- clocks: phandle to the source clock (usually a 24 MHz fixed clock)
-
-Example:
-
-timer {
-	compatible = "allwinner,sun4i-a10-timer";
-	reg = <0x01c20c00 0x400>;
-	interrupts = <22>;
-	clocks = <&osc>;
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
