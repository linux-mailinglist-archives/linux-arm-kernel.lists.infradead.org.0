Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1087428132
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=METWqdBdk4g6i82ZpuQMHRV5j5gFNqVB14oX3B7H1+M=; b=gxKO/si9NYdubN
	V4scBxg9oKUMzQMXcneyh+A7SnkpuJFwKnGTcPuHQmlGVMRhLWD9roLvnESV/E0DpA61x6TZsf7Eg
	ZG62BUGvDpiemV/gFMjjNC2RI836tEc9JtplkUz5lOQItWBsubrqZXN24j7Y0FL0oA8hVBuhT5Xb1
	vsfAQwMVVwQ0Ht9a0gJ8r7OqZMLaRpF0NW/Eo/kr0943N5iO67Bb+BikBalTiaPngSk00xwbnBXGE
	59ypAeBy+5vvnJijCKU6Jsgd38L0uRDvAQLZ7B0+zcUgrEQq6JZthNKKfKnRgKeDYRcsY4YZG/mtG
	rK/jF5IvpbPfWe/zRPmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpg1-0006i1-JF; Thu, 23 May 2019 15:30:41 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpfu-0006hd-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:30:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 499A680D;
 Thu, 23 May 2019 08:30:33 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 39AC63F690;
 Thu, 23 May 2019 08:30:32 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH stable 4.9] arm64: Save and restore OSDLR_EL1 across
 suspend/resume
Date: Thu, 23 May 2019 16:27:33 +0100
Message-Id: <20190523152733.28069-1-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <155809593723029@kroah.com>
References: <155809593723029@kroah.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083034_614830_E45A8BC8 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 827a108e354db633698f0b4a10c1ffd2b1f8d1d0 upstream

When the CPU comes out of suspend, the firmware may have modified the OS
Double Lock Register. Save it in an unused slot of cpu_suspend_ctx, and
restore it on resume.

Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
Modified for v4.9 backport: 623b476fc815 and 6d99b68933fb are missing in
v4.9, but the conflict is easily resolved.

Tested on Juno with cpuidle.
---
 arch/arm64/mm/proc.S | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index f5fde8d389c9..3ceec224d3d2 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -64,17 +64,18 @@ ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
 	mrs	x3, tpidrro_el0
 	mrs	x4, contextidr_el1
-	mrs	x5, cpacr_el1
-	mrs	x6, tcr_el1
-	mrs	x7, vbar_el1
-	mrs	x8, mdscr_el1
-	mrs	x9, oslsr_el1
-	mrs	x10, sctlr_el1
+	mrs	x5, osdlr_el1
+	mrs	x6, cpacr_el1
+	mrs	x7, tcr_el1
+	mrs	x8, vbar_el1
+	mrs	x9, mdscr_el1
+	mrs	x10, oslsr_el1
+	mrs	x11, sctlr_el1
 	stp	x2, x3, [x0]
-	stp	x4, xzr, [x0, #16]
-	stp	x5, x6, [x0, #32]
-	stp	x7, x8, [x0, #48]
-	stp	x9, x10, [x0, #64]
+	stp	x4, x5, [x0, #16]
+	stp	x6, x7, [x0, #32]
+	stp	x8, x9, [x0, #48]
+	stp	x10, x11, [x0, #64]
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -96,8 +97,8 @@ ENTRY(cpu_do_resume)
 	msr	cpacr_el1, x6
 
 	/* Don't change t0sz here, mask those bits when restoring */
-	mrs	x5, tcr_el1
-	bfi	x8, x5, TCR_T0SZ_OFFSET, TCR_TxSZ_WIDTH
+	mrs	x7, tcr_el1
+	bfi	x8, x7, TCR_T0SZ_OFFSET, TCR_TxSZ_WIDTH
 
 	msr	tcr_el1, x8
 	msr	vbar_el1, x9
@@ -115,6 +116,7 @@ ENTRY(cpu_do_resume)
 	/*
 	 * Restore oslsr_el1 by writing oslar_el1
 	 */
+	msr	osdlr_el1, x5
 	ubfx	x11, x11, #1, #1
 	msr	oslar_el1, x11
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
