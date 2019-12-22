Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D1A128E31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 14:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAxWVqcuzEZsG7W5xjD7k+S69cJ4RZWwnZvqIaXmqqw=; b=KCcheQXKM0ZH14
	cW9dPIL/txb8DiAawePYuKUVUtDt0dv2u/ze37W0uBE3L5uW9lqEwCw3gNSlcj/4fx8R9HjS/Jb3q
	p4U7ch7lo1vqrH9XUNEBRt4Cd+84eudvu9NGCaV9PMQfzoz6VJ0TcB4VMmw3SZB60+13XlGf2Z/KB
	WxiPSuHkHkNmMNL+IN8EIptVDcqi+fFF/m6afMyXKX915Le03tE1YNdgJO7+InFkPD+ntFHYiCmFE
	u58oE6efTAZ6gWJd9YNJj8k9RkE00/pZ5GpM2mbhdMq5doaNMSFuG9zZqmhN+WUVa7xeU0R0jPl8h
	nsQWk7O0zf41/80lEA/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1Iv-0003Tc-UP; Sun, 22 Dec 2019 13:29:54 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1Ia-0003LC-19
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 13:29:33 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d5so6248020pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 05:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yZ8n1dFGNqx9MjMWepdptN60E7TYxz6HFWUIoiztPpA=;
 b=CrIi6L/++ZVUaxwSl7hMrcWzqn+AgARP/aDXgQhVDwayW9WwQjGIHVxOKVjmIs/LRU
 xRuzF+iEeSKXzPJ+uOS+jjwNozOdDnDRYA7/uQFxKE42sPXGKDftuDxi7JKTOTmROyrf
 laM6qMlWuFedzbEVUgqszL/8rFagkferTXcG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yZ8n1dFGNqx9MjMWepdptN60E7TYxz6HFWUIoiztPpA=;
 b=gbZc1xWA9cqPA0NBVGMCzixK0zjl29mi26XkQXQSIRz71Z80GINIq1G818g2Tezl2K
 nRk5Ovh/4qBU5tUbUjJiPEgdKsGfQ4fQ7+VwSB7ueTGpJgZsHFlNAKP8I212BlEB5PHF
 CKJk/1pGM+W6H3UXGjcB9IUbynIxAW7Ag6XZEC2CRTLzS+ohoZ657Ux6i3/msr3W2c7w
 kgChm4H1I9/Buc6emO4ipFnJfB1MU09xe0WeN44+iz6ujwS2gfXOqcBLbggWExndrS05
 6nG2fyqQbPhuD9NBTmAaW5k/j3xcAyh0UPtaW41n+vKhlPD9mZs6flKMj+dPASdwoQ07
 b/nA==
X-Gm-Message-State: APjAAAW9oQbkRds84XbEmhAdd5Z+No7PvCXtMSzXntJvtlI1+ifLdVoX
 mU3dkrKDghrEjngQsQnNgBPkGQ==
X-Google-Smtp-Source: APXvYqx8VhsvVjyJ4/Sp6CH68k0bIUCH7wuk1lY1KWY5L9o3lzkZKagxgPGCiUmA9dsys23cSvHb8g==
X-Received: by 2002:a17:90a:9c1:: with SMTP id
 59mr28516972pjo.65.1577021370933; 
 Sun, 22 Dec 2019 05:29:30 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
 by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 05:29:30 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v14 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Date: Sun, 22 Dec 2019 18:52:23 +0530
Message-Id: <20191222132229.30276-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_052932_069418_00C53154 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
to have separate compatible for A64 on the same driver.

DSI_SCLK uses mod clock-names on dt-bindings, so the same
is not required for A64.

On that note
- A64 require minimum of 1 clock like the bus clock
- A33 require minimum of 2 clocks like both bus, mod clocks

So, update dt-bindings so-that it can document both A33,
A64 bindings requirements.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v14:
- none

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 33 +++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index dafc0980c4fa..d41ecb5e7f7c 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -15,7 +15,9 @@ properties:
   "#size-cells": true
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dsi
+    enum:
+      - allwinner,sun6i-a31-mipi-dsi
+      - allwinner,sun50i-a64-mipi-dsi
 
   reg:
     maxItems: 1
@@ -24,6 +26,8 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 1
+    maxItems: 2
     items:
       - description: Bus Clock
       - description: Module Clock
@@ -63,13 +67,38 @@ required:
   - reg
   - interrupts
   - clocks
-  - clock-names
   - phys
   - phy-names
   - resets
   - vcc-dsi-supply
   - port
 
+allOf:
+  - if:
+      properties:
+         compatible:
+           contains:
+             const: allwinner,sun6i-a31-mipi-dsi
+
+    then:
+        properties:
+          clocks:
+            minItems: 2
+
+        required:
+          - clock-names
+
+  - if:
+      properties:
+         compatible:
+           contains:
+             const: allwinner,sun50i-a64-mipi-dsi
+
+    then:
+        properties:
+          clocks:
+            minItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
