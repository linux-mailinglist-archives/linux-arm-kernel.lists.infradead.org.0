Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C44483E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f76wuVFu4EWM9YQB4du5UcdILCgPO/mezPv5d62bfdI=; b=Ixx8Riin41+vTE
	PtpK3yy1XlDALsxiCETgFwUm5C0GllpFJCrWgPER/wI7cqihqBtlmZSbTXxlOuKgMQIMG08v2qUFA
	ab+hCFPOhpZZDmQaCzt5Tuk0YlJqm3aYEEEYdwfzxUgPhxYM1+1j0cbP+FteapBDy1fLq0FGBMNai
	zL9/kpjLLe4Rf0cnA9LkCKgOuO/vEn7kScHt+hJoz9HbneRIc7PDVpwzhTv2u6XN9+DoYFv478kcr
	f2T+sEovWsiqFApMTkn7W8tG9wG9JC5ON9q4BDoFbCelehM435qEF1nx+AEvvxy/0jJaSluIARpxu
	KQKjbVODMGdZfNiXfODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcreL-0007lG-QX; Mon, 17 Jun 2019 13:26:17 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcreA-0007kg-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:26:08 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MX0TX-1i9gNF0AcT-00XJq8; Mon, 17 Jun 2019 15:25:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Corentin Labbe <clabbe.montjoie@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>
Subject: [PATCH] crypto: sun4i-ss - reduce stack usage
Date: Mon, 17 Jun 2019 15:25:17 +0200
Message-Id: <20190617132538.2759714-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:dFwYisfe6d2an5iBSpuKsBUEx+RF3JE6zy3kMwlMfCg7C2kZf0c
 PJikbpLoKWB73dg8OZ7imWqut7mlrzfXDcXPVF7ZaYE0RbSUY+R7X/cUixMA94QK8XjJd21
 WZuqEXE7u2uV7j45rFWcWnO0Jk87FpZ1a7nxkWWLEk7FQH7/KbYMNlo+/IEFTtNltB6+9/S
 yJWrQw+tofrEr5PREnDfg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:exdzb5w2Xvg=:CR0sH9nRwYSNSihZH7/ieP
 PqFOiHTJoHbbDqjQ4h4U4kp9gYCvssxRdDXHNk73s+boKIHlXHfX1VxeTCfAQ1KMxvk4obJbc
 8DvnpBdS67DPeTimuip5YhBQHQSUFWO+y+hI4daiVknrVFSbSZOnMqbsc9jKoYRUJBMB5J/Jz
 iRLQIml9Y1ukfycCtY6x4Bf8eB7CyGJOe01JAtJZ0RMryNtNJlEBNyMh4YlUSO2OE+5IcJzqR
 B7EX8efA8KNgB2kCXXCbOAjrH+eebd9bHHBwMB908emBwSSW0pelmwQUZntZNbibogvJnIedQ
 wiAlAYa4RXc8eLAc7PUrDuO+QVHxugAnlEo+7f5OriGvDNP6d4Dafb6Q3BFZ0j+aPsmalwSI5
 m/7ZhXzZeN/q0lMp5QuffDXm1ggDDI3lJNvXwyCFwJxVzA9Q7Z8tEHoU9uwyIl6j6YmLtIEF8
 2i4KeOl4UIhwApvdupvgnElE2J/0Gpd5WAnG4fUhsNQuj3FLeGTioPsNk7U361BNXEAzwgi0h
 JdtidaMv0V+WGpjTYgVG6duYDv1Ajo17MBMkjdSX5CuCMZO6pelE66pBr8luJyCvHsQbhC315
 Ggt3vpGPPepYDU26se02fp4WUTcILALRo4Hp4sn1aVzmO2tQNA/EKHxnDbd95H3WoAA6u6IVC
 Nzi+lXiJJNgp8D6PTYGrh/b4XbTUV0XZ5Ws4+Dw/O75R3OT25AJA6stsiyIuTXTtopOV/IyQR
 SaBO9W4HYbEj3e8+BSysPB5eyxlF2kB56t2dEw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062607_143591_464F7835 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Eric Biggers <ebiggers@google.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After the latest addition, the stack usage of sun4i_ss_cipher_poll
