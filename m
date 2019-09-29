Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7E2C1881
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4gvNoe80/Uwb1KXCJHBaqHtHEfeKocdvBcZ9S4BRF34=; b=omm5ehTltbhXPcujb5yKuU05Se
	YJ9leCI2N9o3XrY8xZhstBp7Mu3MBO9gMZguzUZ5jzYbBXMGEKvSIeqE7KnKpJvxnM9Icu59Jlp1z
	TtHu9jAb0dT1WVgzPAcxDQna9wY4jL15hqfGpcxCs56uvdLSQ5YC+6rSCWiwF7aCyOt8tGwZdsKpA
	iB+xNTnkV0qRJfJJKs9ym0PJG3Jw4ZKSI6FBVcutpX5G8a9ArW6xrLupZKiqL6fiqqVA/J7rrPHZO
	c7JZPcdfOML6i79V1fXyEzLNQm1xlH2m6gPBUHl09xQXOurrv96e2Vu5bSOGVol2PzaQwWSEEMofp
	AjQB+vFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdFC-0006Cm-Mn; Sun, 29 Sep 2019 17:44:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdAc-0001Uf-Du
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id q17so8419368wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v9bzpag28TENZFqHqSk7Hu22iKtziDWGS9wYc+1CsKw=;
 b=evcOnNrt+QkLVfMqMLmB1Qjg5fDUA8a4y2ycidacjuKHmPzrvF2Glm7S8Y0JKPooN1
 /OEDHcAnAsPNBCArw/H0nO+T94IrCl+v192kHYOwmqVBgAwLvB6DQCDcA0T5rx9HoN3k
 YSpvWR3OI+3EtmwEoCELH30/7wM/W03BFWQZlgcqckcmPXCnvDDz/rp7lx3bLYQmFyeH
 10NqA+nznaRthXAgTiHltPxDIK/TtDfem8G8qQN9oOM2mIhdo6Vq/upG5wowHTC0QNRn
 CZhKnNezHP3RjNTgcil0ANHS1t0TBmotppKg5/IGPiKF/p4hNg0OgzqcDTqbMavx8MDn
 gfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v9bzpag28TENZFqHqSk7Hu22iKtziDWGS9wYc+1CsKw=;
 b=DQWeQkNcswjnkDVAKko2+mGJNFz9Es6bTRHvi8AVYFTPTfPzQThlD77Q/Hb17D5zUy
 db8gme79bQ0XK0oK61rSWhPDxkBO+JRPDU7H7lp9zyKhD7LHJ572a4prQoAPs0Itt0DY
 Qq4E7/mv84Ib3jgFHPTTH4vNqxYqMemXppD7QwpH9gOj39l7WsMrULvy424gUWhC8/Uf
 dytgvoF+Fu6v7vCOLyxgxnm6nEfvoLCYYx79RNO/FH4/dwF+QUDaBTIWLe7doZQfserX
 o3OczPDrFv68wBMblGtfFazG+drIqnzizFpKJP8MsYCfx+/aPmOFVQeIUWhmmtYD0dYQ
 hf3Q==
X-Gm-Message-State: APjAAAX1sIXSNAEHg1gBc4UP7JNEb2SFZvHW1iHNmN3m1vmlHoygJgUQ
 wmAkdXBxn0i+09cNbDWRL79DDA==
X-Google-Smtp-Source: APXvYqwfit10267f6tzLgoMC6Oc7eon4F+hYwau0lIsCswZ+VHpdqHvhxETOTAccxPhOwFeVCxkyiQ==
X-Received: by 2002:a5d:574f:: with SMTP id q15mr10180312wrw.362.1569778780819; 
 Sun, 29 Sep 2019 10:39:40 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:40 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 17/20] crypto: lib/chacha20poly1305 - reimplement
 crypt_from_sg() routine
Date: Sun, 29 Sep 2019 19:38:47 +0200
Message-Id: <20190929173850.26055-18-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103942_601445_535AD079 
X-CRM114-Status: GOOD (  14.63  )
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

Reimplement the library routines to perform chacha20poly1305 en/decryption
on scatterlists, without [ab]using the [deprecated] blkcipher interface,
which is rather heavyweight and does things we don't really need.

Instead, we use the sg_miter API in a novel and clever way, to iterate
over the scatterlist in-place (i.e., source == destination, which is the
only way this library is expected to be used). That way, we don't have to
iterate over two scatterlists in parallel.

