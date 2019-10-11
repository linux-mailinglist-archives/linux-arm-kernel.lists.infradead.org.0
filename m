Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98562D4648
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNg8hJShfsvqiRe372maovYFaTFhm8ClRy7Eoqy42Gg=; b=cyY7bORhfvI4Z1
	EpUkidjtBVM0dWJNGFAJVgYbB4S4bIfBaxFiVnS5/geqMQ9tWLIuEwryAAJjnfotT7i5FWmKndLXc
	Y3dVwm9445cmX/ZeFqVGkkbFrkhXKca3WEDTH8dTgmidL8ilRAYuRoazLQMaOndKYpOJrVzb5zEqR
	7dDqCIj8e6694eR77KUnxwwb5QwMN8vwOVdzYvPJfJlwiNrMGCvmp7rLd+/xtKsSoteWV7eC2qV5I
	X7Hn09r7bvQ2vTFDubYUtnm36T7D2FmlvHHHa+IS0pfBrOVk7YsErI2NPjTVJmEDSCqMEWRbZpvzc
	bapnXjeedFjT4IhvZAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyQi-0005nl-Re; Fri, 11 Oct 2019 17:10:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyPz-0005Qo-Sv
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:09:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id p14so12742748wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tKcWa8kiCmuQGLJUVnadD6vpBI/OKGXQya0413QFYWE=;
 b=AbwEIQB37g1f04wuqsM97MyCuc35DWJL8ZCKfdWIOwtQn3ocjNaf5rPNNLr0dtl/h7
 +hJvre0mj01P8zRciGlQ7nxOPjp2nkeN2R5HuY1hV4QrggO8cTOwXC0FXhpeYSQoG/3r
 CGrmga21odEtNf6IYWiBbXUC5hnQRG9G8PmnsFuIOznnuuhzWhj5t4IIyHqtDvp89RFY
 TCeWLYLxaN/I++IBymsejrniYKHgPGH2uTM5pmhOzfxFhSYCShrhOpfnk657PpdcUK80
 E2kfb4u5elGOZyemRd7rxYIHZIvcbH4Q65XJjIwxYqQ66WHE+mV/pg60ufnF6/GoBiJB
 bMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tKcWa8kiCmuQGLJUVnadD6vpBI/OKGXQya0413QFYWE=;
 b=blmLVTKhSwJ6cvH++y43xHFgDmkdxKn2qAQrNHxXLjbGFEUQaX/3E0H4nHKeL7yB3p
 HJD2Ln2YDEvGiG1Xgo3o6P6YMNl2F6XjwabKeVox50VfOoK+QhNJ8qh0eTXXkcKx3s9v
 mbi07GkXKLFye5vgEq3rv6U0/zpiIzAzDz13Vn1YlC1dZNolHo3ur1UXlGNflDy/F7bU
 K28r8OqmmQ9Vm0oQVW9eTYPqepqnqbTB7byfn1ND4z6k3nxcbgr/TEoDoyKLut57grA9
 xkiMhfnsaQ2CecjCdc0/1B2YCaFXjdpbHIdovaFZiiEUiWT+90iV3eWLdLMircDSNseF
 u82w==
X-Gm-Message-State: APjAAAVFjpuSr8wTGaYB8zVDfVAuo+fTvwppLs+9vAE9kHzVqXV/D2wG
 ft5RHL1/ZMbfMSqRiDuMEzH+Cg==
X-Google-Smtp-Source: APXvYqxY3qHWRYIaXSoDLi4qk+VvGdqQk21dysGqo4N7ySiaAiXxVg5jLIDOVni+KGW4XmiMX+bRYw==
X-Received: by 2002:a5d:4ec1:: with SMTP id s1mr13562167wrv.42.1570813770511; 
 Fri, 11 Oct 2019 10:09:30 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id f9sm11876875wre.74.2019.10.11.10.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:09:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 2/2] crypto: aegis128 - duplicate init() and final() hooks in
 SIMD code
