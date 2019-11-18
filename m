Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76476100430
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iS4WtBrVobHNbFlIxm8t6ED9iQD9Srwvoas0/ZzE4Pg=; b=Lw+Uf1WtUhbcc5
	gHLblI6tUhDu3lFN8mKobNSwgOasuJNEjFWuK9LI2uonemxJ4h/fHp1CqIvbrDc7w5OPmvhdUCje7
	10dTOnAdfTZgC6c3YwK80Hhgj1TrKGEgXFlUWZUmRF3dBGsiHiLWGpgjPE7XkAfgV0XBf9fVkGnYT
	e2SrqxqdNXigT5wBCUWEzvbWVK92eH6KyT11V6hKkL061wM3qT/r6Pk1P9i6p2soBy+xuGCcK2TKP
	1sarWi2Vlv25tTJXUrZWcQmTokE5F7LJtToaO6+OSaclaUsxf5llHsy2uoI+FYGwssPPxMU0qaern
	jQcM6ymF3dOMEENcm+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfFl-0000vj-Ts; Mon, 18 Nov 2019 11:31:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8S-0001Ev-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id i12so18993267wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E3PC0GBgcRJcw1cBz/t/6fNHbK3513aW1cpvhBViR+w=;
 b=NLWiHYfdgWWXoV8A9VV3UYiRSXBBAkd9NQ0Ptfjbir+1JcFK0m5QxGmHv7/bel2mH/
 sBcth03COKtDEsFC26Dkh0oO18P0YC5xAHVVGG22Cqgn9bVD4H8oF/d2wcM+4anWubhD
 wYGrwwrm1zz4nlIIhyBg7CsZhkcG2nKvcoLsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E3PC0GBgcRJcw1cBz/t/6fNHbK3513aW1cpvhBViR+w=;
 b=F3kQjnlOlsCJvuLqdARrKJHH8oXVcmM0jIuCDh30zpZMh6rzey77NFmeH3wYKOgCVj
 NFJYvSsAxLxwJRTuj+wH4lZdPALqZiF008klmqyvSgmjsGK4CiwEsYnh4ssdgWKdY9NI
 t55uEbtqt5pvitKewkSlhSU44CICvTfM2sK0nb84gzHH0pQpqCc7LBDWlIyGrpgmEVuA
 c0Mmq6sx82DZUc+i15AZapRsK3dcCR0PsPqIVuG17helqako8DLs4De4qPMoqPUIzmKB
 KZtZVFBBniuvHBvUask+PM1Tduqu0DuXTr/4Rru4dVNuXv/jND4ROABGrYGLSY00MHp/
 1Q1Q==
X-Gm-Message-State: APjAAAUhN7w6iUhH/MuBpN9DXMCiKxxWCLbHfAH7c2xozl1nvP+cHnVb
 v/azjNDXKI8N6ao6LHLAiewxLA==
X-Google-Smtp-Source: APXvYqxoOW3iLoWrpFoq6/8U+4gMCkqVWlB+dTiKcZvJpqg6V9sfX1s2wWNq1gK9/hlRtkZ0PMxHzA==
X-Received: by 2002:adf:e68d:: with SMTP id r13mr31414042wrm.199.1574076238123; 
 Mon, 18 Nov 2019 03:23:58 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:57 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 21/48] soc: fsl: qe: merge qe_ic.h headers into qe_ic.c
Date: Mon, 18 Nov 2019 12:22:57 +0100
Message-Id: <20191118112324.22725-22-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032400_389230_99AB6D33 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The public qe_ic.h header is no longer included by anything but
qe_ic.c. Merge both headers into qe_ic.c, and drop the unused
constants.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 52 +++++++++++++++++++-
 drivers/soc/fsl/qe/qe_ic.h | 99 --------------------------------------
 include/soc/fsl/qe/qe_ic.h | 56 ---------------------
 3 files changed, 50 insertions(+), 157 deletions(-)
 delete mode 100644 drivers/soc/fsl/qe/qe_ic.h
 delete mode 100644 include/soc/fsl/qe/qe_ic.h

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4832884da5bb..0dd5bdb04a14 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -15,6 +15,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/errno.h>
+#include <linux/irq.h>
 #include <linux/reboot.h>
 #include <linux/slab.h>
 #include <linux/stddef.h>
@@ -25,9 +26,56 @@
 #include <asm/irq.h>
 #include <asm/io.h>
 #include <soc/fsl/qe/qe.h>
-#include <soc/fsl/qe/qe_ic.h>
 
