Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076EA519BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nCiGipmwzgjeZCiGKXMvjSmKUkLkC7aqeI2l5SoomU=; b=kK16d+gxK42Yi/
	uA2BgU0qAkqgH0scCJ4lhTOhv7tnAPLkAnuptcDXY5sZWImSzF8/uFVxtjlirPrpRro+tOjeXH8RX
	bHiuD0i/zChqQjkuQ5C32BY5Hsj1DKMlTlD5TxAmWBNG+qRYi6Hdwg2lsx4G/nyOf7XU3dbdIfeB8
	MY86LGOAeavI3TWzoFWbw9urzjvBRuTtrj247t+X/q6cFjtu/9LY20gVrBiYG7e5xEPSf2fxgbDZz
	FgDua0USUvO4r04jmeXr+MllOuUIfRhilXhT4zAjZ9Z0TbsoLvDaOmZ1lk4sqlxHwd2Im+JNyOYYV
	mukHDfsCUWzTl2Zu7Ijg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSwb-0005RA-Qv; Mon, 24 Jun 2019 17:39:53 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSw4-0005Bk-LJ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:39:22 +0000
Received: by mail-wm1-x334.google.com with SMTP id x15so186964wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ynFIMn+6TN2cPawLGFkoRWgCAGYQqRbJZUBKk5aR5VM=;
 b=mWZMXD2Mz4jzRorcmsKQnFyKELh8iJoJ3F8tCEPfq3IcyHFyHt4tcCdGbBpMQ0wm+W
 21+sKKG72OT7ohBCLAXWWOwHWqRDxM0tiUXn1lUizu8V1HIbb78QmOt6VEj0Phm3pyWX
 oYT1CSWuOu07rArFvHbAiQxHVXkPvHWF3Iz0WFG1p4aIP+1PDaAn0ewDX9goAOJDNMG+
 wvxJE3/7cyRTNEjX7yTdYTMKvKP3fgPG9cyXODDY/Cw91VWYJovF5iWcsOjbLcMC0VMx
 vIM2MLxcJryVvPuaGzeoi9IjDCuEQ5BZazjxc7Jpc2rBx+wdLysOSPYASqfZaap6hqfB
 rxQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ynFIMn+6TN2cPawLGFkoRWgCAGYQqRbJZUBKk5aR5VM=;
 b=EX1EXkP+Fi23j9RfhgGJ9IpCJ1Y2v/9JyBgHtRBXO1wfsUSL6LL1HpLMoXY4d1qsfc
 UrTCaYvpaoRK8xR8iY155LnG2rRfoAp47I9xHMhPiHZ+0eWOHfuMmhNh8XWzxTxMQsIG
 c9GSKEsfQuxKSVhojYLhbhXbPzigaLVUYh/Ipa/iDsvnYqTU5vfgS5EGUtPEFTzC+kDS
 B8ah7xhkrXdkHh1QTOwfdG+pVN+yEqgU2cc6IVDYqIN0Xdu4EPoA5RrKXCCsQhFAq+xz
 eWrrIoT1hKIAxWm9u6AdManbcPVunaKdsCYDTF4b7iypiPOOkBSW3XpET2D23AYnt08V
 PVOQ==
X-Gm-Message-State: APjAAAV5QX0FjzAwl+U6HvDtH5hdq4XwKaxsoX7OdnDeOslIoDBEgs3W
 IeRhjbShAIk9Yf/who/npCEs8A==
X-Google-Smtp-Source: APXvYqzeT8aIw1zjffCkg7nnMDCbXCRp84dpV4Xom+X6rWl9uZbVncv9UcLFrE2VtfeaRJrr+VZLbQ==
X-Received: by 2002:a05:600c:20d:: with SMTP id
 13mr16668238wmi.141.1561397958935; 
 Mon, 24 Jun 2019 10:39:18 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-10-211.w90-88.abo.wanadoo.fr. [90.88.131.211])
 by smtp.gmail.com with ESMTPSA id s10sm260787wmf.8.2019.06.24.10.39.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 10:39:18 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 1/2] crypto: arm64/aes-ce - add 5 way interleave routines