Date: Fri, 11 Oct 2019 19:08:23 +0200
Message-Id: <20191011170823.6713-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011170823.6713-1-ard.biesheuvel@linaro.org>
References: <20191011170823.6713-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_100931_933534_4467DBC4 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to speed up aegis128 processing even more, duplicate the init()
and final() routines as SIMD versions in their entirety. This results
in a 2x speedup on ARM Cortex-A57 for ~1500 byte inputs (using AES
instructions).

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis128-core.c       | 38 ++++++++++-----
 crypto/aegis128-neon-inner.c | 49 ++++++++++++++++++++
 crypto/aegis128-neon.c       | 22 +++++++++
 3 files changed, 97 insertions(+), 12 deletions(-)

diff --git a/crypto/aegis128-core.c b/crypto/aegis128-core.c
index fe7ab66dd8f9..71c11cb5bad1 100644
--- a/crypto/aegis128-core.c
+++ b/crypto/aegis128-core.c
@@ -60,10 +60,16 @@ static bool aegis128_do_simd(void)
 
 bool crypto_aegis128_have_simd(void);
 void crypto_aegis128_update_simd(struct aegis_state *state, const void *msg);
+void crypto_aegis128_init_simd(struct aegis_state *state,
+			       const union aegis_block *key,
+			       const u8 *iv);
 void crypto_aegis128_encrypt_chunk_simd(struct aegis_state *state, u8 *dst,
 					const u8 *src, unsigned int size);
 void crypto_aegis128_decrypt_chunk_simd(struct aegis_state *state, u8 *dst,
 					const u8 *src, unsigned int size);
+void crypto_aegis128_final_simd(struct aegis_state *state,
+				union aegis_block *tag_xor,
+				u64 assoclen, u64 cryptlen);
 
 static void crypto_aegis128_update(struct aegis_state *state)
 {
@@ -395,17 +401,21 @@ static int crypto_aegis128_encrypt(struct aead_request *req)
 	struct skcipher_walk walk;
 	struct aegis_state state;
 
-	crypto_aegis128_init(&state, &ctx->key, req->iv);
-	crypto_aegis128_process_ad(&state, req->src, req->assoclen);
-
 	skcipher_walk_aead_encrypt(&walk, req, false);
-	if (aegis128_do_simd())
+	if (aegis128_do_simd()) {
+		crypto_aegis128_init_simd(&state, &ctx->key, req->iv);
+		crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 		crypto_aegis128_process_crypt(&state, req, &walk,
 					      crypto_aegis128_encrypt_chunk_simd);
-	else
+		crypto_aegis128_final_simd(&state, &tag, req->assoclen,
+					   cryptlen);
+	} else {
+		crypto_aegis128_init(&state, &ctx->key, req->iv);
+		crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 		crypto_aegis128_process_crypt(&state, req, &walk,
 					      crypto_aegis128_encrypt_chunk);
-	crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
+		crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
+	}
 
 	scatterwalk_map_and_copy(tag.bytes, req->dst, req->assoclen + cryptlen,
 				 authsize, 1);
@@ -426,17 +436,21 @@ static int crypto_aegis128_decrypt(struct aead_request *req)
 	scatterwalk_map_and_copy(tag.bytes, req->src, req->assoclen + cryptlen,
 				 authsize, 0);
 
-	crypto_aegis128_init(&state, &ctx->key, req->iv);
-	crypto_aegis128_process_ad(&state, req->src, req->assoclen);
-
 	skcipher_walk_aead_decrypt(&walk, req, false);
-	if (aegis128_do_simd())
+	if (aegis128_do_simd()) {
+		crypto_aegis128_init_simd(&state, &ctx->key, req->iv);
+		crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 		crypto_aegis128_process_crypt(&state, req, &walk,
 					      crypto_aegis128_decrypt_chunk_simd);
-	else
+		crypto_aegis128_final_simd(&state, &tag, req->assoclen,
+					   cryptlen);
+	} else {
+		crypto_aegis128_init(&state, &ctx->key, req->iv);
+		crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 		crypto_aegis128_process_crypt(&state, req, &walk,
 					      crypto_aegis128_decrypt_chunk);
-	crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
+		crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
+	}
 
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
diff --git a/crypto/aegis128-neon-inner.c b/crypto/aegis128-neon-inner.c
index f05310ca22aa..16d2e806eb47 100644
--- a/crypto/aegis128-neon-inner.c
+++ b/crypto/aegis128-neon-inner.c
@@ -132,6 +132,34 @@ void preload_sbox(void)
 	    :: "r"(crypto_aes_sbox));
 }
 
