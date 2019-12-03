Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E910FF2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBZC8tu0x9aSa7L63y+K7AIClsXlA5S0gLnH8tBzhBc=; b=a0G2gcj941F3Ev
	Th7CDN1+o1L5OnuQNqYr840ErHBhE5j2jlWNanQjk+04nyI6bBqy5f2Td75zImELbUlR66LJn7U/N
	6KsrgFfHSe1MVkJ0tLkjDvzPnFuIIRNtgP7rnt1JQzjGXoNgXQSPbSEf7r57n8NeV7647e7TQFk6o
	/frN//o4BU6ZNWShze3pSSz7ntnKu/ydTia6ZNJHBaxNcZU8NrtbQXsy8HUtZjRSUtvffl6OuVman
	M06O1sDGvDPJ2phSFOYGBjaDOmmvGnwC6DflvFf91p7sC2HUsNT/wANT1S+GVTvud5f1AbOXMQvky
	S0i2IM5eIiKDwciw2b2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Xu-0008Ha-QG; Tue, 03 Dec 2019 13:48:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Xb-0008CR-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:48:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id h14so1877392pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UUlsRRK2pgCm9l96Sadau8/Jinv10/1VueVd+pNemqM=;
 b=kxVcUwh6Bbz7GVnMzIw7OTehgR8KgnjaD4BiGmDF/ZlEyM7XbXFeVNJkNUjcS0t6l1
 ug08pUmwQ8V3G1mAq5V/rr+pNYT5oBj1D04K4ejrpKH8Q0S2oo0oJ4yVDGTkroAclcl8
 ITvyf4yd9x2XCvuTbtm7VgEqscmkSFDA0Nuxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UUlsRRK2pgCm9l96Sadau8/Jinv10/1VueVd+pNemqM=;
 b=CROHNfPuyhNAb+i2BfqJJLXPamfnrbNTrJHVkREeu/I6MaMy/oU/eQFu/VVATELuSc
 UYumF1maSVh2zsVCuwaUZ6Dic+3AUg6Q/rct8aD+nGDKYo64KKQ7eYul4lkqGcWjh7n+
 IslyIONsFUwdKq40xjvRxr+WP3XCB0gxw3Hj1qtsQVDgELz3ThDnNB4gKdQEfBHSPx9L
 TgL42V9GCROXPsCS0CRmxgHylkyMXoUHI4t1uDtAsCo0Qv4SxQItYSsapNMuQISAZ27I
 BvhUxrNlFFPL6LHFGVvoBeF5vwoXw6tiKQ6dIujSGFqDiWWXUUsPKR6wE6etkHUQ1MiE
 bPzA==
X-Gm-Message-State: APjAAAUH/SpK7yhXULyLE9NFy06uN/MZAEgac6dhtHMhyDz8Xv4hgStB
 nj+2dE0vXI53/HK3Y42ycSl8cQ==
X-Google-Smtp-Source: APXvYqybsy7gWan3hjAOgJUaGmGoAqpOTEE3wpc7hSQ1++Wb69OSIzyrvfi/r0nKL4x2BRjmdiyFJw==
X-Received: by 2002:a63:e94d:: with SMTP id q13mr5361869pgj.209.1575380914518; 
 Tue, 03 Dec 2019 05:48:34 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:34 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Date: Tue,  3 Dec 2019 19:18:10 +0530
Message-Id: <20191203134816.5319-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191203134816.5319-1-jagan@amarulasolutions.com>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054835_574084_C512E8F1 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes for v12:
- Use 'enum' instead of oneOf+const

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index dafc0980c4fa..b91446475f35 100644
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
@@ -63,13 +67,25 @@ required:
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
+      then:
+        properties:
+          clocks:
+            minItems: 2
+        required:
+          - clock-names
+
 additionalProperties: false
 
 examples:
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
