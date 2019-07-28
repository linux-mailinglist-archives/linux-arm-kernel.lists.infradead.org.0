Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114BC77D6C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 05:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybyeEAQU1zW80dQf32dYMzfPsl5XppaEUbVL67ViwoQ=; b=TWGCpZYsBBuFr7
	AG5dZl8PRBDe4aLL5rEn4q8hVb/IOa4zxICzJ8Bi4LUSNnPWaXPxmWCTLFqIqTWAvOgG2eBFkRL+g
	XdzMngbIisVuOV0CTVc9JyHah/YIkqhc/qGUL7xZiVa2KENjg8eJbv0pRXDzWLZVZlie7eG/V9MrL
	jCQDzB1cqFSWQR6v/YJTiYVmjc3Fmw26x/es9U0mMkRH4bxEsuk+akXddmS2/t2J+FJG+HTQYNXFg
	yT2h1zGygDsv3KGhwp4NTGQnOpvVWjO+qSI1R5EEyh3OkI9UYsMnfrrWAhYZtNPUameJHU+fQeUpq
	AVcAjI3uRo/yzR9BDRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZf3-0004dL-U5; Sun, 28 Jul 2019 03:15:50 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZdW-0002U6-Fo
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 03:14:17 +0000
Received: from [199.195.250.187] (port=58685 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hrZdT-0001pg-1X; Sun, 28 Jul 2019 04:14:11 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 9D1716F929;
 Sun, 28 Jul 2019 03:14:06 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v5 5/6] dt-bindings: arm: sunxi: add binding for Lichee Zero
 Plus core board
Date: Sun, 28 Jul 2019 11:12:26 +0800
Message-Id: <20190728031227.49140-6-icenowy@aosc.io>
In-Reply-To: <20190728031227.49140-1-icenowy@aosc.io>
References: <20190728031227.49140-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201414_863029_72FFE541 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v5:
- Added V3 compatible to S3 board.
- Fixed S3 compatible string.

No changes until v5.

Patch introduced in v2.

 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 000a00d12d6a..8888f6fc68ad 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -353,6 +353,12 @@ properties:
           - const: licheepi,licheepi-zero
           - const: allwinner,sun8i-v3s
 
+      - description: Lichee Zero Plus (with S3, without eMMC/SPI Flash)
+        items:
+          - const: sipeed,lichee-zero-plus
+          - const: sochip,s3
+          - const: allwinner,sun8i-v3
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
