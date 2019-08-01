Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB367DF44
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9M1bt+ZxxKieoEVJ7npl/mIGWh4B1MiCnZDDQnS4Do=; b=ScBiDeUzpKCyEJ
	pIs8obYHhekTcvfr4ip+uu2+A3LmLw6RcZ+F3urMJJpK6Cb8r1x0rzIV85klR7oVFJtX9G0NNyuU0
	EX5VJUFQ8+NGQBe5ZlhmED0RQoW05v+a1Y+XIVP9BIftUqh9pIL5EekT4KTQVd4j7ZTA7HuBmqW7a
	QEi/DL/P3ge45xRRZ8ppUM62uKuiCvynzDIKpypteRHNyQOkXewsIKhfYpwWqkaFZwiF9WN3bUMVr
	x9Yx5LLsT19xRgp1hIhZ7UU1W8DGxk5wgp5qKnZpIaNU6c6+pczqyRvOK/5MYl/GNS7s0Z6Dj2/Ni
	mN733/NMF9dukzhi94wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDDr-0002hx-33; Thu, 01 Aug 2019 15:42:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDDY-0002a0-FA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39D5F1597;
 Thu,  1 Aug 2019 08:42:12 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D1A63F694;
 Thu,  1 Aug 2019 08:42:11 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: entry: Move ct_user_exit before any user of RCU
Date: Thu,  1 Aug 2019 16:41:49 +0100
Message-Id: <20190801154150.195959-2-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801154150.195959-1-james.morse@arm.com>
References: <20190801154150.195959-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_084212_546311_72222FFF 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When taking an SError or Debug exception from EL0, we run the C
handler for these exceptions before updating the context tracking
code and unmasking lower priority interrupts.

When booting with nohz_full lockdep tells us we got this wrong:
| =============================
| WARNING: suspicious RCU usage
| 5.3.0-rc2-00010-gb4b5e9dcb11b-dirty #11271 Not tainted
| -----------------------------
| include/linux/rcupdate.h:643 rcu_read_unlock() used illegally wh!
|
| other info that might help us debug this:
|
|
| RCU used illegally from idle CPU!
| rcu_scheduler_active = 2, debug_locks = 1
| RCU used illegally from extended quiescent state!
| 1 lock held by a.out/432:
|  #0: 00000000c7a79515 (rcu_read_lock){....}, at: brk_handler+0x00
|
| stack backtrace:
| CPU: 1 PID: 432 Comm: a.out Not tainted 5.3.0-rc2-00010-gb4b5e9d1
| Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno De8
| Call trace:
|  dump_backtrace+0x0/0x140
|  show_stack+0x14/0x20
|  dump_stack+0xbc/0x104
|  lockdep_rcu_suspicious+0xf8/0x108
|  brk_handler+0x164/0x1b0
|  do_debug_exception+0x11c/0x278
|  el0_dbg+0x14/0x20

Move the ct_user_exit calls to be before do_debug_exception()
and do_serror() respectively.

Cc: Masami Hiramatsu <mhiramat@kernel.org>
Fixes: 6c81fe7925cc4c42 ("arm64: enable context tracking")
Signed-off-by: James Morse <james.morse@arm.com>
---
The context to this is Masami Hiramatsu's patch adding sanity checks
for this:
Link: https://lore.kernel.org/r/156466954920.8995.14798868044005509434.stgit@devnote2
---
 arch/arm64/kernel/entry.S | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 320a30dbe35e..28681034d599 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -902,13 +902,14 @@ el0_dbg:
 	 * Debug exception handling
 	 */
 	tbnz	x24, #0, el0_inv		// EL0 only
+	mrs	x24, far_el1
 	gic_prio_kentry_setup tmp=x3
-	mrs	x0, far_el1
+	ct_user_exit
+	mov	x0, x24
 	mov	x1, x25
 	mov	x2, sp
 	bl	do_debug_exception
 	enable_da_f
-	ct_user_exit
 	b	ret_to_user
 el0_inv:
 	enable_daif
@@ -958,13 +959,14 @@ ENDPROC(el1_error)
 el0_error:
 	kernel_entry 0
 el0_error_naked:
-	mrs	x1, esr_el1
+	mrs	x25, esr_el1
 	gic_prio_kentry_setup tmp=x2
+	ct_user_exit
 	enable_dbg
 	mov	x0, sp
+	mov	x1, x25
 	bl	do_serror
 	enable_da_f
-	ct_user_exit
 	b	ret_to_user
 ENDPROC(el0_error)
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
