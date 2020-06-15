Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C881F92FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7Pgh6D32u12s8DFyTtH17GT7iJyiObE4iypeovSL2w=; b=ADg2jh37DowsoC
	fSw1urkA5Uk+6IBaMTfWzuyhB3ffuniVbHFrOKjqqxeTLXa3KtZHFWSWJ/sXkOblWDZ5r7yqEgTWn
	pJfq3S5gH0al31SpBHrULPIZ6zJYkOiP2V0266CHensu6uW0lWz6papvDrLH+A6d5OaD/cPTpBbSn
	saBoCo5ZiLrTL3euBYyKTDW9k78HHMlvYNDcsz0yAIrdHCu6oCsdWe9wJkPYmfJe5JNu4nP2/0lBq
	EXnYmwzbp+E3CtsJTs8zU5aFvV6WWY1MRknU/niexo42F8MYEaif9Y8MucFp8Jrheh14ng7AP59GM
	UOu+VPqsekUKMMMwRK+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklBQ-0003mr-IM; Mon, 15 Jun 2020 09:13:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl35-0000kQ-Go
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:05:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id a9so18240119ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ha1AQyVj4DRUvyXwEFSTntA3g7Ne5gREhowQe8O2ELc=;
 b=X8CHaxPbHOr+NB7IYBBKrBwYVXUWqKeIqwJLsm7W8YgovyxJWTvJoiMp+cLAYOnmE5
 WUGmMMKM5rm1QtuDsfai1c+JoEseHYUe71r3HcrhwKCS5i7YOkoe7qv/x8Q7NpFrE7En
 sETxt6ycPxL12P+MO0P7+fr3hAymGDUQ9QKx7WNBbpWe5W8qB+6i7ZJJwfvaoig46Ube
 yxWrP95IjJ18RXwHebE7xm6ezBTFdorZPYy15SUuPkH+IWrLuvM/bpVVKQ3VtX5xEJLP
 8R9X8ICVw9mHQPBah2/sUyAOg8B7BLxrqkJTjYxzlgwOFEP8SuSt/7+6EnF+wmQCPw3K
 C0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ha1AQyVj4DRUvyXwEFSTntA3g7Ne5gREhowQe8O2ELc=;
 b=Asgh6H1hSWUBKIr32EgmpEGg23xzmcXgO4vcOLcpXRh/Ta3XG57ocn/T8rbIMhZuNH
 XMZE+Ydj5X1l153X+3D3bJGczxQ0ATtl3Ro8wiYkVTe5+EqRVPThB2jz5TXNsCe80/1d
 gBgu4AtoAjwEFmcP9Voyl+nVdVyNEVIZxZhDMJeTCnmq6KkHWWedKvrUfugDQk7a5RMw
 lZkpfnQl/IoX4w/l14b634zBGlEi/wuo8K3nPHwAsSTdESMyuVWdC3tIqiwxSXnQu6cW
 zai2BloUv9OOQpHAnqxcHDEawcHqIW+QcPoLd2bdFyHg6lVp+YfTyMvQyT0WNbeNb7Ip
 Nctw==
X-Gm-Message-State: AOAM531Lkas3EmFmvAVCmjAu5g3ZzSityHoVEF9V0jyz7X9QjYvmUH8g
 iCvs1S+IsnHqIjqhyEUG/5nkyg==
X-Google-Smtp-Source: ABdhPJzZW4zenkak0HMlCoaoE/xnvhRCyokQmQfLjSAbNrHwYZzzrZBiD0tPDk8no5KAmwSDl0BZtg==
X-Received: by 2002:a2e:1311:: with SMTP id 17mr12148476ljt.122.1592211897651; 
 Mon, 15 Jun 2020 02:04:57 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id c78sm5284434lfd.63.2020.06.15.02.04.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:04:56 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH 2/5 v10] ARM: Replace string mem* functions for KASan
Date: Mon, 15 Jun 2020 11:02:44 +0200
Message-Id: <20200615090247.5218-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200615090247.5218-1-linus.walleij@linaro.org>
References: <20200615090247.5218-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020459_895687_374AA6FF 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 kasan-dev@googlegroups.com, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <aryabinin@virtuozzo.com>

Functions like memset()/memmove()/memcpy() do a lot of memory
accesses.

