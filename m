Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5A9E1A6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W0s+6WYoygOJLtKVZVg9I+l2RGFn4shq5sqHOe4qOHE=; b=QIqguD/hz+sIfc9eMcg2dq3ik3
	/eCE49rQgdjAulZLku6eNjI1URp+AuzbWgSihIOE2qlmCP1di8EP2JGw/pvnNd0TD1XJlnagO9sv/
	7LE5qbqITTiN3u9pmiYdkN4+uS2ej7SreRKte4qfe+0iv4rPU6pvFuYCtn1kjXrjLtJz3QQJ5xXWs
	fBFYEm+o81P5SlULkYNL1yLl5rHFdEm7s9kJIYC6Hp9vuqH335jx6lgMRt1HMCw8Uz0KxzlUpzW/N
	/gEvO7VNKQjwHaKTTG7TrKkm/7OujjWBbEC1dTwVPQoixQxrGFJa0Gy2FCJ6tU5uH5B+tN1x3DxTM
	Of1U0Rsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFp9-0005xL-1l; Wed, 23 Oct 2019 12:33:11 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlu-0002Hw-Pr
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:53 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id H0Vl2100E05gfCL010Vltl; Wed, 23 Oct 2019 14:29:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0000eR-Rl; Wed, 23 Oct 2019 14:29:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0003Dz-Qb; Wed, 23 Oct 2019 14:29:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/4] dt-bindings: clock: Add r8a77961 CPG Core Clock
 Definitions
Date: Wed, 23 Oct 2019 14:29:39 +0200
Message-Id: <20191023122941.12342-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122941.12342-1-geert+renesas@glider.be>
References: <20191023122941.12342-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052951_038817_2C4A55AB 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add all Clock Pulse Generator Core Clock Outputs for the Renesas R-Car
M3-W+ (R8A77961) SoC, as listed in Table 8.2b ("List of Clocks [R-Car
M3-W/R-Car M3-W+]") of the R-Car Series, 3rd Generation Hardware User's
Manual (Rev. 2.00, Jul. 31, 2019).  A gap is added for CSIREF, to
preserve compatibility with the definitions for R-Car M3-W (R8A77960).

Note that internal CPG clocks (S0, S1, S2, S3, SDSRC, SSPSRC, and POST2)
are not included, as they are used as internal clock sources only, and
never referenced from DT.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by.
---
 include/dt-bindings/clock/r8a77961-cpg-mssr.h | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 include/dt-bindings/clock/r8a77961-cpg-mssr.h

diff --git a/include/dt-bindings/clock/r8a77961-cpg-mssr.h b/include/dt-bindings/clock/r8a77961-cpg-mssr.h
new file mode 100644
index 0000000000000000..7921d785546d12ce
--- /dev/null
+++ b/include/dt-bindings/clock/r8a77961-cpg-mssr.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0+
+ *
+ * Copyright (C) 2019 Renesas Electronics Corp.
+ */
+#ifndef __DT_BINDINGS_CLOCK_R8A77961_CPG_MSSR_H__
+#define __DT_BINDINGS_CLOCK_R8A77961_CPG_MSSR_H__
+
+#include <dt-bindings/clock/renesas-cpg-mssr.h>
+
+/* r8a77961 CPG Core Clocks */
+#define R8A77961_CLK_Z			0
+#define R8A77961_CLK_Z2			1
+#define R8A77961_CLK_ZR			2
+#define R8A77961_CLK_ZG			3
+#define R8A77961_CLK_ZTR			4
+#define R8A77961_CLK_ZTRD2		5
+#define R8A77961_CLK_ZT			6
+#define R8A77961_CLK_ZX			7
+#define R8A77961_CLK_S0D1		8
+#define R8A77961_CLK_S0D2		9
+#define R8A77961_CLK_S0D3		10
+#define R8A77961_CLK_S0D4		11
+#define R8A77961_CLK_S0D6		12
+#define R8A77961_CLK_S0D8		13
+#define R8A77961_CLK_S0D12		14
+#define R8A77961_CLK_S1D1		15
+#define R8A77961_CLK_S1D2		16
+#define R8A77961_CLK_S1D4		17
+#define R8A77961_CLK_S2D1		18
+#define R8A77961_CLK_S2D2		19
+#define R8A77961_CLK_S2D4		20
+#define R8A77961_CLK_S3D1		21
+#define R8A77961_CLK_S3D2		22
+#define R8A77961_CLK_S3D4		23
+#define R8A77961_CLK_LB			24
+#define R8A77961_CLK_CL			25
+#define R8A77961_CLK_ZB3			26
+#define R8A77961_CLK_ZB3D2		27
+#define R8A77961_CLK_ZB3D4		28
+#define R8A77961_CLK_CR			29
+#define R8A77961_CLK_CRD2		30
+#define R8A77961_CLK_SD0H		31
+#define R8A77961_CLK_SD0			32
+#define R8A77961_CLK_SD1H		33
+#define R8A77961_CLK_SD1			34
+#define R8A77961_CLK_SD2H		35
+#define R8A77961_CLK_SD2			36
+#define R8A77961_CLK_SD3H		37
+#define R8A77961_CLK_SD3			38
+#define R8A77961_CLK_SSP2		39
+#define R8A77961_CLK_SSP1		40
+#define R8A77961_CLK_SSPRS		41
+#define R8A77961_CLK_RPC			42
+#define R8A77961_CLK_RPCD2		43
+#define R8A77961_CLK_MSO			44
+#define R8A77961_CLK_CANFD		45
+#define R8A77961_CLK_HDMI		46
+#define R8A77961_CLK_CSI0		47
+/* CLK_CSIREF was removed */
+#define R8A77961_CLK_CP			49
+#define R8A77961_CLK_CPEX		50
+#define R8A77961_CLK_R			51
+#define R8A77961_CLK_OSC			52
+
+#endif /* __DT_BINDINGS_CLOCK_R8A77961_CPG_MSSR_H__ */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
