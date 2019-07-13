Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4382767805
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 05:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quiI/kj2lPDBdoVa0CEbhgoEKj1JSCvIRz8CvG00OuI=; b=Oc4/Q2zzu8Cj3j
	p8jTglmDwkEV8GCcyXC4YnXrYd5VNeBd4ViT4b9bKeyD/480gD+RXMXRrb+hbUAFB0R3hgfICLiIe
	AtHr4Nu5+pOXJdjGwKjx9EfrJfr8H4cxITFcZWUYM2TPIQJrEgjL2TWO3OGWyGCodgmevc2xGLp4H
	ndNfDnNXGJOYDUktDgupBsCDcPW7/Iiwxx/YBnguPUg0PznO2VjSAtxGjjKsJb1aixXdEJLxB5hSY
	38z7mdiUw2n43MWqqdfoLJRSgorxCXZAwhO5xEOOTSsx9V2v0Lb8lcIu9/AR1HrbDDUkB2Rlfuymk
	kej/f71BY99DSh5Lowgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm93E-0002TD-BQ; Sat, 13 Jul 2019 03:50:20 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm92l-0002Mn-2X
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 03:49:52 +0000
Received: from [199.195.250.187] (port=33737 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hm92h-0006uU-Eh; Sat, 13 Jul 2019 04:49:47 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id AE44C6E999;
 Sat, 13 Jul 2019 03:49:41 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee Zero
 Plus core board
Date: Sat, 13 Jul 2019 11:46:33 +0800
Message-Id: <20190713034634.44585-8-icenowy@aosc.io>
In-Reply-To: <20190713034634.44585-1-icenowy@aosc.io>
References: <20190713034634.44585-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_204951_142969_B335E7AF 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Lichee Zero Plus is a core board made by Sipeed, with a microUSB
connector on it, TF slot or WSON8 SD chip, optional eMMC or SPI Flash.
It has a gold finger connector for expansion, and UART is available from
reserved pins w/ 2.54mm pitch. The board can use either SoChip S3 or
Allwinner V3L SoCs.

Add the device tree binding of the basic version of the core board --
w/o eMMC or SPI Flash, w/ TF slot or WSON8 SD, and use S3 SoC.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
No changes since v3.

Patch introduced in v2.

 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 000a00d12d6a..48c126a7a848 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -353,6 +353,11 @@ properties:
           - const: licheepi,licheepi-zero
           - const: allwinner,sun8i-v3s
 
+      - description: Lichee Zero Plus (with S3, without eMMC/SPI Flash)
+        items:
+          - const: sipeed,lichee-zero-plus
+          - const: allwinner,sun8i-s3
+
       - description: Linksprite PCDuino
         items:
           - const: linksprite,a10-pcduino
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
