Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04A18348B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE4ACI1rtENaRkR+DOkKuRKsQ/Tw4kCINDOO8PwDk8Q=; b=hLgEBWENYqiYfl
	51RBN2sRBd2EkeX/YzghX9uuCJTBzJWchOMnBMzqjjQ2DF3LCDJYnK+/xR0Hb5ij05Y9O8mXfOlC8
	ifHdiRO6mbRIuHRFH950Jt8pS3NGB/PPsWK0RpSzLZD0xSlTZcRYpKMnGbWcSEfpHui3q7Aa3aGKM
	tl/U81LoD43p/u1tAcxqxmvPUrXXYuNaZWz68aXwyUe407PD7mlcgxbCuP2XIWQ2QezKfizFks/Q3
	wML6ik75GxxLT2WEc7WdiQAYWI9cgLQEpyuPxvvA9h9GRFS+f7VMTxESQoTElB9KtN3VIA9UccYS8
	sAwUGS47mIrdvOAZgsdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0v2-0002ew-1x; Tue, 06 Aug 2019 14:58:32 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0s9-0007x1-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:55:35 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 585AEE0006;
 Tue,  6 Aug 2019 14:55:30 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 17/20] arm64: dts: marvell: Add support for Marvell CN9130 SoC
 support
Date: Tue,  6 Aug 2019 16:54:57 +0200
Message-Id: <20190806145500.24109-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_075533_339218_8892211C 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