-#include "qe_ic.h"
+#define NR_QE_IC_INTS		64
+
+/* QE IC registers offset */
+#define QEIC_CICR		0x00
+#define QEIC_CIVEC		0x04
+#define QEIC_CIPXCC		0x10
+#define QEIC_CIPYCC		0x14
+#define QEIC_CIPWCC		0x18
+#define QEIC_CIPZCC		0x1c
+#define QEIC_CIMR		0x20
+#define QEIC_CRIMR		0x24
+#define QEIC_CIPRTA		0x30
+#define QEIC_CIPRTB		0x34
+#define QEIC_CHIVEC		0x60
+
+struct qe_ic {
+	/* Control registers offset */
+	u32 __iomem *regs;
+
+	/* The remapper for this QEIC */
+	struct irq_domain *irqhost;
+
+	/* The "linux" controller struct */
+	struct irq_chip hc_irq;
+
+	/* VIRQ numbers of QE high/low irqs */
+	unsigned int virq_high;
+	unsigned int virq_low;
+};
+
+/*
+ * QE interrupt controller internal structure
+ */
+struct qe_ic_info {
+	/* Location of this source at the QIMR register */
+	u32	mask;
+
+	/* Mask register offset */
+	u32	mask_reg;
+
+	/*
+	 * For grouped interrupts sources - the interrupt code as
+	 * appears at the group priority register
+	 */
+	u8	pri_code;
+
+	/* Group priority register offset */
+	u32	pri_reg;
+};
 
 static DEFINE_RAW_SPINLOCK(qe_ic_lock);
 
