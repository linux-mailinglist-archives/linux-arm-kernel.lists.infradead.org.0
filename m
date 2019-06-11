Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC23CE31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RTepgD7Yf8deIvDZR4gAQFFOZiOKJbMPe/03vQEcVw=; b=ndMhazicy1Wqxr
	88ddu5KrqExAPz6YpNSmQsW+fCgqAQ6LcAXuvUzUskFCSy2UXdzQjKPcucZ9RHGsP5Sc9/g94v97r
	mVTFRTNu2EESL8Zbxs0OMP8jxbsnnrb+uHzHL85SN6zA/213fm0cl16kYDs0KCBrR2KIC25UU/rg4
	oF+tziAjKVObduU/uUl3TT1p+5C0rThXy9hp9tQ/P9Jlw/MK/wE0NYkNjrVSiCIPKlBV/tdrtcEpj
	J2vO96NDJiiu7lV1qYKCBWHutQukmLyrUXbaNfKqVt8RTo1KnXXO/cxpYzHZwCW+0ZQzDTIYoGjNn
	dpPA8qM7B1L5ZVGYArHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahXY-0004tS-2i; Tue, 11 Jun 2019 14:14:20 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahVT-0003kw-A7
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:12:13 +0000
Received: from [199.195.250.187] (port=36265 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hahVM-00023b-Eb; Tue, 11 Jun 2019 15:12:04 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id B6DF982298;
 Tue, 11 Jun 2019 14:11:58 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 07/11] dt-bindings: vendor-prefixes: add SoChip
Date: Tue, 11 Jun 2019 22:09:36 +0800
Message-Id: <20190611140940.14357-8-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-1-icenowy@aosc.io>
References: <20190611140940.14357-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071212_194987_C7AA4949 
X-CRM114-Status: GOOD (  11.91  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shenzhen SoChip Technology Co., Ltd. is a hardware vendor that produces
EVBs with Allwinner chips. There's also a SoC named S3 that is developed
by Allwinner (based on Allwinner V3/V3s) but branded SoChip.

Add the vendor prefix for SoChip.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v2:
- Add the review tag by Rob.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 91a1338267db..2c8a8b195c07 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -803,6 +803,8 @@ patternProperties:
     description: Standard Microsystems Corporation
   "^snps,.*":
     description: Synopsys, Inc.
+  "^sochip,.*":
+    description: Shenzhen SoChip Technology Co., Ltd.
   "^socionext,.*":
     description: Socionext Inc.
   "^solidrun,.*":
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
