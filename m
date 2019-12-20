Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7DE12797C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSCNmva4pImlD4QE8J7kZm14A/Z8313Z9EdZgY22qhs=; b=QPg4gVXzVBXoCx
	puzmFbMxka6EvqkrtULwCuY7kEfdS4W8ssPWegpPtcG1sW9MjFu87OEUw81f+EgcxbRZPkqklPVKp
	1Si/4nOJqMBhFL8iW+wQmz+SUvjt3HH4u/khy0ZBElMGY8fPVbnw689Xz1yUj5YtxfR2gtCpOgSJi
	7RLlJidrIM5Vu+P4NahmIzZpXxot/zsQqT8aHuRTKufP3WGk8y12PlttCCuGQKTiEZSg6kFvnaNZx
	/tpKLk4Cza4V1uNz+6OSgHFcvXSZKEr25U/3h5JgCwVY+LrQK1oxqaB6nhHRQDC0O9kBWvtYcvuic
	hBjq5D+G+HIhK6NImReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFgT-0003ai-KK; Fri, 20 Dec 2019 10:39:01 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFgE-0003a0-25
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:38:47 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 81AFF20000E;
 Fri, 20 Dec 2019 10:38:36 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Date: Fri, 20 Dec 2019 11:38:34 +0100
Message-Id: <20191220103835.160154-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_023846_242937_D55F3668 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document devicetree's bindings for the Overkiz's Kizbox Mini and
Smartkiz boards, based on a SAM9G25 Atmel SoC.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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

Changes in v6
=============
	- Rebase to v5.5-rc2
	- Fix space indentation
	- Add a Rb tag.
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 6dd8be401673..dcbfce4801bb 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -35,6 +35,16 @@ properties:
               - atmel,at91sam9x60
           - const: atmel,at91sam9

+      - items:
+          - enum:
+              - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
+              - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
+              - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
+              - overkiz,smartkiz        # Overkiz SmartKiz Board
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
