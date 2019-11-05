Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51333F078D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xeqP01y6PbgMbsORtIyIVsFT+0sLOc8S3HBntM2voCg=; b=tw7OY3d2W6qS6FvEcGG4BBILRA
	CN8jGLfuVzVRJy9iv42qVJ6Py7Dvbqd9KykottikaB64Ty4TTz1TfSJ3VZOVfbWZ/+peZCmHmtL/j
	bQcDj/7onpj83UobcUHbHLfMEEZSPfYy9woNxeihfQrzb9nWcZqS9ByDODlvM3GRrr2LN3tjnhtIZ
	9c0+AH6yxGfcKyMqSLPha6haY+OPlG1L6RUhf5U/Hspur4V1HpPVPhCkjYXQGjrlyLLThF2UsJRpb
	iaate4SFO79dveAN0oTOAPfmf/iCjBme203pvHUN3WJytWfJgMGh67TffopfSG5kGnDOQmVRR4U1b
	W1IlGUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5x4-0008ET-Gw; Tue, 05 Nov 2019 21:01:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5v2-0005Cw-3P
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:17 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70FB4222C2;
 Tue,  5 Nov 2019 20:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987555;
 bh=pF/45MoP1mKXx4O/iiK0a5z3wGuZvQx00S7i6NGHUjg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x9OY9j6/ruXwcziZZdgk4h+SAB9ty9eiH0pG3TNZAQHgC0nG1a4zcQrdshmFNyWnL
 c43PhyGBUx3cUJ+kGieg08GG1/4KgN4ca3JIOkesxcGzKzdOgaeIVrB0l6IPQvXNIa
 KKjP4LJkqhOznIJGyjGOFnDtdEYJYxw/0UVGV2vY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 06/53] ARM: uaccess: remove put_user() code
 duplication
Date: Tue,  5 Nov 2019 21:57:59 +0100
Message-Id: <20191105205846.1394-7-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125916_189067_B2DF1CCC 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@arm.linux.org.uk>

Commit 9f73bd8bb445e0cbe4bcef6d4cfc788f1e184007 upstream.

Remove the code duplication between put_user() and __put_user().  The
code which selected the implementation based upon the pointer size, and
declared the local variable to hold the value to be put are common to
both implementations.

Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/uaccess.h | 106 +++++++++-----------
 1 file changed, 49 insertions(+), 57 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 35c9db857ebe..b0f9269bef1c 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -238,49 +238,23 @@ extern int __put_user_2(void *, unsigned int);
 extern int __put_user_4(void *, unsigned int);
 extern int __put_user_8(void *, unsigned long long);
 
-#define __put_user_x(__r2, __p, __e, __l, __s)				\
-	   __asm__ __volatile__ (					\
-		__asmeq("%0", "r0") __asmeq("%2", "r2")			\
-		__asmeq("%3", "r1")					\
-		"bl	__put_user_" #__s				\
-		: "=&r" (__e)						\
-		: "0" (__p), "r" (__r2), "r" (__l)			\
-		: "ip", "lr", "cc")
-
-#define __put_user_check(x, p)						\
+#define __put_user_check(__pu_val, __ptr, __err, __s)			\
 	({								\
 		unsigned long __limit = current_thread_info()->addr_limit - 1; \
-		const typeof(*(p)) __user *__tmp_p = (p);		\
-		register const typeof(*(p)) __r2 asm("r2") = (x);	\
-		register const typeof(*(p)) __user *__p asm("r0") = __tmp_p; \
+		register typeof(__pu_val) __r2 asm("r2") = __pu_val;	\
+		register const void __user *__p asm("r0") = __ptr;	\
 		register unsigned long __l asm("r1") = __limit;		\
 		register int __e asm("r0");				\
-		unsigned int __ua_flags = uaccess_save_and_enable();	\
-		switch (sizeof(*(__p))) {				\
-		case 1:							\
-			__put_user_x(__r2, __p, __e, __l, 1);		\
-			break;						\
-		case 2:							\
-			__put_user_x(__r2, __p, __e, __l, 2);		\
-			break;						\
-		case 4:							\
-			__put_user_x(__r2, __p, __e, __l, 4);		\
-			break;						\
-		case 8:							\
-			__put_user_x(__r2, __p, __e, __l, 8);		\
-			break;						\
-		default: __e = __put_user_bad(); break;			\
-		}							\
-		uaccess_restore(__ua_flags);				\
-		__e;							\
+		__asm__ __volatile__ (					\
+			__asmeq("%0", "r0") __asmeq("%2", "r2")		\
+			__asmeq("%3", "r1")				\
+			"bl	__put_user_" #__s			\
+			: "=&r" (__e)					\
+			: "0" (__p), "r" (__r2), "r" (__l)		\
+			: "ip", "lr", "cc");				\
+		__err = __e;						\
 	})
 
