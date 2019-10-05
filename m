Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57412CCA66
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeoasc3vzjveF16fkQU0xk62EG4joJSjtSgNnFgHc+A=; b=mReoiHZKU04fHe
	tVNPeicp0pnPx3DVirp2iOvejgor++MutUvt8msV4y7fYQiFLd1M7TQsiYBHXVkDaCwrEjF4bOh9z
	4mKi4sXy/XHWbhQH78kggYsBHI0dbpxw2wkPOl1HELp6uMOrKuDFCDscRqkQ2YaEe2uE+7HCQFigO
	F6VnQXrq0Z7tjov33wRhqnPuHO0LoljaM53MoKph1VXse8+sx4UFmjDwLMvWwwavXhQy7r8w4XaSr
	pfRqZQtIcu3vwC6uQhQEb2KvUgwzuP+gwlclrLdjRAED3bCJON8ibE49P3+piiJM7ge40d/CDMYRl
	Y+0jjGU7aX3ZeTO0EGpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkuc-0003kN-1K; Sat, 05 Oct 2019 14:19:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGku9-0003dF-Cr
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id w8so4532239plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j71JSmqo2p/lC+pVotGwXL+zyAoHaLpisutyi3M3xfk=;
 b=c+bNHX150ih1LLE2k5LrQDgeo2hmhkZLqKyEExZX/B9Swz4KTLiOD9Tf1g9nTLGKsa
 YqPTXWFZnLndq79saXmDqpW7gRgHF3ZqVz6kDb/BW0O0RXfwr0kO947ZodH7f5X2p4c5
 fgCyZ0HJsarIkoZGz+CU1cmFxaXs0+2q01eB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j71JSmqo2p/lC+pVotGwXL+zyAoHaLpisutyi3M3xfk=;
 b=S/SKBjYlrbXjjnkU/yXdG34jPyYIssY4gkuarwG63GmlBESrmDEx8fcKpZQLRsa1IK
 Bg3dXnBgYSQRE8xyJGQOz0dN5mdM3ENwOltBv8auBWuYGLJBaUQfm7ICTv/5M8y9vnV4
 b44pVCa7ZKHTWcMOgG/WMq81HnOnTTPGxtLEBVIOdc/mbF2gtwPPV2I06a04uT7YYL29
 g6ki/kSoXsr9Pd58bVYV/DRYvp34waioKX2ensG0RwABNuQdNK4Z2IA4Fq9i6g0/1mWk
 01vqBIQPLeRp47ocU6GBvGuENA8xCKI5tFlQvopqn+B6V6PHqkkqnLs4psJ+/GGCrwsJ
 SDWA==
X-Gm-Message-State: APjAAAWWIRUd7lWIeC3H1JT5Sldr93MVXsMIY+eKmK4LxGQOVvkUbKw3
 YTZD0NDl/A7qhhx8ycpuy0ssFA==
X-Google-Smtp-Source: APXvYqyUl411uM87vrRwvlJ+wF+fjjwaiPL9XpGjvqCaxZBcb4sTtYi07sCxLpjnKzSjOFwvn84EDg==
X-Received: by 2002:a17:902:b182:: with SMTP id
 s2mr20310966plr.219.1570285168104; 
 Sat, 05 Oct 2019 07:19:28 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 1/6] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
Date: Sat,  5 Oct 2019 19:49:08 +0530
Message-Id: <20191005141913.22020-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071929_432005_A78407E4 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
to with separate compatible for A64 on the same driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index dafc0980c4fa..cfcc84d38084 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -15,7 +15,9 @@ properties:
   "#size-cells": true
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dsi
+    enum:
+      - const: allwinner,sun6i-a31-mipi-dsi
+      - const: allwinner,sun50i-a64-mipi-dsi
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