If a bad pointer is passed to one of these functions it is important
to catch this. Compiler instrumentation cannot do this since these
functions are written in assembly.

KASan replaces these memory functions with instrumented variants.

The original functions are declared as weak symbols so that
the strong definitions in mm/kasan/kasan.c can replace them.

The original functions have aliases with a '__' prefix in their
name, so we can call the non-instrumented variant if needed.

We must use __memcpy()/__memset() in place of memcpy()/memset()
when we copy .data to RAM and when we clear .bss, because
kasan_early_init cannot be called before the initialization of
.data and .bss.

For the kernel compression and EFI libstub's custom string
libraries we need a special quirk: even if these are built
without KASan enabled, they rely on the global headers for their
custom string libraries, which means that e.g. memcpy()
will be defined to __memcpy() and we get link failures.
Since these implementations are written i C rather than
assembly we use e.g. __alias(memcpy) to redirected any
users back to the local implementation.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: kasan-dev@googlegroups.com
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org> # QEMU/KVM/mach-virt/LPAE/8G
Reported-by: Russell King - ARM Linux <linux@armlinux.org.uk>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v9->v10:
- Rebase on v5.8-rc1
ChangeLog v8->v9:
- Collect Ard's tags.
ChangeLog v7->v8:
- Use the less invasive version of handling the global redefines
  of the string functions in the decompressor: __alias() the
  functions locally in the library.
- Put in some more comments so readers of the code knows what
  is going on.
ChangeLog v6->v7:
- Move the hacks around __SANITIZE_ADDRESS__ into this file
- Edit the commit message
- Rebase on the other v2 patches
---
 arch/arm/boot/compressed/string.c | 19 +++++++++++++++++++
 arch/arm/include/asm/string.h     | 21 +++++++++++++++++++++
 arch/arm/kernel/head-common.S     |  4 ++--
 arch/arm/lib/memcpy.S             |  3 +++
 arch/arm/lib/memmove.S            |  5 ++++-
 arch/arm/lib/memset.S             |  3 +++
 6 files changed, 52 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/compressed/string.c b/arch/arm/boot/compressed/string.c
index ade5079bebbf..8c0fa276d994 100644
--- a/arch/arm/boot/compressed/string.c
+++ b/arch/arm/boot/compressed/string.c
@@ -7,6 +7,25 @@
 
 #include <linux/string.h>
 
+/*
+ * The decompressor is built without KASan but uses the same redirects as the
+ * rest of the kernel when CONFIG_KASAN is enabled, defining e.g. memcpy()
+ * to __memcpy() but since we are not linking with the main kernel string
+ * library in the decompressor, that will lead to link failures.
+ *
+ * Undefine KASan's versions, define the wrapped functions and alias them to
+ * the right names so that when e.g. __memcpy() appear in the code, it will
+ * still be linked to this local version of memcpy().
+ */
+#ifdef CONFIG_KASAN
+#undef memcpy
+#undef memmove
+#undef memset
+void *__memcpy(void *__dest, __const void *__src, size_t __n) __alias(memcpy);
+void *__memmove(void *__dest, __const void *__src, size_t count) __alias(memmove);
+void *__memset(void *s, int c, size_t count) __alias(memset);
+#endif
+
 void *memcpy(void *__dest, __const void *__src, size_t __n)
 {
 	int i = 0;
diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index 111a1d8a41dd..947f93037d87 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -5,6 +5,9 @@
 /*
  * We don't do inline string functions, since the
  * optimised inline asm versions are not small.
+ *
+ * The __underscore versions of some functions are for KASan to be able
+ * to replace them with instrumented versions.
  */
 
 #define __HAVE_ARCH_STRRCHR
@@ -15,15 +18,18 @@ extern char * strchr(const char * s, int c);
 
 #define __HAVE_ARCH_MEMCPY
 extern void * memcpy(void *, const void *, __kernel_size_t);
+extern void *__memcpy(void *dest, const void *src, __kernel_size_t n);
 
 #define __HAVE_ARCH_MEMMOVE
 extern void * memmove(void *, const void *, __kernel_size_t);
+extern void *__memmove(void *dest, const void *src, __kernel_size_t n);
 
 #define __HAVE_ARCH_MEMCHR
 extern void * memchr(const void *, int, __kernel_size_t);
 
 #define __HAVE_ARCH_MEMSET
 extern void * memset(void *, int, __kernel_size_t);
+extern void *__memset(void *s, int c, __kernel_size_t n);
 
 #define __HAVE_ARCH_MEMSET32
 extern void *__memset32(uint32_t *, uint32_t v, __kernel_size_t);
@@ -39,4 +45,19 @@ static inline void *memset64(uint64_t *p, uint64_t v, __kernel_size_t n)
 	return __memset64(p, v, n * 8, v >> 32);
 }
 
