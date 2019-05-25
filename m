Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CC52A4B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 15:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnXfPMeySf+a+EYjrkI5Qpe+RZhHD/sSvuIr7GIViao=; b=U0Eqd37p0rSqhF
	FZDaRQC+H7HRSITBkVquT97WS4LniCxuRL6nmQdA6rCijnxnO1JSqyWhBExVYuOuRwkplcnGWo79/
	l/RxiTi4Q6ea1DqokMJx0K6afqFjLyFIydavTavKtrUk6iWVPjSoym4V+lmQFKxW+qs22M7N9szSY
	Xr1Q4d9rYfWqMnlGhYynK5M2kvxe7xsGXaa0z4QVtvf8SULuEYrvk57eRqz5csqqXIFPqq6XR8Qpb
	RgyvfUv0Pj6jffAyHBQaviR/yw0Rjib9jNP3dnV8tc8POfp1dMiicr/VJWAZab8Ca+r673dlXbZeC
	nWkMt+IRUBLZ2miu1v5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUWwN-0001oK-II; Sat, 25 May 2019 13:42:27 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUWw3-0001Zi-97
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 13:42:08 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id ECD9BC0008;
 Sat, 25 May 2019 13:42:00 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 4/5] ARM: dts: sun7i: icnova-swac: Fix the model vendor
Date: Sat, 25 May 2019 15:41:39 +0200
Message-Id: <20190525134140.6220-4-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_064207_570836_9A4EF212 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though the SWAC is just a baseboard to the icnova SoM, the vendor of
the baseboard somehow ended up with the board name instead of the vendor
name. Fix that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 2 +-
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts      | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 285f4fc8519d..000a00d12d6a 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -263,7 +263,7 @@ properties:
 
       - description: ICNova A20 SWAC
         items:
-          - const: swac,icnova-a20-swac
+          - const: incircuit,icnova-a20-swac
           - const: incircuit,icnova-a20
           - const: allwinner,sun7i-a20
 
diff --git a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
index 949494730aee..7449aac3f43b 100644
--- a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
+++ b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
@@ -49,7 +49,8 @@
 
 / {
 	model = "ICnova-A20 SWAC";
-	compatible = "swac,icnova-a20-swac", "incircuit,icnova-a20", "allwinner,sun7i-a20";
+	compatible = "incircuit,icnova-a20-swac", "incircuit,icnova-a20",
+		     "allwinner,sun7i-a20";
 
 	aliases {
 		serial0 = &uart0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
