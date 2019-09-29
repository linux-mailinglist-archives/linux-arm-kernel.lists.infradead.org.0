Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5AC1865
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v9MDZ0YLMbgYpzNDiOdRFZhkm6UPYDU6t4KQ7MuntwA=; b=YP64DGK3NBdUw3OBEabhDfUxjo
	lRlezAb7/FzaCYB7gP6nQ+ET1iya6MWm/tPuSz90j9bvnn2V/rsIj/InGIIfVrjj+TlQTi+eJ34v1
	lFQp7H41hp42OPhojk1EHPxQJH1ReIYfRum3+dJOUQ4L52GRb+2mWps97QCWCJE2Yn0c8RjhE/fjD
	1rMvplCq1l+4QGMMXWyK6RthWlna4FAsdaxPLzuYTcgsZCVp2SgYsFVCBWIZ+IjjBL82AoEb8vbEZ
	5jkfkpsPARrmFoH5wtcaZxgPcJKVeRs3f3XjMjBZi9nwL44TQOCFF/bNVkaHxqTS4ZVEFMtSHzPA9
	2VjlAOVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdEG-0005XM-O2; Sun, 29 Sep 2019 17:43:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdAS-0001OY-Oc
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id l3so8430408wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=saSBzi7bX0fXB5uNfWzE5QTToEOYXY7HPW2f0aRXlqk=;
 b=WqOxfI7Q4vjOBuwZIHThtrPXRjKN99Y3QoBn4melVOQI88UMgNKj8FY201GRAHhqDF
 3gfouOSqCL9rtXNJActAmMs+3UQK9J/WebFXGuZn9Gj99vBpa8/VaNon5uhp8flVwpjA
 dOqwfqaXzU13nV3CQVOV0bdXRnuFdK6vCSko7/UiyJkTHbRL8J5HUrzpJ+/VacEsCV6z
 2zGQITQK/MS/5Ica2E3iURERsy7ehks3qpTb1T+F3R4oJFuqDvuS+dPc+O6Y8ve6URGX
 ySGszxqPvjHO0SNnsTKSlgMcOgsLl2sYAP9sEW+q/Az2GmoaKHsUfBqQQx2gKqsW/MZu
 GgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=saSBzi7bX0fXB5uNfWzE5QTToEOYXY7HPW2f0aRXlqk=;
 b=B9Z0lZ0/rxvw2SKeZcwN1ZDtUtleDM4/N5WkW2WeTG7YTD16sKkjhOaF53VvEHPVol
 tR0+0S4IF4OPyCwJ1X83Y7EuM+sjh0pg2w6f6lunbyTBHUq5aw7djSkQ2aWyWzF0vb2g
 yt2jzEOO7zESEJXgHG7OnUmfyTrLRHehVUBPWSZcJz+a2dBcXLc7XXaA6aL9Pmqhe8Y0
 ua++ycEpvLYaEOgVJZ1yr+bwUTg3SHsAzmrX1OeJB0YRxQf8AQB1g+CqTgg8AdYRmrVX
 tn0+cX3jso7eM017ti+R8Uy7Msro9bCVRnmUhFmMKZiFyhqcIL1zQYuhebtF/g+tGzbH
 D10A==
X-Gm-Message-State: APjAAAW6+1Fg2a1WO0G4GGZNsmqtAjhjwdS2bVuuFjwV+FN6H8wiwyVG
 SwpVsyX+SYmm7wiAv+I85pXiYw==
X-Google-Smtp-Source: APXvYqxqebvbTCEvGxkWIK1ON/m0xT2v7GgwZR71maeg+8eUdNkWd+mB+n+6t6PBYu7cEJCjyvOlBA==
X-Received: by 2002:adf:e951:: with SMTP id m17mr10211119wrn.154.1569778770355; 
 Sun, 29 Sep 2019 10:39:30 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 14/20] crypto: arm - import Bernstein and Schwabe's
 Curve25519 ARM implementation
Date: Sun, 29 Sep 2019 19:38:44 +0200
Message-Id: <20190929173850.26055-15-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103933_283106_1B8554BB 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

This comes from Dan Bernstein and Peter Schwabe's public domain NEON
code, and is included here in raw form so that subsequent commits that
fix these up for the kernel can see how it has changed. This code does
have some entirely cosmetic formatting differences, adding indentation
and so forth, so that when we actually port it for use in the kernel in
the subsequent commit, it's obvious what's changed in the process.

This code originates from SUPERCOP 20180818, available at
<https://bench.cr.yp.to/supercop.html>.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm/crypto/curve25519-core.S | 2105 ++++++++++++++++++++
 1 file changed, 2105 insertions(+)

