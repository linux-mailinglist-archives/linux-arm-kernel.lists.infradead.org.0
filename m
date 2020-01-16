Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B4913F497
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZkscfcxSsRO/QGFE956TdWv9oT0VlpWv0rwMF4G3vPY=; b=mmOfd0uR6liDZpgomT/GOV2CFK
	Fx5KD4Z8yDPCcJVbeEi5kBIft3UT1lkyRHfStjmPq/eczZ/Y+WoyKTY0sTUlUCnyelKZQHhuWB671
	C7RY9AYaS6Cybq5lKc9tn4xeilstFy9peWb9ohLSrbBeS9lUR+CWEF+jpzOuv9q43+FIIw+EHNhUS
	McLFW+4RVHJ2IBJ29LLcJHD7r9QrJigt1/U/lAt32vr73fQZ4KTsWcOTtYIzVW4NEpPwzPSrXxY6O
	71GjZv2e3txhjkZWsvCobo3yyQRiZei5eKy8J1tvMfoQc5/NQGZDMCZYBG7/u3ygIOtl/wb+jRUin
	BpF9cq3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAEz-00085m-DG; Thu, 16 Jan 2020 18:51:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9zv-0005wU-N1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 508FB143B;
 Thu, 16 Jan 2020 10:36:01 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6BE823F534;
 Thu, 16 Jan 2020 10:36:00 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH 5/5] arm64: entry: cleanup sp_el0 manipulation
Date: Thu, 16 Jan 2020 18:35:48 +0000
Message-Id: <20200116183548.39411-6-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200116183548.39411-1-mark.rutland@arm.com>
References: <20200116183548.39411-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103603_891338_AD5536F7 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, james.morse@arm.com, anshuman.khandual@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel stashes the current task struct in sp_el0 so that this can be
acquired consistently/cheaply when required. When we take an exception
from EL0 we have to:

1) stash the original sp_el0 value
2) find the current task
3) update sp_el0 with the current task pointer

Currently steps #1 and #2 occur in one place, and step #3 a while later.
As the value of sp_el0 is immaterial between these points, let's move
them together to make the code clearer and minimize ifdeffery. This
necessitates moving the comment for MDSCR_EL1.SS.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry.S | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 7c6a0a41676f..3d7a9c0ab844 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -167,9 +167,13 @@ alternative_cb_end
 	.if	\el == 0
 	clear_gp_regs
 	mrs	x21, sp_el0
-	ldr_this_cpu	tsk, __entry_task, x20	// Ensure MDSCR_EL1.SS is clear,
-	ldr	x19, [tsk, #TSK_TI_FLAGS]	// since we can unmask debug
-	disable_step_tsk x19, x20		// exceptions when scheduling.
+	ldr_this_cpu	tsk, __entry_task, x20
+	msr	sp_el0, tsk
+
+	// Ensure MDSCR_EL1.SS is clear, since we can unmask debug exceptions
+	// when scheduling.
+	ldr	x19, [tsk, #TSK_TI_FLAGS]
+	disable_step_tsk x19, x20
 
 	apply_ssbd 1, x22, x23
 
@@ -232,13 +236,6 @@ alternative_else_nop_endif
 	str	w21, [sp, #S_SYSCALLNO]
 	.endif
 
-	/*
-	 * Set sp_el0 to current thread_info.
-	 */
-	.if	\el == 0
-	msr	sp_el0, tsk
-	.endif
-
 	/* Save pmr */
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	mrs_s	x20, SYS_ICC_PMR_EL1
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
