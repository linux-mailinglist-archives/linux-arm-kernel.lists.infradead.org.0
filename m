Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0337CCA68
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyzjCQk5wMCYhsDNbU9KGennr00JfzRtlWON+eNZk44=; b=l9qDQAix6o9rCr
	2Y5ueYn2VyLHt8io9yno3SpxLzKmfyNgZcAbZhvekmBvcC4qF/OZy/uSE1c9cCtC++miWacdWvkfC
	vj82sI4BWzsLtD7mtulh+fUKPFR3Q4HAXvVxfh1MYYb3U2B0BvrpXiPBnjTGYDMDK/5ZOnorrNfJz
	ARE/DrF3398tSAUyZPeHfyps0o+G3iC2IpK6NZF8XbQytl5LVcxh4xTPwtu6qyjLClHA2TJy3BIHM
	RGYodRnIEUXCJfxcEjndXH0UzupBJkZ3HkuCQPHQP2iml0cSN/S7QK8CYmQe6bLTw1VqYbJux8gZ0
	gEBFQfFlRD2eE4vMMHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkvA-0005V1-Df; Sat, 05 Oct 2019 14:20:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkuH-0003fm-Rb
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id q24so4513052plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
 b=pqNAHW+FwCPLtmMCrEkOjKWwvUGOVLbSDKFc786vnhYyrwlP6swsENzUfsK51+kxu6
 cA0MvHQrlrJpu2rAbw5We0cRNiGT6OWwq+E4UdP0X+x8tJ33JVZQj3upf7PeS8f9W/2t
 FPdU2xvzZ/L6YVpMLVCBITsyrAOB7exwrsfv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
 b=n61yvNCNIG35cJsjtJVZ1zbryOjLAhEqCI+i4yFqV68HWw8ckyPiCx833t/pSh5R7d
 NCiON4QtH0EJOT0LnMXRvz4SIBI1652gJFdwj1bnvy2zXqjH3UShIqkaObctKFBl2Y1H
 zQr4jt9i4pm6jS6cCaa61TyQxNOdQzyvD1i5AOZVwCHeJUR21yIhz993KrQvu2e0jNq2
 62PktxGmm+dRfo+6NDH4zpXDtmHBZRew0ngXPWruqZ1ptkxd3RwYMh4vgZYFMiB1fhs5
 rIS3/L+IzRh42brrxbhQt9B2n9zREi+VeHFvnbGDP1nEucZMyByn/CRXL1QNcYmF9fLK
 A0vQ==
X-Gm-Message-State: APjAAAV27mS59NcJa5E7ap9LX1TaW7yEC4SzaMb9HwdTKPBa6c5iFk6C
 meqahP1mXpKpMxlyFoSB2inF7A==
X-Google-Smtp-Source: APXvYqzyfbYoP0nigJLm601pen/N5iojsrxWH3PJfSr9afbuIRmYCd4P+TgvvrASJEz29Up2FoLOMw==
X-Received: by 2002:a17:902:9a41:: with SMTP id
 x1mr14550279plv.269.1570285172204; 
 Sat, 05 Oct 2019 07:19:32 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 2/6] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/
 A31 fallback)
Date: Sat,  5 Oct 2019 19:49:09 +0530
Message-Id: <20191005141913.22020-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071938_005468_B7545F02 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index fa46670de299..8841938050b2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -15,7 +15,11 @@ properties:
     const: 0
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dphy
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dphy
+      - items:
+          - const: allwinner,sun50i-a64-mipi-dphy
+          - const: allwinner,sun6i-a31-mipi-dphy
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
