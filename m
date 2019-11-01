Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C612EC9FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 21:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZG8KOUIEysJQfTNFJRP8aoeK8r/WxguGdwguQ+M607M=; b=k045y+jugjU5pP
	3yDDPCnsJYZ5lXow1TGsZ7cPc7WAkIMEAb+TqGibcQPS7cEUBjin5BktWcg5wNvfbvACzTeSD3x4a
	urj0UmjwaF00O2Ewa7qKZbyT7pIMlZOui8fY+BxD1q+CLYT+KhfjPUCxGRC7WRRG7b2irhzcgyZdx
	xrpeherI2cxz2+OrHcV91PhtJhgwilOlBY5QybQ1PRKMaggKYSYeeibFSyJj6qXpK8xv2bgia2q6s
	XutFc5STMBE5pLgTf8xgSO2NmVgpac6A32a/M/W8+5v3MZC6/InUnjg8ppm25Xq5zOuiAk9BcvqvT
	FmB1sgWFgFM2ldxT/6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdyi-0006GX-Te; Fri, 01 Nov 2019 20:57:04 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdyc-0006Eg-5Y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 20:56:59 +0000
Received: from beros.lan (89-160-129-47.du.xdsl.is [89.160.129.47])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 88A6C1F76B;
 Fri,  1 Nov 2019 20:56:56 +0000 (UTC)
From: Karl Palsson <karlp@tweak.net.au>
To: mripard@kernel.org, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: arm: sunxi: add FriendlyARM NanoPi Duo2
Date: Fri,  1 Nov 2019 20:55:36 +0000
Message-Id: <20191101205535.7896-2-karlp@tweak.net.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101205535.7896-1-karlp@tweak.net.au>
References: <20191101205535.7896-1-karlp@tweak.net.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_135658_350031_2F0D18FD 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Karl Palsson <karlp@tweak.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds bindings for the newly added NanoPi Duo2 board.

Signed-off-by: Karl Palsson <karlp@tweak.net.au>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 000a00d12d6a..152c0499b0a3 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -211,6 +211,11 @@ properties:
           - const: friendlyarm,nanopi-a64
           - const: allwinner,sun50i-a64
 
+      - description: FriendlyARM NanoPi Duo2
+        items:
+          - const: friendlyarm,nanopi-duo2
+          - const: allwinner,sun8i-h3
+
       - description: FriendlyARM NanoPi M1
         items:
           - const: friendlyarm,nanopi-m1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