Date: Mon, 24 Jun 2019 19:38:30 +0200
Message-Id: <20190624173831.8375-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624173831.8375-1-ard.biesheuvel@linaro.org>
References: <20190624173831.8375-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103920_698678_13FFE02F 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
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
Cc: ebiggers@kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of tweaking the accelerated AES chaining mode routines
to be able to use a 5-way stride, implement the core routines to
support processing 5 blocks of input at a time. While at it, drop
the 2 way versions, which have been unused for a while now.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/crypto/aes-ce.S    | 58 ++++++++++++--------
 arch/arm64/crypto/aes-modes.S | 16 ++++++
 arch/arm64/crypto/aes-neon.S  | 46 +---------------
 3 files changed, 52 insertions(+), 68 deletions(-)

diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
index 143070510809..0fca5f463406 100644
--- a/arch/arm64/crypto/aes-ce.S
+++ b/arch/arm64/crypto/aes-ce.S
@@ -52,7 +52,7 @@
 	load_round_keys	\rounds, \temp
 	.endm
 
-	.macro		do_enc_Nx, de, mc, k, i0, i1, i2, i3
+	.macro		do_enc_Nx, de, mc, k, i0, i1, i2, i3, i4
 	aes\de		\i0\().16b, \k\().16b
 	aes\mc		\i0\().16b, \i0\().16b
 	.ifnb		\i1
@@ -63,27 +63,34 @@
 	aes\mc		\i2\().16b, \i2\().16b
 	aes\de		\i3\().16b, \k\().16b
 	aes\mc		\i3\().16b, \i3\().16b
+	.ifnb		\i4
+	aes\de		\i4\().16b, \k\().16b
+	aes\mc		\i4\().16b, \i4\().16b
+	.endif
 	.endif
 	.endif
 	.endm
 
-	/* up to 4 interleaved encryption rounds with the same round key */
-	.macro		round_Nx, enc, k, i0, i1, i2, i3
+	/* up to 5 interleaved encryption rounds with the same round key */
+	.macro		round_Nx, enc, k, i0, i1, i2, i3, i4
 	.ifc		\enc, e
-	do_enc_Nx	e, mc, \k, \i0, \i1, \i2, \i3
+	do_enc_Nx	e, mc, \k, \i0, \i1, \i2, \i3, \i4
 	.else
-	do_enc_Nx	d, imc, \k, \i0, \i1, \i2, \i3
+	do_enc_Nx	d, imc, \k, \i0, \i1, \i2, \i3, \i4
 	.endif
 	.endm
 
-	/* up to 4 interleaved final rounds */
-	.macro		fin_round_Nx, de, k, k2, i0, i1, i2, i3
+	/* up to 5 interleaved final rounds */
+	.macro		fin_round_Nx, de, k, k2, i0, i1, i2, i3, i4
 	aes\de		\i0\().16b, \k\().16b
 	.ifnb		\i1
 	aes\de		\i1\().16b, \k\().16b
 	.ifnb		\i3
 	aes\de		\i2\().16b, \k\().16b
 	aes\de		\i3\().16b, \k\().16b
+	.ifnb		\i4
+	aes\de		\i4\().16b, \k\().16b
+	.endif
 	.endif
 	.endif
 	eor		\i0\().16b, \i0\().16b, \k2\().16b
@@ -92,47 +99,52 @@
 	.ifnb		\i3
 	eor		\i2\().16b, \i2\().16b, \k2\().16b
 	eor		\i3\().16b, \i3\().16b, \k2\().16b
+	.ifnb		\i4
+	eor		\i4\().16b, \i4\().16b, \k2\().16b
+	.endif
 	.endif
 	.endif
 	.endm
 
-	/* up to 4 interleaved blocks */
-	.macro		do_block_Nx, enc, rounds, i0, i1, i2, i3
+	/* up to 5 interleaved blocks */
+	.macro		do_block_Nx, enc, rounds, i0, i1, i2, i3, i4
 	cmp		\rounds, #12
 	blo		2222f		/* 128 bits */
 	beq		1111f		/* 192 bits */
