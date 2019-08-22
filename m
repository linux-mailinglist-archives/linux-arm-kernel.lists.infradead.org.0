Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C413D98F4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chwPdTb9Yh2G+HVdgsmKSf9fmP30ryvWnI/cu6PJ5EI=; b=MVRDRsJpcdLLP8
	m/hmU3V2yN7hiOuOW7t/Oe9+S2SqsoxkHL0658J5a95WQTcORVtYjyHN0kyDE+XmHh44l7l7BTzzb
	+TiMe2vrIPuMI2gwUFjF+ssooohvWtyzC4Od3A6f6PkVgocIdRdRg5rRKsC1zWXfN4D7vWHbb91Gs
	ueK6NBrpHiuDz4cf+tgw4mLm990KDh/gGBgqkMoMI7KtLXbxXIsR094RFmtVqoABd0CXneDCVwhDa
	3xG+FJfEyM4ZPSirTGb8R9ow+keDIUjGvfepYWX4cygPlUGvJ49wHOJaXDtU+ralfSwFc++Hp9lZ2
	s7Kg4zcR38fKZ1cROgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jO3-0003vL-DU; Thu, 22 Aug 2019 09:28:07 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jNo-0003uk-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:27:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id EE25C493E8;
 Thu, 22 Aug 2019 11:27:47 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CZa7DHZpvi9T; Thu, 22 Aug 2019 11:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E05C2D7570;
 Thu, 22 Aug 2019 11:27:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4-csVm1jD4TM; Thu, 22 Aug 2019 11:26:47 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id E9547D79C8;
 Thu, 22 Aug 2019 11:26:46 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 02/20] dt-bindings: arm: Convert Marvell MMP board/soc
 bindings to json-schema
Date: Thu, 22 Aug 2019 11:26:25 +0200
Message-Id: <20190822092643.593488-3-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_022753_180066_E8E71558 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Marvell MMP SoC bindings to DT schema format using json-schema.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
Changes since v1:
- Added this patch

 .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 ---------
 .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 31 +++++++++++++++++++
 2 files changed, 31 insertions(+), 14 deletions(-)
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
index 0000000000000..dc9de506ac6e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
@@ -0,0 +1,31 @@
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
+      - description: MMP2 Brownstone Board
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
