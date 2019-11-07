Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07FFF2855
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:47:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oJV3VA5tgxoGAUTJ1wn+7jXdkMxQDn32+3mWaeyJgXw=; b=OPVlIF8oHmqzhY
	tIcHQ0RvkcZVj4f0Ebi2A8jMMvXpt/9wLJzDWYv6CiigFxw42Zs+2GW9oh/eWqdGJYut7yKjkngjS
	wGnwvhREROG6tOw/Vo1Ev2PN3lRFykcTZoKQBhzD7NodaJVPYVUZQKclz+xiRHR/ro7c8Sl8H2YKu
	0cuN7uCtHNal3d0ZoLHuiILG5uQGtd1juaqrTzJjP1zrSlWbRtQtcrJamPdoHcrWkfI6KDWYzp0E4
	PIPsqSo2cbILFAy8dVM3ytIcKJr38bexnHuV7jNWEXcVlGzw0owyFKwF3YjjVnJVflccV5hph1P/X
	mrfFpE6QjKyHvvKqiyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScW3-0002Se-TO; Thu, 07 Nov 2019 07:47:39 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScVv-0002Qa-FR
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 07:47:33 +0000
Received: from ig2.spreadtrum.com (bjmbx01.spreadtrum.com [10.0.64.7])
 by SHSQR01.spreadtrum.com with ESMTPS id xA77j9w1060787
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=NO);
 Thu, 7 Nov 2019 15:45:09 +0800 (CST)
 (envelope-from lvqiang.huang@unisoc.com)
Received: from localhost (10.0.74.59) by BJMBX01.spreadtrum.com (10.0.64.7)
 with Microsoft SMTP Server (TLS) id 15.0.847.32; Thu, 7 Nov 2019 15:45:14
 +0800
From: Lvqiang <Lvqiang.Huang@unisoc.com>
To: <linux@armlinux.org.uk>, <ebiederm@xmission.com>,
 <dave.hansen@linux.intel.com>, <anshuman.khandual@arm.com>,
 <akpm@linux-foundation.org>, <Lvqiang.Huang@unisoc.com>,
 <f.fainelli@gmail.com>, <will@kernel.org>, <tglx@linutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: check __ex_table in do_bad()
Date: Thu, 7 Nov 2019 15:45:13 +0800
Message-ID: <1573112713-10115-1-git-send-email-Lvqiang.Huang@unisoc.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.0.74.59]
X-ClientProxiedBy: shcas04.spreadtrum.com (10.29.35.89) To
 BJMBX01.spreadtrum.com (10.0.64.7)
X-MAIL: SHSQR01.spreadtrum.com xA77j9w1060787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_234731_825093_97052CE8 
X-CRM114-Status: UNSURE (   9.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


We got many crashs in for_each_frame+0x18 arch/arm/lib/backtrace.S
    1003: ldr r2, [sv_pc, #-4]

The backtrace is
    dump_backtrace
    show_stack
    sched_show_task
    show_state_filter
    sysrq_handle_showstate_blocked
    __handle_sysrq
    write_sysrq_trigger
    proc_reg_write
    __vfs_write
    vfs_write
    sys_write

Related Kernel config
    CONFIG_CPU_SW_DOMAIN_PAN=y
    # CONFIG_ARM_UNWIND is not set
    CONFIG_FRAME_POINTER=y

The task A was dumping the stack of an UN task B. However, the task B
scheduled to run on another CPU, which cause it stack content changed.
Then, task A may hit a page domain fault and die().
    [520.661314] Unhandled fault: page domain fault (0x01b) at 0x32848c02

The addr 0x32848c02 is a valid user-space address.
    PAGE DIRECTORY: d1854000
      PGD: d1854ca0 => bb21e835
      PMD: d1854ca0 => bb21e835
      PTE: bb21e120 => afffa79f

With CONFIG_CPU_SW_DOMAIN_PAN=y, a page domain fault occurred.
    { do_bad, SIGSEGV, SEGV_ACCERR, "page domain fault"},

Without check the __ex_table entry, do_bad() just return fault and die().
    .pushsection __ex_table,"a"
    .long	1003b, 1006b

This patch try __ex_table in do_bad(), the same as in __do_kernel_fault().

Signed-off-by: Lvqiang <Lvqiang.Huang@unisoc.com>
---
 arch/arm/mm/fault.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index bd0f482..22f45df 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -487,11 +487,14 @@ static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 #endif /* CONFIG_ARM_LPAE */
 
 /*
- * This abort handler always returns "fault".
+ * Checks __ex_table before returns "fault".
  */
 static int
 do_bad(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 {
+	if (fixup_exception(regs))
+		return 0;
+
 	return 1;
 }
 
-- 
1.7.9.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