Another optimization is that, instead of relying on the blkcipher walker
to present the input in suitable chunks, we recognize that ChaCha is a
streamcipher, and so we can simply deal with partial blocks by keeping a
block of cipherstream on the stack and use crypto_xor() to mix it with
the in/output.

Finally, we omit the scatterwalk_and_copy() call if the last element of
the scatterlist covers the MAC as well (which is the common case),
avoiding the need to walk the scatterlist and kmap() the page twice.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 include/crypto/chacha20poly1305.h      |  11 ++
 lib/crypto/chacha20poly1305-selftest.c |  45 ++++++
 lib/crypto/chacha20poly1305.c          | 151 ++++++++++++++++++++
 3 files changed, 207 insertions(+)

diff --git a/include/crypto/chacha20poly1305.h b/include/crypto/chacha20poly1305.h
index ad3b1de58df8..f395d244a49e 100644
--- a/include/crypto/chacha20poly1305.h
+++ b/include/crypto/chacha20poly1305.h
@@ -7,6 +7,7 @@
 #define __CHACHA20POLY1305_H
 
 #include <linux/types.h>
+#include <linux/scatterlist.h>
 
 enum chacha20poly1305_lengths {
 	XCHACHA20POLY1305_NONCE_SIZE = 24,
@@ -34,4 +35,14 @@ bool __must_check xchacha20poly1305_decrypt(
 	const size_t ad_len, const u8 nonce[XCHACHA20POLY1305_NONCE_SIZE],
 	const u8 key[CHACHA20POLY1305_KEY_SIZE]);
 
+void chacha20poly1305_encrypt_sg_inplace(struct scatterlist *src, size_t src_len,
+					 const u8 *ad, const size_t ad_len,
+					 const u64 nonce,
+					 const u8 key[CHACHA20POLY1305_KEY_SIZE]);
+
+bool chacha20poly1305_decrypt_sg_inplace(struct scatterlist *src, size_t src_len,
+					 const u8 *ad, const size_t ad_len,
+					 const u64 nonce,
+					 const u8 key[CHACHA20POLY1305_KEY_SIZE]);
+
 #endif /* __CHACHA20POLY1305_H */
diff --git a/lib/crypto/chacha20poly1305-selftest.c b/lib/crypto/chacha20poly1305-selftest.c
index 618bdd4ab36f..5b496b5c15e3 100644
--- a/lib/crypto/chacha20poly1305-selftest.c
+++ b/lib/crypto/chacha20poly1305-selftest.c
@@ -7251,6 +7251,7 @@ bool __init chacha20poly1305_selftest(void)
 	enum { MAXIMUM_TEST_BUFFER_LEN = 1UL << 12 };
 	size_t i;
 	u8 *computed_output = NULL, *heap_src = NULL;
+	struct scatterlist sg_src;
 	bool success = true, ret;
 
 	heap_src = kmalloc(MAXIMUM_TEST_BUFFER_LEN, GFP_KERNEL);
@@ -7281,6 +7282,29 @@ bool __init chacha20poly1305_selftest(void)
 		}
 	}
 
+	for (i = 0; i < ARRAY_SIZE(chacha20poly1305_enc_vectors); ++i) {
+		if (chacha20poly1305_enc_vectors[i].nlen != 8)
+			continue;
+		memcpy(heap_src, chacha20poly1305_enc_vectors[i].input,
+		       chacha20poly1305_enc_vectors[i].ilen);
+		sg_init_one(&sg_src, heap_src,
+			    chacha20poly1305_enc_vectors[i].ilen + POLY1305_DIGEST_SIZE);
+		chacha20poly1305_encrypt_sg_inplace(&sg_src,
+			chacha20poly1305_enc_vectors[i].ilen,
+			chacha20poly1305_enc_vectors[i].assoc,
+			chacha20poly1305_enc_vectors[i].alen,
+			get_unaligned_le64(chacha20poly1305_enc_vectors[i].nonce),
+			chacha20poly1305_enc_vectors[i].key);
+		if (memcmp(heap_src,
+				   chacha20poly1305_enc_vectors[i].output,
+				   chacha20poly1305_enc_vectors[i].ilen +
+							POLY1305_DIGEST_SIZE)) {
+			pr_err("chacha20poly1305 sg encryption self-test %zu: FAIL\n",
+			       i + 1);
+			success = false;
+		}
+	}
+
 	for (i = 0; i < ARRAY_SIZE(chacha20poly1305_dec_vectors); ++i) {
 		memset(computed_output, 0, MAXIMUM_TEST_BUFFER_LEN);
 		ret = chacha20poly1305_decrypt(computed_output,
@@ -7302,6 +7326,27 @@ bool __init chacha20poly1305_selftest(void)
 		}
 	}
 