-#define put_user(x, p)							\
-	({								\
-		might_fault();						\
-		__put_user_check(x, p);					\
-	 })
-
 #else /* CONFIG_MMU */
 
 /*
@@ -298,7 +272,7 @@ static inline void set_fs(mm_segment_t fs)
 }
 
 #define get_user(x, p)	__get_user(x, p)
-#define put_user(x, p)	__put_user(x, p)
+#define __put_user_check __put_user_nocheck
 
 #endif /* CONFIG_MMU */
 
@@ -389,36 +363,54 @@ do {									\
 #define __get_user_asm_word(x, addr, err)			\
 	__get_user_asm(x, addr, err, ldr)
 
+
+#define __put_user_switch(x, ptr, __err, __fn)				\
+	do {								\
+		const __typeof__(*(ptr)) __user *__pu_ptr = (ptr);	\
+		__typeof__(*(ptr)) __pu_val = (x);			\
+		unsigned int __ua_flags;				\
+		might_fault();						\
+		__ua_flags = uaccess_save_and_enable();			\
+		switch (sizeof(*(ptr))) {				\
+		case 1: __fn(__pu_val, __pu_ptr, __err, 1); break;	\
+		case 2:	__fn(__pu_val, __pu_ptr, __err, 2); break;	\
+		case 4:	__fn(__pu_val, __pu_ptr, __err, 4); break;	\
+		case 8:	__fn(__pu_val, __pu_ptr, __err, 8); break;	\
+		default: __err = __put_user_bad(); break;		\
+		}							\
+		uaccess_restore(__ua_flags);				\
+	} while (0)
+
+#define put_user(x, ptr)						\
+({									\
+	int __pu_err = 0;						\
+	__put_user_switch((x), (ptr), __pu_err, __put_user_check);	\
+	__pu_err;							\
+})
+
 #define __put_user(x, ptr)						\
 ({									\
 	long __pu_err = 0;						\
-	__put_user_err((x), (ptr), __pu_err);				\
+	__put_user_switch((x), (ptr), __pu_err, __put_user_nocheck);	\
 	__pu_err;							\
 })
 
 #define __put_user_error(x, ptr, err)					\
 ({									\
-	__put_user_err((x), (ptr), err);				\
+	__put_user_switch((x), (ptr), (err), __put_user_nocheck);	\
 	(void) 0;							\
 })
 
-#define __put_user_err(x, ptr, err)					\
-do {									\
-	unsigned long __pu_addr = (unsigned long)(ptr);			\
-	unsigned int __ua_flags;					\
-	__typeof__(*(ptr)) __pu_val = (x);				\
-	__chk_user_ptr(ptr);						\
-	might_fault();							\
-	__ua_flags = uaccess_save_and_enable();				\
-	switch (sizeof(*(ptr))) {					\
-	case 1: __put_user_asm_byte(__pu_val, __pu_addr, err);	break;	\
-	case 2: __put_user_asm_half(__pu_val, __pu_addr, err);	break;	\
-	case 4: __put_user_asm_word(__pu_val, __pu_addr, err);	break;	\
-	case 8:	__put_user_asm_dword(__pu_val, __pu_addr, err);	break;	\
-	default: __put_user_bad();					\
-	}								\
-	uaccess_restore(__ua_flags);					\
-} while (0)
+#define __put_user_nocheck(x, __pu_ptr, __err, __size)			\
+	do {								\
+		unsigned long __pu_addr = (unsigned long)__pu_ptr;	\
+		__put_user_nocheck_##__size(x, __pu_addr, __err);	\
+	} while (0)
+
+#define __put_user_nocheck_1 __put_user_asm_byte
+#define __put_user_nocheck_2 __put_user_asm_half
+#define __put_user_nocheck_4 __put_user_asm_word
+#define __put_user_nocheck_8 __put_user_asm_dword
 
 #define __put_user_asm(x, __pu_addr, err, instr)		\
 	__asm__ __volatile__(					\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
