Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7BE1CC1EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzhwM6Z/a64E2UJFx76cH6m5iilIJaxC8xh3i9JQFwM=; b=hzJnBMSyVX4dCT
	AGmysJ4MkfQG1TLKfNEUJtrRwEkUUlpTbJpe7dp0CwoJQljyxo4WnxBgwQLQ/bfN2iNl2XQHtTVsp
	2dhU4AQcOZVf4UoPpgCXZmjjzcGm9/fWQaSafkbGa9NFsWopGhuuezg/XfaGOR2CXZWdAb7h52k2T
	NtvTfXwpmD5dq4P2X8r9c5+eAMWuZArneaMV8IVSNLZ6rZ63Ml9j/AwJMReK8Xp1Oj+TT3lHQwpH+
	MPhsRGpmyNdvGN198apox+Dh3e4e0V/kbm7CWILbv/JgkfptR4Dru6EK6zC3ZF9boXsHVmWdxb59/
	XayRuY3S8dcBecPHEKvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPsM-0002ZT-0x; Sat, 09 May 2020 13:50:46 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPrB-0007Yx-HJ
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:49:35 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 359F62E12B047D20BB97;
 Sat,  9 May 2020 21:49:14 +0800 (CST)
Received: from euler.huawei.com (10.175.101.6) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 21:49:09 +0800
From: Wei Li <liwei391@huawei.com>
To: <daniel.thompson@linaro.org>, <jason.wessel@windriver.com>,
 <dianders@chromium.org>, <maz@kernel.org>, <mark.rutland@arm.com>,
 <mhiramat@kernel.org>, <davem@davemloft.net>, <will@kernel.org>,
 <catalin.marinas@arm.com>
Subject: [PATCH 3/4] arm64: kgdb: Fix single-stepping into the irq handler
 wrongly
Date: Sun, 10 May 2020 05:41:58 +0800
Message-ID: <20200509214159.19680-4-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509214159.19680-1-liwei391@huawei.com>
References: <20200509214159.19680-1-liwei391@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_064933_763581_1F4F0AB9 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: liwei1412@163.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After the single-step exception handling oops is fixed, when we execute
single-step in kdb/kgdb, we may see it jumps to the irq_handler (where
PSTATE.D is cleared) instead of the next instruction.

Add the prepare and cleanup work for single-step when enabling and
disabling to maintain the PSTATE.I and PSTATE.D carefully.

Before this patch:
* kdb:
Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
[0]kdb> bp printk
Instruction(i) BP #0 at 0xffff8000101486cc (printk)
    is enabled   addr at ffff8000101486cc, hardtype=0 installed=0

[0]kdb> g

/ # echo h > /proc/sysrq-trigger

Entering kdb (current=0xffff0000fada65c0, pid 267) on processor 0 due to Breakpoint @ 0xffff8000101486cc
[0]kdb> ss

Entering kdb (current=0xffff0000fada65c0, pid 267) on processor 0 due to SS trap @ 0xffff800010082ab8
[0]kdb> 0xffff800010082ab8
0xffff800010082ab8 = 0xffff800010082ab8 (el1_irq+0x78)
[0]kdb>

   0xffff800010082ab0 <+112>:	nop
   0xffff800010082ab4 <+116>:	msr	daifclr, #0xd
   0xffff800010082ab8 <+120>:	adrp	x1, 0xffff8000113a7000 <cpu_ops+1288>
   0xffff800010082abc <+124>:	ldr	x1, [x1, #1408]

* kgdb:
(gdb) target remote 127.1:23002
Remote debugging using 127.1:23002
arch_kgdb_breakpoint () at /home/liwei/main_code/linux/arch/arm64/include/asm/kgdb.h:21
21		asm ("brk %0" : : "I" (KGDB_COMPILED_DBG_BRK_IMM));
(gdb) b printk
Breakpoint 1 at 0xffff8000101486cc: file /home/liwei/main_code/linux/kernel/printk/printk.c, line 2076.
(gdb) c
Continuing.
[New Thread 287]
[Switching to Thread 283]

Thread 177 hit Breakpoint 1, printk (fmt=0xffff80001130c9d8 "\001\066sysrq: HELP : ")
    at /home/liwei/main_code/linux/kernel/printk/printk.c:2076
2076	{
(gdb) stepi
el1_irq () at /home/liwei/main_code/linux/arch/arm64/kernel/entry.S:608
608		irq_handler
(gdb)

After this patch:
* kdb:
Entering kdb (current=0xffff8000119d2dc0, pid 0) on processor 0 due to Keyboard Entry
[0]kdb> bp printk
Instruction(i) BP #0 at 0xffff80001014874c (printk)
    is enabled   addr at ffff80001014874c, hardtype=0 installed=0

[0]kdb> g

/ # echo h > /proc/sysrq-trigger

Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 0 due to Breakpoint @ 0xffff80001014874c
[0]kdb> ss

Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 0 due to SS trap @ 0xffff800010148750
[0]kdb>

* kgdb:
(gdb) target remote 127.1:23002
Remote debugging using 127.1:23002
arch_kgdb_breakpoint () at /home/liwei/main_code/linux/arch/arm64/include/asm/kgdb.h:21
21		asm ("brk %0" : : "I" (KGDB_COMPILED_DBG_BRK_IMM));
(gdb) b printk
Breakpoint 1 at 0xffff80001014874c: file /home/liwei/main_code/linux/kernel/printk/printk.c, line 2076.
(gdb) c
Continuing.
[New Thread 277]
[Switching to Thread 276]

Thread 171 hit Breakpoint 1, printk (fmt=0xffff8000112fc130 "\001\066sysrq: HELP : ")
    at /home/liwei/main_code/linux/kernel/printk/printk.c:2076
2076	{
(gdb) stepi
0xffff800010148750	2076	{
(gdb)

Fixes: 44679a4f142b ("arm64: KGDB: Add step debugging support")
Signed-off-by: Wei Li <liwei391@huawei.com>
---
 arch/arm64/kernel/kgdb.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 1a157ca33262..3910ac06c261 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -100,6 +100,8 @@ struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
 	{ "fpcr", 4, -1 },
 };
 
+static DEFINE_PER_CPU(unsigned long, kgdb_ss_flags);
+
 char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
 {
 	if (regno >= DBG_MAX_REG_NUM || regno < 0)
@@ -200,8 +202,11 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		/*
 		 * Received continue command, disable single step
 		 */
-		if (kernel_active_single_step())
+		if (kernel_active_single_step()) {
+			kernel_cleanup_single_step(per_cpu(kgdb_ss_flags,
+					raw_smp_processor_id()), linux_regs);
 			kernel_disable_single_step();
+		}
 
 		err = 0;
 		break;
@@ -221,8 +226,12 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		/*
 		 * Enable single step handling
 		 */
-		if (!kernel_active_single_step())
+		if (!kernel_active_single_step()) {
+			kernel_prepare_single_step(&per_cpu(kgdb_ss_flags,
+					raw_smp_processor_id()), linux_regs);
 			kernel_enable_single_step(linux_regs);
+		}
+
 		err = 0;
 		break;
 	default:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
