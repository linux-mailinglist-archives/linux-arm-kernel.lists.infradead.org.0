Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBE131900
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muPY49brGgL44d0kvh6sYuu07hiUl+ktb3mwx9XR08Q=; b=ey2FxCiARvqpqX
	WGKoaQSI6FYbRSFpFMWMTTFkyw4/osZTLE2Dd74cXE6gq28a/XUe3LhvgX9GTRp9k3yh4qKHb4PEt
	zwH3GCf4XRgqDImKgCMRndtM7DcXTcjfrUR7YDWveAXXVvrZDp0kq3VXuOxi4rpme2uiQ1wRJV3MG
	fujE1S6DxzQ+YofCSomNQng8BIMCHlKbbCDbLi93h2JZZyw/bluZ51bQpBTAWEmDfSiMnbyheNYjY
	Mg8DQV42aNXtwVXOfRToI60kH1b/65LR0AINeZ4Qa4LaGQlt8OarSMGyChfZ8T128pfxN5geMoAD5
	CwDWRTPxaCEYi1W1R8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYeT-0004qS-Tk; Mon, 06 Jan 2020 20:07:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYdu-0004SY-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:06:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BB951007;
 Mon,  6 Jan 2020 12:06:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E6E43F534;
 Mon,  6 Jan 2020 12:06:24 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/3] arm64: lib: Use modern annotations for assembly functions
Date: Mon,  6 Jan 2020 19:58:17 +0000
Message-Id: <20200106195818.56351-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200106195818.56351-1-broonie@kernel.org>
References: <20200106195818.56351-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120627_023323_CF38D12F 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC and also add a new annotation for static functions which previously
had no ENTRY equivalent. Update the annotations in the library code to the
new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/lib/clear_page.S     |  4 ++--
 arch/arm64/lib/clear_user.S     |  4 ++--
 arch/arm64/lib/copy_from_user.S |  4 ++--
 arch/arm64/lib/copy_in_user.S   |  4 ++--
 arch/arm64/lib/copy_page.S      |  4 ++--
 arch/arm64/lib/copy_to_user.S   |  4 ++--
 arch/arm64/lib/crc32.S          |  8 ++++----
 arch/arm64/lib/memchr.S         |  4 ++--
 arch/arm64/lib/memcmp.S         |  4 ++--
 arch/arm64/lib/memcpy.S         |  8 ++++----
 arch/arm64/lib/memmove.S        |  8 ++++----
 arch/arm64/lib/memset.S         |  8 ++++----
 arch/arm64/lib/strchr.S         |  4 ++--
 arch/arm64/lib/strcmp.S         |  4 ++--
 arch/arm64/lib/strlen.S         |  4 ++--
 arch/arm64/lib/strncmp.S        |  4 ++--
 arch/arm64/lib/strnlen.S        |  4 ++--
 arch/arm64/lib/strrchr.S        |  4 ++--
 arch/arm64/lib/tishift.S        | 12 ++++++------
 19 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/arch/arm64/lib/clear_page.S b/arch/arm64/lib/clear_page.S
index 78a9ef66288a..073acbf02a7c 100644
--- a/arch/arm64/lib/clear_page.S
+++ b/arch/arm64/lib/clear_page.S
@@ -14,7 +14,7 @@
  * Parameters:
  *	x0 - dest
  */
-ENTRY(clear_page)
+SYM_FUNC_START(clear_page)
 	mrs	x1, dczid_el0
 	and	w1, w1, #0xf
 	mov	x2, #4
@@ -25,5 +25,5 @@ ENTRY(clear_page)
 	tst	x0, #(PAGE_SIZE - 1)
 	b.ne	1b
 	ret
-ENDPROC(clear_page)
+SYM_FUNC_END(clear_page)
 EXPORT_SYMBOL(clear_page)
diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index aeafc03e961a..48a3a26eff66 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -19,7 +19,7 @@
  *
  * Alignment fixed up by hardware.
  */
