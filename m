Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C7ADDAD5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 22:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LmCK67vlyWFyIaRv2/wfvGKcF+xFzasHU4LJP1KKlCM=; b=XD2LTrpwUrdFlD
	dQsVA/uuYQVO1s2NDXu7qeiS0Yhc5udXqWS4tZQDVQSUNaUpf0Z4m3ucFaLCVlh6T2jCzSudPHm7s
	ebeUTgKf0vHxiGNkxXkfp/H6sgQZZ6EcF1zeVBvJPAlJMFNxPGQZ99kqEEz16jUmbcyR1CvRSib0J
	P9RasAcqeD/6M67VnT8Ijuow847YnNZxvTmYJ39qzNpiQ7oK8GmoUvulqHmVI2xkG70/47T2xFNdT
	yC335KyYemXDxnbQw41i2Skv/UxmQsCbIrU0D4LX5MhRfW78i4jTc18FgkOHvNaGnglMpMX04KMWP
	UnT8Xr/riGkITnAPGLHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLvAl-0001Y1-RY; Sat, 19 Oct 2019 20:17:59 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLvAc-0001XD-9Y
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 20:17:52 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id E5003A133B;
 Sat, 19 Oct 2019 22:17:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id tS8T5X5iyvkP; Sat, 19 Oct 2019 22:17:43 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: uapi: Fix user space compile with musl libc
Date: Sat, 19 Oct 2019 22:17:17 +0200
Message-Id: <20191019201717.15358-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_131750_639036_3E012CE5 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
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
Cc: linux-api@vger.kernel.org, musl@lists.openwall.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

musl libc also defines the structures in their arch/aarch64/bits/signal.h
header file. Some applications like strace and gdb include both of them
and then the structure definitions are clashing and the build of these
user space applications fails.

This patch allows a libc to define a constant which tells the kernel
header file that the libc already defined these structures and that they
should not be defined by the kernel uapi header files any more to
prevent clashes. This is done in a similar way as it is already done for
other header files.

When this patch was accepted into the kernel I will also update musl
libc to define these constants.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Cc: stable@vger.kernel.org
---
 arch/arm64/include/uapi/asm/sigcontext.h | 13 +++++++++++++
 include/uapi/linux/libc-compat.h         | 20 ++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
index 8b0ebce92427..92d911146137 100644
--- a/arch/arm64/include/uapi/asm/sigcontext.h
+++ b/arch/arm64/include/uapi/asm/sigcontext.h
@@ -20,7 +20,9 @@
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
+#include <linux/libc-compat.h>
 
+#if __UAPI_DEF_SIGCONTEXT
 /*
  * Signal context structure - contains all info to do with the state
  * before the signal handler was invoked.
@@ -35,6 +37,7 @@ struct sigcontext {
 	/* 4K reserved for FP/SIMD state and future expansion */
 	__u8 __reserved[4096] __attribute__((__aligned__(16)));
 };
+#endif
 
 /*
  * Allocation of __reserved[]:
@@ -57,6 +60,7 @@ struct sigcontext {
  * generated when userspace does not opt in for any such extension.
  */
 
+#if __UAPI_DEF_AARCH64_CTX
 /*
  * Header to be used at the beginning of structures extending the user
  * context. Such structures must be placed after the rt_sigframe on the stack
@@ -67,7 +71,9 @@ struct _aarch64_ctx {
 	__u32 magic;
 	__u32 size;
 };
+#endif
 
+#if __UAPI_DEF_FPSIMD_CONTEXT
 #define FPSIMD_MAGIC	0x46508001
 
 struct fpsimd_context {
@@ -76,7 +82,9 @@ struct fpsimd_context {
 	__u32 fpcr;
 	__uint128_t vregs[32];
 };
+#endif
 
+#if __UAPI_DEF_ESR_CONTEXT
 /*
  * Note: similarly to all other integer fields, each V-register is stored in an
  * endianness-dependent format, with the byte at offset i from the start of the
@@ -93,7 +101,9 @@ struct esr_context {
 	struct _aarch64_ctx head;
 	__u64 esr;
 };
+#endif
 
+#if __UAPI_DEF_EXTRA_CONTEXT
 /*
  * extra_context: describes extra space in the signal frame for
  * additional structures that don't fit in sigcontext.__reserved[].
@@ -128,7 +138,9 @@ struct extra_context {
 	__u32 size; /* size in bytes of the extra space */
 	__u32 __reserved[3];
 };
+#endif
 
+#if __UAPI_DEF_SVE_CONTEXT
 #define SVE_MAGIC	0x53564501
 
 struct sve_context {
@@ -136,6 +148,7 @@ struct sve_context {
 	__u16 vl;
 	__u16 __reserved[3];
 };
+#endif
 
 #endif /* !__ASSEMBLY__ */
 
diff --git a/include/uapi/linux/libc-compat.h b/include/uapi/linux/libc-compat.h
index 8254c937c9f4..a863130f4638 100644
--- a/include/uapi/linux/libc-compat.h
+++ b/include/uapi/linux/libc-compat.h
@@ -264,4 +264,24 @@
 
 #endif /* __GLIBC__ */
 
+/* Definitions for arch/arm64/include/uapi/asm/sigcontext.h */
+#ifndef __UAPI_DEF_SIGCONTEXT
+#define __UAPI_DEF_SIGCONTEXT		1
+#endif
+#ifndef __UAPI_DEF_AARCH64_CTX
+#define __UAPI_DEF_AARCH64_CTX		1
+#endif
+#ifndef __UAPI_DEF_FPSIMD_CONTEXT
+#define __UAPI_DEF_FPSIMD_CONTEXT	1
+#endif
+#ifndef __UAPI_DEF_ESR_CONTEXT
+#define __UAPI_DEF_ESR_CONTEXT		1
+#endif
+#ifndef __UAPI_DEF_EXTRA_CONTEXT
+#define __UAPI_DEF_EXTRA_CONTEXT	1
+#endif
+#ifndef __UAPI_DEF_SVE_CONTEXT
+#define __UAPI_DEF_SVE_CONTEXT		1
+#endif
+
 #endif /* _UAPI_LIBC_COMPAT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
