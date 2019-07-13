Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF15767865
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 06:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+GMUqQ2V+UhIBkrQPt6a388JKLZPIC71ldoftiKzYC0=; b=YxtLn5t+vtG4MH
	4l6sM98xvGt/OB1rRSSrps6T9bE3uxV9lvyCLk5A9cY8kLQlmxNDwmKvPaP4lBCjD0hYC29T0g+vv
	sOe8UwHtFlNPe8p7SoLSIgdOQz9Eyor8Zt2gOEHG5U/AZGmUJTDqOcx9Gl+tCbudaXkXDmykGzH9E
	tYUZa6gx6BS7qTAgagcda+z69/9jtpgWSm7c+SYfUs342ohx1sJNAC/XkMjTYOsr653jBxM5OC4Kd
	bOSwuD9TdA7DyvTJV0vYoWW71NEfzU0MfptnV1i+1T4N0QyCXIEQwUWkBC2m+5fgvkeDZLDoZZIEF
	m1NCiv8mBL+u3PyN5zYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm9rT-00025t-1i; Sat, 13 Jul 2019 04:42:15 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm9rF-00024e-FQ
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 04:42:03 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5150C65E17EAE6E29EF6;
 Sat, 13 Jul 2019 12:41:46 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Sat, 13 Jul 2019 12:41:39 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <marc.zyngier@arm.com>, <kvmarm@lists.cs.columbia.edu>,
 <linux-arm-kernel@lists.infradead.org>, <catalin.marinas@arm.com>,
 <will@kernel.org>
Subject: [PATCH] KVM: arm64: Update kvm_arm_exception_class and esr_class_str
 for new EC
Date: Sat, 13 Jul 2019 04:40:54 +0000
Message-ID: <1562992854-972-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_214201_774907_63B18AA2 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, julien.thierry@arm.com,
 linux-kernel@vger.kernel.org, Zenghui Yu <yuzenghui@huawei.com>,
 james.morse@arm.com, amit.kachhap@arm.com, wanghaibin.wang@huawei.com,
 Dave.Martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We've added two ESR exception classes for new ARM hardware extensions:
ESR_ELx_EC_PAC and ESR_ELx_EC_SVE.

This patch updates "kvm_arm_exception_class" for these two EC, which the
new EC will be parsed in kvm_exit trace events (for guest's usage of
Pointer Authentication and Scalable Vector Extension).  The same updates
to "esr_class_str" for ESR_ELx_EC_PAC, by which we can get more accurate
debug info.  Trivial changes, update them in one go.

Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm64/include/asm/kvm_arm.h | 7 ++++---
 arch/arm64/kernel/traps.c        | 1 +
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index a8b205e..ddf9d76 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -316,9 +316,10 @@
 
 #define kvm_arm_exception_class \
 	ECN(UNKNOWN), ECN(WFx), ECN(CP15_32), ECN(CP15_64), ECN(CP14_MR), \
-	ECN(CP14_LS), ECN(FP_ASIMD), ECN(CP10_ID), ECN(CP14_64), ECN(SVC64), \
-	ECN(HVC64), ECN(SMC64), ECN(SYS64), ECN(IMP_DEF), ECN(IABT_LOW), \
-	ECN(IABT_CUR), ECN(PC_ALIGN), ECN(DABT_LOW), ECN(DABT_CUR), \
+	ECN(CP14_LS), ECN(FP_ASIMD), ECN(CP10_ID), ECN(PAC), ECN(CP14_64), \
+	ECN(SVC64), ECN(HVC64), ECN(SMC64), ECN(SYS64), ECN(SVE), \
+	ECN(IMP_DEF), ECN(IABT_LOW), ECN(IABT_CUR), \
+	ECN(PC_ALIGN), ECN(DABT_LOW), ECN(DABT_CUR), \
 	ECN(SP_ALIGN), ECN(FP_EXC32), ECN(FP_EXC64), ECN(SERROR), \
 	ECN(BREAKPT_LOW), ECN(BREAKPT_CUR), ECN(SOFTSTP_LOW), \
 	ECN(SOFTSTP_CUR), ECN(WATCHPT_LOW), ECN(WATCHPT_CUR), \
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 8c03456..969e156 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -734,6 +734,7 @@ asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
 	[ESR_ELx_EC_CP14_LS]		= "CP14 LDC/STC",
 	[ESR_ELx_EC_FP_ASIMD]		= "ASIMD",
 	[ESR_ELx_EC_CP10_ID]		= "CP10 MRC/VMRS",
+	[ESR_ELx_EC_PAC]		= "PAC",
 	[ESR_ELx_EC_CP14_64]		= "CP14 MCRR/MRRC",
 	[ESR_ELx_EC_ILL]		= "PSTATE.IL",
 	[ESR_ELx_EC_SVC32]		= "SVC (AArch32)",
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