-ENTRY(__arch_clear_user)
+SYM_FUNC_START(__arch_clear_user)
 	mov	x2, x1			// save the size for fixup return
 	subs	x1, x1, #8
 	b.mi	2f
@@ -40,7 +40,7 @@ uao_user_alternative 9f, strh, sttrh, wzr, x0, 2
 uao_user_alternative 9f, strb, sttrb, wzr, x0, 0
 5:	mov	x0, #0
 	ret
-ENDPROC(__arch_clear_user)
+SYM_FUNC_END(__arch_clear_user)
 EXPORT_SYMBOL(__arch_clear_user)
 
 	.section .fixup,"ax"
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index ebb3c06cbb5d..8e25e89ad01f 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -53,12 +53,12 @@
 	.endm
 
 end	.req	x5
-ENTRY(__arch_copy_from_user)
+SYM_FUNC_START(__arch_copy_from_user)
 	add	end, x0, x2
 #include "copy_template.S"
 	mov	x0, #0				// Nothing to copy
 	ret
-ENDPROC(__arch_copy_from_user)
+SYM_FUNC_END(__arch_copy_from_user)
 EXPORT_SYMBOL(__arch_copy_from_user)
 
 	.section .fixup,"ax"
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 3d8153a1ebce..667139013ed1 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -55,12 +55,12 @@
 
 end	.req	x5
 
-ENTRY(__arch_copy_in_user)
+SYM_FUNC_START(__arch_copy_in_user)
 	add	end, x0, x2
 #include "copy_template.S"
 	mov	x0, #0
 	ret
-ENDPROC(__arch_copy_in_user)
+SYM_FUNC_END(__arch_copy_in_user)
 EXPORT_SYMBOL(__arch_copy_in_user)
 
 	.section .fixup,"ax"
diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..e125a84eb400 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -17,7 +17,7 @@
  *	x0 - dest
  *	x1 - src
  */
