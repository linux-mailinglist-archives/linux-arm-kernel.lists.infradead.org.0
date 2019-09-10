Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2DDAF335
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 01:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V4aEgUl3Poeei+1/IwWUzR2VBgHbaLOuQV1YFVP4f5k=; b=n5U3ziXGF7XLty9gz2vmyLq59C
	kRw7/77I2rLZgSXMR9XDbUBiTQkY6faotkQ2ocOJL9JbDdUejLNHtaNS/WdgOXC4Zu16xXwk+eHNL
	0yxwRfBTLBfaZyz3g1yZ0dTAQfawUqnSboejgI+t9UMu1TYC4skX/oDVHnfuSltt0Cqgvr8G7f4ra
	HK0W0ZXX6DpNhhM1lte9MUPWBHifqc1ZYtmFKj3KOL3WvKjCD7S0lZh46lOeywhBYFST7g8qEeTpN
	wxzGsT6WtsOxtkzRnljeqvswbzu54/ml8exWcyICQNy5A8aKSyg/Bi9Opn+26DAT/m2SXtFwwZJPI
	AXMpvgzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7pRB-00018m-Ah; Tue, 10 Sep 2019 23:20:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7pQ6-0007x1-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 23:19:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id w13so22369423wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 16:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NtofCXrViCdXCL+kihHyw58CmFK5QeADjCfLREXSGyU=;
 b=dLSdvJfX7/voUCauPFCXZ6T8FfQLvYFWW9rxmrQFoso6jKaW1FomwJn/ut6Eu3gRZQ
 mbKgseZ/yxxESVtOq4PDoPSjd1TdJFBmbY1tScwXglW9x52IXnPH+8LD989wCjlT6xno
 EOcxtDDRz2omJFHuGjEosoCa959yfVa1PC3um1iZuFMNjqI0kHdGgBewTN1dI7GuNBy1
 f/8Fho7gRP+jsK8y7LIeorJfZtWaW77HlTlemZKlP4RgCf11V1HlN4OqUXFxTEdEprsj
 NvPGf4bN6ra2HRgI0i4gNNfqR/x7jO+H4ut6f0RWxKpYmxZFrkkreDbBvORE4w0/NHes
 47nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NtofCXrViCdXCL+kihHyw58CmFK5QeADjCfLREXSGyU=;
 b=JLn4mIMfnsL5LjpcOx5hBfsh9KTgqVTYedb1jh/ijs5u39Duu5YHT+MnaNOeMa29K2
 UbbWoixPG/DmHY67Sqra8bY3T/Wzx5ZokQAK3L3bJM6b6RUFo1V6tqPC/w9iafpzFPCl
 lYpcZYazH/dlH1CEcplGe5L6L3R4nvm9ppqX41MG9Yot76BVo/KtQKOKiD6otOIHzQH3
 thBE9bV9Fs31eJj6ahQ19DHax7Z9mFX3FbjqLMHrZhzj47I0C0Dc/JG+WA63ZX9VLnvJ
 xThFy2wtBF2mkU48TNCS6pYSLaY5JFHg3quzXHSEhBpo4Sh+99rmccvgzbX4ba2fW7Pw
 eMEA==
X-Gm-Message-State: APjAAAWC+8PB/ZxL45gSaJMzNO039IbXdpMCtS5z+TaOfySjw4kb1U+P
 EhCEWSdiOfDEIf2Cl7zhJcfuhw==
X-Google-Smtp-Source: APXvYqyD1/cgwee5nnCyu7Ai/MYYpVx3cg50T4xMp9Sl48Y2v132yZUasN2JEVV0V5TtqcDv+BywzQ==
X-Received: by 2002:adf:a382:: with SMTP id l2mr27223297wrb.194.1568157570369; 
 Tue, 10 Sep 2019 16:19:30 -0700 (PDT)
Received: from e111045-lin.nice.arm.com ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id y186sm2137846wmb.41.2019.09.10.16.19.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 16:19:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 2/2] crypto: arm64/gcm-ce - implement 4 way interleave
Date: Wed, 11 Sep 2019 00:19:00 +0100
Message-Id: <20190910231900.25445-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910231900.25445-1-ard.biesheuvel@linaro.org>
References: <20190910231900.25445-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_161935_021797_7C9C2701 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marc.zyngier@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 ebiggers@google.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To improve performance on cores with deep pipelines such as ThunderX2,
reimplement gcm(aes) using a 4-way interleave rather than the 2-way
interleave we use currently.

This comes down to a complete rewrite of the GCM part of the combined
GCM/GHASH driver, and instead of interleaving two invocations of AES
with the GHASH handling at the instruction level, the new version
uses a more coarse grained approach where each chunk of 64 bytes is
encrypted first and then ghashed (or ghashed and then decrypted in
the converse case).

The core NEON routine is now able to consume inputs of any size,
and tail blocks of less than 64 bytes are handled using overlapping
loads and stores, and processed by the same 4-way encryption and
hashing routines. This gets rid of most of the branches, and avoids
having to return to the C code to handle the tail block using a
stack buffer.

The table below compares the performance of the old driver and the new
one on various micro-architectures and running in various modes.

        |     AES-128      |     AES-192      |     AES-256      |
 #bytes | 512 | 1500 |  4k | 512 | 1500 |  4k | 512 | 1500 |  4k |
 -------+-----+------+-----+-----+------+-----+-----+------+-----+
    TX2 | 35% |  23% | 11% | 34% |  20% |  9% | 38% |  25% | 16% |
   EMAG | 11% |   6% |  3% | 12% |   4% |  2% | 11% |   4% |  2% |
    A72 |  8% |   5% | -4% |  9% |   4% | -5% |  7% |   4% | -5% |
    A53 | 11% |   6% | -1% | 10% |   8% | -1% | 10% |   8% | -2% |

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/crypto/ghash-ce-core.S | 501 ++++++++++++++------
 arch/arm64/crypto/ghash-ce-glue.c | 293 +++++-------
 2 files changed, 467 insertions(+), 327 deletions(-)

diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
index 410e8afcf5a7..a791c4adf8e6 100644
--- a/arch/arm64/crypto/ghash-ce-core.S
+++ b/arch/arm64/crypto/ghash-ce-core.S
@@ -13,8 +13,8 @@
 	T1		.req	v2
 	T2		.req	v3
 	MASK		.req	v4