+/*
+ * For files that are not instrumented (e.g. mm/slub.c) we
+ * must use non-instrumented versions of the mem*
+ * functions named __memcpy() etc. All such kernel code has
+ * been tagged with KASAN_SANITIZE_file.o = n, which means
+ * that the address sanitization argument isn't passed to the
+ * compiler, and __SANITIZE_ADDRESS__ is not set. As a result
+ * these defines kick in.
+ */
+#if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
+#define memcpy(dst, src, len) __memcpy(dst, src, len)
+#define memmove(dst, src, len) __memmove(dst, src, len)
+#define memset(s, c, n) __memset(s, c, n)
+#endif
+
 #endif
diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
index 4a3982812a40..6840c7c60a85 100644
--- a/arch/arm/kernel/head-common.S
+++ b/arch/arm/kernel/head-common.S
@@ -95,7 +95,7 @@ __mmap_switched:
  THUMB(	ldmia	r4!, {r0, r1, r2, r3} )
  THUMB(	mov	sp, r3 )
 	sub	r2, r2, r1
-	bl	memcpy				@ copy .data to RAM
+	bl	__memcpy			@ copy .data to RAM
 #endif
 
    ARM(	ldmia	r4!, {r0, r1, sp} )
@@ -103,7 +103,7 @@ __mmap_switched:
  THUMB(	mov	sp, r3 )
 	sub	r2, r1, r0
 	mov	r1, #0
-	bl	memset				@ clear .bss
+	bl	__memset			@ clear .bss
 
 	ldmia	r4, {r0, r1, r2, r3}
 	str	r9, [r0]			@ Save processor ID
diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
index 09a333153dc6..ad4625d16e11 100644
--- a/arch/arm/lib/memcpy.S
+++ b/arch/arm/lib/memcpy.S
@@ -58,6 +58,8 @@
 
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
+.weak memcpy
+ENTRY(__memcpy)
 ENTRY(mmiocpy)
 ENTRY(memcpy)
 
@@ -65,3 +67,4 @@ ENTRY(memcpy)
 
 ENDPROC(memcpy)
 ENDPROC(mmiocpy)
+ENDPROC(__memcpy)
diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
index b50e5770fb44..fd123ea5a5a4 100644
--- a/arch/arm/lib/memmove.S
+++ b/arch/arm/lib/memmove.S
@@ -24,12 +24,14 @@
  * occurring in the opposite direction.
  */
 
+.weak memmove
+ENTRY(__memmove)
 ENTRY(memmove)
 	UNWIND(	.fnstart			)
 
 		subs	ip, r0, r1
 		cmphi	r2, ip
-		bls	memcpy
+		bls	__memcpy
 
 		stmfd	sp!, {r0, r4, lr}
 	UNWIND(	.fnend				)
@@ -222,3 +224,4 @@ ENTRY(memmove)
 18:		backward_copy_shift	push=24	pull=8
 
 ENDPROC(memmove)
+ENDPROC(__memmove)
diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
index 6ca4535c47fb..0e7ff0423f50 100644
--- a/arch/arm/lib/memset.S
+++ b/arch/arm/lib/memset.S
@@ -13,6 +13,8 @@
 	.text
 	.align	5
 
+.weak memset
+ENTRY(__memset)
 ENTRY(mmioset)
 ENTRY(memset)
 UNWIND( .fnstart         )
@@ -132,6 +134,7 @@ UNWIND( .fnstart            )
 UNWIND( .fnend   )
 ENDPROC(memset)
 ENDPROC(mmioset)
+ENDPROC(__memset)
 
 ENTRY(__memset32)
 UNWIND( .fnstart         )
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
