Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5965369FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2ulXu0fSWTUk+j7ooVVEdIS+IJ1bFbm5bqqdH1qWhc=; b=B93B4znbgiS631
	96zEHdIUCE3aXyGtZ8lgUs/WaJHLLt7Z5ihOKJ7jyD3vo96H352x5nEjPPXUwljCU5/l5fhylGpvZ
	28IuO0d4wxNv2jVOXUXxLYaE3/WRWIYA8VDBfCVBacdGasWvukHHcsYEwVLCeHu0Yrhd0drv27wIQ
	CtvIFLYiM6ntq4XM6873mltqqKtq6v8WNWD0bvSWGq4YrLzr1QQpV9IsDUfSOP6mshPEhzhStziPk
	2NNh/Adb7u1SJpnSr2eNceynNJ6QKC+aRCVqE5MpriXLLXqk1xFGDEfcbfGnUa1IKcJGlt0TvWpuE
	1rCyyfcuY8s/rUFMSkWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYi8U-0005Jt-8L; Thu, 06 Jun 2019 02:28:14 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYi8M-0005JC-Th
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:28:08 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CB12AFC5FDCF910FA20D;
 Thu,  6 Jun 2019 10:27:56 +0800 (CST)
Received: from huawei.com (10.67.188.14) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 6 Jun 2019
 10:27:48 +0800
From: xiaoqian <xiaoqian9@huawei.com>
To: <linux@armlinux.org.uk>, <rafael.j.wysocki@intel.com>,
 <ebiederm@xmission.com>, <rppt@linux.ibm.com>, <pmladek@suse.com>,
 <bhelgaas@google.com>, <sakari.ailus@linux.intel.com>,
 <linux-arm-kernel@lists.infradead.org>, <gregkh@linuxfoundation.org>
Subject: [PATCH] alignment:fetch pc-instr before irq_enable
Date: Thu, 6 Jun 2019 10:26:33 +0800
Message-ID: <1559787993-34923-1-git-send-email-xiaoqian9@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [10.67.188.14]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_192807_187250_9CE45408 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: xiaoqian9@huawei.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the instruction code under PC address is read through
_probe_kernel_read in do_alignment,if the pte page corresponding
to the code segment of PC address is reclaimed exactly at this time,
the address mapping cannot be reconstructed because page fault_disable()
is executed in _probe_kernel_read function,and the failure to obtain
the instruction code of PC finally results in the unsuccessful repair
operation.
Thus we can modify the implementation of reading user-mode PC instruction
before local_irq_enable to avoid the above risk.
At the same time, adjust the sequence of code processing and optimize the
process.

Signed-off-by: xiaoqian <xiaoqian9@huawei.com>
Cc: stable@vger.kernel.org
---
 arch/arm/mm/alignment.c | 81 +++++++++++++++++++++++++++++++++----------------
 1 file changed, 55 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index e376883ab35b..4124b9ce3c70 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -76,6 +76,11 @@
 #define IS_T32(hi16) \
 	(((hi16) & 0xe000) == 0xe000 && ((hi16) & 0x1800))
 
+#define INVALID_INSTR_MODE     0
+#define ARM_INSTR_MODE         1
+#define THUMB_INSTR_MODE       2
+#define THUMB2_INSTR_MODE      3
+
 static unsigned long ai_user;
 static unsigned long ai_sys;
 static void *ai_sys_last_pc;
@@ -705,6 +710,48 @@ thumb2arm(u16 tinstr)
 	}
 }
 
+static unsigned int
+fetch_usr_pc_instr(struct pt_regs *regs, unsigned long *pc_instrptr)
+{
+	unsigned int fault;
+	unsigned long instrptr;
+	unsigned long instr_mode = INVALID_INSTR_MODE;
+
+	instrptr = instruction_pointer(regs);
+
+	if (thumb_mode(regs)) {
+		u16 tinstr = 0;
+		u16 *ptr = (u16 *)(instrptr & ~1);
+
+		fault = probe_kernel_address(ptr, tinstr);
+		if (!fault) {
+			tinstr = __mem_to_opcode_thumb16(tinstr);
+			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
+			    IS_T32(tinstr)) {
+				/* Thumb-2 32-bit */
+				u16 tinstr2 = 0;
+
+				fault = probe_kernel_address(ptr + 1, tinstr2);
+				if (!fault) {
+					tinstr2 = __mem_to_opcode_thumb16(tinstr2);
+					*pc_instrptr = __opcode_thumb32_compose(tinstr, tinstr2);
+					instr_mode = THUMB2_INSTR_MODE;
+				}
+			} else {
+				*pc_instrptr = thumb2arm(tinstr);
+				instr_mode = THUMB_INSTR_MODE;
+			}
+		}
+	} else {
+		fault = probe_kernel_address((void *)instrptr, *pc_instrptr);
+		if (!fault) {
+			*pc_instrptr = __mem_to_opcode_arm(*pc_instrptr);
+			instr_mode = ARM_INSTR_MODE;
+		}
+	}
+	return instr_mode;
+}
+
 /*
  * Convert Thumb-2 32 bit LDM, STM, LDRD, STRD to equivalent instruction
  * handlable by ARM alignment handler, also find the corresponding handler,
@@ -775,42 +822,24 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	unsigned long instr = 0, instrptr;
 	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
 	unsigned int type;
-	unsigned int fault;
 	u16 tinstr = 0;
 	int isize = 4;
 	int thumb2_32b = 0;
+	unsigned long pc_instr_mode;
+
+	pc_instr_mode = fetch_usr_pc_instr(regs, &instr);
 
 	if (interrupts_enabled(regs))
 		local_irq_enable();
 
 	instrptr = instruction_pointer(regs);
-
-	if (thumb_mode(regs)) {
-		u16 *ptr = (u16 *)(instrptr & ~1);
-		fault = probe_kernel_address(ptr, tinstr);
-		tinstr = __mem_to_opcode_thumb16(tinstr);
-		if (!fault) {
-			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
-			    IS_T32(tinstr)) {
-				/* Thumb-2 32-bit */
-				u16 tinst2 = 0;
-				fault = probe_kernel_address(ptr + 1, tinst2);
-				tinst2 = __mem_to_opcode_thumb16(tinst2);
-				instr = __opcode_thumb32_compose(tinstr, tinst2);
-				thumb2_32b = 1;
-			} else {
-				isize = 2;
-				instr = thumb2arm(tinstr);
-			}
-		}
-	} else {
-		fault = probe_kernel_address((void *)instrptr, instr);
-		instr = __mem_to_opcode_arm(instr);
-	}
-
-	if (fault) {
+	if (pc_instr_mode == INVALID_INSTR_MODE) {
 		type = TYPE_FAULT;
 		goto bad_or_fault;
+	} else if (pc_instr_mode == THUMB_INSTR_MODE) {
+		isize = 2;
+	} else if (pc_instr_mode == THUMB2_INSTR_MODE) {
+		thumb2_32b = 1;
 	}
 
 	if (user_mode(regs))
-- 
2.12.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
