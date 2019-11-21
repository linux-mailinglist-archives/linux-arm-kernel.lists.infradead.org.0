Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12001059F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bop8kcEeHti7Cgi1hBQ4LMAM0ZgHseSmsRMiYhBzLGQ=; b=n5q+Kb/dBjCCBr
	SCTDudXRSJBHw4UxfkEWGV4tgmLrdQq0YI+YSutHGPkkdOfmXQISdUEHmf4yaq/2+JpviBte9hBNL
	5usYjGdtQeWkItAz88z7Pyf3ypfFQ8Q00681n/0WGpLkmJQYgkrX4SkVkHehLHWoLVNPJkFDPnZFW
	TS+Mlixg69kuqiU1NlVaE+uwP3dmyhrc58O6A0d3ggCfCyrqf9hwhvZ4hTN6PzEnxxhrI68kzxHQN
	vE/bO4qq7qKhomDlakn3y+FdiCo1TtVWrF5I4izFauGEnm4/osrI1Wsaz7ZjTD8YJlyl8DkhrqdEd
	DuDcM7xVIE2BJv/7XKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrW4-00017A-Ng; Thu, 21 Nov 2019 18:49:20 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrV0-0000Wx-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:48:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id r20so4780883qtp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 10:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=axPPUV0SB+vUmPVZgPMEMsCF47yjKoLE+O1nnwx+cnE=;
 b=VnTNhd+EatzRBtm1XcR533FrbwGf6aLw7QhpytJvJy4EhUmmV/2yP3xUqt7lFpIi/t
 i00tZ43HaUGN66rML32ooET+jxlZHfUjfezLLaqjb7KDsRbZ7lg/mO/o8wZieqN8iJUT
 +QoonEXW0BfZhSTjghR2etYtEmgTJR3swErv6QzioOTvVMnXj1TSHJA4iDWgQiLXhhjH
 9LVv9m7VPOB1+Fmoo+7VAGCOJFyx6j4MokamjH8mcuP9caILW96vLHR71+Lg0ILl+jFT
 j2/ggw1yYD1pJ6Q7PnBcZPDVgy5c5TxvQGBJeoep+U8Q8XLVu0QurJEAGj5Be6Zayhiq
 V3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=axPPUV0SB+vUmPVZgPMEMsCF47yjKoLE+O1nnwx+cnE=;
 b=tsDUUJ4n+nUkBFWNZlLrR41Bjy57wl92je3BitJU5tPueaPfDLSWLtjDXC2mAUr0j/
 qHXGiJLtec+nfGQ1xSUoXFN8z7XkKKcJNjvZ0QW3Mbgs7EdD4qujeoSigFXJV01P94XK
 VcuEmkaXWo/gqmJthJXHel5H45cQjBVouXektZxxGxMWtwZg1XpubIK2eKSyNd+UyLHi
 CjFlKSu01gLxQmDdirwld0hFunrvxZTXNzRXl+fTEXw7UpPYW58XUb3y7zdzSJKWHAm3
 VOe5S26ihSMukNOGVSkikCW86USex28t4z+DaXRhdOlM5LTDJOriMjMDq0pNzkL6qWCh
 dQFA==
X-Gm-Message-State: APjAAAU7FmbArcoXBcL/QGc0Sav22+LG/HJPfizjj7/N82Ap4MzkacjS
 KhQ+4PewGENWKF+aMbsRshTRLg==
X-Google-Smtp-Source: APXvYqysL5MlYKABTCqCZbfEZQ5tWNC+olDXlMCWgPK4umyOQbgkypKnzsUF0Z83ZrFlAdJbpxiFTw==
X-Received: by 2002:ac8:2d2d:: with SMTP id n42mr10008350qta.119.1574362092735; 
 Thu, 21 Nov 2019 10:48:12 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t2sm1811634qkt.95.2019.11.21.10.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 10:48:12 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH 3/3] arm64: remove the rest of asm-uaccess.h
Date: Thu, 21 Nov 2019 13:48:05 -0500
Message-Id: <20191121184805.414758-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121184805.414758-1-pasha.tatashin@soleen.com>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_104814_129144_4F7B87D5 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
are the last two macros defined in asm-uaccess.h.

Replace them with C wrappers and call C functions from
kernel_entry and kernel_exit.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 38 ----------------------------
 arch/arm64/kernel/entry.S            |  6 ++---
 arch/arm64/lib/clear_user.S          |  2 +-
 arch/arm64/lib/copy_from_user.S      |  2 +-
 arch/arm64/lib/copy_in_user.S        |  2 +-
 arch/arm64/lib/copy_to_user.S        |  2 +-
 arch/arm64/mm/cache.S                |  1 -
 arch/arm64/mm/context.c              | 12 +++++++++
 arch/xtensa/kernel/coprocessor.S     |  1 -
 9 files changed, 19 insertions(+), 47 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
