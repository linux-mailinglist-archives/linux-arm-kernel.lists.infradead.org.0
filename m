Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE981168F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:14:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mLZ4KgoCnsdtE5yeoRyurT0FxoXAGXdMdMvtRzg4sc0=; b=qe2A7qNG6I+YOW
	dHH+9c9z+llFMFuPJi8M6BvD89dOwKjfrU1vALHPXA0CHJapERM3GdhdWQ9zc2JBvoBc9xicX2w5x
	j4jLFjjCaMArDBGWyZxZKhBnfq82mFCkziTdvdpfHp7CwxdU9i17UKvmsMy3O9tjX96cxIj58yQ9A
	z7l8tL2Anp5sSTgIce/W1vBM1WtuwW3ZTS7mxYBSzZuOzwefvbDOowqezemi5k1AC2B+gEE5kkJVy
	NgzP/tl39qxpvTL0sNrRzjSc48MsUFoQlXUg7RhZmiduNL+iz3eL5Pqr9OvVLy35akNVc+9lnE25x
	5UctwkMY8K4c5mHbAxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieF7F-0006NG-Sf; Mon, 09 Dec 2019 09:14:05 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieF78-0006MO-5U
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:14:00 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E434920000E;
 Mon,  9 Dec 2019 09:13:44 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Date: Mon,  9 Dec 2019 10:13:38 +0100
Message-Id: <20191209091339.32593-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_011358_343077_19653831 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document devicetree's bindings for the Overkiz's Kizbox Mini and
Smartkiz boards, based on a SAM9G25 Atmel SoC.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
Changes in v2
=============
	- Added Kizboxmini Base board documentation
	- Merged Smartkiz documentation as it is also a sam9g25 based
	board

Changes in v3
=============
	- Made a single items list with all the sam9g25 based boards and
	put description into a comment.
	- Fixed duplicated item in enum list and checked with 'make
	dt_binding_check'

Changes in v4
=============
	- Fix missing "-" before items list

Changes in v5
=============
	- s/at91-kizboxmini_common.dtsi/at91-kizboxmini-common.dtsi/
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 6dd8be401673..8d50915330e8 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -35,6 +35,16 @@ properties:
               - atmel,at91sam9x60
           - const: atmel,at91sam9

+      - items:
+          - enum:
+                - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
+                - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
+                - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
+                - overkiz,smartkiz        # Overkiz SmartKiz Board
+          - const: atmel,at91sam9g25
+          - const: atmel,at91sam9x5
+          - const: atmel,at91sam9
+
       - items:
           - enum:
               - atmel,at91sam9g15
--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
