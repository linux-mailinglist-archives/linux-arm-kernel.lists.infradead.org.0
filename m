Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B199E52AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzP6DVeuo6tlAC7ArAfb4w+LrJUfGTgdlEs5/tmhyPI=; b=P7vXv6xtMSsqXr
	cwmmpobx9IU2J4Q4mojlpMFnx6EOwyJ9iHvESnQph8u5Xh93DG60+2phebOqAJDRCWyJFqcPHHxr2
	7V7w4hyyKGIO8HTMfudcWujcUwIPWA7q1yG8wQHLnPqVM2tgd37g5IIRAtUzhfOnEE2d0cddwzJLo
	/KzgUeTNiTieBYJkoKf4U9QfdTRnPHqmaJpqnDzT5xfo7CdhSstMVbKOkVjtXxSvUQ41JAgrJahG8
	IkFIupvRJdfqsZijr2aDfhrdxcDTgFjVhETBoBr99f4JFWkIDHMUIM5MmytHhVv0BttXDGwl4ovyH
	j4vpG5hj4eLmXKX5IaMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3pr-0002s3-Vq; Fri, 25 Oct 2019 17:57:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3pR-0002kv-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:56:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id u23so2029795pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SvO1A1WodzP09Lr/d61c8nwX2ky0IL4uKfdfDnxUPmw=;
 b=I4XfFKf3RnZY4BUBJ06ANjDE0z1GGx0Afz6XL/cNhEQmqi+MUhs+nXMKueeEqbcYv5
 ivOmHPAV2dOpG6pCDpgF2Vi8AXSwhVaudm6w1kFSZ4SP4AHmdQmdvPl+X9Tas0C6m3A3
 bFxqOPf/VbzeXjotxsF22smaJJ/2ZV1IjNkqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SvO1A1WodzP09Lr/d61c8nwX2ky0IL4uKfdfDnxUPmw=;
 b=ERHwbOoVLZnhr4+zeFc9yRBXdDVAqWUtBGkma/JPxkYcqp7jfGrLUkJaa/tTsdLWqM
 EgFCQXi0rHxSsHY29T52/rXV6jlqOqr4JfEmQnZpDGiFrtTqSmndDurqu1S6iUgZ8t2c
 SZlIX8B7fDRjggpbnxUGKaSk6CrRvR9sCxkrJ1Nb60t3JwwB5k20x1mFQhJEQ1LQjhvQ
 EcI+07wcPKFIfYTilqN8O0dEfYWi6+BsQGWkjlSGlAFh4c5ovhhWnv1/nT5cV4iWPf74
 7nT7lhEamRr/rvWfgh+LBuSAv6oYkxXVf+xGObh5+YJ3Rjf32HF+JDHiaDsi4XueUocq
 Gv0w==
X-Gm-Message-State: APjAAAXqL4opP3wSOvbKT+F2W9n4uY/O3jhZokdRqMpltiB9ZAOZ9YEL
 NF3DUeYYPoOzw0hDrEbq8TiMkw==
X-Google-Smtp-Source: APXvYqwtMqZQKmJ6DIKbe31ZyiLHeuFErJqjqH6z2emRh6lR+XJ+rba3bVgZ3LyEV+aTG50TN3A3Rg==
X-Received: by 2002:a17:90a:fc93:: with SMTP id
 ci19mr5849047pjb.34.1572026208821; 
 Fri, 25 Oct 2019 10:56:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:56:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Date: Fri, 25 Oct 2019 23:26:19 +0530
Message-Id: <20191025175625.8011-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105649_895540_5CEA0EB9 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index dafc0980c4fa..2b7016ca382c 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -15,7 +15,9 @@ properties:
   "#size-cells": true
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dsi
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dsi
+      - const: allwinner,sun50i-a64-mipi-dsi
 
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
