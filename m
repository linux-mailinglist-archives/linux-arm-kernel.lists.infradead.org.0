Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F23313D15E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 01:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=haDqKjonJP+JksjsgsKtBuBB0BukqUM6bWYbnU8mvYM=; b=SWcTgspTE99pOCTsqhSuW9EZiE
	bxfLHrsoaQlvwnHom/XZW19rRxSAzNF0pv6OJqPjMjBMXR00wfH1OWn6f0ofLpYuMzJ3pCvUdSx0O
	CxNkzy6XrxnMuj4ZVhkGeokGZb2J5nEcLHJT9/wQWVeXz4XnBQ/O/EPVeu4ONj2wFViAxSlX3jzXS
	oggXdPQHJekjUEFk3PZXq1erAT48KN1Ps1lUtvMv/rOE7oeNSnDHqYhfp7+xQuyqPBX8I7dLdy0kO
	q2C1O3qhmJeEMDKabS6DehcYC2WLo55o4iyQc2KA/Hvy44wyBfhtGgsFO0GFopc8SPWXmv3tbwCnP
	vhJPzumQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irtU8-0002R0-A7; Thu, 16 Jan 2020 00:58:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irtTL-0001pA-FE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 00:57:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 587F41396;
 Wed, 15 Jan 2020 16:57:17 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAA5F3F718;
 Wed, 15 Jan 2020 16:57:15 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 3/3] dt-bindings: spi: sunxi: Document new compatible
 strings
Date: Thu, 16 Jan 2020 00:56:54 +0000
Message-Id: <20200116005654.27672-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20200116005654.27672-1-andre.przywara@arm.com>
References: <20200116005654.27672-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_165719_573887_20709279 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 SPI controller has advanced features over the H3
version, but remains compatible with it.
Document the usual "specific", "fallback" compatible string pair.
Also add the R40 version while at it.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml     | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
index f36c46d236d7..c19dfbe42d90 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -18,9 +18,15 @@ properties:
   "#size-cells": true
 
   compatible:
-    enum:
-      - allwinner,sun6i-a31-spi
-      - allwinner,sun8i-h3-spi
+    oneOf:
+      - const: allwinner,sun6i-a31-spi
+      - const: allwinner,sun8i-h3-spi
+      - items:
+          - const: allwinner,sun8i-r40-spi
+          - const: allwinner,sun8i-h3-spi
+      - items:
+          - const: allwinner,sun50i-h6-spi
+          - const: allwinner,sun8i-h3-spi
 
   reg:
     maxItems: 1
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
