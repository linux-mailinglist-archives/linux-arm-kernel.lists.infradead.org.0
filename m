Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819B1D3816
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cb/ER3cVAk7eax6pTDPzZdg9s7B3cFkXS1sHf/ZtbJY=; b=TPoE1IVRGdDFAW
	AKDytWOjWYsGtISEAJzrgfGSjYY6AuGZYCS5U+/Q+U6fk34bL2yFq04IGTlokxU7CZO16uh9LAKch
	4lmjvcspN524mg1IJHaBdeAx8FMIlFRWZHiEqHKCs7DNt1w3aM7e6sQf7afGEO0ME76Qui5+rfFN8
	aZ7ADZ4jhKHRrK0/UUD2ytqi7PQErg0oc8gmEmbdKOP1Yh0rMASrByUpNkHG6scqO4bOf5bPGwh0K
	S1Rdp8/53e6lSaa6fwAHrOJhiBr5xTvF5CScKkrs/2Ncxs4iuQ1P1f1BSoA0xBmcL4WLCuaHyrDGg
	h+hxa5sqZTVDRXygr9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHcs-00021X-WB; Thu, 14 May 2020 17:26:31 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHU8-0005J8-5m; Thu, 14 May 2020 17:17:33 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id AA15824000C;
 Thu, 14 May 2020 17:17:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 16/21] dt-bindings: mtd: Deprecate the nand-ecc-mode
 property
Date: Thu, 14 May 2020 19:16:46 +0200
Message-Id: <20200514171651.24851-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101728_387364_B37BA92B 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This property does not describe very well its purpose: it describes
the ECC engine type, also called provider. Deprecate it in favor of
nand-ecc-provider. In the mean time, update a bit the description of
the property to make it more accurate.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/nand-controller.yaml  | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index a35ff8227427..256080ba50bd 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -46,16 +46,17 @@ patternProperties:
         description:
           Contains the native Ready/Busy IDs.
 
-      nand-ecc-mode:
+      nand-ecc-provider:
         allOf:
           - $ref: /schemas/types.yaml#/definitions/string
           - enum: [ none, soft, hw, on-die ]
         description:
-          Desired ECC engine, either hardware (most of the time
-          embedded in the NAND controller) or software correction
-          (Linux will handle the calculations). soft_bch is deprecated
-          and should be replaced by soft and nand-ecc-algo.
-	  hw_syndrome is deprecated and should be
+          Desired ECC engine provider, either hardware (most of the time
+          embedded in the NAND controller, but can also be external) or
+          software correction (the OS will handle the calculations).
+          The nand-ecc-mode property is deprecated in favor of this one.
+          soft_bch is deprecated and should be replaced by soft and
+          nand-ecc-algo. hw_syndrome is deprecated and should be
           replaced by hw and nand-ecc-placement.
 
       nand-ecc-placement:
@@ -148,7 +149,7 @@ examples:
 
       nand@0 {
         reg = <0>;
-        nand-ecc-mode = "soft";
+        nand-ecc-provider = "soft";
         nand-ecc-algo = "bch";
 
         /* controller specific properties */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
