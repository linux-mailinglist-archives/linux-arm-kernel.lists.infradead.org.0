Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B412B3EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIGbDjYH+YL5TIrAxWA69N2lLHLIXXCFC168B2Ce0pY=; b=tA+NpNQ72bkqJl
	IYF5f7ShdBYdBETDEGjUmSJMBoFR5pXBdoefzM2w5OmpZvtfGKF5Pfb8IcEB9fvVZ+FunR/l2XhQ4
	IetEukTeBbeId+V111EEPGvbEKb5BdXq+wc9RxYiCB/CGysQUHX0+3HnolLey0lNgshLBneYsfhvg
	yJgLugbWZO1KGGZkTFrKYeUwelzOKDvy8D8VE6L2NP851Nu7bBXv8+sTJlgTpGrE1SMOj8AzNnlFQ
	sodXIJhJT/SZCwoljEJqEJDAy95R2j41cHDSaRhH+FMJPnep1Bls1AL2tQO3g3ZyhDZeigPuIpSZx
	CmEO6fceAaSdHZdzV7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEKc-0004yr-68; Mon, 27 May 2019 12:02:22 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJQ-0003Ys-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:01:11 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6942C240006;
 Mon, 27 May 2019 12:00:55 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 05/10] dt-bindings: rtc: sun6i: Add the R40 RTC compatible
Date: Mon, 27 May 2019 14:00:37 +0200
Message-Id: <8be02c659fe4191dbf1d3c8dcb1ded8ff92e2dda.1558958381.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050108_765199_6F678E12 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The R40 has a pretty different RTC compared to the other SoCs we've
encountered so far, the most important difference being that it now has
only a single interrupt, compared to the previous SoCs having two.

Let's add a compatible for that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
index 942ddfc1689d..924622f39c44 100644
--- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
@@ -19,6 +19,7 @@ properties:
       - const: allwinner,sun6i-a31-rtc
       - const: allwinner,sun8i-a23-rtc
       - const: allwinner,sun8i-h3-rtc
+      - const: allwinner,sun8i-r40-rtc
       - const: allwinner,sun8i-v3-rtc
       - const: allwinner,sun50i-h5-rtc
       - items:
@@ -29,6 +30,8 @@ properties:
     maxItems: 1
 
   interrupts:
+    minItems: 1
+    maxItems: 2
     items:
       - description: RTC Alarm 0
       - description: RTC Alarm 1
@@ -66,6 +69,7 @@ allOf:
           contains:
             enum:
               - allwinner,sun8i-a23-rtc
+              - allwinner,sun8i-r40-rtc
               - allwinner,sun8i-v3-rtc
 
     then:
@@ -88,6 +92,24 @@ allOf:
           minItems: 3
           maxItems: 3
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-r40-rtc
+
+    then:
+      properties:
+        interrupts:
+          minItems: 1
+          maxItems: 1
+
+    else:
+      properties:
+        interrupts:
+          minItems: 2
+          maxItems: 2
+
 required:
   - "#clock-cells"
   - compatible
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
