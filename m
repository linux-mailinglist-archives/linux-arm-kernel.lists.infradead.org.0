Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED68D125174
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhMzobWcDdzji857Fd1USMMqsy2/LXYMajWBqZBJLyA=; b=SDSgr6Y8G/zf0u
	gEl7FCBYnEwyN1552OM3Kw7GtnX0aycUQchUhqNSXOiVI78C18n9Ywlb7bVMEfHxLTZfdKUDoa+xS
	vE6/Ygkmc5UN9I1HY8c9wtOeX+kSpbBH1/2H0ggGZZ1CYhwagqwsJrEAvFzUhxDlBFPT9ElGSLHpI
	5SNNpcgeyIyREgpPFRsxNiYHZXkmHXGzr32vtmGD8ACdOp9fXQwTLAMj+4aNqqWa2vboLrBaeYaOY
	WadShAUf+gsjXBuHe7qnsUxGlk+Xsad6OtxTwRlhXfClNv7WROk3/CVV4xO6g10FL1Bu9q1VR8Fbs
	IzcO37OHNVHEeWD+zUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheit-0000ix-7E; Wed, 18 Dec 2019 19:11:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheiP-0000VW-3O
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so1776850pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GQQ92FUtanEcYYn+9KkWeYqFv+lp7/wX47LWysjUtZE=;
 b=RmE2gZ711YJ3jV6D/Xe3LdJ+879T62hzeyhwrPEbAVro1rkJu0IAjI+GGcgojyiSnw
 vmBmNTLU48iHuXr87ug/JIBwPKDWafenagKj3VCdDYei66CNSPw2HyRrHaW6M2F94WpR
 blGsk97djl/6woo2URnQmNx0/UNZ9V1N3f/Wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GQQ92FUtanEcYYn+9KkWeYqFv+lp7/wX47LWysjUtZE=;
 b=Fm+cYVxF5z3SbvJFFyBwZspyQVBHuTHcDxkeZL0V4959bUZEk4Uc04RiaKwWx19M/W
 AaoJlXK7WojT+ioeeZDbW1vhr15SAb/YMDD4/XgEwna+soOF2JTvRAqWV55SAh0EQ4y+
 pK+XNK/HQZa17VRxoxrsSXKrS1df6YaeDK97GI14NBLwNxzJo5k0bVKLzoFENQZnw1aX
 yxdpboOk5vFs4YSnGLatJR2WVkMzjmoxIF9MJK+YeKDIr78ROLsanPAH4fuqJNS5R8Hn
 n/fJbNQJWeApDKOLVLXo7WXE5C8HGs0tjPLgsrk3UuULCNRnGICFUg+qkAaEx32Sc8zz
 3M4g==
X-Gm-Message-State: APjAAAV9hQ7lEDtsb0TncFmAbVgY+nRYBXFr1Ot06rqxdAbMHHRbuDzn
 Jt8R/VB3Mq9FmybHvzcmcf2IIg==
X-Google-Smtp-Source: APXvYqx4GpE06gpJavtzwj55u700h4fjo6q/SRfo8aht7sWch009CZmQ3GDsdwVeTo8wFLR1hxnMHg==
X-Received: by 2002:a63:e80d:: with SMTP id s13mr4849217pgh.134.1576696232170; 
 Wed, 18 Dec 2019 11:10:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:31 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Date: Thu, 19 Dec 2019 00:40:11 +0530
Message-Id: <20191218191017.2895-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191218191017.2895-1-jagan@amarulasolutions.com>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111033_215498_8E6C0713 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Changes for v13:
- Add if statement for A64 with single clock

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
