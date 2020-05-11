Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BBC1CDAB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZE09nsQQzgFaMRbkF2wJmf1xusVBDkR4YM2pn72pWXU=; b=oZr
	Z5zwKNWR3KEuwLfau59PWCxtMJyPSkNFFtOZou0yOyvEuBVLlh0P1ch94xM+HKzVQqINzLL+4rAjU
	yqBEZq8cHPuMIQoWuVFtStoDWV27kng9ZNgnSV2FUEehComn9YOXbZZsHBVC8/T0XkRFXIPfUKu6X
	3dQgoqLsNicXuzWs9vAnCb2idIjgxkPsbUfAvXQZMW0RV+KjO1YOKALjBzPEnw7jwfSNKHLM91tIb
	9QDOsFDxTvHfZJOb/0IahrURO8zLRZEqrSKM/Q52icej+TfENoKA6fsRAde+x8srCGbqys8Hcl9rw
	TjXD4LmwEC6ZMJN0VOqbFPiW8H12FiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY84m-0005wx-RV; Mon, 11 May 2020 13:02:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY84V-0005u7-II; Mon, 11 May 2020 13:02:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E454D6E;
 Mon, 11 May 2020 06:02:13 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 548B83F68F;
 Mon, 11 May 2020 06:02:10 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] arm64/crash_core: Export KERNELPACMASK in vmcoreinfo
Date: Mon, 11 May 2020 18:31:55 +0530
Message-Id: <1589202116-18265-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060215_693667_167ED4E1 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recently arm64 linux kernel added support for Armv8.3-A Pointer
Authentication feature. If this feature is enabled in the kernel and the
hardware supports address authentication then the return addresses are
signed and stored in the stack to prevent ROP kind of attack. Kdump tool
will now dump the kernel with signed lr values in the stack.

Any user analysis tool for this kernel dump may need the kernel pac mask
information in vmcoreinfo to generate the correct return address for
stacktrace purpose as well as to resolve the symbol name.

This patch is similar to commit ec6e822d1a22d0eef ("arm64: expose user PAC
bit positions via ptrace") which exposes pac mask information via ptrace
interfaces.

The config gaurd ARM64_PTR_AUTH is removed form asm/compiler.h so macros
like ptrauth_kernel_pac_mask can be used ungaurded. This config protection
is confusing as the pointer authentication feature may be missing at
runtime even though this config is present.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v2:
* Removed CONFIG_ARM64_PTR_AUTH config guard as suggested by Will.
* A commit log change.

An implementation of this new KERNELPACMASK vmcoreinfo field used by crash
tool can be found here[1]. This change is accepted by crash utility
maintainer [2].

[1]: https://www.redhat.com/archives/crash-utility/2020-April/msg00095.html
[2]: https://www.redhat.com/archives/crash-utility/2020-April/msg00099.html

 arch/arm64/include/asm/compiler.h | 4 ----
 arch/arm64/kernel/crash_core.c    | 4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
index eece20d..51a7ce8 100644
--- a/arch/arm64/include/asm/compiler.h
+++ b/arch/arm64/include/asm/compiler.h
@@ -2,8 +2,6 @@
 #ifndef __ASM_COMPILER_H
 #define __ASM_COMPILER_H
 
-#if defined(CONFIG_ARM64_PTR_AUTH)
-
 /*
  * The EL0/EL1 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
@@ -19,6 +17,4 @@
 #define __builtin_return_address(val)					\
 	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
 
-#endif /* CONFIG_ARM64_PTR_AUTH */
-
 #endif /* __ASM_COMPILER_H */
diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
index ca4c3e1..1f646b0 100644
--- a/arch/arm64/kernel/crash_core.c
+++ b/arch/arm64/kernel/crash_core.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/crash_core.h>
+#include <asm/cpufeature.h>
 #include <asm/memory.h>
 
 void arch_crash_save_vmcoreinfo(void)
@@ -16,4 +17,7 @@ void arch_crash_save_vmcoreinfo(void)
 	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
 						PHYS_OFFSET);
 	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
+	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
+						system_supports_address_auth() ?
+						ptrauth_kernel_pac_mask() : 0);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
