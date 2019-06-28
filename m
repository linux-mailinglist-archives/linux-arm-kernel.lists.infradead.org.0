Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9437592E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmZOwzvrfZXItpTVEk2vd2P2xfuNooUjPBNZ3jiepVA=; b=i25qvzYkJq2b0X
	+iSiyYBdhLUoYSSyCuqVc+xbs1AXzPS6A3GUaAdpKwatxQahIuz8OSIFUGDicaDov/egK+pyiOXzF
	mN0vuDZYcQL/cTCqQTsbSEKaUKx94HBi202hU2a0FH5SR9O/E3Ej/TKrBTPBL4SnsFIk70pWvWJnr
	ob7kCsf+99MLO4/4HvWNCt7PaICGNCmNtQdxDhBi3nFOOKTCBwUGGgYUQ/i4tECR5rn09d8G3U/Aq
	cJFM8176Z5hTNWYXfUUbp0sHiQTMv5NuKncHWWMERCP1Z4ZgoB1Va8hbBefKxShzqG0wemp2D+AK+
	O2zhvKKMMtZZgBsmemSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiWM-0005wO-Ly; Fri, 28 Jun 2019 04:29:58 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiUF-0004Zr-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4Rg4d105197;
 Thu, 27 Jun 2019 23:27:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696062;
 bh=ZR7ExBieDCbC/Ll+RuC+Fd2NF0nFKFip1MVtigD4OPs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=f1qXAIP6HCPQQH7lTu6RLh3UbHLwFmii4R+4e8CLacP+CrnAiiatI3qLXXjLgpnWU
 G/i+4mD1rhrqCkRX5+AoLk14nmXUrIaUzT7UpjUwGatNpLPr37Z665o8ckH9FxjKQI
 lvaQF4RxoxLG8q7pwuZBRdz13yn+MboCKpoRcohA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4Rgg1113424
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:42 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:42 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:42 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPQ062595;
 Thu, 27 Jun 2019 23:27:39 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 06/10] crypto: sa2ul: Add hmac(sha256)cbc(aes) AEAD
 Algo support
Date: Fri, 28 Jun 2019 09:57:41 +0530
Message-ID: <20190628042745.28455-7-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212747_464359_16478005 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add aead support for hmac(sha256)cbc(aes) algorithm. Authenticated
encryption (AE) and authenticated encryption with associated data
(AEAD) is a form of encryption which simultaneously provides
confidentiality, integrity, and authenticity assurances on the data.

hmac(sha256) has a digest size of 32 bytes is used for authetication
and AES in CBC mode is used in conjunction for encryption/decryption.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/crypto/sa2ul.c | 92 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 1a1bd882e0d2..9c9008e21867 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -271,6 +271,42 @@ void sa_hmac_sha1_get_pad(const u8 *key, u16 key_sz, u32 *ipad, u32 *opad)
 		opad[i] = cpu_to_be32(opad[i]);
 }
 
+void sha256_init(u32 *buf)
+{
+	buf[0] = SHA256_H0;
+	buf[1] = SHA256_H1;
+	buf[2] = SHA256_H2;
+	buf[3] = SHA256_H3;
+	buf[4] = SHA256_H4;
+	buf[5] = SHA256_H5;
+	buf[6] = SHA256_H6;
+	buf[7] = SHA256_H7;
+}
+
+static void sa_hmac_sha256_get_pad(const u8 *key, u16 key_sz, u32 *ipad,
+				   u32 *opad)
+{
+	u8 k_ipad[SHA_MESSAGE_BYTES];
+	u8 k_opad[SHA_MESSAGE_BYTES];
+	int i;
+
+	prepare_kiopad(k_ipad, k_opad, key, key_sz);
+
+	/* SHA-256 on k_ipad */
+	sha256_init(ipad);
+	sha256_transform(ipad, k_ipad);
+
+	for (i = 0; i < SHA256_DIGEST_WORDS; i++)
+		ipad[i] = cpu_to_be32(ipad[i]);
+
+	/* SHA-256 on k_opad */
+	sha256_init(opad);
+	sha256_transform(opad, k_opad);
+
+	for (i = 0; i < SHA256_DIGEST_WORDS; i++)
+		opad[i] = cpu_to_be32(opad[i]);
+}
+
 /* Derive the inverse key used in AES-CBC decryption operation */
 static inline int sa_aes_inv_key(u8 *inv_key, const u8 *key, u16 key_sz)
 {
@@ -1198,6 +1234,37 @@ static int sa_aead_cbc_sha1_setkey(struct crypto_aead *authenc,
 	return sa_aead_setkey(authenc, key, keylen, ad);
 }
 
+static int sa_aead_cbc_sha256_setkey(struct crypto_aead *authenc,
+				     const u8 *key, unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+	struct crypto_authenc_keys keys;
+	int ret = 0, key_idx;
+
+	ret = crypto_authenc_extractkeys(&keys, key, keylen);
+	if (ret)
+		return ret;
+
+	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
+	key_idx = (keys.enckeylen >> 3) - 2;
+
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_AM1;
+	ad->auth_eng.sc_size = SA_CTX_AUTH_TYPE2_SZ;
+	ad->mci_enc = mci_cbc_enc_array[key_idx];
+	ad->mci_dec = mci_cbc_dec_array[key_idx];
+	ad->inv_key = true;
+	ad->keyed_mac = true;
+	ad->ealg_id = SA_EALG_ID_AES_CBC;
+	ad->aalg_id = SA_AALG_ID_HMAC_SHA2_256;
+	ad->hash_size = SHA256_DIGEST_SIZE;
+	ad->auth_ctrl = 0x4;
+	ad->prep_iopad = sa_hmac_sha256_get_pad;
+
+	return sa_aead_setkey(authenc, key, keylen, ad);
+}
+
 static int sa_aead_run(struct aead_request *req, u8 *iv, int enc)
 {
 	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
@@ -1418,6 +1485,31 @@ static struct sa_alg_tmpl sa_algs[] = {
 			.decrypt = sa_aead_decrypt,
 		}
 	},
+	{.type	= CRYPTO_ALG_TYPE_AEAD,
+		.alg.aead = {
+				.base = {
+				.cra_name = "authenc(hmac(sha256),cbc(aes))",
+				.cra_driver_name =
+					"authenc(hmac(sha256),cbc(aes))-keystone-sa",
+				.cra_blocksize = AES_BLOCK_SIZE,
+				.cra_flags = CRYPTO_ALG_TYPE_AEAD |
+					CRYPTO_ALG_KERN_DRIVER_ONLY |
+					CRYPTO_ALG_ASYNC,
+				.cra_ctxsize = sizeof(struct sa_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_alignmask = 0,
+				.cra_priority = 3000,
+			},
+			.ivsize = AES_BLOCK_SIZE,
+			.maxauthsize = SHA256_DIGEST_SIZE,
+
+			.init = sa_cra_init_aead,
+			.exit = sa_exit_tfm_aead,
+			.setkey = sa_aead_cbc_sha256_setkey,
+			.encrypt = sa_aead_encrypt,
+			.decrypt = sa_aead_decrypt,
+		}
+	},
 };
 
 /* Register the algorithms in crypto framework */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
