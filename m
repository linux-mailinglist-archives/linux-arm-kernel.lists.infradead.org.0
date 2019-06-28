Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C7C592EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LTuKw5MdxRGQa+mjeOnh+D22c5DU25tk22LXfzwuGA=; b=tLpRPR33XgImCu
	YJzDpjTvG5S7oWaLB+9v2pnKF/Cu03nWVwZ3rRc5kMbPsxtlGeHt99L4dZqd6Qzk6ZsSyfslxuiF4
	N65ctXBnrhMflA5xeyhIEOgksa/ni8sMYs+0roDwk+oloI3yKCkhN0bptXzih10w+sNaBgoPi6MPB
	mp3rfRZDURS2f8AfILv1o8hbAISsDZcNRyqnKC5gMiKZ6cHahvEg9X/mWv9AKGMFGZ29U9wDyTN+m
	lVFZWIAeqJWzOkTV3CUs0KIioXm6JMojPxt/iK27Arv+VRFUc5v7CvIbtaXyj2VVU/96H8cCQgYEL
	j5oCcKNxKK0WnKOzMM1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiXN-0007rK-BG; Fri, 28 Jun 2019 04:31:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiUL-0004ei-3W
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:54 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RmxQ105209;
 Thu, 27 Jun 2019 23:27:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696068;
 bh=/ijk8DpdTXuEeYYGPNYsSxzYzytlXm+I5jpGlL0+qTk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gtCAq3xtCSExS7PZ1XuL8gAyKbPL1QO1iML3hVgk185wGYrD4syv4KCWaffuQ+wdw
 zzOI8AagUy3FWm7ZICilrgvJdS4L/6reXlIR9b6W4GFkA6py+o9Nc8gbFoepSS4W4J
 afaHYxWykBpVGY7wXUT4lJLKJip9C+7IXIo5jWQs=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4Rm2g032647
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:48 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:48 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:48 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPS062595;
 Thu, 27 Jun 2019 23:27:45 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 08/10] crypto: sa2ul: Add hmac(sha256) HMAC algorithm
 support
Date: Fri, 28 Jun 2019 09:57:43 +0530
Message-ID: <20190628042745.28455-9-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212753_469660_91326B53 
X-CRM114-Status: GOOD (  12.22  )
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

HMAC hash-based message authentication code) is a specific type of
message authentication code (MAC) involving a cryptographic hash
function and a secret cryptographic key. It may be used to
simultaneously verify both the data integrity and the authentication
of a message, as with any MAC. Add hmac(sha256) HMAC algorithm support
and the message digest size is 32 bytes.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/crypto/sa2ul.c | 52 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index e3a1321f0666..74211cd21c62 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -1673,11 +1673,38 @@ static int sa_sham_sha1_setkey(struct crypto_ahash *tfm, const u8 *key,
 	return sa_sham_setkey(tfm, key, keylen, ad);
 }
 
+static int sa_sham_sha256_setkey(struct crypto_ahash *tfm, const u8 *key,
+				 unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+
+	ad->enc_eng.eng_id = SA_ENG_ID_NONE;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_AM1;
+	ad->auth_eng.sc_size = SA_CTX_AUTH_TYPE2_SZ;
+	ad->mci_enc = NULL;
+	ad->mci_dec = NULL;
+	ad->inv_key = false;
+	ad->keyed_mac = true;
+	ad->ealg_id = SA_EALG_ID_NONE;
+	ad->aalg_id = SA_AALG_ID_HMAC_SHA2_256;
+	ad->hash_size = SHA256_DIGEST_SIZE;
+	ad->auth_ctrl = 0x4;
+	ad->prep_iopad = sa_hmac_sha256_get_pad;
+
+	return sa_sham_setkey(tfm, key, keylen, ad);
+}
+
 static int sa_sham_cra_sha1_init(struct crypto_tfm *tfm)
 {
 	return sa_sham_cra_init_alg(tfm, "sha1");
 }
 
+static int sa_sham_cra_sha256_init(struct crypto_tfm *tfm)
+{
+	return sa_sham_cra_init_alg(tfm, "sha256");
+}
+
 static void sa_sham_cra_exit(struct crypto_tfm *tfm)
 {
 	struct crypto_alg *alg = tfm->__crt_alg;
@@ -1839,6 +1866,31 @@ static struct ahash_alg algs_sha[] = {
 		.cra_exit		= sa_sham_cra_exit,
 	}
 },
+{
+	.init		= sa_sham_init,
+	.update		= sa_sham_update,
+	.final		= sa_sham_final,
+	.finup		= sa_sham_finup,
+	.digest		= sa_sham_digest,
+	.setkey		= sa_sham_sha256_setkey,
+	.halg.digestsize	= SHA256_DIGEST_SIZE,
+	.halg.statesize		= 128,
+	.halg.base	= {
+		.cra_name		= "hmac(sha256)",
+		.cra_driver_name	= "sa-hmac-sha256",
+		.cra_priority		= 400,
+		.cra_flags		= CRYPTO_ALG_TYPE_AHASH |
+						CRYPTO_ALG_ASYNC |
+						CRYPTO_ALG_KERN_DRIVER_ONLY |
+						CRYPTO_ALG_NEED_FALLBACK,
+		.cra_blocksize		= SHA256_BLOCK_SIZE,
+		.cra_ctxsize		= sizeof(struct sa_tfm_ctx),
+		.cra_alignmask		= SA_ALIGN_MASK,
+		.cra_module		= THIS_MODULE,
+		.cra_init		= sa_sham_cra_sha256_init,
+		.cra_exit		= sa_sham_cra_exit,
+	}
+},
 };
 
 /* Register the algorithms in crypto framework */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