-	round_Nx	\enc, v17, \i0, \i1, \i2, \i3
-	round_Nx	\enc, v18, \i0, \i1, \i2, \i3
-1111:	round_Nx	\enc, v19, \i0, \i1, \i2, \i3
-	round_Nx	\enc, v20, \i0, \i1, \i2, \i3
+	round_Nx	\enc, v17, \i0, \i1, \i2, \i3, \i4
+	round_Nx	\enc, v18, \i0, \i1, \i2, \i3, \i4
+1111:	round_Nx	\enc, v19, \i0, \i1, \i2, \i3, \i4
+	round_Nx	\enc, v20, \i0, \i1, \i2, \i3, \i4
 2222:	.irp		key, v21, v22, v23, v24, v25, v26, v27, v28, v29
-	round_Nx	\enc, \key, \i0, \i1, \i2, \i3
+	round_Nx	\enc, \key, \i0, \i1, \i2, \i3, \i4
 	.endr
-	fin_round_Nx	\enc, v30, v31, \i0, \i1, \i2, \i3
+	fin_round_Nx	\enc, v30, v31, \i0, \i1, \i2, \i3, \i4
 	.endm
 
 	.macro		encrypt_block, in, rounds, t0, t1, t2
 	do_block_Nx	e, \rounds, \in
 	.endm
 
-	.macro		encrypt_block2x, i0, i1, rounds, t0, t1, t2
-	do_block_Nx	e, \rounds, \i0, \i1
-	.endm
-
 	.macro		encrypt_block4x, i0, i1, i2, i3, rounds, t0, t1, t2
 	do_block_Nx	e, \rounds, \i0, \i1, \i2, \i3
 	.endm
 
-	.macro		decrypt_block, in, rounds, t0, t1, t2
-	do_block_Nx	d, \rounds, \in
+	.macro		encrypt_block5x, i0, i1, i2, i3, i4, rounds, t0, t1, t2
+	do_block_Nx	e, \rounds, \i0, \i1, \i2, \i3, \i4
 	.endm
 
-	.macro		decrypt_block2x, i0, i1, rounds, t0, t1, t2
-	do_block_Nx	d, \rounds, \i0, \i1
+	.macro		decrypt_block, in, rounds, t0, t1, t2
+	do_block_Nx	d, \rounds, \in
 	.endm
 
 	.macro		decrypt_block4x, i0, i1, i2, i3, rounds, t0, t1, t2
 	do_block_Nx	d, \rounds, \i0, \i1, \i2, \i3
 	.endm
 
+	.macro		decrypt_block5x, i0, i1, i2, i3, i4, rounds, t0, t1, t2
+	do_block_Nx	d, \rounds, \i0, \i1, \i2, \i3, \i4
+	.endm
+
+#define MAX_STRIDE	5
+
 #include "aes-modes.S"
diff --git a/arch/arm64/crypto/aes-modes.S b/arch/arm64/crypto/aes-modes.S
index 4ebc61375aa6..0dbeaf2ce9b1 100644
--- a/arch/arm64/crypto/aes-modes.S
+++ b/arch/arm64/crypto/aes-modes.S
@@ -13,6 +13,10 @@
 	.text
 	.align		4
 
+#ifndef MAX_STRIDE
+#define MAX_STRIDE	4
+#endif
+
 aes_encrypt_block4x:
 	encrypt_block4x	v0, v1, v2, v3, w3, x2, x8, w7
 	ret
@@ -23,6 +27,18 @@ aes_decrypt_block4x:
 	ret
 ENDPROC(aes_decrypt_block4x)
 