+	for (i = 0; i < ARRAY_SIZE(chacha20poly1305_dec_vectors); ++i) {
+		memcpy(heap_src, chacha20poly1305_dec_vectors[i].input,
+		       chacha20poly1305_dec_vectors[i].ilen);
+		sg_init_one(&sg_src, heap_src,
+			    chacha20poly1305_dec_vectors[i].ilen);
+		ret = chacha20poly1305_decrypt_sg_inplace(&sg_src,
+			chacha20poly1305_dec_vectors[i].ilen,
+			chacha20poly1305_dec_vectors[i].assoc,
+			chacha20poly1305_dec_vectors[i].alen,
+			get_unaligned_le64(chacha20poly1305_dec_vectors[i].nonce),
+			chacha20poly1305_dec_vectors[i].key);
+		if (!decryption_success(ret,
+			chacha20poly1305_dec_vectors[i].failure,
+			memcmp(heap_src, chacha20poly1305_dec_vectors[i].output,
+			       chacha20poly1305_dec_vectors[i].ilen -
+							POLY1305_DIGEST_SIZE))) {
+			pr_err("chacha20poly1305 sg decryption self-test %zu: FAIL\n",
+			       i + 1);
+			success = false;
+		}
+	}
 
 	for (i = 0; i < ARRAY_SIZE(xchacha20poly1305_enc_vectors); ++i) {
 		memset(computed_output, 0, MAXIMUM_TEST_BUFFER_LEN);
diff --git a/lib/crypto/chacha20poly1305.c b/lib/crypto/chacha20poly1305.c
index 3127d09c483f..115e00d7417c 100644
--- a/lib/crypto/chacha20poly1305.c
+++ b/lib/crypto/chacha20poly1305.c
@@ -11,6 +11,7 @@
 #include <crypto/chacha20poly1305.h>
 #include <crypto/chacha.h>
 #include <crypto/poly1305.h>
+#include <crypto/scatterwalk.h>
 
 #include <asm/unaligned.h>
 #include <linux/kernel.h>
@@ -205,6 +206,156 @@ bool xchacha20poly1305_decrypt(u8 *dst, const u8 *src, const size_t src_len,
 }
 EXPORT_SYMBOL(xchacha20poly1305_decrypt);
 
+static
+bool chacha20poly1305_crypt_sg_inplace(struct scatterlist *src,
+				       const size_t src_len,
+				       const u8 *ad, const size_t ad_len,
+				       const u64 nonce,
+				       const u8 key[CHACHA20POLY1305_KEY_SIZE],
+				       int encrypt)
+{
+	const u8 *pad0 = page_address(ZERO_PAGE(0));
+	struct poly1305_desc_ctx poly1305_state;
+	u32 chacha_state[CHACHA_STATE_WORDS];
+	struct sg_mapping_iter miter;
+	size_t length, partial = 0;
+	unsigned int flags;
+	bool ret = true;
+	u8 *addr;
+	int sl;
+	union {
+		struct {
+			u32 k[CHACHA_KEY_WORDS];
+			__le64 iv[2];
+		};
+		u8 block0[POLY1305_KEY_SIZE];
+		u8 chacha_stream[CHACHA_BLOCK_SIZE];
+		struct {
+			u8 mac[2][POLY1305_DIGEST_SIZE];
+		};
+		__le64 lens[2];
+	} b __aligned(16);
+
+	chacha_load_key(b.k, key);
+
+	b.iv[0] = 0;
+	b.iv[1] = cpu_to_le64(nonce);
+
+	chacha_init(chacha_state, b.k, (u8 *)b.iv);
+	chacha_crypt(chacha_state, b.block0, pad0, sizeof(b.block0), 20);
+	poly1305_init(&poly1305_state, b.block0);
+
+	if (unlikely(ad_len)) {
+		poly1305_update(&poly1305_state, ad, ad_len);
+		if (ad_len & 0xf)
+			poly1305_update(&poly1305_state, pad0, 0x10 - (ad_len & 0xf));
+	}
+
+	flags = SG_MITER_TO_SG;
+	if (!preemptible())
+		flags |= SG_MITER_ATOMIC;
+
+	sg_miter_start(&miter, src, sg_nents(src), flags);
+
+	for (sl = src_len; sl > 0 && sg_miter_next(&miter); sl -= miter.length) {
+		addr = miter.addr;
+		length = min_t(size_t, sl, miter.length);
+
+		if (!encrypt)
+			poly1305_update(&poly1305_state, addr, length);
+
+		if (unlikely(partial)) {
+			size_t l = min(length, CHACHA_BLOCK_SIZE - partial);
+
+			crypto_xor(addr, b.chacha_stream + partial, l);
+			partial = (partial + l) & (CHACHA_BLOCK_SIZE - 1);
+
+			addr += l;
+			length -= l;
+		}
+
+		if (likely(length >= CHACHA_BLOCK_SIZE || length == sl)) {
+			size_t l = length;
+
+			if (unlikely(length < sl))
+				l &= ~(CHACHA_BLOCK_SIZE - 1);
+			chacha_crypt(chacha_state, addr, addr, l, 20);
+			addr += l;
+			length -= l;
+		}
+
+		if (unlikely(length > 0)) {
+			chacha_crypt(chacha_state, b.chacha_stream, pad0,
+				     CHACHA_BLOCK_SIZE, 20);
+			crypto_xor(addr, b.chacha_stream, length);
+			partial = length;
+			addr += length;
+		}
+
+		if (encrypt)
+			poly1305_update(&poly1305_state, miter.addr,
+					min_t(size_t, sl, miter.length));
+	}
+
+	if (src_len & 0xf)
+		poly1305_update(&poly1305_state, pad0, 0x10 - (src_len & 0xf));
+
+	b.lens[0] = cpu_to_le64(ad_len);
+	b.lens[1] = cpu_to_le64(src_len);
+	poly1305_update(&poly1305_state, (u8 *)b.lens, sizeof(b.lens));
+
+	if (likely(sl <= -POLY1305_DIGEST_SIZE)) {
+		if (encrypt) {
+			poly1305_final(&poly1305_state,
+				       miter.addr + miter.length + sl);
+			ret = true;
+		} else {
+			poly1305_final(&poly1305_state, b.mac[0]);
+			ret = !crypto_memneq(b.mac[0],
+					     miter.addr + miter.length + sl,
+					     POLY1305_DIGEST_SIZE);
+		}
+	}
+
+	sg_miter_stop(&miter);
+
+	if (unlikely(sl > -POLY1305_DIGEST_SIZE)) {
+		poly1305_final(&poly1305_state, b.mac[1]);
+		scatterwalk_map_and_copy(b.mac[encrypt], src, src_len,
+					 sizeof(b.mac[1]), encrypt);
+		ret = encrypt ||
+		      !crypto_memneq(b.mac[0], b.mac[1], POLY1305_DIGEST_SIZE);
+	}
+
+	memzero_explicit(chacha_state, sizeof(chacha_state));
+	memzero_explicit(&b, sizeof(b));
+
+	return ret;
+}
+
+void chacha20poly1305_encrypt_sg_inplace(struct scatterlist *src, size_t src_len,
+					 const u8 *ad, const size_t ad_len,
+					 const u64 nonce,
+					 const u8 key[CHACHA20POLY1305_KEY_SIZE])
+{
+	chacha20poly1305_crypt_sg_inplace(src, src_len, ad, ad_len, nonce, key, 1);
+}
+EXPORT_SYMBOL(chacha20poly1305_encrypt_sg_inplace);
+
+bool chacha20poly1305_decrypt_sg_inplace(struct scatterlist *src, size_t src_len,
+					 const u8 *ad, const size_t ad_len,
+					 const u64 nonce,
+					 const u8 key[CHACHA20POLY1305_KEY_SIZE])
+{
+	if (unlikely(src_len < POLY1305_DIGEST_SIZE))
+		return false;
+
+	return chacha20poly1305_crypt_sg_inplace(src,
+						 src_len - POLY1305_DIGEST_SIZE,
+						 ad, ad_len, nonce, key, 0);
+}
+EXPORT_SYMBOL(chacha20poly1305_decrypt_sg_inplace);
+
 static int __init mod_init(void)
 {
 	if (!IS_ENABLED(CONFIG_CRYPTO_MANAGER_DISABLE_TESTS))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