-ENTRY(copy_page)
+SYM_FUNC_START(copy_page)
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	// Prefetch three cache lines ahead.
 	prfm	pldl1strm, [x1, #128]
@@ -75,5 +75,5 @@ alternative_else_nop_endif
 	stnp	x16, x17, [x0, #112]
 
 	ret
-ENDPROC(copy_page)
+SYM_FUNC_END(copy_page)
 EXPORT_SYMBOL(copy_page)
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 357eae2c18eb..1a104d0089f3 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -52,12 +52,12 @@
 	.endm
 
 end	.req	x5
-ENTRY(__arch_copy_to_user)
+SYM_FUNC_START(__arch_copy_to_user)
 	add	end, x0, x2
 #include "copy_template.S"
 	mov	x0, #0
 	ret
-ENDPROC(__arch_copy_to_user)
+SYM_FUNC_END(__arch_copy_to_user)
 EXPORT_SYMBOL(__arch_copy_to_user)
 
 	.section .fixup,"ax"
diff --git a/arch/arm64/lib/crc32.S b/arch/arm64/lib/crc32.S
index e6135f16649b..243e107e9896 100644
--- a/arch/arm64/lib/crc32.S
+++ b/arch/arm64/lib/crc32.S
@@ -85,17 +85,17 @@ CPU_BE(	rev16		w3, w3		)
 	.endm
 
 	.align		5
-ENTRY(crc32_le)
+SYM_FUNC_START(crc32_le)
 alternative_if_not ARM64_HAS_CRC32
 	b		crc32_le_base
 alternative_else_nop_endif
 	__crc32
-ENDPROC(crc32_le)
+SYM_FUNC_END(crc32_le)
 
 	.align		5
-ENTRY(__crc32c_le)
+SYM_FUNC_START(__crc32c_le)
 alternative_if_not ARM64_HAS_CRC32
 	b		__crc32c_le_base
 alternative_else_nop_endif
 	__crc32		c
-ENDPROC(__crc32c_le)
+SYM_FUNC_END(__crc32c_le)
diff --git a/arch/arm64/lib/memchr.S b/arch/arm64/lib/memchr.S
index 48a3ab636e4f..99910c5d5db7 100644
--- a/arch/arm64/lib/memchr.S
+++ b/arch/arm64/lib/memchr.S
@@ -19,7 +19,7 @@
  * Returns:
  *	x0 - address of first occurrence of 'c' or 0
  */
-WEAK(memchr)
+SYM_FUNC_START_PI_WEAK(memchr)
 	and	w1, w1, #0xff
 1:	subs	x2, x2, #1
 	b.mi	2f
@@ -30,5 +30,5 @@ WEAK(memchr)
 	ret
 2:	mov	x0, #0
 	ret
-ENDPIPROC(memchr)
+SYM_FUNC_END_PI(memchr)
 EXPORT_SYMBOL_NOKASAN(memchr)
diff --git a/arch/arm64/lib/memcmp.S b/arch/arm64/lib/memcmp.S
index b297bdaaf549..b889f312bdb3 100644
--- a/arch/arm64/lib/memcmp.S
+++ b/arch/arm64/lib/memcmp.S
@@ -46,7 +46,7 @@ pos		.req	x11
 limit_wd	.req	x12
 mask		.req	x13
 
-WEAK(memcmp)
+SYM_FUNC_START_PI_WEAK(memcmp)
 	cbz	limit, .Lret0
 	eor	tmp1, src1, src2
 	tst	tmp1, #7
@@ -243,5 +243,5 @@ CPU_LE( rev	data2, data2 )
 .Lret0:
 	mov	result, #0
 	ret
-ENDPIPROC(memcmp)
+SYM_FUNC_END_PI(memcmp)
 EXPORT_SYMBOL_NOKASAN(memcmp)
diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index d79f48994dbb..9f382adfa88a 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -57,11 +57,11 @@
 	.endm
 
 	.weak memcpy
-ENTRY(__memcpy)
-ENTRY(memcpy)
+SYM_FUNC_START_ALIAS(__memcpy)
+SYM_FUNC_START_PI(memcpy)
 #include "copy_template.S"
 	ret
-ENDPIPROC(memcpy)
+SYM_FUNC_END_PI(memcpy)
 EXPORT_SYMBOL(memcpy)
-ENDPROC(__memcpy)
+SYM_FUNC_END_ALIAS(__memcpy)
 EXPORT_SYMBOL(__memcpy)
diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
index 784775136480..02cda2e33bde 100644
--- a/arch/arm64/lib/memmove.S
+++ b/arch/arm64/lib/memmove.S
@@ -46,8 +46,8 @@ D_l	.req	x13
 D_h	.req	x14
 
 	.weak memmove
-ENTRY(__memmove)
-ENTRY(memmove)
+SYM_FUNC_START_ALIAS(__memmove)
+SYM_FUNC_START_PI(memmove)
 	cmp	dstin, src
 	b.lo	__memcpy
 	add	tmp1, src, count
@@ -184,7 +184,7 @@ ENTRY(memmove)
 	tst	count, #0x3f
 	b.ne	.Ltail63
 	ret
-ENDPIPROC(memmove)
+SYM_FUNC_END_PI(memmove)
 EXPORT_SYMBOL(memmove)
-ENDPROC(__memmove)
+SYM_FUNC_END_ALIAS(__memmove)
 EXPORT_SYMBOL(__memmove)
diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
index 9fb97e6bc560..77c3c7ba0084 100644
--- a/arch/arm64/lib/memset.S
+++ b/arch/arm64/lib/memset.S
@@ -43,8 +43,8 @@ tmp3w		.req	w9
 tmp3		.req	x9
 
 	.weak memset
-ENTRY(__memset)
-ENTRY(memset)
+SYM_FUNC_START_ALIAS(__memset)
+SYM_FUNC_START_PI(memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
@@ -203,7 +203,7 @@ ENTRY(memset)
 	ands	count, count, zva_bits_x
 	b.ne	.Ltail_maybe_long
 	ret
-ENDPIPROC(memset)
+SYM_FUNC_END_PI(memset)
 EXPORT_SYMBOL(memset)
-ENDPROC(__memset)
+SYM_FUNC_END_ALIAS(__memset)
 EXPORT_SYMBOL(__memset)
diff --git a/arch/arm64/lib/strchr.S b/arch/arm64/lib/strchr.S
index ca3ec18171a4..1f47eae3b0d6 100644
--- a/arch/arm64/lib/strchr.S
+++ b/arch/arm64/lib/strchr.S
@@ -18,7 +18,7 @@
  * Returns:
  *	x0 - address of first occurrence of 'c' or 0
  */
-WEAK(strchr)
+SYM_FUNC_START_WEAK(strchr)
 	and	w1, w1, #0xff
 1:	ldrb	w2, [x0], #1
 	cmp	w2, w1
@@ -28,5 +28,5 @@ WEAK(strchr)
 	cmp	w2, w1
 	csel	x0, x0, xzr, eq
 	ret
-ENDPROC(strchr)
+SYM_FUNC_END(strchr)
 EXPORT_SYMBOL_NOKASAN(strchr)
diff --git a/arch/arm64/lib/strcmp.S b/arch/arm64/lib/strcmp.S
index e9aefbe0b740..5f9bb9094d1f 100644
--- a/arch/arm64/lib/strcmp.S
+++ b/arch/arm64/lib/strcmp.S
@@ -48,7 +48,7 @@ tmp3		.req	x9
 zeroones	.req	x10
 pos		.req	x11
 
-WEAK(strcmp)
+SYM_FUNC_START_PI_WEAK(strcmp)
 	eor	tmp1, src1, src2
 	mov	zeroones, #REP8_01
 	tst	tmp1, #7
@@ -219,5 +219,5 @@ CPU_BE(	orr	syndrome, diff, has_nul )
 	lsr	data1, data1, #56
 	sub	result, data1, data2, lsr #56
 	ret
-ENDPIPROC(strcmp)
+SYM_FUNC_END_PI(strcmp)
 EXPORT_SYMBOL_NOKASAN(strcmp)
diff --git a/arch/arm64/lib/strlen.S b/arch/arm64/lib/strlen.S
index 87b0cb066915..f71b4b94d4b2 100644
--- a/arch/arm64/lib/strlen.S
+++ b/arch/arm64/lib/strlen.S
@@ -44,7 +44,7 @@ pos		.req	x12
 #define REP8_7f 0x7f7f7f7f7f7f7f7f
 #define REP8_80 0x8080808080808080
 
-WEAK(strlen)
+SYM_FUNC_START_PI_WEAK(strlen)
 	mov	zeroones, #REP8_01
 	bic	src, srcin, #15
 	ands	tmp1, srcin, #15
@@ -111,5 +111,5 @@ CPU_LE( lsr	tmp2, tmp2, tmp1 )	/* Shift (tmp1 & 63).  */
 	csinv	data1, data1, xzr, le
 	csel	data2, data2, data2a, le
 	b	.Lrealigned
-ENDPIPROC(strlen)
+SYM_FUNC_END_PI(strlen)
 EXPORT_SYMBOL_NOKASAN(strlen)
diff --git a/arch/arm64/lib/strncmp.S b/arch/arm64/lib/strncmp.S
index f571581888fa..6df88cd9c6f2 100644
--- a/arch/arm64/lib/strncmp.S
+++ b/arch/arm64/lib/strncmp.S
@@ -52,7 +52,7 @@ limit_wd	.req	x13
 mask		.req	x14
 endloop		.req	x15
 
-WEAK(strncmp)
+SYM_FUNC_START_PI_WEAK(strncmp)
 	cbz	limit, .Lret0
 	eor	tmp1, src1, src2
 	mov	zeroones, #REP8_01
@@ -295,5 +295,5 @@ CPU_BE( orr	syndrome, diff, has_nul )
 .Lret0:
 	mov	result, #0
 	ret
-ENDPIPROC(strncmp)
+SYM_FUNC_END_PI(strncmp)
 EXPORT_SYMBOL_NOKASAN(strncmp)
diff --git a/arch/arm64/lib/strnlen.S b/arch/arm64/lib/strnlen.S
index c0bac9493c68..2fadeeff6ff4 100644
--- a/arch/arm64/lib/strnlen.S
+++ b/arch/arm64/lib/strnlen.S
@@ -47,7 +47,7 @@ limit_wd	.req	x14
 #define REP8_7f 0x7f7f7f7f7f7f7f7f
 #define REP8_80 0x8080808080808080
 
-WEAK(strnlen)
+SYM_FUNC_START_PI_WEAK(strnlen)
 	cbz	limit, .Lhit_limit
 	mov	zeroones, #REP8_01
 	bic	src, srcin, #15
@@ -156,5 +156,5 @@ CPU_LE( lsr	tmp2, tmp2, tmp4 )	/* Shift (tmp1 & 63).  */
 .Lhit_limit:
 	mov	len, limit
 	ret
-ENDPIPROC(strnlen)
+SYM_FUNC_END_PI(strnlen)
 EXPORT_SYMBOL_NOKASAN(strnlen)
diff --git a/arch/arm64/lib/strrchr.S b/arch/arm64/lib/strrchr.S
index 794ac49ea433..9a9936e0c6f3 100644
--- a/arch/arm64/lib/strrchr.S
+++ b/arch/arm64/lib/strrchr.S
@@ -18,7 +18,7 @@
  * Returns:
  *	x0 - address of last occurrence of 'c' or 0
  */
-WEAK(strrchr)
+SYM_FUNC_START_PI_WEAK(strrchr)
 	mov	x3, #0
 	and	w1, w1, #0xff
 1:	ldrb	w2, [x0], #1
@@ -29,5 +29,5 @@ WEAK(strrchr)
 	b	1b
 2:	mov	x0, x3
 	ret
-ENDPIPROC(strrchr)
+SYM_FUNC_END_PI(strrchr)
 EXPORT_SYMBOL_NOKASAN(strrchr)
diff --git a/arch/arm64/lib/tishift.S b/arch/arm64/lib/tishift.S
index 047622536535..a88613834fb0 100644
--- a/arch/arm64/lib/tishift.S
+++ b/arch/arm64/lib/tishift.S
@@ -7,7 +7,7 @@
 
 #include <asm/assembler.h>
 
-ENTRY(__ashlti3)
+SYM_FUNC_START(__ashlti3)
 	cbz	x2, 1f
 	mov	x3, #64
 	sub	x3, x3, x2
@@ -26,10 +26,10 @@ ENTRY(__ashlti3)
 	lsl	x1, x0, x1
 	mov	x0, x2
 	ret
-ENDPROC(__ashlti3)
+SYM_FUNC_END(__ashlti3)
 EXPORT_SYMBOL(__ashlti3)
 
-ENTRY(__ashrti3)
+SYM_FUNC_START(__ashrti3)
 	cbz	x2, 1f
 	mov	x3, #64
 	sub	x3, x3, x2
@@ -48,10 +48,10 @@ ENTRY(__ashrti3)
 	asr	x0, x1, x0
 	mov	x1, x2
 	ret
-ENDPROC(__ashrti3)
+SYM_FUNC_END(__ashrti3)
 EXPORT_SYMBOL(__ashrti3)
 
-ENTRY(__lshrti3)
+SYM_FUNC_START(__lshrti3)
 	cbz	x2, 1f
 	mov	x3, #64
 	sub	x3, x3, x2
@@ -70,5 +70,5 @@ ENTRY(__lshrti3)
 	lsr	x0, x1, x0
 	mov	x1, x2
 	ret
-ENDPROC(__lshrti3)
+SYM_FUNC_END(__lshrti3)
 EXPORT_SYMBOL(__lshrti3)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
