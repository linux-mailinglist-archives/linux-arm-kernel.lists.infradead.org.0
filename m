Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C218F158E56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyQEQvYykpW5WJqLZHbLZj3cPNgHqFik5an9M577r/s=; b=TyheV5AEmpIFDe
	wwR7gR3i7CkZt+pbDF3MoPRsMldVFmtpMyqS5AehqrDsi12OCNzaFxp5d/kKd05u8dvRxz5s8bRmq
	yg7BqoHybQjCtpk+fOMb5BmKZgvcIvVNe5dJeoq+tcB7Zl/hZ5fhLQbFi1/d9DO0/mz/1zXjubqAN
	8gQjj0tqAlK/8mRXSl4Sl6OvrgFCG6sSfkj3doHvlAltb9Bep6GO346krzR8KF6n+lGGuc2vwS/68
	cTqa6M1Dd1Ul4Wb+QIrOT1hKWCMub5waMmbmrJp8l4TTDe4D3+Z2cL+3S++spVdSnME60HxktMTjC
	vU446oZ2hjKf1bvHgu9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UXb-0000XY-LD; Tue, 11 Feb 2020 12:21:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UXH-0000P1-BX
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:21:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACFC931B;
 Tue, 11 Feb 2020 04:21:02 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3110E3F6CF;
 Tue, 11 Feb 2020 04:21:02 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/2] arm64: crypto: Modernize names for AES function macros
Date: Tue, 11 Feb 2020 12:20:53 +0000
Message-Id: <20200211122053.6079-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211122053.6079-1-broonie@kernel.org>
References: <20200211122053.6079-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042103_481095_CEC3FFF6 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the rest of the code has been converted to the modern START/END
macros the AES_ENTRY() and AES_ENDPROC() macros look out of place and
like they need updating. Rename them to AES_FUNC_START() and AES_FUNC_END()
to line up with the modern style assembly macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/crypto/aes-ce.S    |  4 +--
 arch/arm64/crypto/aes-modes.S | 48 +++++++++++++++++------------------
 arch/arm64/crypto/aes-neon.S  |  4 +--
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
index 45062553467f..1dc5bbbfeed2 100644
--- a/arch/arm64/crypto/aes-ce.S
+++ b/arch/arm64/crypto/aes-ce.S
@@ -9,8 +9,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-#define AES_ENTRY(func)		SYM_FUNC_START(ce_ ## func)
-#define AES_ENDPROC(func)	SYM_FUNC_END(ce_ ## func)
+#define AES_FUNC_START(func)		SYM_FUNC_START(ce_ ## func)
+#define AES_FUNC_END(func)		SYM_FUNC_END(ce_ ## func)
 
 	.arch		armv8-a+crypto
 
diff --git a/arch/arm64/crypto/aes-modes.S b/arch/arm64/crypto/aes-modes.S
index 8a2faa42b57e..cf618d8f6cec 100644
--- a/arch/arm64/crypto/aes-modes.S
+++ b/arch/arm64/crypto/aes-modes.S
@@ -51,7 +51,7 @@ SYM_FUNC_END(aes_decrypt_block5x)
 	 *		   int blocks)
 	 */
 
