Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF011381B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxalds1JrdrvlvK0S0TJ5Pks68mkwqaUbB//ZNyeSFU=; b=Af6k2RW8qccXjD
	Rdvhyh32P3AadADibMoCzKleyadRMT7ZxvOLoq96p5z24T4WuGi+Dh3M/QNZRWma6Vzb8QNot+VWu
	xa12Uv3ahLjznKb03sygXWYjPhGb29AZXlhR3tuvP0NrPVrn1mF8X+GET9nP8X5HBrB6Hjm4tNwFr
	4+PHCufhEEqGk6agaMLVsv0UyfrZgC7A2ta+X3jp/QgpI2qGwFcWV9OdqcnQmJXV4JnIWVS4sa4ar
	FFWbyREWOgGLrg0Li9/JmgGKSnxRQaf/DpAtb28rVFpUlj3R+RHYJ3FBYXdPuKasS5cgH/u0BLBKW
	BLkxaoo8f/uHLp1lyZ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdyp-0006fH-5v; Wed, 04 Dec 2019 23:22:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdxJ-0005EQ-9G
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:15 +0000
Received: by mail-qk1-x744.google.com with SMTP id a137so1656477qkc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZHIYboDwl4EWd97Tklkdkm+url9a5Lp8rxT6bERrC+M=;
 b=i1g8jJxL0yaISsSkQcVG1T+YRVLPQorkORTVckOF1ul4UmdgjxetevbONnxu7GHHR6
 WXK96ycRVB4k6ym6P0dlJ6VstgCOx1UZBEAX/OKcv1s2MPsWxgrk5CYfyx4cV6pd9Bw5
 jUsEz55BdSZdY6HhBAwTU4pjFn1ewPD8PlkxMk6lZhxQkCzDxJaV1DXZuXgeL6O172ce
 zJ2PNOb2JKEKgzLuvO8xUfDa7vPnEm7mX+/dOykrVC8c2EX4Wux0z26m27bI2YNOPLNh
 oAQa/+PV4LAQAqd/k1eK3LpIC4vlgv+RQN+BcKlhvKmUX7V+YJHfxJL87xtqtSABCsrW
 1OWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZHIYboDwl4EWd97Tklkdkm+url9a5Lp8rxT6bERrC+M=;
 b=oS4QgkG8nYjTztgMT4/DIoLM2N/q5+9zV8u4zOIoK55ru9v7apayjRNfSyMh0UaU2f
 sRvYKYCT4HWbJtps9UOB5W1DAc4mgLn85VBef42L785sIdANm9AA1BkI58tdyjjBMFht
 EksLrmoqzMU6Fuk+xBv5nX1OjDWUZNgmsHko/d3Ndo57xKKblMM9cqiFFARHIvuAQaHh
 0Erh/wZPant8zjqdbG37Ris54qD74xJ41XU6bImxJ0krVVu2qvdj6N4hfr9feuiubS2C
 +I6Ah0SssY5aYAVq1g8XIYq99EyaWxLj/vTWSvxYNSDEDvoO86F1kuvYArVaUElArrmy
 c3Ew==
X-Gm-Message-State: APjAAAWM7wWOaBopU/odcXMBKBPe4mngJnI8tW7vXo4jVW2kPpNdYFcb
 Y58yRsrTVKS1VyZEpD2kGX2/OA==
X-Google-Smtp-Source: APXvYqyth5Vky9Sws+q1XOgIKaCf88qENA0eXdBaqBMhh1L+UlvBd0q1SnZjvczRgcyocJAH0Tk8+g==
X-Received: by 2002:a37:6691:: with SMTP id a139mr5530912qkc.393.1575501671951; 
 Wed, 04 Dec 2019 15:21:11 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:11 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, sstabellini@kernel.org,
 boris.ostrovsky@oracle.com, jgross@suse.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, xen-devel@lists.xenproject.org,
 linux@armlinux.org.uk, andrew.cooper3@citrix.com, julien@xen.org
Subject: [PATCH v4 6/6] arm64: remove the rest of asm-uaccess.h
Date: Wed,  4 Dec 2019 18:20:58 -0500
Message-Id: <20191204232058.2500117-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152113_474787_D01C75B0 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 0093bb9fcd12..627be857b8d0 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -12,7 +12,6 @@
 #include <asm/assembler.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
-#include <asm/asm-uaccess.h>
 
 /*
  *	__asm_flush_cache_user_range(start,end)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
