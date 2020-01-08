Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB9B134B28
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xjuynAlolSc1R5QeBVd2VhEahygS6ol9TnJlp/RACH4=; b=cakDYElsSnnL3htH6uE42yiGib
	xiwsBuYvC6Lf7lBf+6kUVPHvzWKs1ODgCF2hgEKf0sNWAnw3H5wPgjYobdQDKFSPXBtDh4tDx771H
	WDq3Y74EmLmdvlAl1bCEYQDRfgznsVFywSs8JHA1aEOmjyNb73p/es4AtTe6oH2YmHiXbmv1lOppa
	eVpjAY0JLvM0ytChSghaISfsdyumzpdzg5quAKSPPGj5aImR9OcsFvwuJ7e2mI4LmhX3GHdLCkyu2
	XrH97GpOTH6HprnCg8Xqfz+TOmOep2U9b6JyvXZrVsvUIZMAJI4tHWbangDUtUCNvha1GweDMo06Q
	vRvLTbAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGaQ-0004OX-6I; Wed, 08 Jan 2020 19:01:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGWJ-0007td-4b
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8A871FB;
 Wed,  8 Jan 2020 10:57:30 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 24C563F534;
 Wed,  8 Jan 2020 10:57:29 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 17/17] arm64: entry: cleanup sp_el0 manipulation
Date: Wed,  8 Jan 2020 18:56:34 +0000
Message-Id: <20200108185634.1163-18-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105731_742233_E92E4AA9 
X-CRM114-Status: GOOD (  10.19  )
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
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
them together to make the code clearer and minimize ifdeffery.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry.S | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 537b44c413df..40d1cd8fb4c6 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -152,6 +152,7 @@ alternative_cb_end
 	clear_gp_regs
 	mrs	x21, sp_el0
 	ldr_this_cpu	tsk, __entry_task, x20
+	msr	sp_el0, tsk
 
 	apply_ssbd 1, x22, x23
 
@@ -208,13 +209,6 @@ alternative_else_nop_endif
 
 	stp	x22, x23, [sp, #S_PC]
 
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
