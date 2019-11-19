Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216E210248C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lQa6GzCdG47xczExgh0aNwcP9deAFccYCTTGMPG0ARQ=; b=spR1wnv0ZyxecoBiuQj4vstRjY
	m4bDvX6FzaLc26e/oWMN2YCb+oBOXHOmz/LAMCHYPjjXJHfwSwvI+di6bcZNdTeI6cRd1/B3FKJRj
	2qu2eQSbIFdmru3Ar0edN7FAYBdDceIvn2NW4sNsyVqr3mMl5LQ+0RtXJgr8ilLkONb5m5112Vav6
	h28v1JaeKSMwP+1DYPp1r+GbOqAEhTuFa5+8xjNvBSAIh3p86G6lAYUtW0VKW5yxZxHmCKjiKDNMO
	fGPB76XeSYL0cJdSgTVec3iFoHrALFdWzexpn+vkrkmt/NxG3SMYiH5lSaGgTLYbuH1T+0kGvnYOT
	MM9B4Zlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2k6-0002PQ-EH; Tue, 19 Nov 2019 12:36:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2hT-0007JH-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 316791FB;
 Tue, 19 Nov 2019 04:33:42 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AEB433F703;
 Tue, 19 Nov 2019 04:33:38 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/14] arm64: suspend: restore the kernel ptrauth keys
Date: Tue, 19 Nov 2019 18:02:23 +0530
Message-Id: <1574166746-27197-12-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043343_570557_D1CCE401 
X-CRM114-Status: UNSURE (   9.40  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch restores the kernel keys from current task during
cpu resume after the mmu is turned on and ptrauth is enabled.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Change since last version:
 * None

 arch/arm64/kernel/sleep.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 7b2f2e6..a6e9460 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -2,6 +2,7 @@
 #include <linux/errno.h>
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
+#include <asm/asm_pointer_auth.h>
 #include <asm/assembler.h>
 #include <asm/smp.h>
 
@@ -139,6 +140,11 @@ ENTRY(_cpu_resume)
 	bl	kasan_unpoison_task_stack_below
 #endif
 
+#ifdef CONFIG_ARM64_PTR_AUTH
+	get_current_task x1
+	ptrauth_keys_install_kernel x1, x2, x3, x4
+#endif
+
 	ldp	x19, x20, [x29, #16]
 	ldp	x21, x22, [x29, #32]
 	ldp	x23, x24, [x29, #48]
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
