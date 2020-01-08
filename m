Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B85134B24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4vnoWqJkpmOdc1e7kyfb8UhSncEb78Q5AGGZGthgJzA=; b=TVzzMwIihM4RoT7yWpe63qubut
	u3jt75wy7snbMEdmnTBA4iarwTkCbcM2iB4/PJCDNYTQv1R12kdk534VW+Q6mso7GyX7yA6HTC6VU
	oPBBzHLidZPVt7X7evkLq4LdSPN1ygWT5+pGLpE0t5CS0BDl7SNi5m2FV+F/WE/YvnSYCaTCQwzyw
	MheOgsOy5XO8o0yZOxdDpeYbs16oLDh1uoKCUEkvhKtGOlTHEM9tC+gZDN1B1alq/CkfA8Ay5Xa0F
	SfM06hfPqEVgW6Y/a7vVRleU5K0C56mLGSdoAUKuxVYv5h9RVBUVE2K/lm1KfanviD4aB5/4d5xJU
	ju/MUiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGZX-0003bT-7p; Wed, 08 Jan 2020 19:00:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGW9-0007lB-K1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7F651FB;
 Wed,  8 Jan 2020 10:57:20 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 441153F534;
 Wed,  8 Jan 2020 10:57:19 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 14/17] arm64: entry: move NO_SYSCALL setup to C
Date: Wed,  8 Jan 2020 18:56:31 +0000
Message-Id: <20200108185634.1163-15-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105721_725794_28330F8D 
X-CRM114-Status: GOOD (  11.88  )
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

In the entry assembly we set up pt_regs::syscallno to NO_SYSCALL so that
any ptrace calls will see a sensible value. For real syscalls, the
actual syscall number is setup in C code, in do_el0_svc or
do_el0_svc_compat.

Given that tracing isn't performed until the usual EL0 entry work is
performed, we can move the default syscallno setup to C code, making
things simpler and more legible.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/asm-offsets.c  | 1 -
 arch/arm64/kernel/entry-common.c | 3 +++
 arch/arm64/kernel/entry.S        | 6 ------
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index a5bdce8af65b..0b6ffa9ecc08 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -61,7 +61,6 @@ int main(void)
   DEFINE(S_SP,			offsetof(struct pt_regs, sp));
   DEFINE(S_PSTATE,		offsetof(struct pt_regs, pstate));
   DEFINE(S_PC,			offsetof(struct pt_regs, pc));
-  DEFINE(S_SYSCALLNO,		offsetof(struct pt_regs, syscallno));
   DEFINE(S_ORIG_ADDR_LIMIT,	offsetof(struct pt_regs, orig_addr_limit));
   DEFINE(S_PMR_SAVE,		offsetof(struct pt_regs, pmr_save));
   DEFINE(S_STACKFRAME,		offsetof(struct pt_regs, stackframe));
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 17dbfadb2fb8..fa568284e73f 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -111,6 +111,9 @@ NOKPROBE_SYMBOL(el1_sync_handler);
 
 static void notrace el0_prepare_entry(struct pt_regs *regs)
 {
+	/* Not in a syscall by default; do_el0_svc{,_compat} overwrite this */
+	regs->syscallno = NO_SYSCALL;
+
 	if (test_thread_flag(TIF_SINGLESTEP)) {
 		__disable_single_step_nosync();
 		isb();
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index e67c8ad94cce..d84718d272e9 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -208,12 +208,6 @@ alternative_else_nop_endif
 
 	stp	x22, x23, [sp, #S_PC]
 
-	/* Not in a syscall by default (el0_svc overwrites for real syscall) */
-	.if	\el == 0
-	mov	w21, #NO_SYSCALL
-	str	w21, [sp, #S_SYSCALLNO]
-	.endif
-
 	/*
 	 * Set sp_el0 to current thread_info.
 	 */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