-	XL		.req	v5
-	XM		.req	v6
+	XM		.req	v5
+	XL		.req	v6
 	XH		.req	v7
 	IN1		.req	v7
 
@@ -358,20 +358,37 @@ ENTRY(pmull_ghash_update_p8)
 	__pmull_ghash	p8
 ENDPROC(pmull_ghash_update_p8)
 
-	KS0		.req	v12
-	KS1		.req	v13
-	INP0		.req	v14
-	INP1		.req	v15
-
-	.macro		load_round_keys, rounds, rk
-	cmp		\rounds, #12
-	blo		2222f		/* 128 bits */
-	beq		1111f		/* 192 bits */
-	ld1		{v17.4s-v18.4s}, [\rk], #32
-1111:	ld1		{v19.4s-v20.4s}, [\rk], #32
-2222:	ld1		{v21.4s-v24.4s}, [\rk], #64
-	ld1		{v25.4s-v28.4s}, [\rk], #64
-	ld1		{v29.4s-v31.4s}, [\rk]
+	KS0		.req	v8
+	KS1		.req	v9
+	KS2		.req	v10
+	KS3		.req	v11
+
+	INP0		.req	v21
+	INP1		.req	v22
+	INP2		.req	v23
+	INP3		.req	v24
+
+	K0		.req	v25
+	K1		.req	v26
+	K2		.req	v27
+	K3		.req	v28
+	K4		.req	v12
+	K5		.req	v13
+	K6		.req	v4
+	K7		.req	v5
+	K8		.req	v14
+	K9		.req	v15
+	KK		.req	v29
+	KL		.req	v30
+	KM		.req	v31
+
+	.macro		load_round_keys, rounds, rk, tmp
+	add		\tmp, \rk, #64
+	ld1		{K0.4s-K3.4s}, [\rk]
+	ld1		{K4.4s-K5.4s}, [\tmp]
+	add		\tmp, \rk, \rounds, lsl #4
+	sub		\tmp, \tmp, #32
+	ld1		{KK.4s-KM.4s}, [\tmp]
 	.endm
 
 	.macro		enc_round, state, key
@@ -379,197 +396,367 @@ ENDPROC(pmull_ghash_update_p8)
 	aesmc		\state\().16b, \state\().16b
 	.endm
 
-	.macro		enc_block, state, rounds
-	cmp		\rounds, #12
-	b.lo		2222f		/* 128 bits */
-	b.eq		1111f		/* 192 bits */
-	enc_round	\state, v17
-	enc_round	\state, v18
-1111:	enc_round	\state, v19
-	enc_round	\state, v20
-2222:	.irp		key, v21, v22, v23, v24, v25, v26, v27, v28, v29
+	.macro		enc_qround, s0, s1, s2, s3, key
+	enc_round	\s0, \key
+	enc_round	\s1, \key
+	enc_round	\s2, \key
+	enc_round	\s3, \key
+	.endm
+
+	.macro		enc_block, state, rounds, rk, tmp
+	add		\tmp, \rk, #96
+	ld1		{K6.4s-K7.4s}, [\tmp], #32
+	.irp		key, K0, K1, K2, K3, K4 K5
 	enc_round	\state, \key
 	.endr
-	aese		\state\().16b, v30.16b
-	eor		\state\().16b, \state\().16b, v31.16b
+
+	tbnz		\rounds, #2, .Lnot128_\@
+.Lout256_\@:
+	enc_round	\state, K6
+	enc_round	\state, K7
+
+.Lout192_\@:
+	enc_round	\state, KK
+	aese		\state\().16b, KL.16b
+	eor		\state\().16b, \state\().16b, KM.16b
+
+	.subsection	1
+.Lnot128_\@:
+	ld1		{K8.4s-K9.4s}, [\tmp], #32
+	enc_round	\state, K6
+	enc_round	\state, K7
+	ld1		{K6.4s-K7.4s}, [\tmp]
+	enc_round	\state, K8
+	enc_round	\state, K9
+	tbz		\rounds, #1, .Lout192_\@
+	b		.Lout256_\@
+	.previous
 	.endm
 
+	.align		6
 	.macro		pmull_gcm_do_crypt, enc
