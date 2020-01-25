Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85A9149518
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=If4F2xSVczlZyMM7bqOoHWcl2sGEe+4MgYsX7k8MVcQ=; b=fUC0tTrEBGuyVh
	XM0xF7eucD/s4HLrYUp35JCmhByJmi7jwiTQ8FeIIwYD9BbXSixVY4DGeYo3yl4pD9wWoZA7iD35/
	NQvfq2BWHU7UR9rTSWn65HmY+b7ld8o7YLnQ89OkLyYwXyzir1VyU7D5fcUfQS0e8yk1cFw6QRMCT
	sDhTzXWO1Hz0/ICUQpTS+ggl4FodrhbPtResSpgt7lFuD3e9PxTqgNm2k1G0qGG6B63uz+sPxZeqx
	3fxxdOFaB6W1cdKCb5fUeXESlridzfzjxKUjA0DXENa1wGQGQaVkqWgyJ44QlAJrMR6waGGI57Fwh
	gZRcNb1fwfdKWXn/iCjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJFj-0007xq-Au; Sat, 25 Jan 2020 11:05:23 +0000
Received: from mailoutvs37.siol.net ([185.57.226.228] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJEZ-0005rf-JJ
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 11:04:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9038B520F7D;
 Sat, 25 Jan 2020 12:04:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XfkHWhFhmaxZ; Sat, 25 Jan 2020 12:04:09 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 4E2CB520EEE;
 Sat, 25 Jan 2020 12:04:09 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 05D7B520F7D;
 Sat, 25 Jan 2020 12:04:07 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 4/5] media: dt-bindings: media: Add Allwinner A64 deinterlace
 compatible
Date: Sat, 25 Jan 2020 12:03:52 +0100
Message-Id: <20200125110353.591658-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200125110353.591658-1-jernej.skrabec@siol.net>
References: <20200125110353.591658-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_030411_797930_4FE55A9A 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.228 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 SoC also contains deinterlace core, compatible to H3.

Add compatible string for it.

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