diff --git a/drivers/soc/fsl/qe/qe_ic.h b/drivers/soc/fsl/qe/qe_ic.h
deleted file mode 100644
index 9420378d9b6b..000000000000
--- a/drivers/soc/fsl/qe/qe_ic.h
+++ /dev/null
@@ -1,99 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * drivers/soc/fsl/qe/qe_ic.h
- *
- * QUICC ENGINE Interrupt Controller Header
- *
- * Copyright (C) 2006 Freescale Semiconductor, Inc. All rights reserved.
- *
- * Author: Li Yang <leoli@freescale.com>
- * Based on code from Shlomi Gridish <gridish@freescale.com>
- */
-#ifndef _POWERPC_SYSDEV_QE_IC_H
-#define _POWERPC_SYSDEV_QE_IC_H
-
-#include <soc/fsl/qe/qe_ic.h>
-
-#define NR_QE_IC_INTS		64
-
-/* QE IC registers offset */
-#define QEIC_CICR		0x00
-#define QEIC_CIVEC		0x04
-#define QEIC_CRIPNR		0x08
-#define QEIC_CIPNR		0x0c
-#define QEIC_CIPXCC		0x10
-#define QEIC_CIPYCC		0x14
-#define QEIC_CIPWCC		0x18
-#define QEIC_CIPZCC		0x1c
-#define QEIC_CIMR		0x20
-#define QEIC_CRIMR		0x24
-#define QEIC_CICNR		0x28
-#define QEIC_CIPRTA		0x30
-#define QEIC_CIPRTB		0x34
-#define QEIC_CRICR		0x3c
-#define QEIC_CHIVEC		0x60
-
-/* Interrupt priority registers */
-#define CIPCC_SHIFT_PRI0	29
-#define CIPCC_SHIFT_PRI1	26
-#define CIPCC_SHIFT_PRI2	23
-#define CIPCC_SHIFT_PRI3	20
-#define CIPCC_SHIFT_PRI4	13
-#define CIPCC_SHIFT_PRI5	10
-#define CIPCC_SHIFT_PRI6	7
-#define CIPCC_SHIFT_PRI7	4
-
-/* CICR priority modes */
-#define CICR_GWCC		0x00040000
-#define CICR_GXCC		0x00020000
-#define CICR_GYCC		0x00010000
-#define CICR_GZCC		0x00080000
-#define CICR_GRTA		0x00200000
-#define CICR_GRTB		0x00400000
-#define CICR_HPIT_SHIFT		8
-#define CICR_HPIT_MASK		0x00000300
-#define CICR_HP_SHIFT		24
-#define CICR_HP_MASK		0x3f000000
-
-/* CICNR */
-#define CICNR_WCC1T_SHIFT	20
-#define CICNR_ZCC1T_SHIFT	28
-#define CICNR_YCC1T_SHIFT	12
-#define CICNR_XCC1T_SHIFT	4
-
-/* CRICR */
-#define CRICR_RTA1T_SHIFT	20
-#define CRICR_RTB1T_SHIFT	28
-
-/* Signal indicator */
-#define SIGNAL_MASK		3
-#define SIGNAL_HIGH		2
-#define SIGNAL_LOW		0
-
-struct qe_ic {
-	/* Control registers offset */
-	u32 __iomem *regs;
-
-	/* The remapper for this QEIC */
-	struct irq_domain *irqhost;
-
-	/* The "linux" controller struct */
-	struct irq_chip hc_irq;
-
-	/* VIRQ numbers of QE high/low irqs */
-	unsigned int virq_high;
-	unsigned int virq_low;
-};
-
-/*
- * QE interrupt controller internal structure
- */
-struct qe_ic_info {
-	u32	mask;	  /* location of this source at the QIMR register. */
-	u32	mask_reg; /* Mask register offset */
-	u8	pri_code; /* for grouped interrupts sources - the interrupt
-			     code as appears at the group priority register */
-	u32	pri_reg;  /* Group priority register offset */
-};
-
-#endif /* _POWERPC_SYSDEV_QE_IC_H */
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
deleted file mode 100644
index 70bb5a0f6535..000000000000
--- a/include/soc/fsl/qe/qe_ic.h
+++ /dev/null
@@ -1,56 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * Copyright (C) 2006 Freescale Semiconductor, Inc. All rights reserved.
- *
- * Authors: 	Shlomi Gridish <gridish@freescale.com>
- * 		Li Yang <leoli@freescale.com>
- *
- * Description:
- * QE IC external definitions and structure.
- */
-#ifndef _ASM_POWERPC_QE_IC_H
-#define _ASM_POWERPC_QE_IC_H
-
-#include <linux/irq.h>
-
-struct device_node;
-struct qe_ic;
-
-#define NUM_OF_QE_IC_GROUPS	6
-
-/* Flags when we init the QE IC */
-#define QE_IC_SPREADMODE_GRP_W			0x00000001
-#define QE_IC_SPREADMODE_GRP_X			0x00000002
-#define QE_IC_SPREADMODE_GRP_Y			0x00000004
-#define QE_IC_SPREADMODE_GRP_Z			0x00000008
-#define QE_IC_SPREADMODE_GRP_RISCA		0x00000010
-#define QE_IC_SPREADMODE_GRP_RISCB		0x00000020
-
-#define QE_IC_LOW_SIGNAL			0x00000100
-#define QE_IC_HIGH_SIGNAL			0x00000200
-
-#define QE_IC_GRP_W_PRI0_DEST_SIGNAL_HIGH	0x00001000
-#define QE_IC_GRP_W_PRI1_DEST_SIGNAL_HIGH	0x00002000
-#define QE_IC_GRP_X_PRI0_DEST_SIGNAL_HIGH	0x00004000
-#define QE_IC_GRP_X_PRI1_DEST_SIGNAL_HIGH	0x00008000
-#define QE_IC_GRP_Y_PRI0_DEST_SIGNAL_HIGH	0x00010000
-#define QE_IC_GRP_Y_PRI1_DEST_SIGNAL_HIGH	0x00020000
-#define QE_IC_GRP_Z_PRI0_DEST_SIGNAL_HIGH	0x00040000
-#define QE_IC_GRP_Z_PRI1_DEST_SIGNAL_HIGH	0x00080000
-#define QE_IC_GRP_RISCA_PRI0_DEST_SIGNAL_HIGH	0x00100000
-#define QE_IC_GRP_RISCA_PRI1_DEST_SIGNAL_HIGH	0x00200000
-#define QE_IC_GRP_RISCB_PRI0_DEST_SIGNAL_HIGH	0x00400000
-#define QE_IC_GRP_RISCB_PRI1_DEST_SIGNAL_HIGH	0x00800000
-#define QE_IC_GRP_W_DEST_SIGNAL_SHIFT		(12)
-
-/* QE interrupt sources groups */
-enum qe_ic_grp_id {
-	QE_IC_GRP_W = 0,	/* QE interrupt controller group W */
-	QE_IC_GRP_X,		/* QE interrupt controller group X */
-	QE_IC_GRP_Y,		/* QE interrupt controller group Y */
-	QE_IC_GRP_Z,		/* QE interrupt controller group Z */
-	QE_IC_GRP_RISCA,	/* QE interrupt controller RISC group A */
-	QE_IC_GRP_RISCB		/* QE interrupt controller RISC group B */
-};
-
-#endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