grew beyond the warning limit when KASAN is enabled:

drivers/crypto/sunxi-ss/sun4i-ss-cipher.c:118:12: error: stack frame size of 1152 bytes in function 'sun4i_ss_cipher_poll' [-Werror,-Wframe-larger-than=]
static int sun4i_ss_cipher_poll(struct skcipher_request *areq)

Reduce it in three ways:

- split out the new code into a separate function so its stack
  usage can overlap that of the sun4i_ss_opti_poll() code path
- mark both special cases as noinline_for_stack, which should
  ideally result in a tail call that frees the rest of the
  stack
- move the buf and obuf variables into the code blocks in
  which they are used.

The three separate functions now use 144, 640 and 304 bytes of kernel
stack, respectively.

Fixes: 0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 47 +++++++++++++++--------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index 7b0c42882830..4ab14d58e85b 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -12,7 +12,7 @@
  */
 #include "sun4i-ss.h"
 
-static int sun4i_ss_opti_poll(struct skcipher_request *areq)
+static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_request *areq)
 {
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
 	struct sun4i_tfm_ctx *op = crypto_skcipher_ctx(tfm);
@@ -114,6 +114,29 @@ static int sun4i_ss_opti_poll(struct skcipher_request *areq)
 	return err;
 }
 
+
+static int noinline_for_stack sun4i_ss_cipher_poll_fallback(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun4i_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun4i_cipher_req_ctx *ctx = skcipher_request_ctx(areq);
+	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
+	int err;
+
+	skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
+	skcipher_request_set_callback(subreq, areq->base.flags, NULL,
+				      NULL);
+	skcipher_request_set_crypt(subreq, areq->src, areq->dst,
+				   areq->cryptlen, areq->iv);
+	if (ctx->mode & SS_DECRYPTION)
+		err = crypto_skcipher_decrypt(subreq);
+	else
+		err = crypto_skcipher_encrypt(subreq);
+	skcipher_request_zero(subreq);
+
+	return err;
+}
+
 /* Generic function that support SG with size not multiple of 4 */
 static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 {
@@ -140,8 +163,6 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 	unsigned int todo;
 	struct sg_mapping_iter mi, mo;
 	unsigned int oi, oo;	/* offset for in and out */
-	char buf[4 * SS_RX_MAX];/* buffer for linearize SG src */
-	char bufo[4 * SS_TX_MAX]; /* buffer for linearize SG dst */
 	unsigned int ob = 0;	/* offset in buf */
 	unsigned int obo = 0;	/* offset in bufo*/
 	unsigned int obl = 0;	/* length of data in bufo */
@@ -178,20 +199,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 	if (no_chunk == 1 && !need_fallback)
 		return sun4i_ss_opti_poll(areq);
 
-	if (need_fallback) {
-		SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
-		skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
-		skcipher_request_set_callback(subreq, areq->base.flags, NULL,
-					      NULL);
-		skcipher_request_set_crypt(subreq, areq->src, areq->dst,
-					   areq->cryptlen, areq->iv);
-		if (ctx->mode & SS_DECRYPTION)
-			err = crypto_skcipher_decrypt(subreq);
-		else
-			err = crypto_skcipher_encrypt(subreq);
-		skcipher_request_zero(subreq);
-		return err;
-	}
+	if (need_fallback)
+		return sun4i_ss_cipher_poll_fallback(areq);
 
 	spin_lock_irqsave(&ss->slock, flags);
 
@@ -224,6 +233,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 
 	while (oleft) {
 		if (ileft) {
+			char buf[4 * SS_RX_MAX];/* buffer for linearize SG src */
+
 			/*
 			 * todo is the number of consecutive 4byte word that we
 			 * can read from current SG
@@ -281,6 +292,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 				oo = 0;
 			}
 		} else {
+			char bufo[4 * SS_TX_MAX]; /* buffer for linearize SG dst */
+
 			/*
 			 * read obl bytes in bufo, we read at maximum for
 			 * emptying the device
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
