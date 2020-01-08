Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3BF134684
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 16:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W7yux0wyM/dJlIcQ1w2RhzAVqJUZl3xfuCcO/UgsdIY=; b=Ov7I1wVFHSaMYeuEhXs8FkaE+V
	NSc2PuDcn6+Ala9JkzIQ9dPX8erag+fAk3fzIKDaKZx3g3ZePKHs4reTEskdDTaW5aKnqYfU9ssK+
	XV771l7BHfpgiXsQldr6D7TITsb4QOjs/HELiEazfh8LZYmae8g4/Xl9Sp/QWbUsvBNljvbXFwONZ
	lxW3rHLzdJD3zBCq77DqRXHxjF4huSESs807PkpyGzQUchrtjajH7jnBLozwG5mUxGiFk1RcOxfiY
	VF+ejcVyhmuPvuKiz+T1IAx4OBSOwoPkQL0p3urLWg+89bVRQCqH6FMkP/ICXyGk/slzIP803TyAT
	VyNyNSjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDVi-0006Ws-N7; Wed, 08 Jan 2020 15:44:42 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDVb-0006Vs-13
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 15:44:36 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1ipDVY-0007s2-Ll; Wed, 08 Jan 2020 15:44:32 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v7 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana i.MX6DL/Q
 compatibles
Date: Wed,  8 Jan 2020 07:44:20 -0800
Message-Id: <20200108154424.15736-2-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20200108154424.15736-1-rjones@gateworks.com>
References: <20200108154424.15736-1-rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_074435_109816_028CCDB5 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible enum entries for Gateworks Ventana boards.

Signed-off-by: Robert Jones <rjones@gateworks.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f79683a..aa51f45 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -128,6 +128,27 @@ properties:
               - variscite,dt6customboard
           - const: fsl,imx6q
 
+      - description: i.MX6Q Gateworks Ventana Boards
+        items:
+          - enum:
+              - gw,imx6q-gw51xx
+              - gw,imx6q-gw52xx
+              - gw,imx6q-gw53xx
+              - gw,imx6q-gw5400-a
+              - gw,imx6q-gw54xx
+              - gw,imx6q-gw551x
+              - gw,imx6q-gw552x
+              - gw,imx6q-gw553x
+              - gw,imx6q-gw560x
+              - gw,imx6q-gw5903
+              - gw,imx6q-gw5904
+              - gw,imx6q-gw5907
+              - gw,imx6q-gw5910
+              - gw,imx6q-gw5912
+              - gw,imx6q-gw5913
+          - const: gw,ventana
+          - const: fsl,imx6q
+
       - description: i.MX6QP based Boards
         items:
           - enum:
@@ -154,6 +175,26 @@ properties:
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
           - const: fsl,imx6dl
 
+      - description: i.MX6DL Gateworks Ventana Boards
+        items:
+          - enum:
+              - gw,imx6dl-gw51xx
+              - gw,imx6dl-gw52xx
+              - gw,imx6dl-gw53xx
+              - gw,imx6dl-gw54xx
+              - gw,imx6dl-gw551x
+              - gw,imx6dl-gw552x
+              - gw,imx6dl-gw553x
+              - gw,imx6dl-gw560x
+              - gw,imx6dl-gw5903
+              - gw,imx6dl-gw5904
+              - gw,imx6dl-gw5907
+              - gw,imx6dl-gw5910
+              - gw,imx6dl-gw5912
+              - gw,imx6dl-gw5913
+          - const: gw,ventana
+          - const: fsl,imx6dl
+
       - description: i.MX6SL based Boards
         items:
           - enum:
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