+void crypto_aegis128_init_neon(void *state, const void *key, const void *iv)
+{
+	static const uint8_t const0[] = {
+		0x00, 0x01, 0x01, 0x02, 0x03, 0x05, 0x08, 0x0d,
+		0x15, 0x22, 0x37, 0x59, 0x90, 0xe9, 0x79, 0x62,
+	};
+	static const uint8_t const1[] = {
+		0xdb, 0x3d, 0x18, 0x55, 0x6d, 0xc2, 0x2f, 0xf1,
+		0x20, 0x11, 0x31, 0x42, 0x73, 0xb5, 0x28, 0xdd,
+	};
+	uint8x16_t k = vld1q_u8(key);
+	uint8x16_t kiv = k ^ vld1q_u8(iv);
+	struct aegis128_state st = {{
+		kiv,
+		vld1q_u8(const1),
+		vld1q_u8(const0),
+		k ^ vld1q_u8(const0),
+		k ^ vld1q_u8(const1),
+	}};
+	int i;
+
+	for (i = 0; i < 5; i++) {
+		st = aegis128_update_neon(st, k);
+		st = aegis128_update_neon(st, kiv);
+	}
+	aegis128_save_state_neon(st, state);
+}
+
 void crypto_aegis128_update_neon(void *state, const void *msg)
 {
 	struct aegis128_state st = aegis128_load_state_neon(state);
@@ -210,3 +238,24 @@ void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
 
 	aegis128_save_state_neon(st, state);
 }
+
+void crypto_aegis128_final_neon(void *state, void *tag_xor,
+				uint64_t assocbits, uint64_t cryptbits)
+{
+	struct aegis128_state st = aegis128_load_state_neon(state);
+	union {
+		uint64_t	pair[2];
+		uint8x16_t	v;
+	} t = {{ assocbits, cryptbits }};
+	uint8x16_t tag;
+	int i;
+
+	t.v ^= st.v[3];
+
+	for (i = 0; i < 7; i++)
+		st = aegis128_update_neon(st, t.v);
+
+	tag = vld1q_u8(tag_xor);
+	tag ^= st.v[0] ^ st.v[1] ^ st.v[2] ^ st.v[3] ^ st.v[4];
+	vst1q_u8(tag_xor, tag);
+}
diff --git a/crypto/aegis128-neon.c b/crypto/aegis128-neon.c
index 751f9c195aa4..5b37b04b8ad4 100644
--- a/crypto/aegis128-neon.c
+++ b/crypto/aegis128-neon.c
@@ -8,11 +8,14 @@
 
 #include "aegis.h"
 
+void crypto_aegis128_init_neon(void *state, const void *key, const u8 *iv);
 void crypto_aegis128_update_neon(void *state, const void *msg);
 void crypto_aegis128_encrypt_chunk_neon(void *state, void *dst, const void *src,
 					unsigned int size);
 void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
 					unsigned int size);
+void crypto_aegis128_final_neon(void *state, void *tag_xor,
+				uint64_t assocbits, uint64_t cryptbits);
 
 int aegis128_have_aes_insn __ro_after_init;
 
@@ -25,6 +28,15 @@ bool crypto_aegis128_have_simd(void)
 	return IS_ENABLED(CONFIG_ARM64);
 }
 
+void crypto_aegis128_init_simd(union aegis_block *state,
+			       const union aegis_block *key,
+			       const u8 *iv)
+{
+	kernel_neon_begin();
+	crypto_aegis128_init_neon(state, key, iv);
+	kernel_neon_end();
+}
+
 void crypto_aegis128_update_simd(union aegis_block *state, const void *msg)
 {
 	kernel_neon_begin();
@@ -47,3 +59,13 @@ void crypto_aegis128_decrypt_chunk_simd(union aegis_block *state, u8 *dst,
 	crypto_aegis128_decrypt_chunk_neon(state, dst, src, size);
 	kernel_neon_end();
 }
+
+void crypto_aegis128_final_simd(union aegis_block *state,
+				union aegis_block *tag_xor,
+				u64 assoclen, u64 cryptlen)
+{
+	kernel_neon_begin();
+	crypto_aegis128_final_neon(state, tag_xor, cpu_to_le64(8 * assoclen),
+				   cpu_to_le64(8 * cryptlen));
+	kernel_neon_end();
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
