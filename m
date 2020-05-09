Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1861CC1E7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/N9i4Z9ih+kOFJWipKf2Fvn1mgU81VBHSI0cHx9WaKI=; b=AEH/S8Cvl6F+od
	/DKYAhQYsdpLtjbvRot8EU6Gd2Hb+3BzyCydOD9Lg61k1yFp+9knRf86w3aykSb5nNkFbu6F4bD4G
	AjE68EYjurrIvC78WJi470Gkzn/3bt1FOgmnsO8ZdisuYS4FNABsM19iW+Xl/zLsxI7GgBd/ZwPQs
	N3TYFuHFoVJ2ogC/+c9uOp4t/QlSyYtKjCCDWDSIa+LfE18SnM7YCGD9tIQnMFmuqmg9Ug+qazMVO
	txuX+vIhAAJT7O1wdBk2MfADjL5pLWSgng3BPA9+apt4Qdqu8NJHSzouTGzQVINYvmDkmVKarVSZ6
	ccdtgBYFuSuMPXhoxfOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPrD-0007cI-8u; Sat, 09 May 2020 13:49:35 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPr4-0007YF-Q1
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:49:28 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1D5195B74FBBEA43C7F2;
 Sat,  9 May 2020 21:49:09 +0800 (CST)
Received: from euler.huawei.com (10.175.101.6) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 21:49:08 +0800
From: Wei Li <liwei391@huawei.com>
To: <daniel.thompson@linaro.org>, <jason.wessel@windriver.com>,
 <dianders@chromium.org>, <maz@kernel.org>, <mark.rutland@arm.com>,
 <mhiramat@kernel.org>, <davem@davemloft.net>, <will@kernel.org>,
 <catalin.marinas@arm.com>
Subject: [PATCH 1/4] arm64: kgdb: Fix single-step exception handling oops
Date: Sun, 10 May 2020 05:41:56 +0800
Message-ID: <20200509214159.19680-2-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509214159.19680-1-liwei391@huawei.com>
References: <20200509214159.19680-1-liwei391@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_064927_021140_B3CECF0B 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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

After entering kdb due to breakpoint, when we execute 'ss' or 'go' (will
delay installing breakpoints, do single-step first), it won't work
correctly, and it will enter kdb due to oops.

It's because the reason gotten in kdb_stub() is not as expected, and it
seems that the ex_vector for single-step should be 0, like what arch
powerpc/sh/parisc has implemented.

Before the patch:
Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
[0]kdb> bp printk
Instruction(i) BP #0 at 0xffff8000101486cc (printk)
    is enabled   addr at ffff8000101486cc, hardtype=0 installed=0

[0]kdb> g

/ # echo h > /proc/sysrq-trigger

Entering kdb (current=0xffff0000fa878040, pid 266) on processor 3 due to Breakpoint @ 0xffff8000101486cc
[3]kdb> ss

Entering kdb (current=0xffff0000fa878040, pid 266) on processor 3 Oops: (null)
due to oops @ 0xffff800010082ab8
CPU: 3 PID: 266 Comm: sh Not tainted 5.7.0-rc4-13839-gf0e5ad491718 #6
Hardware name: linux,dummy-virt (DT)
pstate: 00000085 (nzcv daIf -PAN -UAO)
pc : el1_irq+0x78/0x180
lr : __handle_sysrq+0x80/0x190
sp : ffff800015003bf0
x29: ffff800015003d20 x28: ffff0000fa878040
x27: 0000000000000000 x26: ffff80001126b1f0
x25: ffff800011b6a0d8 x24: 0000000000000000
x23: 0000000080200005 x22: ffff8000101486cc
x21: ffff800015003d30 x20: 0000ffffffffffff
x19: ffff8000119f2000 x18: 0000000000000000
x17: 0000000000000000 x16: 0000000000000000
x15: 0000000000000000 x14: 0000000000000000
x13: 0000000000000000 x12: 0000000000000000
x11: 0000000000000000 x10: 0000000000000000
x9 : 0000000000000000 x8 : ffff800015003e50
x7 : 0000000000000002 x6 : 00000000380b9990
x5 : ffff8000106e99e8 x4 : ffff0000fadd83c0
x3 : 0000ffffffffffff x2 : ffff800011b6a0d8
x1 : ffff800011b6a000 x0 : ffff80001130c9d8
Call trace:
 el1_irq+0x78/0x180
 printk+0x0/0x84
 write_sysrq_trigger+0xb0/0x118
 proc_reg_write+0xb4/0xe0
 __vfs_write+0x18/0x40
 vfs_write+0xb0/0x1b8
 ksys_write+0x64/0xf0
 __arm64_sys_write+0x14/0x20
 el0_svc_common.constprop.2+0xb0/0x168
 do_el0_svc+0x20/0x98
 el0_sync_handler+0xec/0x1a8
 el0_sync+0x140/0x180

[3]kdb>

After the patch:
Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
[0]kdb> bp printk
Instruction(i) BP #0 at 0xffff8000101486cc (printk)
    is enabled   addr at ffff8000101486cc, hardtype=0 installed=0

[0]kdb> g

/ # echo h > /proc/sysrq-trigger

Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to Breakpoint @ 0xffff8000101486cc
[0]kdb> g

Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to Breakpoint @ 0xffff8000101486cc
[0]kdb> ss

Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to SS trap @ 0xffff800010082ab8
[0]kdb>

Fixes: 44679a4f142b ("arm64: KGDB: Add step debugging support")
Signed-off-by: Wei Li <liwei391@huawei.com>
---
 arch/arm64/kernel/kgdb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 43119922341f..1a157ca33262 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -252,7 +252,7 @@ static int kgdb_step_brk_fn(struct pt_regs *regs, unsigned int esr)
 	if (!kgdb_single_step)
 		return DBG_HOOK_ERROR;
 
-	kgdb_handle_exception(1, SIGTRAP, 0, regs);
+	kgdb_handle_exception(0, SIGTRAP, 0, regs);
 	return DBG_HOOK_HANDLED;
 }
 NOKPROBE_SYMBOL(kgdb_step_brk_fn);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
