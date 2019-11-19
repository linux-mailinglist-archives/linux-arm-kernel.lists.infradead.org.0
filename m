Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30871102488
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xJuq9OC5PYF9OeIwxeOP4n8pSbViomUaaTPushyP+jE=; b=nSaW5NdK3J0gmI4NrSk/6KrSJQ
	LYKH42cmbkzCGpuXPdUS+riglPDe1mnMyoPkFAR3J35b+NJnB8kiRuRzz3yoqx9LaIPStwcpHnfWo
	ufrkkX1iEBTVqRKheeZuzGGj6PESO1dWOyAJzU2A3M769C8McHtYeYtTW1/bs3UsbjKJRJF1dt5jW
	Gfx6s+Hnk76JPbClphwrLjtpZgLz2OzMmVLms9cFYmDPV4ZmWXuRIWPKisedWHoStkqtDuKGyq+0a
	VIEzvy+5h3m/g7o7VdeWO0rHrSeANax+dUVS1uqNwvSHiPCZYZ9Lg63aTLfCBJkN/P71kmRGorK5c
	UqtSiHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2jW-0001ir-HI; Tue, 19 Nov 2019 12:35:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2hH-0007AP-EE
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60E0E1FB;
 Tue, 19 Nov 2019 04:33:30 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E5B523F703;
 Tue, 19 Nov 2019 04:33:26 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/14] arm64: mask PAC bits of __builtin_return_address
Date: Tue, 19 Nov 2019 18:02:20 +0530
Message-Id: <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043331_627772_F76219F9 
X-CRM114-Status: GOOD (  13.44  )
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

This patch redefines __builtin_return_address to mask pac bits
when Pointer Authentication is enabled. As __builtin_return_address
is used mostly used to refer to the caller function symbol address
so masking runtime generated pac bits will help to find the match.

This change fixes the utilities like cat /proc/vmallocinfo to now
show the correct logs.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Change since last version:
 * Comment modified.

 arch/arm64/Kconfig                |  1 +
 arch/arm64/include/asm/compiler.h | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm64/include/asm/compiler.h

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 998248e..c1844de 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -117,6 +117,7 @@ config ARM64
 	select HAVE_ALIGNED_STRUCT_PAGE if SLUB
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_BITREVERSE
+	select HAVE_ARCH_COMPILER_H
 	select HAVE_ARCH_HUGE_VMAP
 	select HAVE_ARCH_JUMP_LABEL
 	select HAVE_ARCH_JUMP_LABEL_RELATIVE
diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
new file mode 100644
index 0000000..5efe310
--- /dev/null
+++ b/arch/arm64/include/asm/compiler.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_ARM_COMPILER_H
+#define __ASM_ARM_COMPILER_H
+
+#ifndef __ASSEMBLY__
+
+#if defined(CONFIG_ARM64_PTR_AUTH)
+
+/* As TBI1 is disabled currently, so bits 63:56 also has PAC */
+#define __builtin_return_address(val)				\
+	(void *)((unsigned long)__builtin_return_address(val) |	\
+	(GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS)))
+#endif
+
+#endif
+
+#endif /* __ASM_ARM_COMPILER_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
