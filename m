Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF78CBD4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE4ACI1rtENaRkR+DOkKuRKsQ/Tw4kCINDOO8PwDk8Q=; b=BpHd3pnGP4VyaC
	Y3pLB9Vp6ytRWKBTgu0QpX3ya+VqCTL2sfvPG73cnRnJ+A5rCwpoxPYSX3X1s0Uf0Mh7UXoNM40JG
	+M1yNRbBzoEJ09EMnn9gYHJ5RFNfbeMpSKf7nuTIRbcjG6kPeQDepSTy2x2ZTGR4MkUUY9WfO4K2u
	JmxPB/W7pmuy8+HKbllnSsc8fUf26lwQBIqMPmKKLokZoc2yUNWu6WewFLQa9zOaSjBku6w1HfjNh
	pd25w0f8NCD+z8jvmkWZ2cYh/X68+YuaJ4F1mN0gM7UUY4H9vY/6yX+UWbJVMjsFfucjR3S5fhpDk
	1MhiSn+hPeqM4QDOUGsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOde-0002aU-MD; Fri, 04 Oct 2019 14:32:58 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYx-000545-I0
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:09 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C6D97C0002;
 Fri,  4 Oct 2019 14:28:04 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 18/21] arm64: dts: marvell: Add support for Marvell CN9130
 SoC support
Date: Fri,  4 Oct 2019 16:27:35 +0200
Message-Id: <20191004142738.7370-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072807_850042_FE519D0F 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A CN9130 SoC has one AP807 and one internal CP115.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/cn9130.dtsi | 37 +++++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130.dtsi

diff --git a/arch/arm64/boot/dts/marvell/cn9130.dtsi b/arch/arm64/boot/dts/marvell/cn9130.dtsi
new file mode 100644
index 000000000000..a2b7e5ec979d
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130.dtsi
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9130 SoC.
+ */
+
+#include "armada-ap807-quad.dtsi"
+
+/ {
+	model = "Marvell Armada CN9130 SoC";
+	compatible = "marvell,cn9130", "marvell,armada-ap807-quad",
+		     "marvell,armada-ap807";
+};
+
+/*
+ * Instantiate the internal CP115
+ */
+
+#define CP11X_NAME		cp0
+#define CP11X_BASE		f2000000
+#define CP11X_PCIEx_MEM_BASE(iface) ((iface == 0) ? 0xc0000000 : \
+						    0xe0000000 + ((iface - 1) * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) ((iface == 0) ? 0x1ff00000 : 0xf00000)
+#define CP11X_PCIE0_BASE	f2600000
+#define CP11X_PCIE1_BASE	f2620000
+#define CP11X_PCIE2_BASE	f2640000
+
+#include "armada-cp115.dtsi"
+
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
