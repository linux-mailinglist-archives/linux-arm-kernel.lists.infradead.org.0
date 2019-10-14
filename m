Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA83AD6710
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD/eUJLJ8tsCzVOsjYh7hJ5Yf7tkUO9drK17PFfj5ro=; b=P2zmcEK5J5Xy5J
	ceZ2YQa1UzFx1BbYfLRuOanqM3qXRCAi7uttRAN2V2v/fEv6egfGAClzZQDctfJRfrfhqj2SucBoY
	JL8kElJ18HQToizqVWqB7p6RYqdLlu9YRW6Ky9mpyKJ7SMWmoNPq+eOZUg45ORe+BCnRGAOZfILiJ
	ofphcF0dEaOcMrXmHxvKBcu+w4+Mk5rkGaXm6Lg/saIPxCmYrCeuK+qL2W19urSQRLeUE44p9JPs6
	3tO1c78bJ6JLu+vZmbWv++k8VnREEMRvApSc5jFWrB6QxtDr0Mx8x7GKqbswaAWH4qB+nou792vZe
	rSGlJP2+7ejZGglhLpRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK32T-0002u2-Ly; Mon, 14 Oct 2019 16:17:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK31i-0002VY-D8
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:16:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id y135so355808wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 09:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IpqwZs59nyi92LNM6KIZI+WaiWKBSPMKiEsrKFRiIIQ=;
 b=ropoQQyZtGHuwo63cXLCu0UHmNi3J3G0O3/6hGn/jCZ8k2yn5blG9AbNTOgLWawfN/
 gnyYYtlbMMcYEqrdCPnifs3H4TaPZtx6MrMc6m6MZ2vh/sqvCueoWAgTivlT39idODkK
 MJjSxRiF0ZHO1SuAS9qGJcarbxYxUx2dRTat7JQ3mcOjWI/XP+0Zup6u4PNnUJ2Nw+Xe
 5bPgcg4OlLhXxVT+a+usv3V3UI98oQHNKSgcVGca/AQuYDDpItaUmBaxfKxQlJkoO2uw
 OrcLjnI7oI+fYWuZgyVMAxwLrdv+LATzz2E9LlPVSpy3ZRSnDJVU5vR1b8UtPyULeQGA
 ngWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IpqwZs59nyi92LNM6KIZI+WaiWKBSPMKiEsrKFRiIIQ=;
 b=maomVBMZQ43vObR0I7WR0jOxktxPzQr0HH7wLi081Le1T30WlHknrJoraA/l2q2lzx
 ld64Dy+89eGwGfOy6roggzbzFbXzWEiMTfQxaSUbJ4qql8Dyokb8w23E50xseW6aDOLH
 rBgZmFEYXn9uuUxezqbQbg20H8v0ZxUSkQi01NLtYYSoiB7xu21Pn5x2cmNIi0oslMLl
 T9GE+5V5drDVJ2gKrJBvh62+rFvII54t8sL7OzY9/wYU420LRWRtDUSlR3lOD38eS6Oc
 sYwn3WpizZaPEvAWy0yQt5eWDc16qZY3958HVeub5HYBIMzTvLq/Brx6dlIdwNHmIfv0
 aC0Q==
X-Gm-Message-State: APjAAAX1+BJf9UTyx2zGVGsK8C1k5CsiyYmqB3scLmAtvZCoO1sZOcd9
 nhFQ+MHwHy45Os1ENLeMZFFvCg==
X-Google-Smtp-Source: APXvYqxZxQhFWBsmtL0WslRvh3I5uRBH3fe6rYKEQkXGdDmX+4c9gnRs80V9LP2Ughujf0e7h9vdmg==
X-Received: by 2002:a1c:740a:: with SMTP id p10mr16573764wmc.90.1571069812884; 
 Mon, 14 Oct 2019 09:16:52 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-23-27.w90-88.abo.wanadoo.fr. [90.88.143.27])
 by smtp.gmail.com with ESMTPSA id a14sm17308655wmm.44.2019.10.14.09.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 09:16:51 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 2/2] crypto: aegis128 - duplicate init() and final() hooks
 in SIMD code
Date: Mon, 14 Oct 2019 18:16:45 +0200
Message-Id: <20191014161645.1961-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
References: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_091654_444961_134BF1F3 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to speed up aegis128 processing even more, duplicate the init()
and final() routines as SIMD versions in their entirety. This results
in a 2x speedup on ARM Cortex-A57 for ~1500 byte packets (using AES
instructions).

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis128-core.c       | 38 ++++++++++-----
 crypto/aegis128-neon-inner.c | 50 ++++++++++++++++++++
 crypto/aegis128-neon.c       | 21 ++++++++
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
index f05310ca22aa..2a660ac1bc3a 100644
--- a/crypto/aegis128-neon-inner.c
+++ b/crypto/aegis128-neon-inner.c
@@ -132,6 +132,36 @@ void preload_sbox(void)
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
+	preload_sbox();
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
@@ -210,3 +240,23 @@ void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
 
 	aegis128_save_state_neon(st, state);
 }
+
+void crypto_aegis128_final_neon(void *state, void *tag_xor, uint64_t assoclen,
+				uint64_t cryptlen)
+{
+	struct aegis128_state st = aegis128_load_state_neon(state);
+	uint8x16_t v;
+	int i;
+
+	preload_sbox();
+
+	v = st.v[3] ^ (uint8x16_t)vcombine_u64(vmov_n_u64(8 * assoclen),
+					       vmov_n_u64(8 * cryptlen));
+
+	for (i = 0; i < 7; i++)
+		st = aegis128_update_neon(st, v);
+
+	v = vld1q_u8(tag_xor);
+	v ^= st.v[0] ^ st.v[1] ^ st.v[2] ^ st.v[3] ^ st.v[4];
+	vst1q_u8(tag_xor, v);
+}
diff --git a/crypto/aegis128-neon.c b/crypto/aegis128-neon.c
index 751f9c195aa4..8271b1fa0fbc 100644
--- a/crypto/aegis128-neon.c
+++ b/crypto/aegis128-neon.c
@@ -8,11 +8,14 @@
 
 #include "aegis.h"
 
+void crypto_aegis128_init_neon(void *state, const void *key, const void *iv);
 void crypto_aegis128_update_neon(void *state, const void *msg);
 void crypto_aegis128_encrypt_chunk_neon(void *state, void *dst, const void *src,
 					unsigned int size);
 void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
 					unsigned int size);
+void crypto_aegis128_final_neon(void *state, void *tag_xor, uint64_t assoclen,
+				uint64_t cryptlen);
 
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
@@ -47,3 +59,12 @@ void crypto_aegis128_decrypt_chunk_simd(union aegis_block *state, u8 *dst,
 	crypto_aegis128_decrypt_chunk_neon(state, dst, src, size);
 	kernel_neon_end();
 }
+
+void crypto_aegis128_final_simd(union aegis_block *state,
+				union aegis_block *tag_xor,
+				u64 assoclen, u64 cryptlen)
+{
+	kernel_neon_begin();
+	crypto_aegis128_final_neon(state, tag_xor, assoclen, cryptlen);
+	kernel_neon_end();
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
