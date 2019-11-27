Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB1210B604
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJq72BrPC9WeiF8aS3/9Y4kc6xy6VzvF+/UTD9Fyvy0=; b=rc/gsIKmIOzqKM
	pVuZuDZJwts3jwtqbcOcWr9MecHRu1MfRbHPpbqpUFOP/7HSXYWpvkFGWCKFlWesnm3cqvqTyqr5w
	cVaawV+0hbMTqTe/T7PqJ02Y4DpGDgfv5DFQjOOiG/D6gB7+RnvYoIaCoODXHn+OqGvCcACD/jBTp
	spW7lv+udotYjnXWtvKmUsyyPFDc75k2bJWKAfWkYkmIgyrCiBaLupMcchlHbUVeVVw4K4Cv8MrZY
	BoQrQVhrInlYK8/6wJxsXaObDep/I93TrSYQPkEwbhiLio1Fcd5dybP8/aVzaH365RgKcdk8ppJSz
	6uMDs+f8HIO8LrU/8z0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2KV-0002mv-Fo; Wed, 27 Nov 2019 18:46:23 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2JB-0000ls-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:45:05 +0000
Received: by mail-qk1-x743.google.com with SMTP id x1so5714436qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=FcqPaEmX1C8efPcruT1Ss1wL4IPrdaYzf7CQNMsgj94=;
 b=eznVBLONWH9RFdeS+JWy0FGl8QAD+vm34z6dm1k2p5zZ7HI/8kjI36VWlkWqDfubeh
 lEd78mcbZwoqmJ7F5+KAxxTIFaBL6G9fSDL8/ukeSwC810swC1cKx9/8HSV0NBoFKg9Y
 wIoaXrXkUeM4AXY49Bsoo3CAOCUB2fs01Fq7BYq1L9JH3lV+TdRn8+jEueaUdGkkk4UY
 HB/rqkhuzNEPqEkkNmO5FnRFsFjekB5xmmsdDbY4BPP94oCrK94N4kQcUAL42YPfuFt0
 1MyFLFDzOXAT5KmLPlFmxy00UWnou60rtqyNAyWi5fDUd5HVt5zlKYcp3I7NjXNzN3r5
 FlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FcqPaEmX1C8efPcruT1Ss1wL4IPrdaYzf7CQNMsgj94=;
 b=COFKfjvdlNARk2QDJbSpraejEEZ9Chhidbd8R/SQSks1VDxtlunUJzfhmKO2os9Vau
 1WVpxrJqYr9oBo1z5FrabryqEihfTN5QIcrsqyVjXeVa1UAoVW2W4eewYuZlkKnQfWpP
 Hyg0N7wMS65O15+4AJbwPjTaspdAo0FHd9M2m1y4RWiCetZFGXHulUxnlWwYkcGG+xK7
 CQN5z1x6Y94eXHHx6sikR8nVpUiVhkgn850IUvkbCFcQ3oQSiK04fmBkQQCaB+soojqR
 PVON+3TlBecUgqWniy7670aihkbnUe8F5uX45oDdQdp3ykrYKZl4U/BgVACoyLm9Pjii
 fAiw==
X-Gm-Message-State: APjAAAWEnya9c0LWTOsy24AdIN4l0ngCCiZRHQojhDF6d8XiKmDJDiSQ
 NsjkOm84Gd2G8Fa/nw4R6boxPA==
X-Google-Smtp-Source: APXvYqxODZjoyu3d3RGASH7OUduNJ/cZUXkrbGjWhw9cRiiL8AHlBVoF9V2wf1+s54sFfgF+kEcm/g==
X-Received: by 2002:a37:61c2:: with SMTP id v185mr6048615qkb.429.1574880300941; 
 Wed, 27 Nov 2019 10:45:00 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o62sm2748024qte.76.2019.11.27.10.44.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:45:00 -0800 (PST)
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
Date: Wed, 27 Nov 2019 13:44:53 -0500
Message-Id: <20191127184453.229321-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127184453.229321-1-pasha.tatashin@soleen.com>
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104501_977697_1CFD050C 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

For now move them to entry.S where they are used. Eventually,
these macros should be replaced with C wrappers to reduce the
maintenance burden.

Also, once these macros are unified with the C counterparts, it
is a good idea to check that PAN is in correct state on every
enable/disable calls.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 39 ----------------------------
 arch/arm64/kernel/entry.S            | 27 ++++++++++++++++++-
 arch/arm64/lib/clear_user.S          |  2 +-
 arch/arm64/lib/copy_from_user.S      |  2 +-
 arch/arm64/lib/copy_in_user.S        |  2 +-
 arch/arm64/lib/copy_to_user.S        |  2 +-
 arch/arm64/mm/cache.S                |  1 -
 7 files changed, 30 insertions(+), 45 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
deleted file mode 100644
index fba2a69f7fef..000000000000
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ /dev/null
@@ -1,39 +0,0 @@
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
-
-#endif
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 583f71abbe98..446d90ab31af 100644
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
@@ -143,6 +143,31 @@ alternative_cb_end
 #endif
 	.endm
 
+#ifdef CONFIG_ARM64_SW_TTBR0_PAN
+	.macro	__uaccess_ttbr0_disable, tmp1
+	mrs	\tmp1, ttbr1_el1		// swapper_pg_dir
+	bic	\tmp1, \tmp1, #TTBR_ASID_MASK
+	sub	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE // reserved_ttbr0 just before swapper_pg_dir
+	msr	ttbr0_el1, \tmp1		// set reserved TTBR0_EL1
+	isb
+	add	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE
+	msr	ttbr1_el1, \tmp1		// set reserved ASID
+	isb
+	.endm
+
+	.macro	__uaccess_ttbr0_enable, tmp1, tmp2
+	get_current_task \tmp1
+	ldr	\tmp1, [\tmp1, #TSK_TI_TTBR0]	// load saved TTBR0_EL1
+	mrs	\tmp2, ttbr1_el1
+	extr	\tmp2, \tmp2, \tmp1, #48
+	ror	\tmp2, \tmp2, #16
+	msr	ttbr1_el1, \tmp2		// set the active ASID
+	isb
+	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
+	isb
+	.endm
+#endif
+
 	.macro	kernel_entry, el, regsize = 64
 	.if	\regsize == 32
 	mov	w0, w0				// zero upper 32 bits of x0
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
index a48b6dba304e..f7130c30d6e3 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -12,7 +12,6 @@
 #include <asm/assembler.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
-#include <asm/asm-uaccess.h>
 
 /*
  *	__asm_flush_icache_range(start,end)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
