Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81066158095
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vdwwNuHL/P3g4tq5c560NORBMISdPMbwLnjtFAzWvk=; b=pJCC8y9iGhnmgo
	2eLzdMiTJTqRib50X7TPq7qEUApWDRZoecaeWCAxj6d9xZZe3i38j8Jma2eHeTUzwnAiP89MwaYrO
	OU7kKRCe+5BNA4rEtPOTPoK4/MSOqEaSTr3dI6g0XOjZTe9yoaB5ry4VD7CRJTV4xSxdIDYQr23Ym
	NKIN9kt7Uw9W7itXvHy2Styzh/f1MCPzGdI10/NbA5DczJ0tPk6SnGKIDAZD1IwXuRWovGnyZdHfr
	SQ++Hry2sIXgc7z3IxR2S6IqY2czTaOBGxhh5Mx7FQjKQJx7ezD2w1GhwcxMGssBlLm9EMfBAVVUZ
	lowowzhxDYLgBDm8btkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CXr-0002PO-Fi; Mon, 10 Feb 2020 17:08:27 +0000
Received: from mailoutvs13.siol.net ([185.57.226.204] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CWp-0001AG-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:07:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 11B8D521B8E;
 Mon, 10 Feb 2020 18:07:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id N6i_FRbkJ3aT; Mon, 10 Feb 2020 18:07:20 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C628B521AFF;
 Mon, 10 Feb 2020 18:07:20 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 741B7521B82;
 Mon, 10 Feb 2020 18:07:18 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 4/5] media: dt-bindings: media: Add Allwinner A64
 deinterlace compatible
Date: Mon, 10 Feb 2020 18:06:55 +0100
Message-Id: <20200210170656.82265-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210170656.82265-1-jernej.skrabec@siol.net>
References: <20200210170656.82265-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090723_733209_2B9E2F1B 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.204 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 SoC also contains deinterlace core, compatible to H3.

Add compatible string for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../bindings/media/allwinner,sun8i-h3-deinterlace.yaml      | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
index 2e40f700e84f..8707df613f6c 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
@@ -17,7 +17,11 @@ description: |-
 
 properties:
   compatible:
-    const: allwinner,sun8i-h3-deinterlace
+    oneOf:
+      - const: allwinner,sun8i-h3-deinterlace
+      - items:
+        - const: allwinner,sun50i-a64-deinterlace
+        - const: allwinner,sun8i-h3-deinterlace
 
   reg:
     maxItems: 1
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
