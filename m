Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E81A37BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=159x2Zg50pG2XE1pjGmeE+FxiEsL6Pzz3nLjDyA1JUM=; b=IwzbNJXG9RDI+u
	Qv/n70JU0Z7gjwOKageIoP6AwT5ugtz5ZTZsePzgu/zDuPtDqDhZYlFsvINHkw+xKbjMg+GlYUZlN
	OYA3YxG6kL+Y97krKXpdUx2hxq0YWY5Bfol2J6pIPoJORbCsXPNeiKaVJ7il3FKi5us5xTJ0hMbYp
	Uq9oEfFiD5Mriq6vfV3DHLTI4SLhSzpqWsoGOkAs11tCsSbXoqAMn9zt+UX0FbjNTGSJJU5Js25gb
	PLHrX/RpMPzJbR3bkc73hQRvAszMG8/mBf2ue05aDn3bQyZylx8PfmpSH70aAWdf2qrLKLofquv+z
	O4hmwfUeS9+wmOB9NXOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gud-0001rE-4Z; Fri, 30 Aug 2019 13:25:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3guO-0001pT-OL
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:25:47 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 14283D940CB8D64295D9;
 Fri, 30 Aug 2019 21:25:33 +0800 (CST)
Received: from RH5885H-V3.huawei.com (10.90.53.225) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 30 Aug 2019 21:25:24 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <linux@armlinux.org.uk>, <ebiederm@xmission.com>,
 <kstewart@linuxfoundation.org>, <gregkh@linuxfoundation.org>,
 <gustavo@embeddedor.com>, <bhelgaas@google.com>, <jingxiangfeng@huawei.com>,
 <tglx@linutronix.de>, <sakari.ailus@linux.intel.com>
Subject: [PATCH] arm: fix page faults in do_alignment
Date: Fri, 30 Aug 2019 21:31:17 +0800
Message-ID: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_062545_341953_8EAB108B 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function do_alignment can handle misaligned address for user and
kernel space. If it is a userspace access, do_alignment may fail on
a low-memory situation, because page faults are disabled in
probe_kernel_address.

Fix this by using __copy_from_user stead of probe_kernel_address.

Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 arch/arm/mm/alignment.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 04b3643..2ccabd3 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -774,6 +774,7 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
 	unsigned long instr = 0, instrptr;
 	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
 	unsigned int type;
+	mm_segment_t fs;
 	unsigned int fault;
 	u16 tinstr = 0;
 	int isize = 4;
@@ -784,16 +785,22 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
 
 	instrptr = instruction_pointer(regs);
 
+	fs = get_fs();
+	set_fs(KERNEL_DS);
 	if (thumb_mode(regs)) {
 		u16 *ptr = (u16 *)(instrptr & ~1);
-		fault = probe_kernel_address(ptr, tinstr);
+		fault = __copy_from_user(tinstr,
+				(__force const void __user *)ptr,
+				sizeof(tinstr));
 		tinstr = __mem_to_opcode_thumb16(tinstr);
 		if (!fault) {
 			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
 			    IS_T32(tinstr)) {
 				/* Thumb-2 32-bit */
 				u16 tinst2 = 0;
-				fault = probe_kernel_address(ptr + 1, tinst2);
+				fault = __copy_from_user(tinst2,
+						(__force const void __user *)(ptr+1),
+						sizeof(tinst2));
 				tinst2 = __mem_to_opcode_thumb16(tinst2);
 				instr = __opcode_thumb32_compose(tinstr, tinst2);
 				thumb2_32b = 1;
@@ -803,10 +810,13 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
 			}
 		}
 	} else {
-		fault = probe_kernel_address((void *)instrptr, instr);
+		fault = __copy_from_user(instr,
+				(__force const void __user *)instrptr,
+				sizeof(instr));
 		instr = __mem_to_opcode_arm(instr);
 	}
 
+	set_fs(fs);
 	if (fault) {
 		type = TYPE_FAULT;
 		goto bad_or_fault;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
