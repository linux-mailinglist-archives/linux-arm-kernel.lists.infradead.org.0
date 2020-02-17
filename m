Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66F5160E9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Gqw8AYmaqzkRU3xviCszloso5y4KoPwObNvM2c/peM=; b=h2V5qOZDAYCIrWlfdRkm1anGEE
	jUHmsPaX4WXCnfJSmktJKSUEynKN4OLveG6rtzvuQOwaZMruFZcao2GZr35wej+H0TbWlyiNt9JqM
	nFjcz+D9eZHiHy/hHWeoiFjgYWyK5B6n8hjRxrMcyWBO+Z7ZwzdwDE/wL4HRKa1t8uWp0IAoPf4Pm
	ak2yMdZYnywO490rmTQAuuxQGYvFv9bBNTf/Kr6MpAaamzX0KTCF5RIm6NUuKueFU7wBkXJtnHkdp
	yIb40xl8wrBNVTyepQpJkAYlwzmwfEhb/A/YZMWS5x6HWVUdhMro2s3pIUZ4ivOL1eWxoD0grTSgB
	/WyY3VBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cl4-00020W-Jk; Mon, 17 Feb 2020 09:32:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ci9-0006RY-4v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:29:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C387328;
 Mon, 17 Feb 2020 01:29:04 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8EFA93F6CF;
 Mon, 17 Feb 2020 01:29:00 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 14/17] arm64: suspend: restore the kernel ptrauth keys
Date: Mon, 17 Feb 2020 14:57:45 +0530
Message-Id: <1581931668-11559-15-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012905_260769_EFAFD674 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch restores the kernel keys from current task during
cpu resume after the mmu is turned on and ptrauth is enabled.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/kernel/sleep.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 7b2f2e6..f9db925 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -2,6 +2,7 @@
 #include <linux/errno.h>
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
+#include <asm/asm_pointer_auth.h>
 #include <asm/assembler.h>
 #include <asm/smp.h>
 
@@ -134,6 +135,11 @@ ENTRY(_cpu_resume)
 	 */
 	bl	cpu_do_resume
 
+#ifdef CONFIG_ARM64_PTR_AUTH
+	get_current_task x1
+	ptrauth_keys_install_kernel x1, x2, x3, x4
+#endif
+
 #ifdef CONFIG_KASAN
 	mov	x0, sp
 	bl	kasan_unpoison_task_stack_below
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
