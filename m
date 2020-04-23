Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39D21B665F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 23:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AIEJvQojGo7EQ2/aASA9RXFQ5SlRT6f5qtDPNHZ9Mhg=; b=sP0Gzj2dZOD9HxnM2gj9MrFVcl
	OCHdE2+hqlNdgTRcGOq4rs/7qxoxh/+j5A7BcH6Jby1LubwLGmWGjJTD3BwKL3Nig/h9Ub1uD1Ecs
	eNt/SfVGa3wEAKEEk9dXrbF4PyrhP6apWmr7t3hVxVXXVgUBAsqwoJlZTojvOTtpDmfYWcmwS8vrW
	zP3RfHFAgjJAYDppfFB2WaFesdnwnKxDnpv4Vvm9B3K/ECvJwHX2vEdZWxD6iYURGXGoUHTOpnEqY
	KAipm0IjyainFW+Jo6BCdx4E1MDaLC72C/fGklmjCkp8lGrKVTjhM1aolXh9QjxDsSemiJfm5He9l
	YXnJaXvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRjbf-00084r-4r; Thu, 23 Apr 2020 21:42:03 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRjat-0007Y4-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 21:41:17 +0000
X-IronPort-AV: E=Sophos;i="5.73,309,1583161200"; d="scan'208";a="45553076"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 24 Apr 2020 06:41:15 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id ACEBC400C420;
 Fri, 24 Apr 2020 06:41:11 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 02/10] dt-bindings: power: rcar-sysc: Add r8a7742 power domain
 index macros
Date: Thu, 23 Apr 2020 22:40:42 +0100
Message-Id: <1587678050-23468-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_144115_967427_8D314CCC 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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

Add power domain indices for RZ/G1H (R8A7742) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
---
 include/dt-bindings/power/r8a7742-sysc.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 include/dt-bindings/power/r8a7742-sysc.h

diff --git a/include/dt-bindings/power/r8a7742-sysc.h b/include/dt-bindings/power/r8a7742-sysc.h
new file mode 100644
index 0000000..1b1bd3c
--- /dev/null
+++ b/include/dt-bindings/power/r8a7742-sysc.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2020 Renesas Electronics Corp.
+ */
+#ifndef __DT_BINDINGS_POWER_R8A7742_SYSC_H__
+#define __DT_BINDINGS_POWER_R8A7742_SYSC_H__
+
+/*
+ * These power domain indices match the numbers of the interrupt bits
+ * representing the power areas in the various Interrupt Registers
+ * (e.g. SYSCISR, Interrupt Status Register)
+ */
+
+#define R8A7742_PD_CA15_CPU0		 0
+#define R8A7742_PD_CA15_CPU1		 1
+#define R8A7742_PD_CA15_CPU2		 2
+#define R8A7742_PD_CA15_CPU3		 3
+#define R8A7742_PD_CA7_CPU0		 5
+#define R8A7742_PD_CA7_CPU1		 6
+#define R8A7742_PD_CA7_CPU2		 7
+#define R8A7742_PD_CA7_CPU3		 8
+#define R8A7742_PD_CA15_SCU		12
+#define R8A7742_PD_RGX			20
+#define R8A7742_PD_CA7_SCU		21
+
+/* Always-on power area */
+#define R8A7742_PD_ALWAYS_ON		32
+
+#endif /* __DT_BINDINGS_POWER_R8A7742_SYSC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
