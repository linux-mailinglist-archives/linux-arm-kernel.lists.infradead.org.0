Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CF9D670D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZ4cGB6+IWeLiQvY3+jRX/ak51Xw2vWl+R6DNV7WbTY=; b=iQdOMhsaHuqx1b
	hN6Yz+7xl7By6w2YYgBN171JxQCNZnFQeXFOcC1gTWPNWdZI2wDHNvh7Pfav0O718psaz1nB6LeYz
	SRttR9OfP6JF7msUtqXH5AEwMIE7SBxrZVzninSnta5WilrXFdvYiQVas24LO5B+B6KnZFDttOnPW
	+98ktJ0x1y9mTp310mp9Sm5hD0Cg/ipAXxmtD/QxzHyrmay4fptDtGpQ0AjSmPOAfGZuPA7lVQrev
	SBJxJqSBWJAd8C206gTB8vyO4XkmPbGIwAwJh83TJSKRmRS36/Tr2hDIyucplF1zdj6AiqraZNVr3
	VgLs+EJLSDSLERLMUWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK32B-0002eU-43; Mon, 14 Oct 2019 16:17:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK31h-0002V7-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:16:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id n14so20384086wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 09:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3dT5xeg+W/abI4zH3wzED14fHVMhPnQCtSYtaVYmbAk=;
 b=sEUdGrbsRLd3EwtlPYCvYLobAS8DboVsmiF74W6HbzLDftwr/2u8ncB4S560bifRGE
 cgbT3SSMn4mBGZYNQlsumpBlqLzuBeXOocIkr78gGAArNgCtTR6L83FZknC34c7E2Eq6
 1izW8TIiSloeHIfl1/lf75NpZ/DMXnGXV99UXpV35b1ZAgENScr8YRTmLPIjf0SyzMML
 xsP3qL/yg0YgPu2VG8n5w8mexdZGGLVHotqUtDEyaiSpQJDrolkI4cJGdhH7XCPQ1BH+
 jyqgrEH3iQ6sim9TauqewOO+ZUW9WFsPtNuvQoXGJvLz1DT/PEwcORhdNGx6e3Vdk5yQ
 pMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3dT5xeg+W/abI4zH3wzED14fHVMhPnQCtSYtaVYmbAk=;
 b=b0Gcc53RU9xx/aTXZeNuwjBTUIn8CbKsb2/GDkBNzVptOO6N/oyeTiiUBzZrnP1JLr
 9uD5PUnGMqr7LTf8VSpPLrZ09FZk9RvexA9P1uNpYoxXDmBNYdZJjo1Dot97tyFLq041
 xGfEL5sKK+2sJW05WytMy2DkuGwDXPN1LqF532fRewr+2nIqxhbU8o/lxTVDm4FP0uS6
 Dl6PV8WmmuWToArHahuI9CY9xE2cxOWoJXY6v0NTSEp+neDLawl2R6zX2ykS0G8XgaGR
 mWOtEgCQt8Pka1wYGDJf6E+B4xPNHTmyd5LRhP8UGLiMJ4XN8hfRyQivYdtjKudFn3pa
 yzpw==
X-Gm-Message-State: APjAAAWCrAGU99wYnU1khOPy3t+xm07K17uJ+iHAa+MAQYV7R2PeBPfh
 lHX2RMr7eqpozD9a/dPe1avca1PTfdzC4w==
X-Google-Smtp-Source: APXvYqx+NUcHnWHkKMY5rggcvxBJ1qKMdlWkT6RMALJ5Vt7QVdMcaeRNmrOxXRby/i41dhpL0T4n9g==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr14780034wrq.192.1571069811593; 
 Mon, 14 Oct 2019 09:16:51 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-23-27.w90-88.abo.wanadoo.fr. [90.88.143.27])
 by smtp.gmail.com with ESMTPSA id a14sm17308655wmm.44.2019.10.14.09.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 09:16:50 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 1/2] crypto: aegis128 - avoid function pointers for
 parameterization
