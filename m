Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BC71B6678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 23:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bPQ0aisnnz40fRNsDEH8GdPH0EpnKWUmQMBpFtDikQI=; b=DMvEIlEL/Fxe+GWP2/Et1k9b7r
	vR9yuydByZy1+QyCOFCRkgIl/U1LcuWWNM0QkKyVrYhrNdIy3X88JeRtuBtu13NFOtE2XbsDkSjzQ
	kayCDmgF6OGa5cgS7OZUDvVM2TDSxfuTq+YcdKYFDjSDaAbeV4KfURn+YRXOhtokF11riMFKdVcgc
	X/XCpZuq0Fhus73G0URhelSVlCFIDxCeFifvJbnUPeRLaFGSMmA8ijX8RlbElGJAjhutUupX27rQw
	bPn4EeIBd1+nq3VLwvIhXMPCDdpTr8T3grY9/4FAtMt4kLdoZvv1nkPWlEYI9TOJzf7ajgWpcN4MN
	EZR84CQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRjd3-0000wN-BW; Thu, 23 Apr 2020 21:43:29 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRjbE-0007y4-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 21:41:38 +0000
X-IronPort-AV: E=Sophos;i="5.73,309,1583161200"; d="scan'208";a="45339795"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 24 Apr 2020 06:41:35 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id A43AF4004BB2;
 Fri, 24 Apr 2020 06:41:31 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 07/10] clk: renesas: Add r8a7742 CPG Core Clock Definitions
Date: Thu, 23 Apr 2020 22:40:47 +0100
Message-Id: <1587678050-23468-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_144136_692110_DFFEBA3B 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add all RZ/G1H Clock Pulse Generator Core Clock Outputs, as listed in
Table 7.2a ("List of Clocks [RZ/G1H]") of the RZ/G1 Hardware User's
Manual.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
---
 include/dt-bindings/clock/r8a7742-cpg-mssr.h | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 include/dt-bindings/clock/r8a7742-cpg-mssr.h

diff --git a/include/dt-bindings/clock/r8a7742-cpg-mssr.h b/include/dt-bindings/clock/r8a7742-cpg-mssr.h
new file mode 100644
index 0000000..e68191c
--- /dev/null
+++ b/include/dt-bindings/clock/r8a7742-cpg-mssr.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0+
+ *
+ * Copyright (C) 2020 Renesas Electronics Corp.
+ */
+#ifndef __DT_BINDINGS_CLOCK_R8A7742_CPG_MSSR_H__
+#define __DT_BINDINGS_CLOCK_R8A7742_CPG_MSSR_H__
+
+#include <dt-bindings/clock/renesas-cpg-mssr.h>
+
+/* r8a7742 CPG Core Clocks */
+#define R8A7742_CLK_Z		0
+#define R8A7742_CLK_Z2		1
+#define R8A7742_CLK_ZG		2
+#define R8A7742_CLK_ZTR		3
+#define R8A7742_CLK_ZTRD2	4
+#define R8A7742_CLK_ZT		5
+#define R8A7742_CLK_ZX		6
+#define R8A7742_CLK_ZS		7
+#define R8A7742_CLK_HP		8
+#define R8A7742_CLK_B		9
+#define R8A7742_CLK_LB		10
+#define R8A7742_CLK_P		11
+#define R8A7742_CLK_CL		12
+#define R8A7742_CLK_M2		13
+#define R8A7742_CLK_ZB3		14
+#define R8A7742_CLK_ZB3D2	15
+#define R8A7742_CLK_DDR		16
+#define R8A7742_CLK_SDH		17
+#define R8A7742_CLK_SD0		18
+#define R8A7742_CLK_SD1		19
+#define R8A7742_CLK_SD2		20
+#define R8A7742_CLK_SD3		21
+#define R8A7742_CLK_MMC0	22
+#define R8A7742_CLK_MMC1	23
+#define R8A7742_CLK_MP		24
+#define R8A7742_CLK_QSPI	25
+#define R8A7742_CLK_CP		26
+#define R8A7742_CLK_RCAN	27
+#define R8A7742_CLK_R		28
+#define R8A7742_CLK_OSC		29
+
+#endif /* __DT_BINDINGS_CLOCK_R8A7742_CPG_MSSR_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
