Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158FF116868
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zTeBEqcKYiA5SIi9VuPRp0vD94YVOHoN0T2+HrRbclQ=; b=QFfbxlP0No8M1v
	Zi3w2jqPMqdwf+DEi+/WC073AFbPyaDUcEz0zPxsvDMqVU1S9HRPS9sOSK/9l6hw69y3G/OCbHapp
	L7sEJd06me9uVV/ql1gqOMUATNTXdJxhSVjCe2vgyFrS6v5mVYOnOizSlx7IRJqczNivZTCJEI2um
	MNXU+Ek089kx42IHHJ8LLIImeiYSb7jCEpDyPQzp8yjPQ+OSR1KSsTSA+LpCSda5cwZwzwO5k5fm6
	OOsR7ejZpM/AvDEZ8A6E2sxJ3A1Fd1FyScPSzWV6Hga693fKIZNFt4tP22ORJaTFS+dPIvGJ0c4iC
	RudbEYepWYqrZZ4uW9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEan-000136-Bo; Mon, 09 Dec 2019 08:40:33 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEab-000126-AM
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:40:23 +0000
IronPort-SDR: XyCRsa+GM3obD9K3cTlj6k2L4fKjfkhsyJMlCIYA541lxJVSuZrlgfGoY0EnMwMUirJMcjS2xx
 ot9hHJroTdjJYW7QpqyJFq1dw854y8PKvzhjnD7tsnuzD6H0D8M1VuXbLjJLAYmydxP1cQUHih
 TmadVcb0QJ5SaNUa4uQe/DIVuXhc6SjbB2dVCtMNOuWAUxZWPi2A/PVqIFlEGEsmwelYQaw2pN
 vlucOM5Dob4MtSH+csVMC+C0b5mMx++4GYS/PWlJ04CVW3btrqmXhVWyHSKoXxpAKX5aLq6eTw
 suM=
X-IronPort-AV: E=Sophos;i="5.69,294,1571695200"; 
   d="scan'208";a="3383901"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: Prevent OOB access in stacktrace
Date: Mon,  9 Dec 2019 09:40:11 +0100
Message-Id: <20191209084011.7810-1-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004021_686579_17F89987 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.60.68.17 listed in list.dnswl.org]
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
Cc: Vincent Whitchurch <rabinv@axis.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The stacktrace code can read beyond the stack size, when it attempts to
read pt_regs from exception frames.

This can happen on normal, non-corrupt stacks.  Since the unwind
information in the extable is not correct for function prologues, the
unwinding code can return data from the stack which is not actually the
caller function address, and if in_entry_text() happens to succeed on
this value, we can end up reading data from outside the task's stack
when attempting to read pt_regs, since there is no bounds check.

Example:

 [<8010e729>] (unwind_backtrace) from [<8010a9c9>] (show_stack+0x11/0x14)
 [<8010a9c9>] (show_stack) from [<8057d8d7>] (dump_stack+0x87/0xac)
 [<8057d8d7>] (dump_stack) from [<8012271d>] (tasklet_action_common.constprop.4+0xa5/0xa8)
 [<8012271d>] (tasklet_action_common.constprop.4) from [<80102333>] (__do_softirq+0x11b/0x31c)
 [<80102333>] (__do_softirq) from [<80122485>] (irq_exit+0xad/0xd8)
 [<80122485>] (irq_exit) from [<8015f3d7>] (__handle_domain_irq+0x47/0x84)
 [<8015f3d7>] (__handle_domain_irq) from [<8036a523>] (gic_handle_irq+0x43/0x78)
 [<8036a523>] (gic_handle_irq) from [<80101a49>] (__irq_svc+0x69/0xb4)
 Exception stack(0xeb491f58 to 0xeb491fa0)
 1f40:                                                       7eb14794 00000000
 1f60: ffffffff 008dd32c 008dd324 ffffffff 008dd314 0000002a 801011e4 eb490000
 1f80: 0000002a 7eb1478c 50c5387d eb491fa8 80101001 8023d09c 40080033 ffffffff
 [<80101a49>] (__irq_svc) from [<8023d09c>] (do_pipe2+0x0/0xac)
 [<8023d09c>] (do_pipe2) from [<ffffffff>] (0xffffffff)
 Exception stack(0xeb491fc8 to 0xeb492010)
 1fc0:                   008dd314 0000002a 00511ad8 008de4c8 7eb14790 7eb1478c
 1fe0: 00511e34 7eb14774 004c8557 76f44098 60080030 7eb14794 00000000 00000000
 2000: 00000001 00000000 ea846c00 ea847cc0

In this example, the stack limit is 0xeb492000, but 16 bytes outside the
stack have been read.

Fix it by adding bounds checks.

Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
---
 arch/arm/kernel/stacktrace.c | 2 ++
 arch/arm/kernel/traps.c      | 6 ++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
index 71778bb0475b..cc726afea023 100644
--- a/arch/arm/kernel/stacktrace.c
+++ b/arch/arm/kernel/stacktrace.c
@@ -92,6 +92,8 @@ static int save_trace(struct stackframe *frame, void *d)
 		return 0;
 
 	regs = (struct pt_regs *)frame->sp;
+	if ((unsigned long)&regs[1] > ALIGN(frame->sp, THREAD_SIZE))
+		return 0;
 
 	trace->entries[trace->nr_entries++] = regs->ARM_pc;
 
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index c053abd1fb53..97a512551b21 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -64,14 +64,16 @@ static void dump_mem(const char *, const char *, unsigned long, unsigned long);
 
 void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
 {
+	unsigned long end = frame + 4 + sizeof(struct pt_regs);
+
 #ifdef CONFIG_KALLSYMS
 	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
 #else
 	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
 #endif
 
-	if (in_entry_text(from))
-		dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
+	if (in_entry_text(from) && end <= ALIGN(frame, THREAD_SIZE))
+		dump_mem("", "Exception stack", frame + 4, end);
 }
 
 void dump_backtrace_stm(u32 *stack, u32 instruction)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
