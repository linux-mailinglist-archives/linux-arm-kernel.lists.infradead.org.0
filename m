Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98281F5D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ODYQg9s5xrzP/BH0UQI3SojpfIUgXAA/7NWCVBFuxwg=; b=NnfUxM0WVFzkXd
	OY3/NF0QtdGJPNWs1rEEWgOL3xWoAYt8DH2IloP9AnzfaeVignj3Kv2TMPFe4/nQhUNjUlKrsrw1K
	8OFcnM13jWQWwKTgxoUosLJq4DdGKZb8N01n0Gha2UVP7g8AJwyevt9ThdLQ7OW7WazBTr7Gsh502
	azb53iAqrGY/cM3eU2w29z4mqoN1gMShj5nfd/vQTad1R8Qeh7Uc+0qELw/h5tGYNRxzzl1++2nhq
	EZQPkgO5UsF8AyqyPnqNcNuYWr0o/15UWAuivPFqi9eQnHVSn/jW28BX6NekJkwHagQ5H1/CUuM3H
	PBQMWae1sSbjAPADtvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuEq-0007t6-TS; Wed, 15 May 2019 13:46:32 +0000
Received: from alexa-out-blr-02.qualcomm.com ([103.229.18.198]
 helo=alexa-out-blr.qualcomm.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuEj-0007sW-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:46:27 +0000
Received: from ironmsg01-blr.qualcomm.com ([10.86.208.130])
 by alexa-out-blr.qualcomm.com with ESMTP/TLS/AES256-SHA;
 15 May 2019 19:13:55 +0530
X-IronPort-AV: E=McAfee;i="5900,7806,9257"; a="9504431"
Received: from blr-ubuntu-104.qualcomm.com ([10.79.43.231])
 by ironmsg01-blr.qualcomm.com with ESMTP; 15 May 2019 19:13:55 +0530
Received: by blr-ubuntu-104.qualcomm.com (Postfix, from userid 346745)
 id 71DF93BB0; Wed, 15 May 2019 19:13:54 +0530 (IST)
From: Arun KS <arunks@codeaurora.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Arun KS <arunks@codeaurora.org>, James Morse <james.morse@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Steve Capper <steve.capper@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: Fix size of __early_cpu_boot_status
Date: Wed, 15 May 2019 19:13:19 +0530
Message-Id: <1557927822-21111-1-git-send-email-arunks@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_064626_046906_82462460 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__early_cpu_boot_status is of type int. Fix up the calls to
update_early_cpu_boot_status, to use a w register.

Signed-off-by: Arun KS <arunks@codeaurora.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/smp.h | 2 +-
 arch/arm64/kernel/head.S     | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 18553f3..59e80ab 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -96,7 +96,7 @@ struct secondary_data {
 };
 
 extern struct secondary_data secondary_data;
-extern long __early_cpu_boot_status;
+extern int __early_cpu_boot_status;
 extern void secondary_entry(void);
 
 extern void arch_send_call_function_single_ipi(int cpu);
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index fcae3f8..c7175fb 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -778,7 +778,7 @@ ENTRY(__enable_mmu)
 	ubfx	x2, x2, #ID_AA64MMFR0_TGRAN_SHIFT, 4
 	cmp	x2, #ID_AA64MMFR0_TGRAN_SUPPORTED
 	b.ne	__no_granule_support
-	update_early_cpu_boot_status 0, x2, x3
+	update_early_cpu_boot_status 0, x2, w3
 	adrp	x2, idmap_pg_dir
 	phys_to_ttbr x1, x1
 	phys_to_ttbr x2, x2
@@ -810,7 +810,7 @@ ENTRY(__cpu_secondary_check52bitva)
 	cbnz	x0, 2f
 
 	update_early_cpu_boot_status \
-		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_52_BIT_VA, x0, x1
+		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_52_BIT_VA, x0, w1
 1:	wfe
 	wfi
 	b	1b
@@ -822,7 +822,7 @@ ENDPROC(__cpu_secondary_check52bitva)
 __no_granule_support:
 	/* Indicate that this CPU can't boot and is stuck in the kernel */
 	update_early_cpu_boot_status \
-		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_GRAN, x1, x2
+		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_GRAN, x1, w2
 1:
 	wfe
 	wfi
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