-AES_ENTRY(aes_ecb_encrypt)
+AES_FUNC_START(aes_ecb_encrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -79,10 +79,10 @@ ST5(	st1		{v4.16b}, [x0], #16		)
 .Lecbencout:
 	ldp		x29, x30, [sp], #16
 	ret
-AES_ENDPROC(aes_ecb_encrypt)
+AES_FUNC_END(aes_ecb_encrypt)
 
 
-AES_ENTRY(aes_ecb_decrypt)
+AES_FUNC_START(aes_ecb_decrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -110,7 +110,7 @@ ST5(	st1		{v4.16b}, [x0], #16		)
 .Lecbdecout:
 	ldp		x29, x30, [sp], #16
 	ret
-AES_ENDPROC(aes_ecb_decrypt)
+AES_FUNC_END(aes_ecb_decrypt)
 
 
 	/*
@@ -126,7 +126,7 @@ AES_ENDPROC(aes_ecb_decrypt)
 	 *			 u32 const rk2[]);
 	 */
 
-AES_ENTRY(aes_essiv_cbc_encrypt)
+AES_FUNC_START(aes_essiv_cbc_encrypt)
 	ld1		{v4.16b}, [x5]			/* get iv */
 
 	mov		w8, #14				/* AES-256: 14 rounds */
@@ -135,7 +135,7 @@ AES_ENTRY(aes_essiv_cbc_encrypt)
 	enc_switch_key	w3, x2, x6
 	b		.Lcbcencloop4x
 
-AES_ENTRY(aes_cbc_encrypt)
+AES_FUNC_START(aes_cbc_encrypt)
 	ld1		{v4.16b}, [x5]			/* get iv */
 	enc_prepare	w3, x2, x6
 
@@ -167,10 +167,10 @@ AES_ENTRY(aes_cbc_encrypt)
 .Lcbcencout:
 	st1		{v4.16b}, [x5]			/* return iv */
 	ret
-AES_ENDPROC(aes_cbc_encrypt)
-AES_ENDPROC(aes_essiv_cbc_encrypt)
+AES_FUNC_END(aes_cbc_encrypt)
+AES_FUNC_END(aes_essiv_cbc_encrypt)
 
-AES_ENTRY(aes_essiv_cbc_decrypt)
+AES_FUNC_START(aes_essiv_cbc_decrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -181,7 +181,7 @@ AES_ENTRY(aes_essiv_cbc_decrypt)
 	encrypt_block	cbciv, w8, x6, x7, w9
 	b		.Lessivcbcdecstart
 
-AES_ENTRY(aes_cbc_decrypt)
+AES_FUNC_START(aes_cbc_decrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -238,8 +238,8 @@ ST5(	st1		{v4.16b}, [x0], #16		)
 	st1		{cbciv.16b}, [x5]		/* return iv */
 	ldp		x29, x30, [sp], #16
 	ret
-AES_ENDPROC(aes_cbc_decrypt)
-AES_ENDPROC(aes_essiv_cbc_decrypt)
+AES_FUNC_END(aes_cbc_decrypt)
+AES_FUNC_END(aes_essiv_cbc_decrypt)
 
 
 	/*
@@ -249,7 +249,7 @@ AES_ENDPROC(aes_essiv_cbc_decrypt)
 	 *		       int rounds, int bytes, u8 const iv[])
 	 */
 
-AES_ENTRY(aes_cbc_cts_encrypt)
+AES_FUNC_START(aes_cbc_cts_encrypt)
 	adr_l		x8, .Lcts_permute_table
 	sub		x4, x4, #16
 	add		x9, x8, #32
@@ -276,9 +276,9 @@ AES_ENTRY(aes_cbc_cts_encrypt)
 	st1		{v0.16b}, [x4]			/* overlapping stores */
 	st1		{v1.16b}, [x0]
 	ret
-AES_ENDPROC(aes_cbc_cts_encrypt)
+AES_FUNC_END(aes_cbc_cts_encrypt)
 
-AES_ENTRY(aes_cbc_cts_decrypt)
+AES_FUNC_START(aes_cbc_cts_decrypt)
 	adr_l		x8, .Lcts_permute_table
 	sub		x4, x4, #16
 	add		x9, x8, #32
@@ -305,7 +305,7 @@ AES_ENTRY(aes_cbc_cts_decrypt)
 	st1		{v2.16b}, [x4]			/* overlapping stores */
 	st1		{v0.16b}, [x0]
 	ret
-AES_ENDPROC(aes_cbc_cts_decrypt)
+AES_FUNC_END(aes_cbc_cts_decrypt)
 
 	.section	".rodata", "a"
 	.align		6
@@ -324,7 +324,7 @@ AES_ENDPROC(aes_cbc_cts_decrypt)
 	 *		   int blocks, u8 ctr[])
 	 */
 
-AES_ENTRY(aes_ctr_encrypt)
+AES_FUNC_START(aes_ctr_encrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -409,7 +409,7 @@ ST5(	st1		{v4.16b}, [x0], #16		)
 	rev		x7, x7
 	ins		vctr.d[0], x7
 	b		.Lctrcarrydone
-AES_ENDPROC(aes_ctr_encrypt)
+AES_FUNC_END(aes_ctr_encrypt)
 
 
 	/*
@@ -433,7 +433,7 @@ AES_ENDPROC(aes_ctr_encrypt)
 	uzp1		xtsmask.4s, xtsmask.4s, \tmp\().4s
 	.endm
 
-AES_ENTRY(aes_xts_encrypt)
+AES_FUNC_START(aes_xts_encrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -518,9 +518,9 @@ AES_ENTRY(aes_xts_encrypt)
 	st1		{v2.16b}, [x4]			/* overlapping stores */
 	mov		w4, wzr
 	b		.Lxtsencctsout
-AES_ENDPROC(aes_xts_encrypt)
+AES_FUNC_END(aes_xts_encrypt)
 
-AES_ENTRY(aes_xts_decrypt)
+AES_FUNC_START(aes_xts_decrypt)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 
@@ -612,13 +612,13 @@ AES_ENTRY(aes_xts_decrypt)
 	st1		{v2.16b}, [x4]			/* overlapping stores */
 	mov		w4, wzr
 	b		.Lxtsdecctsout
-AES_ENDPROC(aes_xts_decrypt)
+AES_FUNC_END(aes_xts_decrypt)
 
 	/*
 	 * aes_mac_update(u8 const in[], u32 const rk[], int rounds,
 	 *		  int blocks, u8 dg[], int enc_before, int enc_after)
 	 */
-AES_ENTRY(aes_mac_update)
+AES_FUNC_START(aes_mac_update)
 	frame_push	6
 
 	mov		x19, x0
@@ -676,4 +676,4 @@ AES_ENTRY(aes_mac_update)
 	ld1		{v0.16b}, [x23]			/* get dg */
 	enc_prepare	w21, x20, x0
 	b		.Lmacloop4x
-AES_ENDPROC(aes_mac_update)
+AES_FUNC_END(aes_mac_update)
diff --git a/arch/arm64/crypto/aes-neon.S b/arch/arm64/crypto/aes-neon.S
index 247d34ddaab0..e47d3ec2cfb4 100644
--- a/arch/arm64/crypto/aes-neon.S
+++ b/arch/arm64/crypto/aes-neon.S
@@ -8,8 +8,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-#define AES_ENTRY(func)		SYM_FUNC_START(neon_ ## func)
-#define AES_ENDPROC(func)	SYM_FUNC_END(neon_ ## func)
+#define AES_FUNC_START(func)		SYM_FUNC_START(neon_ ## func)
+#define AES_FUNC_END(func)		SYM_FUNC_END(neon_ ## func)
 
 	xtsmask		.req	v7
 	cbciv		.req	v7
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
