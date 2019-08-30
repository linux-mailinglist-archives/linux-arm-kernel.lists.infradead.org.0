Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD41A401F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jjm6+X/MHGD67vajkK7IbC2LyqX2ladkT5e7NuprWXs=; b=FO1rqn+BB4pD0p
	eggwQCBUE71VZhRuM22mbPQutAIJAISJkbtAx3lDHDeeLEiuK2ZGl/jaXUjGhhwdpZ3KXVS8l/mc7
	B3kgREk3vvFifrfMzDEWvSOhiXFUOqcGmSfwTD/EDOBt93PSj9676DEo08FPmTeI+J293i8BY4NNN
	KUbjo45znZLaVg6DrzG7K+THYxMt+Vvjkrd7o/HKKRUs0amo8I2EwJt4KYpr4Mm5QtjTeIBgmA1lx
	Eo0MIVevLhTd+vmVAvYzg9D+mFsgxWucwqkLLLYWgFiX9loxyNKqJcQkTtWTe5VxZAuWBvA4JWAbh
	s4PdfPkf6FsoivItjVVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p4W-00087t-84; Fri, 30 Aug 2019 22:08:44 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p48-0007xc-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:08:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A5052D87F6;
 Sat, 31 Aug 2019 00:08:14 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id p5fumya1ofgY; Sat, 31 Aug 2019 00:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2E487D87F8;
 Sat, 31 Aug 2019 00:07:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dFrAC7-6_UxN; Sat, 31 Aug 2019 00:07:49 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 1B478D87E4;
 Sat, 31 Aug 2019 00:07:49 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 02/16] dt-bindings: arm: Convert Marvell MMP board/soc
 bindings to json-schema
Date: Sat, 31 Aug 2019 00:07:29 +0200
Message-Id: <20190830220743.439670-3-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150820_675516_E62D1DA5 
X-CRM114-Status: UNSURE (   9.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Marvell MMP SoC bindings to DT schema format using json-schema.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
Changes since v2:
- Add mrvl,pxa910
- s/MMP2 Brownstone Board/MMP2 based boards/

Changes since v1:
- Added this patch

 .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 --------
 .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml

diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
deleted file mode 100644
index 951687528efb0..0000000000000
--- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Marvell Platforms Device Tree Bindings
-----------------------------------------------------
-
-PXA168 Aspenite Board
-Required root node properties:
-	- compatible = "mrvl,pxa168-aspenite", "mrvl,pxa168";
-
-PXA910 DKB Board
-Required root node properties:
-	- compatible = "mrvl,pxa910-dkb";
-
-MMP2 Brownstone Board
-Required root node properties:
-	- compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
new file mode 100644
index 0000000000000..ef59d6e35bb66
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mrvl/mrvl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Platforms Device Tree Bindings
+
+maintainers:
+  - Lubomir Rintel <lkundrak@v3.sk>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: PXA168 Aspenite Board
+        items:
+          - enum:
+              - mrvl,pxa168-aspenite
+          - const: mrvl,pxa168
+      - description: PXA910 DKB Board
+        items:
+          - enum:
+              - mrvl,pxa910-dkb
+          - const: mrvl,pxa910
+      - description: MMP2 based boards
+        items:
+          - enum:
+              - mrvl,mmp2-brownstone
+          - const: mrvl,mmp2
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