diff --git a/arch/arm/crypto/curve25519-core.S b/arch/arm/crypto/curve25519-core.S
new file mode 100644
index 000000000000..f33b85fef382
--- /dev/null
+++ b/arch/arm/crypto/curve25519-core.S
@@ -0,0 +1,2105 @@
+/*
+ * Public domain code from Daniel J. Bernstein and Peter Schwabe, from
+ * SUPERCOP's curve25519/neon2/scalarmult.s.
+ */
+
+.fpu neon
+.text
+.align 4
+.global _crypto_scalarmult_curve25519_neon2
+.global crypto_scalarmult_curve25519_neon2
+.type _crypto_scalarmult_curve25519_neon2 STT_FUNC
+.type crypto_scalarmult_curve25519_neon2 STT_FUNC
+	_crypto_scalarmult_curve25519_neon2:
+	crypto_scalarmult_curve25519_neon2:
+	vpush		{q4, q5, q6, q7}
+	mov		r12, sp
+	sub		sp, sp, #736
+	and		sp, sp, #0xffffffe0
+	strd		r4, [sp, #0]
+	strd		r6, [sp, #8]
+	strd		r8, [sp, #16]
+	strd		r10, [sp, #24]
+	str		r12, [sp, #480]
+	str		r14, [sp, #484]
+	mov		r0, r0
+	mov		r1, r1
+	mov		r2, r2
+	add		r3, sp, #32
+	ldr		r4, =0
+	ldr		r5, =254
+	vmov.i32	q0, #1
+	vshr.u64	q1, q0, #7
+	vshr.u64	q0, q0, #8
+	vmov.i32	d4, #19
+	vmov.i32	d5, #38
+	add		r6, sp, #512
+	vst1.8		{d2-d3}, [r6, : 128]
+	add		r6, sp, #528
+	vst1.8		{d0-d1}, [r6, : 128]
+	add		r6, sp, #544
+	vst1.8		{d4-d5}, [r6, : 128]
+	add		r6, r3, #0
+	vmov.i32	q2, #0
+	vst1.8		{d4-d5}, [r6, : 128]!
+	vst1.8		{d4-d5}, [r6, : 128]!
+	vst1.8		d4, [r6, : 64]
+	add		r6, r3, #0
+	ldr		r7, =960
+	sub		r7, r7, #2
+	neg		r7, r7
+	sub		r7, r7, r7, LSL #7
+	str		r7, [r6]
+	add		r6, sp, #704
+	vld1.8		{d4-d5}, [r1]!
+	vld1.8		{d6-d7}, [r1]
+	vst1.8		{d4-d5}, [r6, : 128]!
+	vst1.8		{d6-d7}, [r6, : 128]
+	sub		r1, r6, #16
+	ldrb		r6, [r1]
+	and		r6, r6, #248
+	strb		r6, [r1]
+	ldrb		r6, [r1, #31]
+	and		r6, r6, #127
+	orr		r6, r6, #64
+	strb		r6, [r1, #31]
+	vmov.i64	q2, #0xffffffff
+	vshr.u64	q3, q2, #7
+	vshr.u64	q2, q2, #6
+	vld1.8		{d8}, [r2]
+	vld1.8		{d10}, [r2]
+	add		r2, r2, #6
+	vld1.8		{d12}, [r2]
+	vld1.8		{d14}, [r2]
+	add		r2, r2, #6
+	vld1.8		{d16}, [r2]
+	add		r2, r2, #4
+	vld1.8		{d18}, [r2]
+	vld1.8		{d20}, [r2]
+	add		r2, r2, #6
+	vld1.8		{d22}, [r2]
+	add		r2, r2, #2
+	vld1.8		{d24}, [r2]
+	vld1.8		{d26}, [r2]
+	vshr.u64	q5, q5, #26
+	vshr.u64	q6, q6, #3
+	vshr.u64	q7, q7, #29
+	vshr.u64	q8, q8, #6
+	vshr.u64	q10, q10, #25
+	vshr.u64	q11, q11, #3
+	vshr.u64	q12, q12, #12
+	vshr.u64	q13, q13, #38
+	vand		q4, q4, q2
+	vand		q6, q6, q2
+	vand		q8, q8, q2
+	vand		q10, q10, q2
+	vand		q2, q12, q2
+	vand		q5, q5, q3
+	vand		q7, q7, q3
+	vand		q9, q9, q3
+	vand		q11, q11, q3
+	vand		q3, q13, q3
+	add		r2, r3, #48
+	vadd.i64	q12, q4, q1
+	vadd.i64	q13, q10, q1
+	vshr.s64	q12, q12, #26
+	vshr.s64	q13, q13, #26
+	vadd.i64	q5, q5, q12
+	vshl.i64	q12, q12, #26
+	vadd.i64	q14, q5, q0
+	vadd.i64	q11, q11, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q15, q11, q0
+	vsub.i64	q4, q4, q12
+	vshr.s64	q12, q14, #25
+	vsub.i64	q10, q10, q13
+	vshr.s64	q13, q15, #25
+	vadd.i64	q6, q6, q12
+	vshl.i64	q12, q12, #25
+	vadd.i64	q14, q6, q1
+	vadd.i64	q2, q2, q13
+	vsub.i64	q5, q5, q12
+	vshr.s64	q12, q14, #26
+	vshl.i64	q13, q13, #25
+	vadd.i64	q14, q2, q1
+	vadd.i64	q7, q7, q12
+	vshl.i64	q12, q12, #26
+	vadd.i64	q15, q7, q0
+	vsub.i64	q11, q11, q13
+	vshr.s64	q13, q14, #26
+	vsub.i64	q6, q6, q12
+	vshr.s64	q12, q15, #25
+	vadd.i64	q3, q3, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q14, q3, q0
+	vadd.i64	q8, q8, q12
+	vshl.i64	q12, q12, #25
+	vadd.i64	q15, q8, q1
+	add		r2, r2, #8
+	vsub.i64	q2, q2, q13
+	vshr.s64	q13, q14, #25
+	vsub.i64	q7, q7, q12
+	vshr.s64	q12, q15, #26
+	vadd.i64	q14, q13, q13
+	vadd.i64	q9, q9, q12
+	vtrn.32		d12, d14
+	vshl.i64	q12, q12, #26
+	vtrn.32		d13, d15
+	vadd.i64	q0, q9, q0
+	vadd.i64	q4, q4, q14
+	vst1.8		d12, [r2, : 64]!
+	vshl.i64	q6, q13, #4
+	vsub.i64	q7, q8, q12
+	vshr.s64	q0, q0, #25
+	vadd.i64	q4, q4, q6
+	vadd.i64	q6, q10, q0
+	vshl.i64	q0, q0, #25
+	vadd.i64	q8, q6, q1
+	vadd.i64	q4, q4, q13
+	vshl.i64	q10, q13, #25
+	vadd.i64	q1, q4, q1
+	vsub.i64	q0, q9, q0
+	vshr.s64	q8, q8, #26
+	vsub.i64	q3, q3, q10
+	vtrn.32		d14, d0
+	vshr.s64	q1, q1, #26
+	vtrn.32		d15, d1
+	vadd.i64	q0, q11, q8
+	vst1.8		d14, [r2, : 64]
+	vshl.i64	q7, q8, #26
+	vadd.i64	q5, q5, q1
+	vtrn.32		d4, d6
+	vshl.i64	q1, q1, #26
+	vtrn.32		d5, d7
+	vsub.i64	q3, q6, q7
+	add		r2, r2, #16
+	vsub.i64	q1, q4, q1
+	vst1.8		d4, [r2, : 64]
+	vtrn.32		d6, d0
+	vtrn.32		d7, d1
+	sub		r2, r2, #8
+	vtrn.32		d2, d10
+	vtrn.32		d3, d11
+	vst1.8		d6, [r2, : 64]
+	sub		r2, r2, #24
+	vst1.8		d2, [r2, : 64]
+	add		r2, r3, #96
+	vmov.i32	q0, #0
+	vmov.i64	d2, #0xff
+	vmov.i64	d3, #0
+	vshr.u32	q1, q1, #7
+	vst1.8		{d2-d3}, [r2, : 128]!
+	vst1.8		{d0-d1}, [r2, : 128]!
+	vst1.8		d0, [r2, : 64]
+	add		r2, r3, #144
+	vmov.i32	q0, #0
+	vst1.8		{d0-d1}, [r2, : 128]!
+	vst1.8		{d0-d1}, [r2, : 128]!
+	vst1.8		d0, [r2, : 64]
+	add		r2, r3, #240
+	vmov.i32	q0, #0
+	vmov.i64	d2, #0xff
+	vmov.i64	d3, #0
+	vshr.u32	q1, q1, #7
+	vst1.8		{d2-d3}, [r2, : 128]!
+	vst1.8		{d0-d1}, [r2, : 128]!
+	vst1.8		d0, [r2, : 64]
+	add		r2, r3, #48
+	add		r6, r3, #192
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d4}, [r2, : 64]
+	vst1.8		{d0-d1}, [r6, : 128]!
+	vst1.8		{d2-d3}, [r6, : 128]!
+	vst1.8		d4, [r6, : 64]
+._mainloop:
+	mov		r2, r5, LSR #3
+	and		r6, r5, #7
+	ldrb		r2, [r1, r2]
+	mov		r2, r2, LSR r6
+	and		r2, r2, #1
+	str		r5, [sp, #488]
+	eor		r4, r4, r2
+	str		r2, [sp, #492]
+	neg		r2, r4
+	add		r4, r3, #96
+	add		r5, r3, #192
+	add		r6, r3, #144
+	vld1.8		{d8-d9}, [r4, : 128]!
+	add		r7, r3, #240
+	vld1.8		{d10-d11}, [r5, : 128]!
+	veor		q6, q4, q5
+	vld1.8		{d14-d15}, [r6, : 128]!
+	vdup.i32	q8, r2
+	vld1.8		{d18-d19}, [r7, : 128]!
+	veor		q10, q7, q9
+	vld1.8		{d22-d23}, [r4, : 128]!
+	vand		q6, q6, q8
+	vld1.8		{d24-d25}, [r5, : 128]!
+	vand		q10, q10, q8
+	vld1.8		{d26-d27}, [r6, : 128]!
+	veor		q4, q4, q6
+	vld1.8		{d28-d29}, [r7, : 128]!
+	veor		q5, q5, q6
+	vld1.8		{d0}, [r4, : 64]
+	veor		q6, q7, q10
+	vld1.8		{d2}, [r5, : 64]
+	veor		q7, q9, q10
+	vld1.8		{d4}, [r6, : 64]
+	veor		q9, q11, q12
+	vld1.8		{d6}, [r7, : 64]
+	veor		q10, q0, q1
+	sub		r2, r4, #32
+	vand		q9, q9, q8
+	sub		r4, r5, #32
+	vand		q10, q10, q8
+	sub		r5, r6, #32
+	veor		q11, q11, q9
+	sub		r6, r7, #32
+	veor		q0, q0, q10
+	veor		q9, q12, q9
+	veor		q1, q1, q10
+	veor		q10, q13, q14
+	veor		q12, q2, q3
+	vand		q10, q10, q8
+	vand		q8, q12, q8
+	veor		q12, q13, q10
+	veor		q2, q2, q8
+	veor		q10, q14, q10
+	veor		q3, q3, q8
+	vadd.i32	q8, q4, q6
+	vsub.i32	q4, q4, q6
+	vst1.8		{d16-d17}, [r2, : 128]!
+	vadd.i32	q6, q11, q12
+	vst1.8		{d8-d9}, [r5, : 128]!
+	vsub.i32	q4, q11, q12
+	vst1.8		{d12-d13}, [r2, : 128]!
+	vadd.i32	q6, q0, q2
+	vst1.8		{d8-d9}, [r5, : 128]!
+	vsub.i32	q0, q0, q2
+	vst1.8		d12, [r2, : 64]
+	vadd.i32	q2, q5, q7
+	vst1.8		d0, [r5, : 64]
+	vsub.i32	q0, q5, q7
+	vst1.8		{d4-d5}, [r4, : 128]!
+	vadd.i32	q2, q9, q10
+	vst1.8		{d0-d1}, [r6, : 128]!
+	vsub.i32	q0, q9, q10
+	vst1.8		{d4-d5}, [r4, : 128]!
+	vadd.i32	q2, q1, q3
+	vst1.8		{d0-d1}, [r6, : 128]!
+	vsub.i32	q0, q1, q3
+	vst1.8		d4, [r4, : 64]
+	vst1.8		d0, [r6, : 64]
+	add		r2, sp, #544
+	add		r4, r3, #96
+	add		r5, r3, #144
+	vld1.8		{d0-d1}, [r2, : 128]
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vld1.8		{d4-d5}, [r5, : 128]!
+	vzip.i32	q1, q2
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vld1.8		{d8-d9}, [r5, : 128]!
+	vshl.i32	q5, q1, #1
+	vzip.i32	q3, q4
+	vshl.i32	q6, q2, #1
+	vld1.8		{d14}, [r4, : 64]
+	vshl.i32	q8, q3, #1
+	vld1.8		{d15}, [r5, : 64]
+	vshl.i32	q9, q4, #1
+	vmul.i32	d21, d7, d1
+	vtrn.32		d14, d15
+	vmul.i32	q11, q4, q0
+	vmul.i32	q0, q7, q0
+	vmull.s32	q12, d2, d2
+	vmlal.s32	q12, d11, d1
+	vmlal.s32	q12, d12, d0
+	vmlal.s32	q12, d13, d23
+	vmlal.s32	q12, d16, d22
+	vmlal.s32	q12, d7, d21
+	vmull.s32	q10, d2, d11
+	vmlal.s32	q10, d4, d1
+	vmlal.s32	q10, d13, d0
+	vmlal.s32	q10, d6, d23
+	vmlal.s32	q10, d17, d22
+	vmull.s32	q13, d10, d4
+	vmlal.s32	q13, d11, d3
+	vmlal.s32	q13, d13, d1
+	vmlal.s32	q13, d16, d0
+	vmlal.s32	q13, d17, d23
+	vmlal.s32	q13, d8, d22
+	vmull.s32	q1, d10, d5
+	vmlal.s32	q1, d11, d4
+	vmlal.s32	q1, d6, d1
+	vmlal.s32	q1, d17, d0
+	vmlal.s32	q1, d8, d23
+	vmull.s32	q14, d10, d6
+	vmlal.s32	q14, d11, d13
+	vmlal.s32	q14, d4, d4
+	vmlal.s32	q14, d17, d1
+	vmlal.s32	q14, d18, d0
+	vmlal.s32	q14, d9, d23
+	vmull.s32	q11, d10, d7
+	vmlal.s32	q11, d11, d6
+	vmlal.s32	q11, d12, d5
+	vmlal.s32	q11, d8, d1
+	vmlal.s32	q11, d19, d0
+	vmull.s32	q15, d10, d8
+	vmlal.s32	q15, d11, d17
+	vmlal.s32	q15, d12, d6
+	vmlal.s32	q15, d13, d5
+	vmlal.s32	q15, d19, d1
+	vmlal.s32	q15, d14, d0
+	vmull.s32	q2, d10, d9
+	vmlal.s32	q2, d11, d8
+	vmlal.s32	q2, d12, d7
+	vmlal.s32	q2, d13, d6
+	vmlal.s32	q2, d14, d1
+	vmull.s32	q0, d15, d1
+	vmlal.s32	q0, d10, d14
+	vmlal.s32	q0, d11, d19
+	vmlal.s32	q0, d12, d8
+	vmlal.s32	q0, d13, d17
+	vmlal.s32	q0, d6, d6
+	add		r2, sp, #512
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmull.s32	q3, d16, d7
+	vmlal.s32	q3, d10, d15
+	vmlal.s32	q3, d11, d14
+	vmlal.s32	q3, d12, d9
+	vmlal.s32	q3, d13, d8
+	add		r2, sp, #528
+	vld1.8		{d8-d9}, [r2, : 128]
+	vadd.i64	q5, q12, q9
+	vadd.i64	q6, q15, q9
+	vshr.s64	q5, q5, #26
+	vshr.s64	q6, q6, #26
+	vadd.i64	q7, q10, q5
+	vshl.i64	q5, q5, #26
+	vadd.i64	q8, q7, q4
+	vadd.i64	q2, q2, q6
+	vshl.i64	q6, q6, #26
+	vadd.i64	q10, q2, q4
+	vsub.i64	q5, q12, q5
+	vshr.s64	q8, q8, #25
+	vsub.i64	q6, q15, q6
+	vshr.s64	q10, q10, #25
+	vadd.i64	q12, q13, q8
+	vshl.i64	q8, q8, #25
+	vadd.i64	q13, q12, q9
+	vadd.i64	q0, q0, q10
+	vsub.i64	q7, q7, q8
+	vshr.s64	q8, q13, #26
+	vshl.i64	q10, q10, #25
+	vadd.i64	q13, q0, q9
+	vadd.i64	q1, q1, q8
+	vshl.i64	q8, q8, #26
+	vadd.i64	q15, q1, q4
+	vsub.i64	q2, q2, q10
+	vshr.s64	q10, q13, #26
+	vsub.i64	q8, q12, q8
+	vshr.s64	q12, q15, #25
+	vadd.i64	q3, q3, q10
+	vshl.i64	q10, q10, #26
+	vadd.i64	q13, q3, q4
+	vadd.i64	q14, q14, q12
+	add		r2, r3, #288
+	vshl.i64	q12, q12, #25
+	add		r4, r3, #336
+	vadd.i64	q15, q14, q9
+	add		r2, r2, #8
+	vsub.i64	q0, q0, q10
+	add		r4, r4, #8
+	vshr.s64	q10, q13, #25
+	vsub.i64	q1, q1, q12
+	vshr.s64	q12, q15, #26
+	vadd.i64	q13, q10, q10
+	vadd.i64	q11, q11, q12
+	vtrn.32		d16, d2
+	vshl.i64	q12, q12, #26
+	vtrn.32		d17, d3
+	vadd.i64	q1, q11, q4
+	vadd.i64	q4, q5, q13
+	vst1.8		d16, [r2, : 64]!
+	vshl.i64	q5, q10, #4
+	vst1.8		d17, [r4, : 64]!
+	vsub.i64	q8, q14, q12
+	vshr.s64	q1, q1, #25
+	vadd.i64	q4, q4, q5
+	vadd.i64	q5, q6, q1
+	vshl.i64	q1, q1, #25
+	vadd.i64	q6, q5, q9
+	vadd.i64	q4, q4, q10
+	vshl.i64	q10, q10, #25
+	vadd.i64	q9, q4, q9
+	vsub.i64	q1, q11, q1
+	vshr.s64	q6, q6, #26
+	vsub.i64	q3, q3, q10
+	vtrn.32		d16, d2
+	vshr.s64	q9, q9, #26
+	vtrn.32		d17, d3
+	vadd.i64	q1, q2, q6
+	vst1.8		d16, [r2, : 64]
+	vshl.i64	q2, q6, #26
+	vst1.8		d17, [r4, : 64]
+	vadd.i64	q6, q7, q9
+	vtrn.32		d0, d6
+	vshl.i64	q7, q9, #26
+	vtrn.32		d1, d7
+	vsub.i64	q2, q5, q2
+	add		r2, r2, #16
+	vsub.i64	q3, q4, q7
+	vst1.8		d0, [r2, : 64]
+	add		r4, r4, #16
+	vst1.8		d1, [r4, : 64]
+	vtrn.32		d4, d2
+	vtrn.32		d5, d3
+	sub		r2, r2, #8
+	sub		r4, r4, #8
+	vtrn.32		d6, d12
+	vtrn.32		d7, d13
+	vst1.8		d4, [r2, : 64]
+	vst1.8		d5, [r4, : 64]
+	sub		r2, r2, #24
+	sub		r4, r4, #24
+	vst1.8		d6, [r2, : 64]
+	vst1.8		d7, [r4, : 64]
+	add		r2, r3, #240
+	add		r4, r3, #96
+	vld1.8		{d0-d1}, [r4, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vld1.8		{d4}, [r4, : 64]
+	add		r4, r3, #144
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vtrn.32		q0, q3
+	vld1.8		{d8-d9}, [r4, : 128]!
+	vshl.i32	q5, q0, #4
+	vtrn.32		q1, q4
+	vshl.i32	q6, q3, #4
+	vadd.i32	q5, q5, q0
+	vadd.i32	q6, q6, q3
+	vshl.i32	q7, q1, #4
+	vld1.8		{d5}, [r4, : 64]
+	vshl.i32	q8, q4, #4
+	vtrn.32		d4, d5
+	vadd.i32	q7, q7, q1
+	vadd.i32	q8, q8, q4
+	vld1.8		{d18-d19}, [r2, : 128]!
+	vshl.i32	q10, q2, #4
+	vld1.8		{d22-d23}, [r2, : 128]!
+	vadd.i32	q10, q10, q2
+	vld1.8		{d24}, [r2, : 64]
+	vadd.i32	q5, q5, q0
+	add		r2, r3, #192
+	vld1.8		{d26-d27}, [r2, : 128]!
+	vadd.i32	q6, q6, q3
+	vld1.8		{d28-d29}, [r2, : 128]!
+	vadd.i32	q8, q8, q4
+	vld1.8		{d25}, [r2, : 64]
+	vadd.i32	q10, q10, q2
+	vtrn.32		q9, q13
+	vadd.i32	q7, q7, q1
+	vadd.i32	q5, q5, q0
+	vtrn.32		q11, q14
+	vadd.i32	q6, q6, q3
+	add		r2, sp, #560
+	vadd.i32	q10, q10, q2
+	vtrn.32		d24, d25
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q6, q13, #1
+	add		r2, sp, #576
+	vst1.8		{d20-d21}, [r2, : 128]
+	vshl.i32	q10, q14, #1
+	add		r2, sp, #592
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q15, q12, #1
+	vadd.i32	q8, q8, q4
+	vext.32		d10, d31, d30, #0
+	vadd.i32	q7, q7, q1
+	add		r2, sp, #608
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q8, d18, d5
+	vmlal.s32	q8, d26, d4
+	vmlal.s32	q8, d19, d9
+	vmlal.s32	q8, d27, d3
+	vmlal.s32	q8, d22, d8
+	vmlal.s32	q8, d28, d2
+	vmlal.s32	q8, d23, d7
+	vmlal.s32	q8, d29, d1
+	vmlal.s32	q8, d24, d6
+	vmlal.s32	q8, d25, d0
+	add		r2, sp, #624
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q2, d18, d4
+	vmlal.s32	q2, d12, d9
+	vmlal.s32	q2, d13, d8
+	vmlal.s32	q2, d19, d3
+	vmlal.s32	q2, d22, d2
+	vmlal.s32	q2, d23, d1
+	vmlal.s32	q2, d24, d0
+	add		r2, sp, #640
+	vst1.8		{d20-d21}, [r2, : 128]
+	vmull.s32	q7, d18, d9
+	vmlal.s32	q7, d26, d3
+	vmlal.s32	q7, d19, d8
+	vmlal.s32	q7, d27, d2
+	vmlal.s32	q7, d22, d7
+	vmlal.s32	q7, d28, d1
+	vmlal.s32	q7, d23, d6
+	vmlal.s32	q7, d29, d0
+	add		r2, sp, #656
+	vst1.8		{d10-d11}, [r2, : 128]
+	vmull.s32	q5, d18, d3
+	vmlal.s32	q5, d19, d2
+	vmlal.s32	q5, d22, d1
+	vmlal.s32	q5, d23, d0
+	vmlal.s32	q5, d12, d8
+	add		r2, sp, #672
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q4, d18, d8
+	vmlal.s32	q4, d26, d2
+	vmlal.s32	q4, d19, d7
+	vmlal.s32	q4, d27, d1
+	vmlal.s32	q4, d22, d6
+	vmlal.s32	q4, d28, d0
+	vmull.s32	q8, d18, d7
+	vmlal.s32	q8, d26, d1
+	vmlal.s32	q8, d19, d6
+	vmlal.s32	q8, d27, d0
+	add		r2, sp, #576
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q7, d24, d21
+	vmlal.s32	q7, d25, d20
+	vmlal.s32	q4, d23, d21
+	vmlal.s32	q4, d29, d20
+	vmlal.s32	q8, d22, d21
+	vmlal.s32	q8, d28, d20
+	vmlal.s32	q5, d24, d20
+	add		r2, sp, #576
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q7, d18, d6
+	vmlal.s32	q7, d26, d0
+	add		r2, sp, #656
+	vld1.8		{d30-d31}, [r2, : 128]
+	vmlal.s32	q2, d30, d21
+	vmlal.s32	q7, d19, d21
+	vmlal.s32	q7, d27, d20
+	add		r2, sp, #624
+	vld1.8		{d26-d27}, [r2, : 128]
+	vmlal.s32	q4, d25, d27
+	vmlal.s32	q8, d29, d27
+	vmlal.s32	q8, d25, d26
+	vmlal.s32	q7, d28, d27
+	vmlal.s32	q7, d29, d26
+	add		r2, sp, #608
+	vld1.8		{d28-d29}, [r2, : 128]
+	vmlal.s32	q4, d24, d29
+	vmlal.s32	q8, d23, d29
+	vmlal.s32	q8, d24, d28
+	vmlal.s32	q7, d22, d29
+	vmlal.s32	q7, d23, d28
+	add		r2, sp, #608
+	vst1.8		{d8-d9}, [r2, : 128]
+	add		r2, sp, #560
+	vld1.8		{d8-d9}, [r2, : 128]
+	vmlal.s32	q7, d24, d9
+	vmlal.s32	q7, d25, d31
+	vmull.s32	q1, d18, d2
+	vmlal.s32	q1, d19, d1
+	vmlal.s32	q1, d22, d0
+	vmlal.s32	q1, d24, d27
+	vmlal.s32	q1, d23, d20
+	vmlal.s32	q1, d12, d7
+	vmlal.s32	q1, d13, d6
+	vmull.s32	q6, d18, d1
+	vmlal.s32	q6, d19, d0
+	vmlal.s32	q6, d23, d27
+	vmlal.s32	q6, d22, d20
+	vmlal.s32	q6, d24, d26
+	vmull.s32	q0, d18, d0
+	vmlal.s32	q0, d22, d27
+	vmlal.s32	q0, d23, d26
+	vmlal.s32	q0, d24, d31
+	vmlal.s32	q0, d19, d20
+	add		r2, sp, #640
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q2, d18, d7
+	vmlal.s32	q2, d19, d6
+	vmlal.s32	q5, d18, d6
+	vmlal.s32	q5, d19, d21
+	vmlal.s32	q1, d18, d21
+	vmlal.s32	q1, d19, d29
+	vmlal.s32	q0, d18, d28
+	vmlal.s32	q0, d19, d9
+	vmlal.s32	q6, d18, d29
+	vmlal.s32	q6, d19, d28
+	add		r2, sp, #592
+	vld1.8		{d18-d19}, [r2, : 128]
+	add		r2, sp, #512
+	vld1.8		{d22-d23}, [r2, : 128]
+	vmlal.s32	q5, d19, d7
+	vmlal.s32	q0, d18, d21
+	vmlal.s32	q0, d19, d29
+	vmlal.s32	q6, d18, d6
+	add		r2, sp, #528
+	vld1.8		{d6-d7}, [r2, : 128]
+	vmlal.s32	q6, d19, d21
+	add		r2, sp, #576
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q0, d30, d8
+	add		r2, sp, #672
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q5, d30, d29
+	add		r2, sp, #608
+	vld1.8		{d24-d25}, [r2, : 128]
+	vmlal.s32	q1, d30, d28
+	vadd.i64	q13, q0, q11
+	vadd.i64	q14, q5, q11
+	vmlal.s32	q6, d30, d9
+	vshr.s64	q4, q13, #26
+	vshr.s64	q13, q14, #26
+	vadd.i64	q7, q7, q4
+	vshl.i64	q4, q4, #26
+	vadd.i64	q14, q7, q3
+	vadd.i64	q9, q9, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q15, q9, q3
+	vsub.i64	q0, q0, q4
+	vshr.s64	q4, q14, #25
+	vsub.i64	q5, q5, q13
+	vshr.s64	q13, q15, #25
+	vadd.i64	q6, q6, q4
+	vshl.i64	q4, q4, #25
+	vadd.i64	q14, q6, q11
+	vadd.i64	q2, q2, q13
+	vsub.i64	q4, q7, q4
+	vshr.s64	q7, q14, #26
+	vshl.i64	q13, q13, #25
+	vadd.i64	q14, q2, q11
+	vadd.i64	q8, q8, q7
+	vshl.i64	q7, q7, #26
+	vadd.i64	q15, q8, q3
+	vsub.i64	q9, q9, q13
+	vshr.s64	q13, q14, #26
+	vsub.i64	q6, q6, q7
+	vshr.s64	q7, q15, #25
+	vadd.i64	q10, q10, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q14, q10, q3
+	vadd.i64	q1, q1, q7
+	add		r2, r3, #144
+	vshl.i64	q7, q7, #25
+	add		r4, r3, #96
+	vadd.i64	q15, q1, q11
+	add		r2, r2, #8
+	vsub.i64	q2, q2, q13
+	add		r4, r4, #8
+	vshr.s64	q13, q14, #25
+	vsub.i64	q7, q8, q7
+	vshr.s64	q8, q15, #26
+	vadd.i64	q14, q13, q13
+	vadd.i64	q12, q12, q8
+	vtrn.32		d12, d14
+	vshl.i64	q8, q8, #26
+	vtrn.32		d13, d15
+	vadd.i64	q3, q12, q3
+	vadd.i64	q0, q0, q14
+	vst1.8		d12, [r2, : 64]!
+	vshl.i64	q7, q13, #4
+	vst1.8		d13, [r4, : 64]!
+	vsub.i64	q1, q1, q8
+	vshr.s64	q3, q3, #25
+	vadd.i64	q0, q0, q7
+	vadd.i64	q5, q5, q3
+	vshl.i64	q3, q3, #25
+	vadd.i64	q6, q5, q11
+	vadd.i64	q0, q0, q13
+	vshl.i64	q7, q13, #25
+	vadd.i64	q8, q0, q11
+	vsub.i64	q3, q12, q3
+	vshr.s64	q6, q6, #26
+	vsub.i64	q7, q10, q7
+	vtrn.32		d2, d6
+	vshr.s64	q8, q8, #26
+	vtrn.32		d3, d7
+	vadd.i64	q3, q9, q6
+	vst1.8		d2, [r2, : 64]
+	vshl.i64	q6, q6, #26
+	vst1.8		d3, [r4, : 64]
+	vadd.i64	q1, q4, q8
+	vtrn.32		d4, d14
+	vshl.i64	q4, q8, #26
+	vtrn.32		d5, d15
+	vsub.i64	q5, q5, q6
+	add		r2, r2, #16
+	vsub.i64	q0, q0, q4
+	vst1.8		d4, [r2, : 64]
+	add		r4, r4, #16
+	vst1.8		d5, [r4, : 64]
+	vtrn.32		d10, d6
+	vtrn.32		d11, d7
+	sub		r2, r2, #8
+	sub		r4, r4, #8
+	vtrn.32		d0, d2
+	vtrn.32		d1, d3
+	vst1.8		d10, [r2, : 64]
+	vst1.8		d11, [r4, : 64]
+	sub		r2, r2, #24
+	sub		r4, r4, #24
+	vst1.8		d0, [r2, : 64]
+	vst1.8		d1, [r4, : 64]
+	add		r2, r3, #288
+	add		r4, r3, #336
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vsub.i32	q0, q0, q1
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d4-d5}, [r4, : 128]!
+	vsub.i32	q1, q1, q2
+	add		r5, r3, #240
+	vld1.8		{d4}, [r2, : 64]
+	vld1.8		{d6}, [r4, : 64]
+	vsub.i32	q2, q2, q3
+	vst1.8		{d0-d1}, [r5, : 128]!
+	vst1.8		{d2-d3}, [r5, : 128]!
+	vst1.8		d4, [r5, : 64]
+	add		r2, r3, #144
+	add		r4, r3, #96
+	add		r5, r3, #144
+	add		r6, r3, #192
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vsub.i32	q2, q0, q1
+	vadd.i32	q0, q0, q1
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vsub.i32	q4, q1, q3
+	vadd.i32	q1, q1, q3
+	vld1.8		{d6}, [r2, : 64]
+	vld1.8		{d10}, [r4, : 64]
+	vsub.i32	q6, q3, q5
+	vadd.i32	q3, q3, q5
+	vst1.8		{d4-d5}, [r5, : 128]!
+	vst1.8		{d0-d1}, [r6, : 128]!
+	vst1.8		{d8-d9}, [r5, : 128]!
+	vst1.8		{d2-d3}, [r6, : 128]!
+	vst1.8		d12, [r5, : 64]
+	vst1.8		d6, [r6, : 64]
+	add		r2, r3, #0
+	add		r4, r3, #240
+	vld1.8		{d0-d1}, [r4, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vld1.8		{d4}, [r4, : 64]
+	add		r4, r3, #336
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vtrn.32		q0, q3
+	vld1.8		{d8-d9}, [r4, : 128]!
+	vshl.i32	q5, q0, #4
+	vtrn.32		q1, q4
+	vshl.i32	q6, q3, #4
+	vadd.i32	q5, q5, q0
+	vadd.i32	q6, q6, q3
+	vshl.i32	q7, q1, #4
+	vld1.8		{d5}, [r4, : 64]
+	vshl.i32	q8, q4, #4
+	vtrn.32		d4, d5
+	vadd.i32	q7, q7, q1
+	vadd.i32	q8, q8, q4
+	vld1.8		{d18-d19}, [r2, : 128]!
+	vshl.i32	q10, q2, #4
+	vld1.8		{d22-d23}, [r2, : 128]!
+	vadd.i32	q10, q10, q2
+	vld1.8		{d24}, [r2, : 64]
+	vadd.i32	q5, q5, q0
+	add		r2, r3, #288
+	vld1.8		{d26-d27}, [r2, : 128]!
+	vadd.i32	q6, q6, q3
+	vld1.8		{d28-d29}, [r2, : 128]!
+	vadd.i32	q8, q8, q4
+	vld1.8		{d25}, [r2, : 64]
+	vadd.i32	q10, q10, q2
+	vtrn.32		q9, q13
+	vadd.i32	q7, q7, q1
+	vadd.i32	q5, q5, q0
+	vtrn.32		q11, q14
+	vadd.i32	q6, q6, q3
+	add		r2, sp, #560
+	vadd.i32	q10, q10, q2
+	vtrn.32		d24, d25
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q6, q13, #1
+	add		r2, sp, #576
+	vst1.8		{d20-d21}, [r2, : 128]
+	vshl.i32	q10, q14, #1
+	add		r2, sp, #592
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q15, q12, #1
+	vadd.i32	q8, q8, q4
+	vext.32		d10, d31, d30, #0
+	vadd.i32	q7, q7, q1
+	add		r2, sp, #608
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q8, d18, d5
+	vmlal.s32	q8, d26, d4
+	vmlal.s32	q8, d19, d9
+	vmlal.s32	q8, d27, d3
+	vmlal.s32	q8, d22, d8
+	vmlal.s32	q8, d28, d2
+	vmlal.s32	q8, d23, d7
+	vmlal.s32	q8, d29, d1
+	vmlal.s32	q8, d24, d6
+	vmlal.s32	q8, d25, d0
+	add		r2, sp, #624
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q2, d18, d4
+	vmlal.s32	q2, d12, d9
+	vmlal.s32	q2, d13, d8
+	vmlal.s32	q2, d19, d3
+	vmlal.s32	q2, d22, d2
+	vmlal.s32	q2, d23, d1
+	vmlal.s32	q2, d24, d0
+	add		r2, sp, #640
+	vst1.8		{d20-d21}, [r2, : 128]
+	vmull.s32	q7, d18, d9
+	vmlal.s32	q7, d26, d3
+	vmlal.s32	q7, d19, d8
+	vmlal.s32	q7, d27, d2
+	vmlal.s32	q7, d22, d7
+	vmlal.s32	q7, d28, d1
+	vmlal.s32	q7, d23, d6
+	vmlal.s32	q7, d29, d0
+	add		r2, sp, #656
+	vst1.8		{d10-d11}, [r2, : 128]
+	vmull.s32	q5, d18, d3
+	vmlal.s32	q5, d19, d2
+	vmlal.s32	q5, d22, d1
+	vmlal.s32	q5, d23, d0
+	vmlal.s32	q5, d12, d8
+	add		r2, sp, #672
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q4, d18, d8
+	vmlal.s32	q4, d26, d2
+	vmlal.s32	q4, d19, d7
+	vmlal.s32	q4, d27, d1
+	vmlal.s32	q4, d22, d6
+	vmlal.s32	q4, d28, d0
+	vmull.s32	q8, d18, d7
+	vmlal.s32	q8, d26, d1
+	vmlal.s32	q8, d19, d6
+	vmlal.s32	q8, d27, d0
+	add		r2, sp, #576
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q7, d24, d21
+	vmlal.s32	q7, d25, d20
+	vmlal.s32	q4, d23, d21
+	vmlal.s32	q4, d29, d20
+	vmlal.s32	q8, d22, d21
+	vmlal.s32	q8, d28, d20
+	vmlal.s32	q5, d24, d20
+	add		r2, sp, #576
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q7, d18, d6
+	vmlal.s32	q7, d26, d0
+	add		r2, sp, #656
+	vld1.8		{d30-d31}, [r2, : 128]
+	vmlal.s32	q2, d30, d21
+	vmlal.s32	q7, d19, d21
+	vmlal.s32	q7, d27, d20
+	add		r2, sp, #624
+	vld1.8		{d26-d27}, [r2, : 128]
+	vmlal.s32	q4, d25, d27
+	vmlal.s32	q8, d29, d27
+	vmlal.s32	q8, d25, d26
+	vmlal.s32	q7, d28, d27
+	vmlal.s32	q7, d29, d26
+	add		r2, sp, #608
+	vld1.8		{d28-d29}, [r2, : 128]
+	vmlal.s32	q4, d24, d29
+	vmlal.s32	q8, d23, d29
+	vmlal.s32	q8, d24, d28
+	vmlal.s32	q7, d22, d29
+	vmlal.s32	q7, d23, d28
+	add		r2, sp, #608
+	vst1.8		{d8-d9}, [r2, : 128]
+	add		r2, sp, #560
+	vld1.8		{d8-d9}, [r2, : 128]
+	vmlal.s32	q7, d24, d9
+	vmlal.s32	q7, d25, d31
+	vmull.s32	q1, d18, d2
+	vmlal.s32	q1, d19, d1
+	vmlal.s32	q1, d22, d0
+	vmlal.s32	q1, d24, d27
+	vmlal.s32	q1, d23, d20
+	vmlal.s32	q1, d12, d7
+	vmlal.s32	q1, d13, d6
+	vmull.s32	q6, d18, d1
+	vmlal.s32	q6, d19, d0
+	vmlal.s32	q6, d23, d27
+	vmlal.s32	q6, d22, d20
+	vmlal.s32	q6, d24, d26
+	vmull.s32	q0, d18, d0
+	vmlal.s32	q0, d22, d27
+	vmlal.s32	q0, d23, d26
+	vmlal.s32	q0, d24, d31
+	vmlal.s32	q0, d19, d20
+	add		r2, sp, #640
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q2, d18, d7
+	vmlal.s32	q2, d19, d6
+	vmlal.s32	q5, d18, d6
+	vmlal.s32	q5, d19, d21
+	vmlal.s32	q1, d18, d21
+	vmlal.s32	q1, d19, d29
+	vmlal.s32	q0, d18, d28
+	vmlal.s32	q0, d19, d9
+	vmlal.s32	q6, d18, d29
+	vmlal.s32	q6, d19, d28
+	add		r2, sp, #592
+	vld1.8		{d18-d19}, [r2, : 128]
+	add		r2, sp, #512
+	vld1.8		{d22-d23}, [r2, : 128]
+	vmlal.s32	q5, d19, d7
+	vmlal.s32	q0, d18, d21
+	vmlal.s32	q0, d19, d29
+	vmlal.s32	q6, d18, d6
+	add		r2, sp, #528
+	vld1.8		{d6-d7}, [r2, : 128]
+	vmlal.s32	q6, d19, d21
+	add		r2, sp, #576
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q0, d30, d8
+	add		r2, sp, #672
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q5, d30, d29
+	add		r2, sp, #608
+	vld1.8		{d24-d25}, [r2, : 128]
+	vmlal.s32	q1, d30, d28
+	vadd.i64	q13, q0, q11
+	vadd.i64	q14, q5, q11
+	vmlal.s32	q6, d30, d9
+	vshr.s64	q4, q13, #26
+	vshr.s64	q13, q14, #26
+	vadd.i64	q7, q7, q4
+	vshl.i64	q4, q4, #26
+	vadd.i64	q14, q7, q3
+	vadd.i64	q9, q9, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q15, q9, q3
+	vsub.i64	q0, q0, q4
+	vshr.s64	q4, q14, #25
+	vsub.i64	q5, q5, q13
+	vshr.s64	q13, q15, #25
+	vadd.i64	q6, q6, q4
+	vshl.i64	q4, q4, #25
+	vadd.i64	q14, q6, q11
+	vadd.i64	q2, q2, q13
+	vsub.i64	q4, q7, q4
+	vshr.s64	q7, q14, #26
+	vshl.i64	q13, q13, #25
+	vadd.i64	q14, q2, q11
+	vadd.i64	q8, q8, q7
+	vshl.i64	q7, q7, #26
+	vadd.i64	q15, q8, q3
+	vsub.i64	q9, q9, q13
+	vshr.s64	q13, q14, #26
+	vsub.i64	q6, q6, q7
+	vshr.s64	q7, q15, #25
+	vadd.i64	q10, q10, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q14, q10, q3
+	vadd.i64	q1, q1, q7
+	add		r2, r3, #288
+	vshl.i64	q7, q7, #25
+	add		r4, r3, #96
+	vadd.i64	q15, q1, q11
+	add		r2, r2, #8
+	vsub.i64	q2, q2, q13
+	add		r4, r4, #8
+	vshr.s64	q13, q14, #25
+	vsub.i64	q7, q8, q7
+	vshr.s64	q8, q15, #26
+	vadd.i64	q14, q13, q13
+	vadd.i64	q12, q12, q8
+	vtrn.32		d12, d14
+	vshl.i64	q8, q8, #26
+	vtrn.32		d13, d15
+	vadd.i64	q3, q12, q3
+	vadd.i64	q0, q0, q14
+	vst1.8		d12, [r2, : 64]!
+	vshl.i64	q7, q13, #4
+	vst1.8		d13, [r4, : 64]!
+	vsub.i64	q1, q1, q8
+	vshr.s64	q3, q3, #25
+	vadd.i64	q0, q0, q7
+	vadd.i64	q5, q5, q3
+	vshl.i64	q3, q3, #25
+	vadd.i64	q6, q5, q11
+	vadd.i64	q0, q0, q13
+	vshl.i64	q7, q13, #25
+	vadd.i64	q8, q0, q11
+	vsub.i64	q3, q12, q3
+	vshr.s64	q6, q6, #26
+	vsub.i64	q7, q10, q7
+	vtrn.32		d2, d6
+	vshr.s64	q8, q8, #26
+	vtrn.32		d3, d7
+	vadd.i64	q3, q9, q6
+	vst1.8		d2, [r2, : 64]
+	vshl.i64	q6, q6, #26
+	vst1.8		d3, [r4, : 64]
+	vadd.i64	q1, q4, q8
+	vtrn.32		d4, d14
+	vshl.i64	q4, q8, #26
+	vtrn.32		d5, d15
+	vsub.i64	q5, q5, q6
+	add		r2, r2, #16
+	vsub.i64	q0, q0, q4
+	vst1.8		d4, [r2, : 64]
+	add		r4, r4, #16
+	vst1.8		d5, [r4, : 64]
+	vtrn.32		d10, d6
+	vtrn.32		d11, d7
+	sub		r2, r2, #8
+	sub		r4, r4, #8
+	vtrn.32		d0, d2
+	vtrn.32		d1, d3
+	vst1.8		d10, [r2, : 64]
+	vst1.8		d11, [r4, : 64]
+	sub		r2, r2, #24
+	sub		r4, r4, #24
+	vst1.8		d0, [r2, : 64]
+	vst1.8		d1, [r4, : 64]
+	add		r2, sp, #544
+	add		r4, r3, #144
+	add		r5, r3, #192
+	vld1.8		{d0-d1}, [r2, : 128]
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vld1.8		{d4-d5}, [r5, : 128]!
+	vzip.i32	q1, q2
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vld1.8		{d8-d9}, [r5, : 128]!
+	vshl.i32	q5, q1, #1
+	vzip.i32	q3, q4
+	vshl.i32	q6, q2, #1
+	vld1.8		{d14}, [r4, : 64]
+	vshl.i32	q8, q3, #1
+	vld1.8		{d15}, [r5, : 64]
+	vshl.i32	q9, q4, #1
+	vmul.i32	d21, d7, d1
+	vtrn.32		d14, d15
+	vmul.i32	q11, q4, q0
+	vmul.i32	q0, q7, q0
+	vmull.s32	q12, d2, d2
+	vmlal.s32	q12, d11, d1
+	vmlal.s32	q12, d12, d0
+	vmlal.s32	q12, d13, d23
+	vmlal.s32	q12, d16, d22
+	vmlal.s32	q12, d7, d21
+	vmull.s32	q10, d2, d11
+	vmlal.s32	q10, d4, d1
+	vmlal.s32	q10, d13, d0
+	vmlal.s32	q10, d6, d23
+	vmlal.s32	q10, d17, d22
+	vmull.s32	q13, d10, d4
+	vmlal.s32	q13, d11, d3
+	vmlal.s32	q13, d13, d1
+	vmlal.s32	q13, d16, d0
+	vmlal.s32	q13, d17, d23
+	vmlal.s32	q13, d8, d22
+	vmull.s32	q1, d10, d5
+	vmlal.s32	q1, d11, d4
+	vmlal.s32	q1, d6, d1
+	vmlal.s32	q1, d17, d0
+	vmlal.s32	q1, d8, d23
+	vmull.s32	q14, d10, d6
+	vmlal.s32	q14, d11, d13
+	vmlal.s32	q14, d4, d4
+	vmlal.s32	q14, d17, d1
+	vmlal.s32	q14, d18, d0
+	vmlal.s32	q14, d9, d23
+	vmull.s32	q11, d10, d7
+	vmlal.s32	q11, d11, d6
+	vmlal.s32	q11, d12, d5
+	vmlal.s32	q11, d8, d1
+	vmlal.s32	q11, d19, d0
+	vmull.s32	q15, d10, d8
+	vmlal.s32	q15, d11, d17
+	vmlal.s32	q15, d12, d6
+	vmlal.s32	q15, d13, d5
+	vmlal.s32	q15, d19, d1
+	vmlal.s32	q15, d14, d0
+	vmull.s32	q2, d10, d9
+	vmlal.s32	q2, d11, d8
+	vmlal.s32	q2, d12, d7
+	vmlal.s32	q2, d13, d6
+	vmlal.s32	q2, d14, d1
+	vmull.s32	q0, d15, d1
+	vmlal.s32	q0, d10, d14
+	vmlal.s32	q0, d11, d19
+	vmlal.s32	q0, d12, d8
+	vmlal.s32	q0, d13, d17
+	vmlal.s32	q0, d6, d6
+	add		r2, sp, #512
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmull.s32	q3, d16, d7
+	vmlal.s32	q3, d10, d15
+	vmlal.s32	q3, d11, d14
+	vmlal.s32	q3, d12, d9
+	vmlal.s32	q3, d13, d8
+	add		r2, sp, #528
+	vld1.8		{d8-d9}, [r2, : 128]
+	vadd.i64	q5, q12, q9
+	vadd.i64	q6, q15, q9
+	vshr.s64	q5, q5, #26
+	vshr.s64	q6, q6, #26
+	vadd.i64	q7, q10, q5
+	vshl.i64	q5, q5, #26
+	vadd.i64	q8, q7, q4
+	vadd.i64	q2, q2, q6
+	vshl.i64	q6, q6, #26
+	vadd.i64	q10, q2, q4
+	vsub.i64	q5, q12, q5
+	vshr.s64	q8, q8, #25
+	vsub.i64	q6, q15, q6
+	vshr.s64	q10, q10, #25
+	vadd.i64	q12, q13, q8
+	vshl.i64	q8, q8, #25
+	vadd.i64	q13, q12, q9
+	vadd.i64	q0, q0, q10
+	vsub.i64	q7, q7, q8
+	vshr.s64	q8, q13, #26
+	vshl.i64	q10, q10, #25
+	vadd.i64	q13, q0, q9
+	vadd.i64	q1, q1, q8
+	vshl.i64	q8, q8, #26
+	vadd.i64	q15, q1, q4
+	vsub.i64	q2, q2, q10
+	vshr.s64	q10, q13, #26
+	vsub.i64	q8, q12, q8
+	vshr.s64	q12, q15, #25
+	vadd.i64	q3, q3, q10
+	vshl.i64	q10, q10, #26
+	vadd.i64	q13, q3, q4
+	vadd.i64	q14, q14, q12
+	add		r2, r3, #144
+	vshl.i64	q12, q12, #25
+	add		r4, r3, #192
+	vadd.i64	q15, q14, q9
+	add		r2, r2, #8
+	vsub.i64	q0, q0, q10
+	add		r4, r4, #8
+	vshr.s64	q10, q13, #25
+	vsub.i64	q1, q1, q12
+	vshr.s64	q12, q15, #26
+	vadd.i64	q13, q10, q10
+	vadd.i64	q11, q11, q12
+	vtrn.32		d16, d2
+	vshl.i64	q12, q12, #26
+	vtrn.32		d17, d3
+	vadd.i64	q1, q11, q4
+	vadd.i64	q4, q5, q13
+	vst1.8		d16, [r2, : 64]!
+	vshl.i64	q5, q10, #4
+	vst1.8		d17, [r4, : 64]!
+	vsub.i64	q8, q14, q12
+	vshr.s64	q1, q1, #25
+	vadd.i64	q4, q4, q5
+	vadd.i64	q5, q6, q1
+	vshl.i64	q1, q1, #25
+	vadd.i64	q6, q5, q9
+	vadd.i64	q4, q4, q10
+	vshl.i64	q10, q10, #25
+	vadd.i64	q9, q4, q9
+	vsub.i64	q1, q11, q1
+	vshr.s64	q6, q6, #26
+	vsub.i64	q3, q3, q10
+	vtrn.32		d16, d2
+	vshr.s64	q9, q9, #26
+	vtrn.32		d17, d3
+	vadd.i64	q1, q2, q6
+	vst1.8		d16, [r2, : 64]
+	vshl.i64	q2, q6, #26
+	vst1.8		d17, [r4, : 64]
+	vadd.i64	q6, q7, q9
+	vtrn.32		d0, d6
+	vshl.i64	q7, q9, #26
+	vtrn.32		d1, d7
+	vsub.i64	q2, q5, q2
+	add		r2, r2, #16
+	vsub.i64	q3, q4, q7
+	vst1.8		d0, [r2, : 64]
+	add		r4, r4, #16
+	vst1.8		d1, [r4, : 64]
+	vtrn.32		d4, d2
+	vtrn.32		d5, d3
+	sub		r2, r2, #8
+	sub		r4, r4, #8
+	vtrn.32		d6, d12
+	vtrn.32		d7, d13
+	vst1.8		d4, [r2, : 64]
+	vst1.8		d5, [r4, : 64]
+	sub		r2, r2, #24
+	sub		r4, r4, #24
+	vst1.8		d6, [r2, : 64]
+	vst1.8		d7, [r4, : 64]
+	add		r2, r3, #336
+	add		r4, r3, #288
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vadd.i32	q0, q0, q1
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d4-d5}, [r4, : 128]!
+	vadd.i32	q1, q1, q2
+	add		r5, r3, #288
+	vld1.8		{d4}, [r2, : 64]
+	vld1.8		{d6}, [r4, : 64]
+	vadd.i32	q2, q2, q3
+	vst1.8		{d0-d1}, [r5, : 128]!
+	vst1.8		{d2-d3}, [r5, : 128]!
+	vst1.8		d4, [r5, : 64]
+	add		r2, r3, #48
+	add		r4, r3, #144
+	vld1.8		{d0-d1}, [r4, : 128]!
+	vld1.8		{d2-d3}, [r4, : 128]!
+	vld1.8		{d4}, [r4, : 64]
+	add		r4, r3, #288
+	vld1.8		{d6-d7}, [r4, : 128]!
+	vtrn.32		q0, q3
+	vld1.8		{d8-d9}, [r4, : 128]!
+	vshl.i32	q5, q0, #4
+	vtrn.32		q1, q4
+	vshl.i32	q6, q3, #4
+	vadd.i32	q5, q5, q0
+	vadd.i32	q6, q6, q3
+	vshl.i32	q7, q1, #4
+	vld1.8		{d5}, [r4, : 64]
+	vshl.i32	q8, q4, #4
+	vtrn.32		d4, d5
+	vadd.i32	q7, q7, q1
+	vadd.i32	q8, q8, q4
+	vld1.8		{d18-d19}, [r2, : 128]!
+	vshl.i32	q10, q2, #4
+	vld1.8		{d22-d23}, [r2, : 128]!
+	vadd.i32	q10, q10, q2
+	vld1.8		{d24}, [r2, : 64]
+	vadd.i32	q5, q5, q0
+	add		r2, r3, #240
+	vld1.8		{d26-d27}, [r2, : 128]!
+	vadd.i32	q6, q6, q3
+	vld1.8		{d28-d29}, [r2, : 128]!
+	vadd.i32	q8, q8, q4
+	vld1.8		{d25}, [r2, : 64]
+	vadd.i32	q10, q10, q2
+	vtrn.32		q9, q13
+	vadd.i32	q7, q7, q1
+	vadd.i32	q5, q5, q0
+	vtrn.32		q11, q14
+	vadd.i32	q6, q6, q3
+	add		r2, sp, #560
+	vadd.i32	q10, q10, q2
+	vtrn.32		d24, d25
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q6, q13, #1
+	add		r2, sp, #576
+	vst1.8		{d20-d21}, [r2, : 128]
+	vshl.i32	q10, q14, #1
+	add		r2, sp, #592
+	vst1.8		{d12-d13}, [r2, : 128]
+	vshl.i32	q15, q12, #1
+	vadd.i32	q8, q8, q4
+	vext.32		d10, d31, d30, #0
+	vadd.i32	q7, q7, q1
+	add		r2, sp, #608
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q8, d18, d5
+	vmlal.s32	q8, d26, d4
+	vmlal.s32	q8, d19, d9
+	vmlal.s32	q8, d27, d3
+	vmlal.s32	q8, d22, d8
+	vmlal.s32	q8, d28, d2
+	vmlal.s32	q8, d23, d7
+	vmlal.s32	q8, d29, d1
+	vmlal.s32	q8, d24, d6
+	vmlal.s32	q8, d25, d0
+	add		r2, sp, #624
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q2, d18, d4
+	vmlal.s32	q2, d12, d9
+	vmlal.s32	q2, d13, d8
+	vmlal.s32	q2, d19, d3
+	vmlal.s32	q2, d22, d2
+	vmlal.s32	q2, d23, d1
+	vmlal.s32	q2, d24, d0
+	add		r2, sp, #640
+	vst1.8		{d20-d21}, [r2, : 128]
+	vmull.s32	q7, d18, d9
+	vmlal.s32	q7, d26, d3
+	vmlal.s32	q7, d19, d8
+	vmlal.s32	q7, d27, d2
+	vmlal.s32	q7, d22, d7
+	vmlal.s32	q7, d28, d1
+	vmlal.s32	q7, d23, d6
+	vmlal.s32	q7, d29, d0
+	add		r2, sp, #656
+	vst1.8		{d10-d11}, [r2, : 128]
+	vmull.s32	q5, d18, d3
+	vmlal.s32	q5, d19, d2
+	vmlal.s32	q5, d22, d1
+	vmlal.s32	q5, d23, d0
+	vmlal.s32	q5, d12, d8
+	add		r2, sp, #672
+	vst1.8		{d16-d17}, [r2, : 128]
+	vmull.s32	q4, d18, d8
+	vmlal.s32	q4, d26, d2
+	vmlal.s32	q4, d19, d7
+	vmlal.s32	q4, d27, d1
+	vmlal.s32	q4, d22, d6
+	vmlal.s32	q4, d28, d0
+	vmull.s32	q8, d18, d7
+	vmlal.s32	q8, d26, d1
+	vmlal.s32	q8, d19, d6
+	vmlal.s32	q8, d27, d0
+	add		r2, sp, #576
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q7, d24, d21
+	vmlal.s32	q7, d25, d20
+	vmlal.s32	q4, d23, d21
+	vmlal.s32	q4, d29, d20
+	vmlal.s32	q8, d22, d21
+	vmlal.s32	q8, d28, d20
+	vmlal.s32	q5, d24, d20
+	add		r2, sp, #576
+	vst1.8		{d14-d15}, [r2, : 128]
+	vmull.s32	q7, d18, d6
+	vmlal.s32	q7, d26, d0
+	add		r2, sp, #656
+	vld1.8		{d30-d31}, [r2, : 128]
+	vmlal.s32	q2, d30, d21
+	vmlal.s32	q7, d19, d21
+	vmlal.s32	q7, d27, d20
+	add		r2, sp, #624
+	vld1.8		{d26-d27}, [r2, : 128]
+	vmlal.s32	q4, d25, d27
+	vmlal.s32	q8, d29, d27
+	vmlal.s32	q8, d25, d26
+	vmlal.s32	q7, d28, d27
+	vmlal.s32	q7, d29, d26
+	add		r2, sp, #608
+	vld1.8		{d28-d29}, [r2, : 128]
+	vmlal.s32	q4, d24, d29
+	vmlal.s32	q8, d23, d29
+	vmlal.s32	q8, d24, d28
+	vmlal.s32	q7, d22, d29
+	vmlal.s32	q7, d23, d28
+	add		r2, sp, #608
+	vst1.8		{d8-d9}, [r2, : 128]
+	add		r2, sp, #560
+	vld1.8		{d8-d9}, [r2, : 128]
+	vmlal.s32	q7, d24, d9
+	vmlal.s32	q7, d25, d31
+	vmull.s32	q1, d18, d2
+	vmlal.s32	q1, d19, d1
+	vmlal.s32	q1, d22, d0
+	vmlal.s32	q1, d24, d27
+	vmlal.s32	q1, d23, d20
+	vmlal.s32	q1, d12, d7
+	vmlal.s32	q1, d13, d6
+	vmull.s32	q6, d18, d1
+	vmlal.s32	q6, d19, d0
+	vmlal.s32	q6, d23, d27
+	vmlal.s32	q6, d22, d20
+	vmlal.s32	q6, d24, d26
+	vmull.s32	q0, d18, d0
+	vmlal.s32	q0, d22, d27
+	vmlal.s32	q0, d23, d26
+	vmlal.s32	q0, d24, d31
+	vmlal.s32	q0, d19, d20
+	add		r2, sp, #640
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q2, d18, d7
+	vmlal.s32	q2, d19, d6
+	vmlal.s32	q5, d18, d6
+	vmlal.s32	q5, d19, d21
+	vmlal.s32	q1, d18, d21
+	vmlal.s32	q1, d19, d29
+	vmlal.s32	q0, d18, d28
+	vmlal.s32	q0, d19, d9
+	vmlal.s32	q6, d18, d29
+	vmlal.s32	q6, d19, d28
+	add		r2, sp, #592
+	vld1.8		{d18-d19}, [r2, : 128]
+	add		r2, sp, #512
+	vld1.8		{d22-d23}, [r2, : 128]
+	vmlal.s32	q5, d19, d7
+	vmlal.s32	q0, d18, d21
+	vmlal.s32	q0, d19, d29
+	vmlal.s32	q6, d18, d6
+	add		r2, sp, #528
+	vld1.8		{d6-d7}, [r2, : 128]
+	vmlal.s32	q6, d19, d21
+	add		r2, sp, #576
+	vld1.8		{d18-d19}, [r2, : 128]
+	vmlal.s32	q0, d30, d8
+	add		r2, sp, #672
+	vld1.8		{d20-d21}, [r2, : 128]
+	vmlal.s32	q5, d30, d29
+	add		r2, sp, #608
+	vld1.8		{d24-d25}, [r2, : 128]
+	vmlal.s32	q1, d30, d28
+	vadd.i64	q13, q0, q11
+	vadd.i64	q14, q5, q11
+	vmlal.s32	q6, d30, d9
+	vshr.s64	q4, q13, #26
+	vshr.s64	q13, q14, #26
+	vadd.i64	q7, q7, q4
+	vshl.i64	q4, q4, #26
+	vadd.i64	q14, q7, q3
+	vadd.i64	q9, q9, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q15, q9, q3
+	vsub.i64	q0, q0, q4
+	vshr.s64	q4, q14, #25
+	vsub.i64	q5, q5, q13
+	vshr.s64	q13, q15, #25
+	vadd.i64	q6, q6, q4
+	vshl.i64	q4, q4, #25
+	vadd.i64	q14, q6, q11
+	vadd.i64	q2, q2, q13
+	vsub.i64	q4, q7, q4
+	vshr.s64	q7, q14, #26
+	vshl.i64	q13, q13, #25
+	vadd.i64	q14, q2, q11
+	vadd.i64	q8, q8, q7
+	vshl.i64	q7, q7, #26
+	vadd.i64	q15, q8, q3
+	vsub.i64	q9, q9, q13
+	vshr.s64	q13, q14, #26
+	vsub.i64	q6, q6, q7
+	vshr.s64	q7, q15, #25
+	vadd.i64	q10, q10, q13
+	vshl.i64	q13, q13, #26
+	vadd.i64	q14, q10, q3
+	vadd.i64	q1, q1, q7
+	add		r2, r3, #240
+	vshl.i64	q7, q7, #25
+	add		r4, r3, #144
+	vadd.i64	q15, q1, q11
+	add		r2, r2, #8
+	vsub.i64	q2, q2, q13
+	add		r4, r4, #8
+	vshr.s64	q13, q14, #25
+	vsub.i64	q7, q8, q7
+	vshr.s64	q8, q15, #26
+	vadd.i64	q14, q13, q13
+	vadd.i64	q12, q12, q8
+	vtrn.32		d12, d14
+	vshl.i64	q8, q8, #26
+	vtrn.32		d13, d15
+	vadd.i64	q3, q12, q3
+	vadd.i64	q0, q0, q14
+	vst1.8		d12, [r2, : 64]!
+	vshl.i64	q7, q13, #4
+	vst1.8		d13, [r4, : 64]!
+	vsub.i64	q1, q1, q8
+	vshr.s64	q3, q3, #25
+	vadd.i64	q0, q0, q7
+	vadd.i64	q5, q5, q3
+	vshl.i64	q3, q3, #25
+	vadd.i64	q6, q5, q11
+	vadd.i64	q0, q0, q13
+	vshl.i64	q7, q13, #25
+	vadd.i64	q8, q0, q11
+	vsub.i64	q3, q12, q3
+	vshr.s64	q6, q6, #26
+	vsub.i64	q7, q10, q7
+	vtrn.32		d2, d6
+	vshr.s64	q8, q8, #26
+	vtrn.32		d3, d7
+	vadd.i64	q3, q9, q6
+	vst1.8		d2, [r2, : 64]
+	vshl.i64	q6, q6, #26
+	vst1.8		d3, [r4, : 64]
+	vadd.i64	q1, q4, q8
+	vtrn.32		d4, d14
+	vshl.i64	q4, q8, #26
+	vtrn.32		d5, d15
+	vsub.i64	q5, q5, q6
+	add		r2, r2, #16
+	vsub.i64	q0, q0, q4
+	vst1.8		d4, [r2, : 64]
+	add		r4, r4, #16
+	vst1.8		d5, [r4, : 64]
+	vtrn.32		d10, d6
+	vtrn.32		d11, d7
+	sub		r2, r2, #8
+	sub		r4, r4, #8
+	vtrn.32		d0, d2
+	vtrn.32		d1, d3
+	vst1.8		d10, [r2, : 64]
+	vst1.8		d11, [r4, : 64]
+	sub		r2, r2, #24
+	sub		r4, r4, #24
+	vst1.8		d0, [r2, : 64]
+	vst1.8		d1, [r4, : 64]
+	ldr		r2, [sp, #488]
+	ldr		r4, [sp, #492]
+	subs		r5, r2, #1
+	bge		._mainloop
+	add		r1, r3, #144
+	add		r2, r3, #336
+	vld1.8		{d0-d1}, [r1, : 128]!
+	vld1.8		{d2-d3}, [r1, : 128]!
+	vld1.8		{d4}, [r1, : 64]
+	vst1.8		{d0-d1}, [r2, : 128]!
+	vst1.8		{d2-d3}, [r2, : 128]!
+	vst1.8		d4, [r2, : 64]
+	ldr		r1, =0
+._invertloop:
+	add		r2, r3, #144
+	ldr		r4, =0
+	ldr		r5, =2
+	cmp		r1, #1
+	ldreq		r5, =1
+	addeq		r2, r3, #336
+	addeq		r4, r3, #48
+	cmp		r1, #2
+	ldreq		r5, =1
+	addeq		r2, r3, #48
+	cmp		r1, #3
+	ldreq		r5, =5
+	addeq		r4, r3, #336
+	cmp		r1, #4
+	ldreq		r5, =10
+	cmp		r1, #5
+	ldreq		r5, =20
+	cmp		r1, #6
+	ldreq		r5, =10
+	addeq		r2, r3, #336
+	addeq		r4, r3, #336
+	cmp		r1, #7
+	ldreq		r5, =50
+	cmp		r1, #8
+	ldreq		r5, =100
+	cmp		r1, #9
+	ldreq		r5, =50
+	addeq		r2, r3, #336
+	cmp		r1, #10
+	ldreq		r5, =5
+	addeq		r2, r3, #48
+	cmp		r1, #11
+	ldreq		r5, =0
+	addeq		r2, r3, #96
+	add		r6, r3, #144
+	add		r7, r3, #288
+	vld1.8		{d0-d1}, [r6, : 128]!
+	vld1.8		{d2-d3}, [r6, : 128]!
+	vld1.8		{d4}, [r6, : 64]
+	vst1.8		{d0-d1}, [r7, : 128]!
+	vst1.8		{d2-d3}, [r7, : 128]!
+	vst1.8		d4, [r7, : 64]
+	cmp		r5, #0
+	beq		._skipsquaringloop
+._squaringloop:
+	add		r6, r3, #288
+	add		r7, r3, #288
+	add		r8, r3, #288
+	vmov.i32	q0, #19
+	vmov.i32	q1, #0
+	vmov.i32	q2, #1
+	vzip.i32	q1, q2
+	vld1.8		{d4-d5}, [r7, : 128]!
+	vld1.8		{d6-d7}, [r7, : 128]!
+	vld1.8		{d9}, [r7, : 64]
+	vld1.8		{d10-d11}, [r6, : 128]!
+	add		r7, sp, #416
+	vld1.8		{d12-d13}, [r6, : 128]!
+	vmul.i32	q7, q2, q0
+	vld1.8		{d8}, [r6, : 64]
+	vext.32		d17, d11, d10, #1
+	vmul.i32	q9, q3, q0
+	vext.32		d16, d10, d8, #1
+	vshl.u32	q10, q5, q1
+	vext.32		d22, d14, d4, #1
+	vext.32		d24, d18, d6, #1
+	vshl.u32	q13, q6, q1
+	vshl.u32	d28, d8, d2
+	vrev64.i32	d22, d22
+	vmul.i32	d1, d9, d1
+	vrev64.i32	d24, d24
+	vext.32		d29, d8, d13, #1
+	vext.32		d0, d1, d9, #1
+	vrev64.i32	d0, d0
+	vext.32		d2, d9, d1, #1
+	vext.32		d23, d15, d5, #1
+	vmull.s32	q4, d20, d4
+	vrev64.i32	d23, d23
+	vmlal.s32	q4, d21, d1
+	vrev64.i32	d2, d2
+	vmlal.s32	q4, d26, d19
+	vext.32		d3, d5, d15, #1
+	vmlal.s32	q4, d27, d18
+	vrev64.i32	d3, d3
+	vmlal.s32	q4, d28, d15
+	vext.32		d14, d12, d11, #1
+	vmull.s32	q5, d16, d23
+	vext.32		d15, d13, d12, #1
+	vmlal.s32	q5, d17, d4
+	vst1.8		d8, [r7, : 64]!
+	vmlal.s32	q5, d14, d1
+	vext.32		d12, d9, d8, #0
+	vmlal.s32	q5, d15, d19
+	vmov.i64	d13, #0
+	vmlal.s32	q5, d29, d18
+	vext.32		d25, d19, d7, #1
+	vmlal.s32	q6, d20, d5
+	vrev64.i32	d25, d25
+	vmlal.s32	q6, d21, d4
+	vst1.8		d11, [r7, : 64]!
+	vmlal.s32	q6, d26, d1
+	vext.32		d9, d10, d10, #0
+	vmlal.s32	q6, d27, d19
+	vmov.i64	d8, #0
+	vmlal.s32	q6, d28, d18
+	vmlal.s32	q4, d16, d24
+	vmlal.s32	q4, d17, d5
+	vmlal.s32	q4, d14, d4
+	vst1.8		d12, [r7, : 64]!
+	vmlal.s32	q4, d15, d1
+	vext.32		d10, d13, d12, #0
+	vmlal.s32	q4, d29, d19
+	vmov.i64	d11, #0
+	vmlal.s32	q5, d20, d6
+	vmlal.s32	q5, d21, d5
+	vmlal.s32	q5, d26, d4
+	vext.32		d13, d8, d8, #0
+	vmlal.s32	q5, d27, d1
+	vmov.i64	d12, #0
+	vmlal.s32	q5, d28, d19
+	vst1.8		d9, [r7, : 64]!
+	vmlal.s32	q6, d16, d25
+	vmlal.s32	q6, d17, d6
+	vst1.8		d10, [r7, : 64]
+	vmlal.s32	q6, d14, d5
+	vext.32		d8, d11, d10, #0
+	vmlal.s32	q6, d15, d4
+	vmov.i64	d9, #0
+	vmlal.s32	q6, d29, d1
+	vmlal.s32	q4, d20, d7
+	vmlal.s32	q4, d21, d6
+	vmlal.s32	q4, d26, d5
+	vext.32		d11, d12, d12, #0
+	vmlal.s32	q4, d27, d4
+	vmov.i64	d10, #0
+	vmlal.s32	q4, d28, d1
+	vmlal.s32	q5, d16, d0
+	sub		r6, r7, #32
+	vmlal.s32	q5, d17, d7
+	vmlal.s32	q5, d14, d6
+	vext.32		d30, d9, d8, #0
+	vmlal.s32	q5, d15, d5
+	vld1.8		{d31}, [r6, : 64]!
+	vmlal.s32	q5, d29, d4
+	vmlal.s32	q15, d20, d0
+	vext.32		d0, d6, d18, #1
+	vmlal.s32	q15, d21, d25
+	vrev64.i32	d0, d0
+	vmlal.s32	q15, d26, d24
+	vext.32		d1, d7, d19, #1
+	vext.32		d7, d10, d10, #0
+	vmlal.s32	q15, d27, d23
+	vrev64.i32	d1, d1
+	vld1.8		{d6}, [r6, : 64]
+	vmlal.s32	q15, d28, d22
+	vmlal.s32	q3, d16, d4
+	add		r6, r6, #24
+	vmlal.s32	q3, d17, d2
+	vext.32		d4, d31, d30, #0
+	vmov		d17, d11
+	vmlal.s32	q3, d14, d1
+	vext.32		d11, d13, d13, #0
+	vext.32		d13, d30, d30, #0
+	vmlal.s32	q3, d15, d0
+	vext.32		d1, d8, d8, #0
+	vmlal.s32	q3, d29, d3
+	vld1.8		{d5}, [r6, : 64]
+	sub		r6, r6, #16
+	vext.32		d10, d6, d6, #0
+	vmov.i32	q1, #0xffffffff
+	vshl.i64	q4, q1, #25
+	add		r7, sp, #512
+	vld1.8		{d14-d15}, [r7, : 128]
+	vadd.i64	q9, q2, q7
+	vshl.i64	q1, q1, #26
+	vshr.s64	q10, q9, #26
+	vld1.8		{d0}, [r6, : 64]!
+	vadd.i64	q5, q5, q10
+	vand		q9, q9, q1
+	vld1.8		{d16}, [r6, : 64]!
+	add		r6, sp, #528
+	vld1.8		{d20-d21}, [r6, : 128]
+	vadd.i64	q11, q5, q10
+	vsub.i64	q2, q2, q9
+	vshr.s64	q9, q11, #25
+	vext.32		d12, d5, d4, #0
+	vand		q11, q11, q4
+	vadd.i64	q0, q0, q9
+	vmov		d19, d7
+	vadd.i64	q3, q0, q7
+	vsub.i64	q5, q5, q11
+	vshr.s64	q11, q3, #26
+	vext.32		d18, d11, d10, #0
+	vand		q3, q3, q1
+	vadd.i64	q8, q8, q11
+	vadd.i64	q11, q8, q10
+	vsub.i64	q0, q0, q3
+	vshr.s64	q3, q11, #25
+	vand		q11, q11, q4
+	vadd.i64	q3, q6, q3
+	vadd.i64	q6, q3, q7
+	vsub.i64	q8, q8, q11
+	vshr.s64	q11, q6, #26
+	vand		q6, q6, q1
+	vadd.i64	q9, q9, q11
+	vadd.i64	d25, d19, d21
+	vsub.i64	q3, q3, q6
+	vshr.s64	d23, d25, #25
+	vand		q4, q12, q4
+	vadd.i64	d21, d23, d23
+	vshl.i64	d25, d23, #4
+	vadd.i64	d21, d21, d23
+	vadd.i64	d25, d25, d21
+	vadd.i64	d4, d4, d25
+	vzip.i32	q0, q8
+	vadd.i64	d12, d4, d14
+	add		r6, r8, #8
+	vst1.8		d0, [r6, : 64]
+	vsub.i64	d19, d19, d9
+	add		r6, r6, #16
+	vst1.8		d16, [r6, : 64]
+	vshr.s64	d22, d12, #26
+	vand		q0, q6, q1
+	vadd.i64	d10, d10, d22
+	vzip.i32	q3, q9
+	vsub.i64	d4, d4, d0
+	sub		r6, r6, #8
+	vst1.8		d6, [r6, : 64]
+	add		r6, r6, #16
+	vst1.8		d18, [r6, : 64]
+	vzip.i32	q2, q5
+	sub		r6, r6, #32
+	vst1.8		d4, [r6, : 64]
+	subs		r5, r5, #1
+	bhi		._squaringloop
+._skipsquaringloop:
+	mov		r2, r2
+	add		r5, r3, #288
+	add		r6, r3, #144
+	vmov.i32	q0, #19
+	vmov.i32	q1, #0
+	vmov.i32	q2, #1
+	vzip.i32	q1, q2
+	vld1.8		{d4-d5}, [r5, : 128]!
+	vld1.8		{d6-d7}, [r5, : 128]!
+	vld1.8		{d9}, [r5, : 64]
+	vld1.8		{d10-d11}, [r2, : 128]!
+	add		r5, sp, #416
+	vld1.8		{d12-d13}, [r2, : 128]!
+	vmul.i32	q7, q2, q0
+	vld1.8		{d8}, [r2, : 64]
+	vext.32		d17, d11, d10, #1
+	vmul.i32	q9, q3, q0
+	vext.32		d16, d10, d8, #1
+	vshl.u32	q10, q5, q1
+	vext.32		d22, d14, d4, #1
+	vext.32		d24, d18, d6, #1
+	vshl.u32	q13, q6, q1
+	vshl.u32	d28, d8, d2
+	vrev64.i32	d22, d22
+	vmul.i32	d1, d9, d1
+	vrev64.i32	d24, d24
+	vext.32		d29, d8, d13, #1
+	vext.32		d0, d1, d9, #1
+	vrev64.i32	d0, d0
+	vext.32		d2, d9, d1, #1
+	vext.32		d23, d15, d5, #1
+	vmull.s32	q4, d20, d4
+	vrev64.i32	d23, d23
+	vmlal.s32	q4, d21, d1
+	vrev64.i32	d2, d2
+	vmlal.s32	q4, d26, d19
+	vext.32		d3, d5, d15, #1
+	vmlal.s32	q4, d27, d18
+	vrev64.i32	d3, d3
+	vmlal.s32	q4, d28, d15
+	vext.32		d14, d12, d11, #1
+	vmull.s32	q5, d16, d23
+	vext.32		d15, d13, d12, #1
+	vmlal.s32	q5, d17, d4
+	vst1.8		d8, [r5, : 64]!
+	vmlal.s32	q5, d14, d1
+	vext.32		d12, d9, d8, #0
+	vmlal.s32	q5, d15, d19
+	vmov.i64	d13, #0
+	vmlal.s32	q5, d29, d18
+	vext.32		d25, d19, d7, #1
+	vmlal.s32	q6, d20, d5
+	vrev64.i32	d25, d25
+	vmlal.s32	q6, d21, d4
+	vst1.8		d11, [r5, : 64]!
+	vmlal.s32	q6, d26, d1
+	vext.32		d9, d10, d10, #0
+	vmlal.s32	q6, d27, d19
+	vmov.i64	d8, #0
+	vmlal.s32	q6, d28, d18
+	vmlal.s32	q4, d16, d24
+	vmlal.s32	q4, d17, d5
+	vmlal.s32	q4, d14, d4
+	vst1.8		d12, [r5, : 64]!
+	vmlal.s32	q4, d15, d1
+	vext.32		d10, d13, d12, #0
+	vmlal.s32	q4, d29, d19
+	vmov.i64	d11, #0
+	vmlal.s32	q5, d20, d6
+	vmlal.s32	q5, d21, d5
+	vmlal.s32	q5, d26, d4
+	vext.32		d13, d8, d8, #0
+	vmlal.s32	q5, d27, d1
+	vmov.i64	d12, #0
+	vmlal.s32	q5, d28, d19
+	vst1.8		d9, [r5, : 64]!
+	vmlal.s32	q6, d16, d25
+	vmlal.s32	q6, d17, d6
+	vst1.8		d10, [r5, : 64]
+	vmlal.s32	q6, d14, d5
+	vext.32		d8, d11, d10, #0
+	vmlal.s32	q6, d15, d4
+	vmov.i64	d9, #0
+	vmlal.s32	q6, d29, d1
+	vmlal.s32	q4, d20, d7
+	vmlal.s32	q4, d21, d6
+	vmlal.s32	q4, d26, d5
+	vext.32		d11, d12, d12, #0
+	vmlal.s32	q4, d27, d4
+	vmov.i64	d10, #0
+	vmlal.s32	q4, d28, d1
+	vmlal.s32	q5, d16, d0
+	sub		r2, r5, #32
+	vmlal.s32	q5, d17, d7
+	vmlal.s32	q5, d14, d6
+	vext.32		d30, d9, d8, #0
+	vmlal.s32	q5, d15, d5
+	vld1.8		{d31}, [r2, : 64]!
+	vmlal.s32	q5, d29, d4
+	vmlal.s32	q15, d20, d0
+	vext.32		d0, d6, d18, #1
+	vmlal.s32	q15, d21, d25
+	vrev64.i32	d0, d0
+	vmlal.s32	q15, d26, d24
+	vext.32		d1, d7, d19, #1
+	vext.32		d7, d10, d10, #0
+	vmlal.s32	q15, d27, d23
+	vrev64.i32	d1, d1
+	vld1.8		{d6}, [r2, : 64]
+	vmlal.s32	q15, d28, d22
+	vmlal.s32	q3, d16, d4
+	add		r2, r2, #24
+	vmlal.s32	q3, d17, d2
+	vext.32		d4, d31, d30, #0
+	vmov		d17, d11
+	vmlal.s32	q3, d14, d1
+	vext.32		d11, d13, d13, #0
+	vext.32		d13, d30, d30, #0
+	vmlal.s32	q3, d15, d0
+	vext.32		d1, d8, d8, #0
+	vmlal.s32	q3, d29, d3
+	vld1.8		{d5}, [r2, : 64]
+	sub		r2, r2, #16
+	vext.32		d10, d6, d6, #0
+	vmov.i32	q1, #0xffffffff
+	vshl.i64	q4, q1, #25
+	add		r5, sp, #512
+	vld1.8		{d14-d15}, [r5, : 128]
+	vadd.i64	q9, q2, q7
+	vshl.i64	q1, q1, #26
+	vshr.s64	q10, q9, #26
+	vld1.8		{d0}, [r2, : 64]!
+	vadd.i64	q5, q5, q10
+	vand		q9, q9, q1
+	vld1.8		{d16}, [r2, : 64]!
+	add		r2, sp, #528
+	vld1.8		{d20-d21}, [r2, : 128]
+	vadd.i64	q11, q5, q10
+	vsub.i64	q2, q2, q9
+	vshr.s64	q9, q11, #25
+	vext.32		d12, d5, d4, #0
+	vand		q11, q11, q4
+	vadd.i64	q0, q0, q9
+	vmov		d19, d7
+	vadd.i64	q3, q0, q7
+	vsub.i64	q5, q5, q11
+	vshr.s64	q11, q3, #26
+	vext.32		d18, d11, d10, #0
+	vand		q3, q3, q1
+	vadd.i64	q8, q8, q11
+	vadd.i64	q11, q8, q10
+	vsub.i64	q0, q0, q3
+	vshr.s64	q3, q11, #25
+	vand		q11, q11, q4
+	vadd.i64	q3, q6, q3
+	vadd.i64	q6, q3, q7
+	vsub.i64	q8, q8, q11
+	vshr.s64	q11, q6, #26
+	vand		q6, q6, q1
+	vadd.i64	q9, q9, q11
+	vadd.i64	d25, d19, d21
+	vsub.i64	q3, q3, q6
+	vshr.s64	d23, d25, #25
+	vand		q4, q12, q4
+	vadd.i64	d21, d23, d23
+	vshl.i64	d25, d23, #4
+	vadd.i64	d21, d21, d23
+	vadd.i64	d25, d25, d21
+	vadd.i64	d4, d4, d25
+	vzip.i32	q0, q8
+	vadd.i64	d12, d4, d14
+	add		r2, r6, #8
+	vst1.8		d0, [r2, : 64]
+	vsub.i64	d19, d19, d9
+	add		r2, r2, #16
+	vst1.8		d16, [r2, : 64]
+	vshr.s64	d22, d12, #26
+	vand		q0, q6, q1
+	vadd.i64	d10, d10, d22
+	vzip.i32	q3, q9
+	vsub.i64	d4, d4, d0
+	sub		r2, r2, #8
+	vst1.8		d6, [r2, : 64]
+	add		r2, r2, #16
+	vst1.8		d18, [r2, : 64]
+	vzip.i32	q2, q5
+	sub		r2, r2, #32
+	vst1.8		d4, [r2, : 64]
+	cmp		r4, #0
+	beq		._skippostcopy
+	add		r2, r3, #144
+	mov		r4, r4
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d4}, [r2, : 64]
+	vst1.8		{d0-d1}, [r4, : 128]!
+	vst1.8		{d2-d3}, [r4, : 128]!
+	vst1.8		d4, [r4, : 64]
+._skippostcopy:
+	cmp		r1, #1
+	bne		._skipfinalcopy
+	add		r2, r3, #288
+	add		r4, r3, #144
+	vld1.8		{d0-d1}, [r2, : 128]!
+	vld1.8		{d2-d3}, [r2, : 128]!
+	vld1.8		{d4}, [r2, : 64]
+	vst1.8		{d0-d1}, [r4, : 128]!
+	vst1.8		{d2-d3}, [r4, : 128]!
+	vst1.8		d4, [r4, : 64]
+._skipfinalcopy:
+	add		r1, r1, #1
+	cmp		r1, #12
+	blo		._invertloop
+	add		r1, r3, #144
+	ldr		r2, [r1], #4
+	ldr		r3, [r1], #4
+	ldr		r4, [r1], #4
+	ldr		r5, [r1], #4
+	ldr		r6, [r1], #4
+	ldr		r7, [r1], #4
+	ldr		r8, [r1], #4
+	ldr		r9, [r1], #4
+	ldr		r10, [r1], #4
+	ldr		r1, [r1]
+	add		r11, r1, r1, LSL #4
+	add		r11, r11, r1, LSL #1
+	add		r11, r11, #16777216
+	mov		r11, r11, ASR #25
+	add		r11, r11, r2
+	mov		r11, r11, ASR #26
+	add		r11, r11, r3
+	mov		r11, r11, ASR #25
+	add		r11, r11, r4
+	mov		r11, r11, ASR #26
+	add		r11, r11, r5
+	mov		r11, r11, ASR #25
+	add		r11, r11, r6
+	mov		r11, r11, ASR #26
+	add		r11, r11, r7
+	mov		r11, r11, ASR #25
+	add		r11, r11, r8
+	mov		r11, r11, ASR #26
+	add		r11, r11, r9
+	mov		r11, r11, ASR #25
+	add		r11, r11, r10
+	mov		r11, r11, ASR #26
+	add		r11, r11, r1
+	mov		r11, r11, ASR #25
+	add		r2, r2, r11
+	add		r2, r2, r11, LSL #1
+	add		r2, r2, r11, LSL #4
+	mov		r11, r2, ASR #26
+	add		r3, r3, r11
+	sub		r2, r2, r11, LSL #26
+	mov		r11, r3, ASR #25
+	add		r4, r4, r11
+	sub		r3, r3, r11, LSL #25
+	mov		r11, r4, ASR #26
+	add		r5, r5, r11
+	sub		r4, r4, r11, LSL #26
+	mov		r11, r5, ASR #25
+	add		r6, r6, r11
+	sub		r5, r5, r11, LSL #25
+	mov		r11, r6, ASR #26
+	add		r7, r7, r11
+	sub		r6, r6, r11, LSL #26
+	mov		r11, r7, ASR #25
+	add		r8, r8, r11
+	sub		r7, r7, r11, LSL #25
+	mov		r11, r8, ASR #26
+	add		r9, r9, r11
+	sub		r8, r8, r11, LSL #26
+	mov		r11, r9, ASR #25
+	add		r10, r10, r11
+	sub		r9, r9, r11, LSL #25
+	mov		r11, r10, ASR #26
+	add		r1, r1, r11
+	sub		r10, r10, r11, LSL #26
+	mov		r11, r1, ASR #25
+	sub		r1, r1, r11, LSL #25
+	add		r2, r2, r3, LSL #26
+	mov		r3, r3, LSR #6
+	add		r3, r3, r4, LSL #19
+	mov		r4, r4, LSR #13
+	add		r4, r4, r5, LSL #13
+	mov		r5, r5, LSR #19
+	add		r5, r5, r6, LSL #6
+	add		r6, r7, r8, LSL #25
+	mov		r7, r8, LSR #7
+	add		r7, r7, r9, LSL #19
+	mov		r8, r9, LSR #13
+	add		r8, r8, r10, LSL #12
+	mov		r9, r10, LSR #20
+	add		r1, r9, r1, LSL #6
+	str		r2, [r0], #4
+	str		r3, [r0], #4
+	str		r4, [r0], #4
+	str		r5, [r0], #4
+	str		r6, [r0], #4
+	str		r7, [r0], #4
+	str		r8, [r0], #4
+	str		r1, [r0]
+	ldrd		r4, [sp, #0]
+	ldrd		r6, [sp, #8]
+	ldrd		r8, [sp, #16]
+	ldrd		r10, [sp, #24]
+	ldr		r12, [sp, #480]
+	ldr		r14, [sp, #484]
+	ldr		r0, =0
+	mov		sp, r12
+	vpop		{q4, q5, q6, q7}
+	bx		lr
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
