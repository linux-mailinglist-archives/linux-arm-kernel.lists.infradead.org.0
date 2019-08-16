Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D79018B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J5QsZWL4CyDq+hUQMgbikZ7T8fTaNMcU6rXhcnsGAmc=; b=MHCuBcKiV66J9vb6WYkYxBiK32
	xaPEdZVp6vJHn2lxEGbEgncX7LSTxJAh0Um9lkfNsWT19ITonH8VEIPkq+OJJupNU9LogcrJMGYdF
	83h6G5gIlJinQEXLrBlbBr/ClH4pHKIJiLOHR3ttMlhYd+7ScuxA9hH2WHXl0tPuf6TtYa2Eb3iVy
	jL0l6uEDi6/cB+005KLHTq9MCUIIrwbgLulRRB6zbPNJXmFzWDCU471Tm/sn4yvnhrnnheGBLuMYt
	HCcelhuWU6qJmT7toL7uTkRAS/QWDhNLCY8zki/XcIb/1lwp8YrtONncm46n2MJbbDHoYgeAlJLdA
	mNazvKAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybM7-000169-E8; Fri, 16 Aug 2019 12:29:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHu-0004Np-Qd
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:25:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABD84344;
 Fri, 16 Aug 2019 05:24:58 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72F8F3F706;
 Fri, 16 Aug 2019 05:24:57 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 13/18] arm64: sleep: Prevent stack frame warnings from objtool
Date: Fri, 16 Aug 2019 13:23:58 +0100
Message-Id: <20190816122403.14994-14-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052500_063843_A2E8112D 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This code doesn't respect the Arm PCS but it is intended this
way. Adapting it to respect the PCS would result in altering the
behaviour.

In order to suppress objtool's warnings, we setup a stack frame
for __cpu_suspend_enter and annotate cpu_resume and _cpu_resume
as having non-standard stack frames.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/sleep.S | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index f5b04dd8a710..55c7c099d32c 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -1,5 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/errno.h>
+#include <linux/frame.h>
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
@@ -90,6 +91,7 @@ ENTRY(__cpu_suspend_enter)
 	str	x0, [x1]
 	add	x0, x0, #SLEEP_STACK_DATA_SYSTEM_REGS
 	stp	x29, lr, [sp, #-16]!
+	mov	x29, sp
 	bl	cpu_do_suspend
 	ldp	x29, lr, [sp], #16
 	mov	x0, #1
@@ -146,3 +148,6 @@ ENTRY(_cpu_resume)
 	mov	x0, #0
 	ret
 ENDPROC(_cpu_resume)
+
+	asm_stack_frame_non_standard cpu_resume
+	asm_stack_frame_non_standard _cpu_resume
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
