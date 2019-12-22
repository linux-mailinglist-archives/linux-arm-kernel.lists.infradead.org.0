Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2F128E39
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 14:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRRLb4qPpNDDvHXbdPWgYPZz0HLcAB5+uVr/TbAvr4c=; b=jJyfLxDrK+Y/Cn
	ONUijERszepolxQBDW79FGGv4oHqGROOSOczGqHw1HU7EoGmsiAkjvWLwdRtEwXvOIqOZ9TgWzbD1
	m1v8IeYODyRCEkQ4CXfbNU5YrGdtFGi2lBldPA84FssOSIxwemsPNTEtvKrapSL0JK+N1Dk+YECWJ
	xQjrDSzOnCAtkAPxODXR5+gXbrMUZP1KYwoHthHlCT1kUeui3l2LE7m0vxjTCQ6b+CRdI1De0yoXK
	ouWe3HdDJmeMBAH56+FHGPjQE/9MXS5efRhWfuRKHNM+T8dmbXV3AVtmu3XLwHWG3g6JowpD1FQce
	dNgMjwdfAYwjqtGwXIcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1JR-0003ld-Gf; Sun, 22 Dec 2019 13:30:25 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1Ie-0003Oz-Qi
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 13:29:38 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s94so5038841pjc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 05:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KhD44eBjciixBbXS0jbewwrbs2b2OiqLmvbXkaKHo00=;
 b=lB4V4tgg9XJchkZsFP26liTLrD5wSsSFIAEJ32qjq+iAwPpa8KAOLT+EVxcmw1pwYK
 WMckdTBx4XBA2jV1zAMUZl7P6mpT+gvrq67YYby5w8wExWSzt8Nz7CRKG/z/R4vuRF6+
 shHJH9AM/F2G+LyXB5Hw4yotlUHH1pZsM8UDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KhD44eBjciixBbXS0jbewwrbs2b2OiqLmvbXkaKHo00=;
 b=WD+93m6RUz/flNkB7o+Umml8IX1vSUydo01xl/GWN1ZiZJdMDqRyVjQQOKRnGSVPSq
 Ulyx24eyScD69W6GCDeHeI7fzO7k/jeQbHMcHEvShs9UqBsC7AOaR6q6TWkcIT1poz6Q
 /ow1EBOUBww/7exWqM2KwxDCbU3R8L4SjDuCeWjiQ8t2jtu9rhZ6WcOHjs7xoUTWSbNi
 OeSOBf/E1CYha+w2scy7PLrzW2z03IT2KL5hHKZlGN0jL1a6yOMO3wazLkHT/Iyh1iFx
 LL7KbjvXEAtD0vU7UAAGG/G4EP2kt7lE6mlx2qOQHESAXu52glmbTHZJB9VfKTA11JKb
 CArg==
X-Gm-Message-State: APjAAAXYPPZq1uDy2qDkYzCLQVrWWp6WZ26ELwWlLlngKqwDRX8ysgye
 e1eiBdxeC25Y5mKVu+cA6prKmQ==
X-Google-Smtp-Source: APXvYqzVvyqaDb1iAdI2rOGho/ufZoqSGILukc81YMHL6NVkze8m/8RkPnz08yfklmZh9CKXZYH2lw==
X-Received: by 2002:a17:902:74cb:: with SMTP id
 f11mr24895957plt.139.1577021375724; 
 Sun, 22 Dec 2019 05:29:35 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
 by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 05:29:35 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v14 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/
 A31 fallback)
Date: Sun, 22 Dec 2019 18:52:24 +0530
Message-Id: <20191222132229.30276-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_052936_898741_17D76F8E 
X-CRM114-Status: GOOD (  11.05  )
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

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v14:
- none

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
