Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABB571AFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kI2x+Dv6QgBQV/k6dtakOGEHp/zM94U9DYx2b10Xagk=; b=UrY
	ufaHzFwmzER44HTPmLhv7VwV6uwcFYzvNiPkEG14+03QqWI9xTXphgJKce7Q+/g5DuY0mHsyyfu4P
	Qp4qYM89xWo9epZh9IewnBIlYVmr0D3Iqw2POagA6gRvRbnxnQY8lpgNQD6LuLaZsRBx/EKG/M0gL
	ZnTKZqo4CwdWIROs8gvzLjB+QW3c2MgPgGqp+9ZasSjPnNmUJ06DvTaz/w/sw3RjQDXBHPkc5kDc+
	DaSaBvD2dXsHxhRnlfYvw2/QTjThZuRBP+M2n7b3U9hCCi/LXHKvsNTR87FTtX5OTDMVtCuikJRpE
	abj3dawXs4BTgK+45/QIbAnaR6nA2/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwID-0000Hw-06; Tue, 23 Jul 2019 15:01:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwH2-0000Dd-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:00:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4B1B28;
 Tue, 23 Jul 2019 08:00:15 -0700 (PDT)
Received: from approximate.arm.com. (approximate.cambridge.arm.com
 [10.1.196.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 426253F71F;
 Tue, 23 Jul 2019 08:00:15 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [BOOTWRAPPER][PATCH v2] Make GICv3.1 extended ranges available to
 non-secure
Date: Tue, 23 Jul 2019 16:00:04 +0100
Message-Id: <20190723150004.3893-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_080016_738245_607A5963 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we have a GICv3.1-capable system, configure the EPPI/ESPI ranges
to be accessible from the non-secure world.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---

Notes:
    v2: Added GICR_TYPER_PPInum and GICD_TYPER_ESPI_range macros to
        make the loops more readable

 gic-v3.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/gic-v3.c b/gic-v3.c
index 476f703..ae2d2bc 100644
--- a/gic-v3.c
+++ b/gic-v3.c
@@ -17,6 +17,8 @@
 #define GICD_TYPER			0x4
 #define GICD_IGROUP0			0x80
 #define GICD_IGRPMOD0			0xd00
+#define GICD_IGROUPR0E			0x1000
+#define GICD_IGRPMODR0E			0x3400
 
 #define GICD_CTLR_EnableGrp0		(1 << 0)
 #define GICD_CTLR_EnableGrp1ns		(1 << 1)
@@ -24,10 +26,12 @@
 #define GICD_CTLR_ARE_S			(1 << 4)
 #define GICD_CTLR_ARE_NS		(1 << 5)
 #define GICD_TYPER_ITLineNumber		0x1f
+#define GICD_TYPER_ESPI_range(r)	(((r) >> 27) & 0x1f)
 
 #define GICR_WAKER			0x14
 
 #define GICR_TYPER			0x8
+#define GICR_TYPER_PPInum(r)		(((r) >> 27) & 0x1f)
 #define GICR_IGROUP0			0x80
 #define GICR_IGRPMOD0			0xD00
 
@@ -72,8 +76,10 @@ void gic_secure_init_primary(void)
 		typer = raw_readl(gicr_ptr + GICR_TYPER);
 
 		gicr_ptr += 0x10000; /* Go to SGI_Base */
-		raw_writel(~0x0, gicr_ptr + GICR_IGROUP0);
-		raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0);
+		for (i = 0; i < (1 + GICR_TYPER_PPInum(typer)); i++) {
+			raw_writel(~0x0, gicr_ptr + GICR_IGROUP0 + i * 4);
+			raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0 + i * 4);
+		}
 
 		/* Next redist */
 		gicr_ptr += 0x10000;
@@ -87,6 +93,10 @@ void gic_secure_init_primary(void)
 		raw_writel(~0x0, gicd_base + GICD_IGROUP0 + i * 4);
 		raw_writel(0x0, gicd_base + GICD_IGRPMOD0 + i * 4);
 	}
+	for (i = 0; i < GICD_TYPER_ESPI_range(typer); i++) {
+		raw_writel(~0x0, gicd_base + GICD_IGROUPR0E + i * 4);
+		raw_writel(0x0, gicd_base + GICD_IGRPMODR0E + i * 4);
+	}
 }
 
 void gic_secure_init(void)
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