-	ld1		{SHASH.2d}, [x4], #16
-	ld1		{HH.2d}, [x4]
-	ld1		{XL.2d}, [x1]
-	ldr		x8, [x5, #8]			// load lower counter
+	stp		x29, x30, [sp, #-32]!
+	mov		x29, sp
+	str		x19, [sp, #24]
+
+	load_round_keys	x7, x6, x8
+
+	ld1		{SHASH.2d}, [x3], #16
+	ld1		{HH.2d-HH4.2d}, [x3]
 
-	movi		MASK.16b, #0xe1
 	trn1		SHASH2.2d, SHASH.2d, HH.2d
 	trn2		T1.2d, SHASH.2d, HH.2d
-CPU_LE(	rev		x8, x8		)
-	shl		MASK.2d, MASK.2d, #57
 	eor		SHASH2.16b, SHASH2.16b, T1.16b
 
-	.if		\enc == 1
-	ldr		x10, [sp]
-	ld1		{KS0.16b-KS1.16b}, [x10]
-	.endif
+	trn1		HH34.2d, HH3.2d, HH4.2d
+	trn2		T1.2d, HH3.2d, HH4.2d
+	eor		HH34.16b, HH34.16b, T1.16b
 
-	cbnz		x6, 4f
+	ld1		{XL.2d}, [x4]
 
-0:	ld1		{INP0.16b-INP1.16b}, [x3], #32
+	cbz		x0, 3f				// tag only?
 
-	rev		x9, x8
-	add		x11, x8, #1
-	add		x8, x8, #2
+	ldr		w8, [x5, #12]			// load lower counter
+CPU_LE(	rev		w8, w8		)
 
-	.if		\enc == 1
-	eor		INP0.16b, INP0.16b, KS0.16b	// encrypt input
-	eor		INP1.16b, INP1.16b, KS1.16b
+0:	mov		w9, #4				// max blocks per round
+	add		x10, x0, #0xf
+	lsr		x10, x10, #4			// remaining blocks
+
+	subs		x0, x0, #64
+	csel		w9, w10, w9, mi
+	add		w8, w8, w9
+
+	bmi		1f
+	ld1		{INP0.16b-INP3.16b}, [x2], #64
+	.subsection	1
+	/*
+	 * Populate the four input registers right to left with up to 63 bytes
+	 * of data, using overlapping loads to avoid branches.
+	 *
+	 *                INP0     INP1     INP2     INP3
+	 *  1 byte     |        |        |        |x       |
+	 * 16 bytes    |        |        |        |xxxxxxxx|
+	 * 17 bytes    |        |        |xxxxxxxx|x       |
+	 * 47 bytes    |        |xxxxxxxx|xxxxxxxx|xxxxxxx |
+	 * etc etc
+	 *
+	 * Note that this code may read up to 15 bytes before the start of
+	 * the input. It is up to the calling code to ensure this is safe if
+	 * this happens in the first iteration of the loop (i.e., when the
+	 * input size is < 16 bytes)
+	 */
+1:	mov		x15, #16
+	ands		x19, x0, #0xf
+	csel		x19, x19, x15, ne
+	adr_l		x17, .Lpermute_table + 16
+
+	sub		x11, x15, x19
+	add		x12, x17, x11
+	sub		x17, x17, x11
+	ld1		{T1.16b}, [x12]
+	sub		x10, x1, x11
+	sub		x11, x2, x11
+
+	cmp		x0, #-16
+	csel		x14, x15, xzr, gt
+	cmp		x0, #-32
+	csel		x15, x15, xzr, gt
+	cmp		x0, #-48
+	csel		x16, x19, xzr, gt
+	csel		x1, x1, x10, gt
+	csel		x2, x2, x11, gt
+
+	ld1		{INP0.16b}, [x2], x14
+	ld1		{INP1.16b}, [x2], x15
+	ld1		{INP2.16b}, [x2], x16
+	ld1		{INP3.16b}, [x2]
+	tbl		INP3.16b, {INP3.16b}, T1.16b
+	b		2f
+	.previous
+
+2:	.if		\enc == 0
+	bl		pmull_gcm_ghash_4x
 	.endif
 
-	ld1		{KS0.8b}, [x5]			// load upper counter
-	rev		x11, x11
-	sub		w0, w0, #2
-	mov		KS1.8b, KS0.8b
-	ins		KS0.d[1], x9			// set lower counter
-	ins		KS1.d[1], x11
+	bl		pmull_gcm_enc_4x
 
-	rev64		T1.16b, INP1.16b
+	tbnz		x0, #63, 6f
+	st1		{INP0.16b-INP3.16b}, [x1], #64
+	.if		\enc == 1
+	bl		pmull_gcm_ghash_4x
+	.endif
+	bne		0b
 
-	cmp		w7, #12
-	b.ge		2f				// AES-192/256?
+3:	ldp		x19, x10, [sp, #24]
+	cbz		x10, 5f				// output tag?
 
-1:	enc_round	KS0, v21
-	ext		IN1.16b, T1.16b, T1.16b, #8
+	ld1		{INP3.16b}, [x10]		// load lengths[]
+	mov		w9, #1
+	bl		pmull_gcm_ghash_4x
 
-	enc_round	KS1, v21
-	pmull2		XH2.1q, SHASH.2d, IN1.2d	// a1 * b1
+	mov		w11, #(0x1 << 24)		// BE '1U'
+	ld1		{KS0.16b}, [x5]
+	mov		KS0.s[3], w11
 
-	enc_round	KS0, v22
-	eor		T1.16b, T1.16b, IN1.16b
+	enc_block	KS0, x7, x6, x12
 
-	enc_round	KS1, v22
-	pmull		XL2.1q, SHASH.1d, IN1.1d	// a0 * b0
+	ext		XL.16b, XL.16b, XL.16b, #8
+	rev64		XL.16b, XL.16b
+	eor		XL.16b, XL.16b, KS0.16b
+	st1		{XL.16b}, [x10]			// store tag
 
-	enc_round	KS0, v23
-	pmull		XM2.1q, SHASH2.1d, T1.1d	// (a1 + a0)(b1 + b0)
+4:	ldp		x29, x30, [sp], #32
+	ret
 
-	enc_round	KS1, v23
-	rev64		T1.16b, INP0.16b
-	ext		T2.16b, XL.16b, XL.16b, #8
+5:
+CPU_LE(	rev		w8, w8		)
+	str		w8, [x5, #12]			// store lower counter
+	st1		{XL.2d}, [x4]
+	b		4b
+
+6:	ld1		{T1.16b-T2.16b}, [x17], #32	// permute vectors
+	sub		x17, x17, x19, lsl #1
+
+	cmp		w9, #1
+	beq		7f
+	.subsection	1
+7:	ld1		{INP2.16b}, [x1]
+	tbx		INP2.16b, {INP3.16b}, T1.16b
+	mov		INP3.16b, INP2.16b
+	b		8f
+	.previous
+
+	st1		{INP0.16b}, [x1], x14
+	st1		{INP1.16b}, [x1], x15
+	st1		{INP2.16b}, [x1], x16
+	tbl		INP3.16b, {INP3.16b}, T1.16b
+	tbx		INP3.16b, {INP2.16b}, T2.16b
+8:	st1		{INP3.16b}, [x1]
 
-	enc_round	KS0, v24
-	ext		IN1.16b, T1.16b, T1.16b, #8
-	eor		T1.16b, T1.16b, T2.16b
+	.if		\enc == 1
+	ld1		{T1.16b}, [x17]
+	tbl		INP3.16b, {INP3.16b}, T1.16b	// clear non-data bits
+	bl		pmull_gcm_ghash_4x
+	.endif
+	b		3b
+	.endm
 
-	enc_round	KS1, v24
-	eor		XL.16b, XL.16b, IN1.16b
+	/*
+	 * void pmull_gcm_encrypt(int blocks, u8 dst[], const u8 src[],
+	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
+	 *			  int rounds, u8 tag)
+	 */
+ENTRY(pmull_gcm_encrypt)
+	pmull_gcm_do_crypt	1
+ENDPROC(pmull_gcm_encrypt)
 
-	enc_round	KS0, v25
-	eor		T1.16b, T1.16b, XL.16b
+	/*
+	 * void pmull_gcm_decrypt(int blocks, u8 dst[], const u8 src[],
+	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
+	 *			  int rounds, u8 tag)
+	 */
+ENTRY(pmull_gcm_decrypt)
+	pmull_gcm_do_crypt	0
+ENDPROC(pmull_gcm_decrypt)
 
-	enc_round	KS1, v25
-	pmull2		XH.1q, HH.2d, XL.2d		// a1 * b1
+pmull_gcm_ghash_4x:
+	movi		MASK.16b, #0xe1
+	shl		MASK.2d, MASK.2d, #57
 
-	enc_round	KS0, v26
-	pmull		XL.1q, HH.1d, XL.1d		// a0 * b0
+	rev64		T1.16b, INP0.16b
+	rev64		T2.16b, INP1.16b
+	rev64		TT3.16b, INP2.16b
+	rev64		TT4.16b, INP3.16b
 
-	enc_round	KS1, v26
-	pmull2		XM.1q, SHASH2.2d, T1.2d		// (a1 + a0)(b1 + b0)
+	ext		XL.16b, XL.16b, XL.16b, #8
 
-	enc_round	KS0, v27
-	eor		XL.16b, XL.16b, XL2.16b
-	eor		XH.16b, XH.16b, XH2.16b
+	tbz		w9, #2, 0f			// <4 blocks?
+	.subsection	1
+0:	movi		XH2.16b, #0
+	movi		XM2.16b, #0
+	movi		XL2.16b, #0
 
-	enc_round	KS1, v27
-	eor		XM.16b, XM.16b, XM2.16b
-	ext		T1.16b, XL.16b, XH.16b, #8
+	tbz		w9, #0, 1f			// 2 blocks?
+	tbz		w9, #1, 2f			// 1 block?
 
-	enc_round	KS0, v28
-	eor		T2.16b, XL.16b, XH.16b
-	eor		XM.16b, XM.16b, T1.16b
+	eor		T2.16b, T2.16b, XL.16b
+	ext		T1.16b, T2.16b, T2.16b, #8
+	b		.Lgh3
 
-	enc_round	KS1, v28
-	eor		XM.16b, XM.16b, T2.16b
+1:	eor		TT3.16b, TT3.16b, XL.16b
+	ext		T2.16b, TT3.16b, TT3.16b, #8
+	b		.Lgh2
 
-	enc_round	KS0, v29
-	pmull		T2.1q, XL.1d, MASK.1d
+2:	eor		TT4.16b, TT4.16b, XL.16b
+	ext		IN1.16b, TT4.16b, TT4.16b, #8
+	b		.Lgh1
+	.previous
 
-	enc_round	KS1, v29
-	mov		XH.d[0], XM.d[1]
-	mov		XM.d[1], XL.d[0]
+	eor		T1.16b, T1.16b, XL.16b
+	ext		IN1.16b, T1.16b, T1.16b, #8
 
-	aese		KS0.16b, v30.16b
-	eor		XL.16b, XM.16b, T2.16b
+	pmull2		XH2.1q, HH4.2d, IN1.2d		// a1 * b1
+	eor		T1.16b, T1.16b, IN1.16b
+	pmull		XL2.1q, HH4.1d, IN1.1d		// a0 * b0
+	pmull2		XM2.1q, HH34.2d, T1.2d		// (a1 + a0)(b1 + b0)
 
-	aese		KS1.16b, v30.16b
-	ext		T2.16b, XL.16b, XL.16b, #8
+	ext		T1.16b, T2.16b, T2.16b, #8
+.Lgh3:	eor		T2.16b, T2.16b, T1.16b
+	pmull2		XH.1q, HH3.2d, T1.2d		// a1 * b1
+	pmull		XL.1q, HH3.1d, T1.1d		// a0 * b0
+	pmull		XM.1q, HH34.1d, T2.1d		// (a1 + a0)(b1 + b0)
 
-	eor		KS0.16b, KS0.16b, v31.16b
-	pmull		XL.1q, XL.1d, MASK.1d
-	eor		T2.16b, T2.16b, XH.16b
+	eor		XH2.16b, XH2.16b, XH.16b
+	eor		XL2.16b, XL2.16b, XL.16b
+	eor		XM2.16b, XM2.16b, XM.16b
 
-	eor		KS1.16b, KS1.16b, v31.16b
-	eor		XL.16b, XL.16b, T2.16b
+	ext		T2.16b, TT3.16b, TT3.16b, #8
+.Lgh2:	eor		TT3.16b, TT3.16b, T2.16b
+	pmull2		XH.1q, HH.2d, T2.2d		// a1 * b1
+	pmull		XL.1q, HH.1d, T2.1d		// a0 * b0
+	pmull2		XM.1q, SHASH2.2d, TT3.2d	// (a1 + a0)(b1 + b0)
 
-	.if		\enc == 0
-	eor		INP0.16b, INP0.16b, KS0.16b
-	eor		INP1.16b, INP1.16b, KS1.16b
-	.endif
+	eor		XH2.16b, XH2.16b, XH.16b
+	eor		XL2.16b, XL2.16b, XL.16b
+	eor		XM2.16b, XM2.16b, XM.16b
 
-	st1		{INP0.16b-INP1.16b}, [x2], #32
+	ext		IN1.16b, TT4.16b, TT4.16b, #8
+.Lgh1:	eor		TT4.16b, TT4.16b, IN1.16b
+	pmull		XL.1q, SHASH.1d, IN1.1d		// a0 * b0
+	pmull2		XH.1q, SHASH.2d, IN1.2d		// a1 * b1
+	pmull		XM.1q, SHASH2.1d, TT4.1d	// (a1 + a0)(b1 + b0)
 
-	cbnz		w0, 0b
+	eor		XH.16b, XH.16b, XH2.16b
+	eor		XL.16b, XL.16b, XL2.16b
+	eor		XM.16b, XM.16b, XM2.16b
 
-CPU_LE(	rev		x8, x8		)
-	st1		{XL.2d}, [x1]
-	str		x8, [x5, #8]			// store lower counter
+	eor		T2.16b, XL.16b, XH.16b
+	ext		T1.16b, XL.16b, XH.16b, #8
+	eor		XM.16b, XM.16b, T2.16b
 
-	.if		\enc == 1
-	st1		{KS0.16b-KS1.16b}, [x10]
-	.endif
+	__pmull_reduce_p64
+
+	eor		T2.16b, T2.16b, XH.16b
+	eor		XL.16b, XL.16b, T2.16b
 
 	ret
+ENDPROC(pmull_gcm_ghash_4x)
+
+pmull_gcm_enc_4x:
+	ld1		{KS0.16b}, [x5]			// load upper counter
+	sub		w10, w8, #4
+	sub		w11, w8, #3
+	sub		w12, w8, #2
+	sub		w13, w8, #1
+	rev		w10, w10
+	rev		w11, w11
+	rev		w12, w12
+	rev		w13, w13
+	mov		KS1.16b, KS0.16b
+	mov		KS2.16b, KS0.16b
+	mov		KS3.16b, KS0.16b
+	ins		KS0.s[3], w10			// set lower counter
+	ins		KS1.s[3], w11
+	ins		KS2.s[3], w12
+	ins		KS3.s[3], w13
+
+	add		x10, x6, #96			// round key pointer
+	ld1		{K6.4s-K7.4s}, [x10], #32
+	.irp		key, K0, K1, K2, K3, K4, K5
+	enc_qround	KS0, KS1, KS2, KS3, \key
+	.endr
 
-2:	b.eq		3f				// AES-192?
-	enc_round	KS0, v17
-	enc_round	KS1, v17
-	enc_round	KS0, v18
-	enc_round	KS1, v18
-3:	enc_round	KS0, v19
-	enc_round	KS1, v19
-	enc_round	KS0, v20
-	enc_round	KS1, v20
-	b		1b
+	tbnz		x7, #2, .Lnot128
+	.subsection	1
+.Lnot128:
+	ld1		{K8.4s-K9.4s}, [x10], #32
+	.irp		key, K6, K7
+	enc_qround	KS0, KS1, KS2, KS3, \key
+	.endr
+	ld1		{K6.4s-K7.4s}, [x10]
+	.irp		key, K8, K9
+	enc_qround	KS0, KS1, KS2, KS3, \key
+	.endr
+	tbz		x7, #1, .Lout192
+	b		.Lout256
+	.previous
 
-4:	load_round_keys	w7, x6
-	b		0b
-	.endm
+.Lout256:
+	.irp		key, K6, K7
+	enc_qround	KS0, KS1, KS2, KS3, \key
+	.endr
 
-	/*
-	 * void pmull_gcm_encrypt(int blocks, u64 dg[], u8 dst[], const u8 src[],
-	 *			  struct ghash_key const *k, u8 ctr[],
-	 *			  int rounds, u8 ks[])
-	 */
-ENTRY(pmull_gcm_encrypt)
-	pmull_gcm_do_crypt	1
-ENDPROC(pmull_gcm_encrypt)
+.Lout192:
+	enc_qround	KS0, KS1, KS2, KS3, KK
 
-	/*
-	 * void pmull_gcm_decrypt(int blocks, u64 dg[], u8 dst[], const u8 src[],
-	 *			  struct ghash_key const *k, u8 ctr[],
-	 *			  int rounds)
-	 */
-ENTRY(pmull_gcm_decrypt)
-	pmull_gcm_do_crypt	0
-ENDPROC(pmull_gcm_decrypt)
+	aese		KS0.16b, KL.16b
+	aese		KS1.16b, KL.16b
+	aese		KS2.16b, KL.16b
+	aese		KS3.16b, KL.16b
+
+	eor		KS0.16b, KS0.16b, KM.16b
+	eor		KS1.16b, KS1.16b, KM.16b
+	eor		KS2.16b, KS2.16b, KM.16b
+	eor		KS3.16b, KS3.16b, KM.16b
+
+	eor		INP0.16b, INP0.16b, KS0.16b
+	eor		INP1.16b, INP1.16b, KS1.16b
+	eor		INP2.16b, INP2.16b, KS2.16b
+	eor		INP3.16b, INP3.16b, KS3.16b
 
-	/*
-	 * void pmull_gcm_encrypt_block(u8 dst[], u8 src[], u8 rk[], int rounds)
-	 */
-ENTRY(pmull_gcm_encrypt_block)
-	cbz		x2, 0f
-	load_round_keys	w3, x2
-0:	ld1		{v0.16b}, [x1]
-	enc_block	v0, w3
-	st1		{v0.16b}, [x0]
 	ret
-ENDPROC(pmull_gcm_encrypt_block)
+ENDPROC(pmull_gcm_enc_4x)
+
+	.section	".rodata", "a"
+	.align		6
+.Lpermute_table:
+	.byte		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
+	.byte		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
+	.byte		 0x0,  0x1,  0x2,  0x3,  0x4,  0x5,  0x6,  0x7
+	.byte		 0x8,  0x9,  0xa,  0xb,  0xc,  0xd,  0xe,  0xf
+	.byte		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
+	.byte		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
+	.byte		 0x0,  0x1,  0x2,  0x3,  0x4,  0x5,  0x6,  0x7
+	.byte		 0x8,  0x9,  0xa,  0xb,  0xc,  0xd,  0xe,  0xf
+	.previous
diff --git a/arch/arm64/crypto/ghash-ce-glue.c b/arch/arm64/crypto/ghash-ce-glue.c
index 70b1469783f9..522cf004ce65 100644
--- a/arch/arm64/crypto/ghash-ce-glue.c
+++ b/arch/arm64/crypto/ghash-ce-glue.c
@@ -58,17 +58,15 @@ asmlinkage void pmull_ghash_update_p8(int blocks, u64 dg[], const char *src,
 				      struct ghash_key const *k,
 				      const char *head);
 
-asmlinkage void pmull_gcm_encrypt(int blocks, u64 dg[], u8 dst[],
-				  const u8 src[], struct ghash_key const *k,
+asmlinkage void pmull_gcm_encrypt(int bytes, u8 dst[], const u8 src[],
+				  struct ghash_key const *k, u64 dg[],
 				  u8 ctr[], u32 const rk[], int rounds,
-				  u8 ks[]);
+				  u8 tag[]);
 
-asmlinkage void pmull_gcm_decrypt(int blocks, u64 dg[], u8 dst[],
-				  const u8 src[], struct ghash_key const *k,
-				  u8 ctr[], u32 const rk[], int rounds);
-
-asmlinkage void pmull_gcm_encrypt_block(u8 dst[], u8 const src[],
-					u32 const rk[], int rounds);
+asmlinkage void pmull_gcm_decrypt(int bytes, u8 dst[], const u8 src[],
+				  struct ghash_key const *k, u64 dg[],
+				  u8 ctr[], u32 const rk[], int rounds,
+				  u8 tag[]);
 
 static int ghash_init(struct shash_desc *desc)
 {
@@ -85,7 +83,7 @@ static void ghash_do_update(int blocks, u64 dg[], const char *src,
 						struct ghash_key const *k,
 						const char *head))
 {
-	if (likely(crypto_simd_usable())) {
+	if (likely(crypto_simd_usable() && simd_update)) {
 		kernel_neon_begin();
 		simd_update(blocks, dg, src, key, head);
 		kernel_neon_end();
@@ -398,136 +396,112 @@ static void gcm_calculate_auth_mac(struct aead_request *req, u64 dg[])
 	}
 }
 
-static void gcm_final(struct aead_request *req, struct gcm_aes_ctx *ctx,
-		      u64 dg[], u8 tag[], int cryptlen)
-{
-	u8 mac[AES_BLOCK_SIZE];
-	u128 lengths;
-
-	lengths.a = cpu_to_be64(req->assoclen * 8);
-	lengths.b = cpu_to_be64(cryptlen * 8);
-
-	ghash_do_update(1, dg, (void *)&lengths, &ctx->ghash_key, NULL,
-			pmull_ghash_update_p64);
-
-	put_unaligned_be64(dg[1], mac);
-	put_unaligned_be64(dg[0], mac + 8);
-
-	crypto_xor(tag, mac, AES_BLOCK_SIZE);
-}
-
 static int gcm_encrypt(struct aead_request *req)
 {
 	struct crypto_aead *aead = crypto_aead_reqtfm(req);
 	struct gcm_aes_ctx *ctx = crypto_aead_ctx(aead);
+	int nrounds = num_rounds(&ctx->aes_key);
 	struct skcipher_walk walk;
+	u8 buf[AES_BLOCK_SIZE];
 	u8 iv[AES_BLOCK_SIZE];
-	u8 ks[2 * AES_BLOCK_SIZE];
-	u8 tag[AES_BLOCK_SIZE];
 	u64 dg[2] = {};
-	int nrounds = num_rounds(&ctx->aes_key);
+	u128 lengths;
+	u8 *tag;
 	int err;
 
+	lengths.a = cpu_to_be64(req->assoclen * 8);
+	lengths.b = cpu_to_be64(req->cryptlen * 8);
+
 	if (req->assoclen)
 		gcm_calculate_auth_mac(req, dg);
 
 	memcpy(iv, req->iv, GCM_IV_SIZE);
-	put_unaligned_be32(1, iv + GCM_IV_SIZE);
+	put_unaligned_be32(2, iv + GCM_IV_SIZE);
 
 	err = skcipher_walk_aead_encrypt(&walk, req, false);
 
-	if (likely(crypto_simd_usable() && walk.total >= 2 * AES_BLOCK_SIZE)) {
-		u32 const *rk = NULL;
-
-		kernel_neon_begin();
-		pmull_gcm_encrypt_block(tag, iv, ctx->aes_key.key_enc, nrounds);
-		put_unaligned_be32(2, iv + GCM_IV_SIZE);
-		pmull_gcm_encrypt_block(ks, iv, NULL, nrounds);
-		put_unaligned_be32(3, iv + GCM_IV_SIZE);
-		pmull_gcm_encrypt_block(ks + AES_BLOCK_SIZE, iv, NULL, nrounds);
-		put_unaligned_be32(4, iv + GCM_IV_SIZE);
-
+	if (likely(crypto_simd_usable())) {
 		do {
-			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
+			const u8 *src = walk.src.virt.addr;
+			u8 *dst = walk.dst.virt.addr;
+			int nbytes = walk.nbytes;
+
+			tag = (u8 *)&lengths;
 
-			if (rk)
-				kernel_neon_begin();
+			if (unlikely(nbytes > 0 && nbytes < AES_BLOCK_SIZE)) {
+				src = dst = memcpy(buf + sizeof(buf) - nbytes,
+						   src, nbytes);
+			} else if (nbytes < walk.total) {
+				nbytes &= ~(AES_BLOCK_SIZE - 1);
+				tag = NULL;
+			}
 
-			pmull_gcm_encrypt(blocks, dg, walk.dst.virt.addr,
-					  walk.src.virt.addr, &ctx->ghash_key,
-					  iv, rk, nrounds, ks);
+			kernel_neon_begin();
+			pmull_gcm_encrypt(nbytes, dst, src, &ctx->ghash_key, dg,
+					  iv, ctx->aes_key.key_enc, nrounds,
+					  tag);
 			kernel_neon_end();
 
-			err = skcipher_walk_done(&walk,
-					walk.nbytes % (2 * AES_BLOCK_SIZE));
+			if (unlikely(!nbytes))
+				break;
 
-			rk = ctx->aes_key.key_enc;
-		} while (walk.nbytes >= 2 * AES_BLOCK_SIZE);
-	} else {
-		aes_encrypt(&ctx->aes_key, tag, iv);
-		put_unaligned_be32(2, iv + GCM_IV_SIZE);
+			if (unlikely(nbytes > 0 && nbytes < AES_BLOCK_SIZE))
+				memcpy(walk.dst.virt.addr,
+				       buf + sizeof(buf) - nbytes, nbytes);
 
-		while (walk.nbytes >= (2 * AES_BLOCK_SIZE)) {
-			const int blocks =
-				walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
+			err = skcipher_walk_done(&walk, walk.nbytes - nbytes);
+		} while (walk.nbytes);
+	} else {
+		while (walk.nbytes >= AES_BLOCK_SIZE) {
+			int blocks = walk.nbytes / AES_BLOCK_SIZE;
+			const u8 *src = walk.src.virt.addr;
 			u8 *dst = walk.dst.virt.addr;
-			u8 *src = walk.src.virt.addr;
 			int remaining = blocks;
 
 			do {
-				aes_encrypt(&ctx->aes_key, ks, iv);
-				crypto_xor_cpy(dst, src, ks, AES_BLOCK_SIZE);
+				aes_encrypt(&ctx->aes_key, buf, iv);
+				crypto_xor_cpy(dst, src, buf, AES_BLOCK_SIZE);
 				crypto_inc(iv, AES_BLOCK_SIZE);
 
 				dst += AES_BLOCK_SIZE;
 				src += AES_BLOCK_SIZE;
 			} while (--remaining > 0);
 
-			ghash_do_update(blocks, dg,
-					walk.dst.virt.addr, &ctx->ghash_key,
-					NULL, pmull_ghash_update_p64);
+			ghash_do_update(blocks, dg, walk.dst.virt.addr,
+					&ctx->ghash_key, NULL, NULL);
 
 			err = skcipher_walk_done(&walk,
-						 walk.nbytes % (2 * AES_BLOCK_SIZE));
-		}
-		if (walk.nbytes) {
-			aes_encrypt(&ctx->aes_key, ks, iv);
-			if (walk.nbytes > AES_BLOCK_SIZE) {
-				crypto_inc(iv, AES_BLOCK_SIZE);
-				aes_encrypt(&ctx->aes_key, ks + AES_BLOCK_SIZE, iv);
-			}
+						 walk.nbytes % AES_BLOCK_SIZE);
 		}
-	}
 
-	/* handle the tail */
-	if (walk.nbytes) {
-		u8 buf[GHASH_BLOCK_SIZE];
-		unsigned int nbytes = walk.nbytes;
-		u8 *dst = walk.dst.virt.addr;
-		u8 *head = NULL;
+		/* handle the tail */
+		if (walk.nbytes) {
+			aes_encrypt(&ctx->aes_key, buf, iv);
 
-		crypto_xor_cpy(walk.dst.virt.addr, walk.src.virt.addr, ks,
-			       walk.nbytes);
+			crypto_xor_cpy(walk.dst.virt.addr, walk.src.virt.addr,
+				       buf, walk.nbytes);
 
-		if (walk.nbytes > GHASH_BLOCK_SIZE) {
-			head = dst;
-			dst += GHASH_BLOCK_SIZE;
-			nbytes %= GHASH_BLOCK_SIZE;
+			memcpy(buf, walk.dst.virt.addr, walk.nbytes);
+			memset(buf + walk.nbytes, 0, sizeof(buf) - walk.nbytes);
 		}
 
-		memcpy(buf, dst, nbytes);
-		memset(buf + nbytes, 0, GHASH_BLOCK_SIZE - nbytes);
-		ghash_do_update(!!nbytes, dg, buf, &ctx->ghash_key, head,
-				pmull_ghash_update_p64);
+		tag = (u8 *)&lengths;
+		ghash_do_update(1, dg, tag, &ctx->ghash_key,
+				walk.nbytes ? buf : NULL, NULL);
 
-		err = skcipher_walk_done(&walk, 0);
+		if (walk.nbytes)
+			err = skcipher_walk_done(&walk, 0);
+
+		put_unaligned_be64(dg[1], tag);
+		put_unaligned_be64(dg[0], tag + 8);
+		put_unaligned_be32(1, iv + GCM_IV_SIZE);
+		aes_encrypt(&ctx->aes_key, iv, iv);
+		crypto_xor(tag, iv, AES_BLOCK_SIZE);
 	}
 
 	if (err)
 		return err;
 
-	gcm_final(req, ctx, dg, tag, req->cryptlen);
-
 	/* copy authtag to end of dst */
 	scatterwalk_map_and_copy(tag, req->dst, req->assoclen + req->cryptlen,
 				 crypto_aead_authsize(aead), 1);
@@ -540,75 +514,65 @@ static int gcm_decrypt(struct aead_request *req)
 	struct crypto_aead *aead = crypto_aead_reqtfm(req);
 	struct gcm_aes_ctx *ctx = crypto_aead_ctx(aead);
 	unsigned int authsize = crypto_aead_authsize(aead);
+	int nrounds = num_rounds(&ctx->aes_key);
 	struct skcipher_walk walk;
-	u8 iv[2 * AES_BLOCK_SIZE];
-	u8 tag[AES_BLOCK_SIZE];
-	u8 buf[2 * GHASH_BLOCK_SIZE];
+	u8 buf[AES_BLOCK_SIZE];
+	u8 iv[AES_BLOCK_SIZE];
 	u64 dg[2] = {};
-	int nrounds = num_rounds(&ctx->aes_key);
+	u128 lengths;
+	u8 *tag;
 	int err;
 
+	lengths.a = cpu_to_be64(req->assoclen * 8);
+	lengths.b = cpu_to_be64((req->cryptlen - authsize) * 8);
+
 	if (req->assoclen)
 		gcm_calculate_auth_mac(req, dg);
 
 	memcpy(iv, req->iv, GCM_IV_SIZE);
-	put_unaligned_be32(1, iv + GCM_IV_SIZE);
+	put_unaligned_be32(2, iv + GCM_IV_SIZE);
 
 	err = skcipher_walk_aead_decrypt(&walk, req, false);
 
-	if (likely(crypto_simd_usable() && walk.total >= 2 * AES_BLOCK_SIZE)) {
-		u32 const *rk = NULL;
-
-		kernel_neon_begin();
-		pmull_gcm_encrypt_block(tag, iv, ctx->aes_key.key_enc, nrounds);
-		put_unaligned_be32(2, iv + GCM_IV_SIZE);
-
+	if (likely(crypto_simd_usable())) {
 		do {
-			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
-			int rem = walk.total - blocks * AES_BLOCK_SIZE;
-
-			if (rk)
-				kernel_neon_begin();
-
-			pmull_gcm_decrypt(blocks, dg, walk.dst.virt.addr,
-					  walk.src.virt.addr, &ctx->ghash_key,
-					  iv, rk, nrounds);
-
-			/* check if this is the final iteration of the loop */
-			if (rem < (2 * AES_BLOCK_SIZE)) {
-				u8 *iv2 = iv + AES_BLOCK_SIZE;
-
-				if (rem > AES_BLOCK_SIZE) {
-					memcpy(iv2, iv, AES_BLOCK_SIZE);
-					crypto_inc(iv2, AES_BLOCK_SIZE);
-				}
+			const u8 *src = walk.src.virt.addr;
+			u8 *dst = walk.dst.virt.addr;
+			int nbytes = walk.nbytes;
 
-				pmull_gcm_encrypt_block(iv, iv, NULL, nrounds);
+			tag = (u8 *)&lengths;
 
-				if (rem > AES_BLOCK_SIZE)
-					pmull_gcm_encrypt_block(iv2, iv2, NULL,
-								nrounds);
+			if (unlikely(nbytes > 0 && nbytes < AES_BLOCK_SIZE)) {
+				src = dst = memcpy(buf + sizeof(buf) - nbytes,
+						   src, nbytes);
+			} else if (nbytes < walk.total) {
+				nbytes &= ~(AES_BLOCK_SIZE - 1);
+				tag = NULL;
 			}
 
+			kernel_neon_begin();
+			pmull_gcm_decrypt(nbytes, dst, src, &ctx->ghash_key, dg,
+					  iv, ctx->aes_key.key_enc, nrounds,
+					  tag);
 			kernel_neon_end();
 
-			err = skcipher_walk_done(&walk,
-					walk.nbytes % (2 * AES_BLOCK_SIZE));
+			if (unlikely(!nbytes))
+				break;
 
-			rk = ctx->aes_key.key_enc;
-		} while (walk.nbytes >= 2 * AES_BLOCK_SIZE);
-	} else {
-		aes_encrypt(&ctx->aes_key, tag, iv);
-		put_unaligned_be32(2, iv + GCM_IV_SIZE);
+			if (unlikely(nbytes > 0 && nbytes < AES_BLOCK_SIZE))
+				memcpy(walk.dst.virt.addr,
+				       buf + sizeof(buf) - nbytes, nbytes);
 
-		while (walk.nbytes >= (2 * AES_BLOCK_SIZE)) {
-			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
+			err = skcipher_walk_done(&walk, walk.nbytes - nbytes);
+		} while (walk.nbytes);
+	} else {
+		while (walk.nbytes >= AES_BLOCK_SIZE) {
+			int blocks = walk.nbytes / AES_BLOCK_SIZE;
+			const u8 *src = walk.src.virt.addr;
 			u8 *dst = walk.dst.virt.addr;
-			u8 *src = walk.src.virt.addr;
 
 			ghash_do_update(blocks, dg, walk.src.virt.addr,
-					&ctx->ghash_key, NULL,
-					pmull_ghash_update_p64);
+					&ctx->ghash_key, NULL, NULL);
 
 			do {
 				aes_encrypt(&ctx->aes_key, buf, iv);
@@ -620,49 +584,38 @@ static int gcm_decrypt(struct aead_request *req)
 			} while (--blocks > 0);
 
 			err = skcipher_walk_done(&walk,
-						 walk.nbytes % (2 * AES_BLOCK_SIZE));
+						 walk.nbytes % AES_BLOCK_SIZE);
 		}
-		if (walk.nbytes) {
-			if (walk.nbytes > AES_BLOCK_SIZE) {
-				u8 *iv2 = iv + AES_BLOCK_SIZE;
-
-				memcpy(iv2, iv, AES_BLOCK_SIZE);
-				crypto_inc(iv2, AES_BLOCK_SIZE);
 
-				aes_encrypt(&ctx->aes_key, iv2, iv2);
-			}
-			aes_encrypt(&ctx->aes_key, iv, iv);
+		/* handle the tail */
+		if (walk.nbytes) {
+			memcpy(buf, walk.src.virt.addr, walk.nbytes);
+			memset(buf + walk.nbytes, 0, sizeof(buf) - walk.nbytes);
 		}
-	}
 
-	/* handle the tail */
-	if (walk.nbytes) {
-		const u8 *src = walk.src.virt.addr;
-		const u8 *head = NULL;
-		unsigned int nbytes = walk.nbytes;
+		tag = (u8 *)&lengths;
+		ghash_do_update(1, dg, tag, &ctx->ghash_key,
+				walk.nbytes ? buf : NULL, NULL);
 
-		if (walk.nbytes > GHASH_BLOCK_SIZE) {
-			head = src;
-			src += GHASH_BLOCK_SIZE;
-			nbytes %= GHASH_BLOCK_SIZE;
-		}
+		if (walk.nbytes) {
+			aes_encrypt(&ctx->aes_key, buf, iv);
 
-		memcpy(buf, src, nbytes);
-		memset(buf + nbytes, 0, GHASH_BLOCK_SIZE - nbytes);
-		ghash_do_update(!!nbytes, dg, buf, &ctx->ghash_key, head,
-				pmull_ghash_update_p64);
+			crypto_xor_cpy(walk.dst.virt.addr, walk.src.virt.addr,
+				       buf, walk.nbytes);
 
-		crypto_xor_cpy(walk.dst.virt.addr, walk.src.virt.addr, iv,
-			       walk.nbytes);
+			err = skcipher_walk_done(&walk, 0);
+		}
 
-		err = skcipher_walk_done(&walk, 0);
+		put_unaligned_be64(dg[1], tag);
+		put_unaligned_be64(dg[0], tag + 8);
+		put_unaligned_be32(1, iv + GCM_IV_SIZE);
+		aes_encrypt(&ctx->aes_key, iv, iv);
+		crypto_xor(tag, iv, AES_BLOCK_SIZE);
 	}
 
 	if (err)
 		return err;
 
-	gcm_final(req, ctx, dg, tag, req->cryptlen - authsize);
-
 	/* compare calculated auth tag with the stored one */
 	scatterwalk_map_and_copy(buf, req->src,
 				 req->assoclen + req->cryptlen - authsize,
@@ -675,7 +628,7 @@ static int gcm_decrypt(struct aead_request *req)
 
 static struct aead_alg gcm_aes_alg = {
 	.ivsize			= GCM_IV_SIZE,
-	.chunksize		= 2 * AES_BLOCK_SIZE,
+	.chunksize		= AES_BLOCK_SIZE,
 	.maxauthsize		= AES_BLOCK_SIZE,
 	.setkey			= gcm_setkey,
 	.setauthsize		= gcm_setauthsize,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
