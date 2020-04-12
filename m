Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5594A1A5BA2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K5SmhhVryskU+R33YFtJydA/9B8P5K0Xu/I+rXzFWE=; b=Fndzosj+UEoLd7
	YIJCkMYFBv5fSCpt8cB4sSMD2BPeT1Mqm2sFqKC7aTB4f9u16g5HE7Mlj4eVZFnu5QiDnaqdZmG3H
	Zy868IpAW6HBSO9ptHGp8TFZk0BbGebN/vefXbd0E73XaUTOEbFQxuGENRxkJU/3gI9iVN6b8qX6W
	Ic4aU8Q4tBKkFkEvT4bzqGBhEuPBIzJDPZUEf1/2o+GOUr/YekLHyW0Ts4D3Gz0qhwPcYWZEDvpqE
	68GxupBB0yBMvws6LuAituMmJ5JnPvXvV2MmoKi67bHtgZJrtcZYvofKa3PfFc+lX8g5ghK3uH7IH
	7crbytFfGR3Mv5jO82mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQTT-0003qv-OO; Sun, 12 Apr 2020 00:27:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQSz-0003eD-40
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:27:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id s13so3936465lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wwkk3VythQ0wU54UkyWVQEC2udEVTZXJIK9Z4kxpFQQ=;
 b=LXZp2q5leTqlGpI09Yxw9zMmgEAgwuna1AKO32tueFfa0eUudCEG5GsfrwXsRD8CJY
 mOeUVLf7d8snGxPBjlNnrJChoGVfcgHKqy4Gjhi3MV0+VbuscCMUlt+aXIfaav90oYC9
 cuZbcb+FH+NzcDVIxqmvORgvQ2z6pC8Lu/3K0EK6e8PsOKfxn3HS9hF/YIk2Tusx3UBx
 bpM4NTWUOPGv1wlsnHPw+Y1w5xpwNWyFrsNkPNtnJZIwPE6CUYe9K6rEeN6fspdoDCgh
 xwmLrAyym4vHTAugBM+ywQXnFrRqiwqBb2b6luQiJDBNzkr54EKHi2f3AKpAQUty2CnO
 uKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wwkk3VythQ0wU54UkyWVQEC2udEVTZXJIK9Z4kxpFQQ=;
 b=Yn4OAz83LBoGPRNyF/865KOdmyJRGXizPSCBrvOm8zXRKwjy4swzwi36+MeGPzLscR
 UaNT9pTO8cSdpvBAFeGQs1v4xjeWYIxpbzvk4b/YYJdw/tYx5XdDhKgEtc7AHrwENdwX
 CzyDYTBv9phDC0N/H8QvdCXqTohEMwC14YzFtfd0S+irQybHIOSuWq+PIlezqEhIkB0T
 NLNuPBz/h3EBs/P0BVCNktZpQSUyPEA+vWlpq9aYRtDzimvfDRtmPHhEtoKJEJE/ILRJ
 /0oDF9+fIC5M/ag9NV+E1ajH3J6WnQfSwOK96ytKPB7/m+l+5BTz0Da/KG8jA+i/WoG/
 xptQ==
X-Gm-Message-State: AGi0PuacMNAyECmCtQj96JOSkNPx27OH2vC83blpUZWJpfipkBvh/VkM
 vDFxWncvVZKc0u2TSyaxw7UR9A==
X-Google-Smtp-Source: APiQypI+/g7RM24yq9OS3jpqQKBAKKQMOleL3612mQgF/X7hWShi9VBikG9QUNhUozaZ4nt6PB8aTA==
X-Received: by 2002:ac2:519c:: with SMTP id u28mr6390162lfi.17.1586651235444; 
 Sat, 11 Apr 2020 17:27:15 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id x29sm4907345lfn.64.2020.04.11.17.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 17:27:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 2/5 v2] ARM: Replace memory functions for KASan
Date: Sun, 12 Apr 2020 02:24:04 +0200
Message-Id: <20200412002407.396790-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412002407.396790-1-linus.walleij@linaro.org>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_172717_157744_40E1C08C 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
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

For the kernel compression and EFI libstub we need to tag on
the -D__SANITIZE_ADDRESS__ CFLAG, which is unfortunate: this is
used only when building with KASan enabled.

When building with KASan, all mem*() functions such as memcpy()
etc are instrumented. However, code that disable KASan for an
entire directory with KASAN_SANITIZE := n in the Kconfig file will
run into problems if they try to use the mem*() functions, as the
define that guards the uninstrumented variants look like so:

  #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
  (...)
  define memcpy(dst, src, len) __memcpy(dst, src, len)
  (...)

As you see, KASAN is enabled, but the compilation procedure
relies on the Makefile passing -fsanitize=kernel-address
to the compiler for each instrumented file so that in turn
__SANITIZE_ADDRESS__ gets set and these weakly defined functions
are usually replaced with instrumented KASan variants.

If KASAN is enabled but __SANITIZE_ADDRESS__ is not set,
i.e. -fsanitize is not passed, the idea is that these #defines
kick in and define e.g. memcpy() to __memcpy() - all good.

Uncompress and libstub uses memcpy(), disables KASan with
KASAN_SANITIZE := n so CONFIG_KASAN is defined, but not
__SANITIZE_ADDRESS__ and we get a compilation error unless
we patch in -D__SANITIZE_ADDRESS__ to these Makefiles.

Reported-by: Russell King - ARM Linux <linux@armlinux.org.uk>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Move the hacks around __SANITIZE_ADDRESS__ into this file
- Edit the commit message
- Rebase on the other v2 patches
---
 arch/arm/boot/compressed/Makefile     |  2 ++
 arch/arm/include/asm/string.h         | 17 +++++++++++++++++
 arch/arm/kernel/head-common.S         |  4 ++--
 arch/arm/lib/memcpy.S                 |  3 +++
 arch/arm/lib/memmove.S                |  5 ++++-
 arch/arm/lib/memset.S                 |  3 +++
 drivers/firmware/efi/libstub/Makefile |  5 ++++-
 7 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index abd6f3d5c2ba..9d0316876052 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -25,6 +25,8 @@ endif
 
 GCOV_PROFILE		:= n
 KASAN_SANITIZE		:= n
+# Make sure we get the uninstrumented __mem*() functions
+CFLAGS_KERNEL		:= -D__SANITIZE_ADDRESS__
 
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT		:= n
diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index 111a1d8a41dd..2e1dd7a0cf63 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -15,15 +15,18 @@ extern char * strchr(const char * s, int c);
 
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
@@ -39,4 +42,18 @@ static inline void *memset64(uint64_t *p, uint64_t v, __kernel_size_t n)
 	return __memset64(p, v, n * 8, v >> 32);
 }
 
+
+
+#if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
+
+/*
+ * For files that are not instrumented (e.g. mm/slub.c) we
+ * must use non-instrumented versions of the mem* functions.
+ */
+
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
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..ea37c9c21273 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -19,9 +19,12 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ -O2 \
 # disable the stackleak plugin
 cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
+# Define __SANITIZE_ADDRESS__ in order to get the weak __mem*() functions
+# when building with KASan.
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
-				   $(call cc-option,-mno-single-pic-base)
+				   $(call cc-option,-mno-single-pic-base) \
+				   -D__SANITIZE_ADDRESS__
 
 cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