+#if MAX_STRIDE == 5
+aes_encrypt_block5x:
+	encrypt_block5x	v0, v1, v2, v3, v4, w3, x2, x8, w7
+	ret
+ENDPROC(aes_encrypt_block5x)
+
+aes_decrypt_block5x:
+	decrypt_block5x	v0, v1, v2, v3, v4, w3, x2, x8, w7
+	ret
+ENDPROC(aes_decrypt_block5x)
+#endif
+
 	/*
 	 * aes_ecb_encrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
 	 *		   int blocks)
diff --git a/arch/arm64/crypto/aes-neon.S b/arch/arm64/crypto/aes-neon.S
index 29100f692e8a..33bb6af309a3 100644
--- a/arch/arm64/crypto/aes-neon.S
+++ b/arch/arm64/crypto/aes-neon.S
@@ -117,26 +117,9 @@
 
 	/*
 	 * Interleaved versions: functionally equivalent to the
-	 * ones above, but applied to 2 or 4 AES states in parallel.
+	 * ones above, but applied to AES states in parallel.
 	 */
 
-	.macro		sub_bytes_2x, in0, in1
-	sub		v8.16b, \in0\().16b, v15.16b
-	tbl		\in0\().16b, {v16.16b-v19.16b}, \in0\().16b
-	sub		v9.16b, \in1\().16b, v15.16b
-	tbl		\in1\().16b, {v16.16b-v19.16b}, \in1\().16b
-	sub		v10.16b, v8.16b, v15.16b
-	tbx		\in0\().16b, {v20.16b-v23.16b}, v8.16b
-	sub		v11.16b, v9.16b, v15.16b
-	tbx		\in1\().16b, {v20.16b-v23.16b}, v9.16b
-	sub		v8.16b, v10.16b, v15.16b
-	tbx		\in0\().16b, {v24.16b-v27.16b}, v10.16b
-	sub		v9.16b, v11.16b, v15.16b
-	tbx		\in1\().16b, {v24.16b-v27.16b}, v11.16b
-	tbx		\in0\().16b, {v28.16b-v31.16b}, v8.16b
-	tbx		\in1\().16b, {v28.16b-v31.16b}, v9.16b
-	.endm
-
 	.macro		sub_bytes_4x, in0, in1, in2, in3
 	sub		v8.16b, \in0\().16b, v15.16b
 	tbl		\in0\().16b, {v16.16b-v19.16b}, \in0\().16b
@@ -215,25 +198,6 @@
 	eor		\in1\().16b, \in1\().16b, v11.16b
 	.endm
 
-	.macro		do_block_2x, enc, in0, in1, rounds, rk, rkp, i
-	ld1		{v15.4s}, [\rk]
-	add		\rkp, \rk, #16
-	mov		\i, \rounds
-1111:	eor		\in0\().16b, \in0\().16b, v15.16b	/* ^round key */
-	eor		\in1\().16b, \in1\().16b, v15.16b	/* ^round key */
-	movi		v15.16b, #0x40
-	tbl		\in0\().16b, {\in0\().16b}, v13.16b	/* ShiftRows */
-	tbl		\in1\().16b, {\in1\().16b}, v13.16b	/* ShiftRows */
-	sub_bytes_2x	\in0, \in1
-	subs		\i, \i, #1
-	ld1		{v15.4s}, [\rkp], #16
-	beq		2222f
-	mix_columns_2x	\in0, \in1, \enc
-	b		1111b
-2222:	eor		\in0\().16b, \in0\().16b, v15.16b	/* ^round key */
-	eor		\in1\().16b, \in1\().16b, v15.16b	/* ^round key */
-	.endm
-
 	.macro		do_block_4x, enc, in0, in1, in2, in3, rounds, rk, rkp, i
 	ld1		{v15.4s}, [\rk]
 	add		\rkp, \rk, #16
@@ -260,14 +224,6 @@
 	eor		\in3\().16b, \in3\().16b, v15.16b	/* ^round key */
 	.endm
 
-	.macro		encrypt_block2x, in0, in1, rounds, rk, rkp, i
-	do_block_2x	1, \in0, \in1, \rounds, \rk, \rkp, \i
-	.endm
-
-	.macro		decrypt_block2x, in0, in1, rounds, rk, rkp, i
-	do_block_2x	0, \in0, \in1, \rounds, \rk, \rkp, \i
-	.endm
-
 	.macro		encrypt_block4x, in0, in1, in2, in3, rounds, rk, rkp, i
 	do_block_4x	1, \in0, \in1, \in2, \in3, \rounds, \rk, \rkp, \i
 	.endm
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