deleted file mode 100644
index 8f763e5b41b1..000000000000
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __ASM_ASM_UACCESS_H
-#define __ASM_ASM_UACCESS_H
-
-#include <asm/alternative.h>
-#include <asm/kernel-pgtable.h>
-#include <asm/mmu.h>
-#include <asm/sysreg.h>
-#include <asm/assembler.h>
-
-/*
- * User access enabling/disabling macros.
- */
-#ifdef CONFIG_ARM64_SW_TTBR0_PAN
-	.macro	__uaccess_ttbr0_disable, tmp1
-	mrs	\tmp1, ttbr1_el1			// swapper_pg_dir
-	bic	\tmp1, \tmp1, #TTBR_ASID_MASK
-	sub	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE	// reserved_ttbr0 just before swapper_pg_dir
-	msr	ttbr0_el1, \tmp1			// set reserved TTBR0_EL1
-	isb
-	add	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE
-	msr	ttbr1_el1, \tmp1		// set reserved ASID
-	isb
-	.endm
-
-	.macro	__uaccess_ttbr0_enable, tmp1, tmp2
-	get_current_task \tmp1
-	ldr	\tmp1, [\tmp1, #TSK_TI_TTBR0]	// load saved TTBR0_EL1
-	mrs	\tmp2, ttbr1_el1
-	extr    \tmp2, \tmp2, \tmp1, #48
-	ror     \tmp2, \tmp2, #16
-	msr	ttbr1_el1, \tmp2		// set the active ASID
-	isb
-	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
-	isb
-	.endm
-#endif
-#endif
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 583f71abbe98..c7b571e6d0f2 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -22,8 +22,8 @@
 #include <asm/mmu.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
+#include <asm/kernel-pgtable.h>
 #include <asm/thread_info.h>
-#include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
 
 /*
@@ -219,7 +219,7 @@ alternative_else_nop_endif
 	and	x23, x23, #~PSR_PAN_BIT		// Clear the emulated PAN in the saved SPSR
 	.endif
 
-	__uaccess_ttbr0_disable x21
+	bl __uaccess_ttbr0_disable_c
 1:
 #endif
 
@@ -293,7 +293,7 @@ alternative_else_nop_endif
 	tbnz	x22, #22, 1f			// Skip re-enabling TTBR0 access if the PSR_PAN_BIT is set
 	.endif
 
-	__uaccess_ttbr0_enable x0, x1
+	bl	__uaccess_ttbr0_enable_c
 
 	.if	\el == 0
 	/*
diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index aeafc03e961a..b0b4a86a09e2 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -6,7 +6,7 @@
  */
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 
 	.text
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index ebb3c06cbb5d..142bc7505518 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -5,7 +5,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 3d8153a1ebce..04dc48ca26f7 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -7,7 +7,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 357eae2c18eb..8f3218ae88ab 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -5,7 +5,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index 408d317a47d2..7940d6ef5da5 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -12,7 +12,6 @@
 #include <asm/assembler.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
-#include <asm/asm-uaccess.h>
 
 /*
  *	__arch_flush_icache_range(start,end)
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b5e329fde2dd..4fc32c504dea 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -237,6 +237,18 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		cpu_switch_mm(mm->pgd, mm);
 }
 
+#ifdef CONFIG_ARM64_SW_TTBR0_PAN
+asmlinkage void __uaccess_ttbr0_enable_c(void)
+{
+	__uaccess_ttbr0_enable();
+}
+
+asmlinkage void __uaccess_ttbr0_disable_c(void)
+{
+	__uaccess_ttbr0_disable();
+}
+#endif
+
 /* Errata workaround post TTBRx_EL1 update. */
 asmlinkage void post_ttbr_update_workaround(void)
 {
diff --git a/arch/xtensa/kernel/coprocessor.S b/arch/xtensa/kernel/coprocessor.S
index 80828b95a51f..6329d17e2aa0 100644
--- a/arch/xtensa/kernel/coprocessor.S
+++ b/arch/xtensa/kernel/coprocessor.S
@@ -18,7 +18,6 @@
 #include <asm/processor.h>
 #include <asm/coprocessor.h>
 #include <asm/thread_info.h>
-#include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
 #include <asm/ptrace.h>
 #include <asm/current.h>
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
