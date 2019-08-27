Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509529EC43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cf9Zkp8VgCHzQl3qguEwNCsci/zBhGn9oQfLlOwpGLg=; b=kqGkJfZj4wukLk91KS9hhKQLFR
	AnujsLQ94DsynnbavBv4s36JhSijsd+5+i3ygJsyottCSiMX4yeVdnUi3pV9t+Wk6ZciLcnysOpna
	3JVGdfxoviauRTDcDEtli0KXNqfoqmJ6Zr/STSjbEPtxZfJQzQrJ8EzW2y/kHndq01qcmfxAKukAA
	6SwO3EJygO15BAE3H30rEpiktA4+TTQSkViSD8heOKLIzEBXS4/kypoww0rO9FWZJ9iVpGuDQ3e3Q
	DiQngVijAJDO1j/no/O4grmXkTWST5yZGxvuwnFWFxhj68ryhrEdgaoVOw5+oFRo4i3CGjxLko9xN
	sonHlpuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dFM-0005l4-NI; Tue, 27 Aug 2019 15:19:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dEn-0005MD-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:18:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0CCC337;
 Tue, 27 Aug 2019 08:18:24 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4B6CD3F59C;
 Tue, 27 Aug 2019 08:18:24 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: smp: Don't enter kernel with NULL stack pointer or
 task struct
Date: Tue, 27 Aug 2019 16:18:14 +0100
Message-Id: <20190827151815.2160-3-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827151815.2160-1-will@kernel.org>
References: <20190827151815.2160-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_081825_946691_7514A7F9 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although SMP bringup is inherently racy, we can significantly reduce
the window during which secondary CPUs can unexpectedly enter the
kernel by sanity checking the 'stack' and 'task' fields of the
'secondary_data' structure. If the booting CPU gave up waiting for us,
then they will have been cleared to NULL and we should spin in a WFE; WFI
loop instead.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/head.S | 8 ++++++++
 arch/arm64/kernel/smp.c  | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 2cdacd1c141b..0baadf335172 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -724,14 +724,22 @@ __secondary_switched:
 
 	adr_l	x0, secondary_data
 	ldr	x1, [x0, #CPU_BOOT_STACK]	// get secondary_data.stack
+	cbz	x1, __secondary_too_slow
 	mov	sp, x1
 	ldr	x2, [x0, #CPU_BOOT_TASK]
+	cbz	x2, __secondary_too_slow
 	msr	sp_el0, x2
 	mov	x29, #0
 	mov	x30, #0
 	b	secondary_start_kernel
 ENDPROC(__secondary_switched)
 
+__secondary_too_slow:
+	wfe
+	wfi
+	b	__secondary_too_slow
+ENDPROC(__secondary_too_slow)
+
 /*
  * The booting CPU updates the failed status @__early_cpu_boot_status,
  * with MMU turned off.
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 63c7a7682e93..1f8aeb77cba5 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -136,6 +136,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
+	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 	status = READ_ONCE(secondary_data.status);
 	if (ret && status) {
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