Date: Mon, 14 Oct 2019 18:16:44 +0200
Message-Id: <20191014161645.1961-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
References: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_091653_152089_0AB1E25D 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Instead of passing around an ops structure with function pointers,
which forces indirect calls to be used, refactor the code slightly
so we can use ordinary function calls. At the same time, switch to
a static key to decide whether or not the SIMD code path may be used.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis128-core.c | 105 +++++++++-----------
 1 file changed, 46 insertions(+), 59 deletions(-)

diff --git a/crypto/aegis128-core.c b/crypto/aegis128-core.c
index 80e73611bd5c..fe7ab66dd8f9 100644
--- a/crypto/aegis128-core.c
+++ b/crypto/aegis128-core.c
@@ -13,6 +13,7 @@
 #include <crypto/scatterwalk.h>
 #include <linux/err.h>
 #include <linux/init.h>
+#include <linux/jump_label.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/scatterlist.h>
@@ -35,15 +36,7 @@ struct aegis_ctx {
 	union aegis_block key;
 };
 
-struct aegis128_ops {
-	int (*skcipher_walk_init)(struct skcipher_walk *walk,
-				  struct aead_request *req, bool atomic);
-
-	void (*crypt_chunk)(struct aegis_state *state, u8 *dst,
-			    const u8 *src, unsigned int size);
-};
-
-static bool have_simd;
+static __ro_after_init DEFINE_STATIC_KEY_FALSE(have_simd);
 
 static const union aegis_block crypto_aegis_const[2] = {
 	{ .words64 = {
@@ -59,7 +52,7 @@ static const union aegis_block crypto_aegis_const[2] = {
 static bool aegis128_do_simd(void)
 {
 #ifdef CONFIG_CRYPTO_AEGIS128_SIMD
-	if (have_simd)
+	if (static_branch_likely(&have_simd))
 		return crypto_simd_usable();
 #endif
 	return false;
@@ -323,25 +316,27 @@ static void crypto_aegis128_process_ad(struct aegis_state *state,
 	}
 }
 
-static void crypto_aegis128_process_crypt(struct aegis_state *state,
-					  struct aead_request *req,
-					  const struct aegis128_ops *ops)
+static __always_inline
+int crypto_aegis128_process_crypt(struct aegis_state *state,
+				  struct aead_request *req,
+				  struct skcipher_walk *walk,
+				  void (*crypt)(struct aegis_state *state,
+					        u8 *dst, const u8 *src,
+					        unsigned int size))
 {
-	struct skcipher_walk walk;
+	int err = 0;
 
-	ops->skcipher_walk_init(&walk, req, false);
+	while (walk->nbytes) {
+		unsigned int nbytes = walk->nbytes;
 
-	while (walk.nbytes) {
-		unsigned int nbytes = walk.nbytes;
+		if (nbytes < walk->total)
+			nbytes = round_down(nbytes, walk->stride);
 
-		if (nbytes < walk.total)
-			nbytes = round_down(nbytes, walk.stride);
+		crypt(state, walk->dst.virt.addr, walk->src.virt.addr, nbytes);
 
-		ops->crypt_chunk(state, walk.dst.virt.addr, walk.src.virt.addr,
-				 nbytes);
-
-		skcipher_walk_done(&walk, walk.nbytes - nbytes);
+		err = skcipher_walk_done(walk, walk->nbytes - nbytes);
 	}
+	return err;
 }
 
 static void crypto_aegis128_final(struct aegis_state *state,
@@ -390,39 +385,27 @@ static int crypto_aegis128_setauthsize(struct crypto_aead *tfm,
 	return 0;
 }
 
-static void crypto_aegis128_crypt(struct aead_request *req,
-				  union aegis_block *tag_xor,
-				  unsigned int cryptlen,
-				  const struct aegis128_ops *ops)
+static int crypto_aegis128_encrypt(struct aead_request *req)
 {
 	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	union aegis_block tag = {};
+	unsigned int authsize = crypto_aead_authsize(tfm);
 	struct aegis_ctx *ctx = crypto_aead_ctx(tfm);
+	unsigned int cryptlen = req->cryptlen;
+	struct skcipher_walk walk;
 	struct aegis_state state;
 
 	crypto_aegis128_init(&state, &ctx->key, req->iv);
 	crypto_aegis128_process_ad(&state, req->src, req->assoclen);
-	crypto_aegis128_process_crypt(&state, req, ops);
-	crypto_aegis128_final(&state, tag_xor, req->assoclen, cryptlen);
-}
-
-static int crypto_aegis128_encrypt(struct aead_request *req)
-{
-	const struct aegis128_ops *ops = &(struct aegis128_ops){
-		.skcipher_walk_init = skcipher_walk_aead_encrypt,
-		.crypt_chunk = crypto_aegis128_encrypt_chunk,
-	};
-
-	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
-	union aegis_block tag = {};
-	unsigned int authsize = crypto_aead_authsize(tfm);
-	unsigned int cryptlen = req->cryptlen;
 
+	skcipher_walk_aead_encrypt(&walk, req, false);
 	if (aegis128_do_simd())
-		ops = &(struct aegis128_ops){
-			.skcipher_walk_init = skcipher_walk_aead_encrypt,
-			.crypt_chunk = crypto_aegis128_encrypt_chunk_simd };
-
-	crypto_aegis128_crypt(req, &tag, cryptlen, ops);
+		crypto_aegis128_process_crypt(&state, req, &walk,
+					      crypto_aegis128_encrypt_chunk_simd);
+	else
+		crypto_aegis128_process_crypt(&state, req, &walk,
+					      crypto_aegis128_encrypt_chunk);
+	crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
 
 	scatterwalk_map_and_copy(tag.bytes, req->dst, req->assoclen + cryptlen,
 				 authsize, 1);
@@ -431,26 +414,29 @@ static int crypto_aegis128_encrypt(struct aead_request *req)
 
 static int crypto_aegis128_decrypt(struct aead_request *req)
 {
-	const struct aegis128_ops *ops = &(struct aegis128_ops){
-		.skcipher_walk_init = skcipher_walk_aead_decrypt,
-		.crypt_chunk = crypto_aegis128_decrypt_chunk,
-	};
 	static const u8 zeros[AEGIS128_MAX_AUTH_SIZE] = {};
-
 	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 	union aegis_block tag;
 	unsigned int authsize = crypto_aead_authsize(tfm);
 	unsigned int cryptlen = req->cryptlen - authsize;
+	struct aegis_ctx *ctx = crypto_aead_ctx(tfm);
+	struct skcipher_walk walk;
+	struct aegis_state state;
 
 	scatterwalk_map_and_copy(tag.bytes, req->src, req->assoclen + cryptlen,
 				 authsize, 0);
 
-	if (aegis128_do_simd())
-		ops = &(struct aegis128_ops){
-			.skcipher_walk_init = skcipher_walk_aead_decrypt,
-			.crypt_chunk = crypto_aegis128_decrypt_chunk_simd };
+	crypto_aegis128_init(&state, &ctx->key, req->iv);
+	crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 
-	crypto_aegis128_crypt(req, &tag, cryptlen, ops);
+	skcipher_walk_aead_decrypt(&walk, req, false);
+	if (aegis128_do_simd())
+		crypto_aegis128_process_crypt(&state, req, &walk,
+					      crypto_aegis128_decrypt_chunk_simd);
+	else
+		crypto_aegis128_process_crypt(&state, req, &walk,
+					      crypto_aegis128_decrypt_chunk);
+	crypto_aegis128_final(&state, &tag, req->assoclen, cryptlen);
 
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
@@ -481,8 +467,9 @@ static struct aead_alg crypto_aegis128_alg = {
 
 static int __init crypto_aegis128_module_init(void)
 {
-	if (IS_ENABLED(CONFIG_CRYPTO_AEGIS128_SIMD))
-		have_simd = crypto_aegis128_have_simd();
+	if (IS_ENABLED(CONFIG_CRYPTO_AEGIS128_SIMD) &&
+	    crypto_aegis128_have_simd())
+		static_branch_enable(&have_simd);
 
 	return crypto_register_aead(&crypto_aegis128_alg);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
