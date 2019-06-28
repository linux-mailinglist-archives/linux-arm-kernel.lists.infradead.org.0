Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CEC592E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlJQP/D4lBoGJdr2E6VAQzex61miTopmBHMiO2bVsCA=; b=bPjy8WAn7iSQvO
	hO221ylJODrjjN8bzaZ6Pz9JJb+E2EN6DCRyL4SNrnplm+N4WzAruKWJmQ0R0C67mkS2qQMgBXqzy
	asUonx041ea2a4nanwznAI9TzuSNrg2v7frEkHEDtc5wNQQ/YNwSr4G3z/aZDr+W+kjFWlGojOjIV
	tadau4PQjsw8vztT0OQroAROEP8mfktX0FkdJLtsnxX+yN6liAuFti20otAz5RI7UHZamXPM4qOIo
	F8mvbX4bTH6XtiH2ui6JyUlPC9mUMyzAls9iTibw6PW04zGH341kv4e7SVSJ6CV/IVPGE+mKrK9CD
	MufDRbsBfJZOOqrksQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiVO-0005Cm-UU; Fri, 28 Jun 2019 04:28:59 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiU5-0004SC-RX
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RXFV020836;
 Thu, 27 Jun 2019 23:27:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696053;
 bh=LRrIRoI605SGe2Kd9jqNqCwySQtTN507at5OWZZ7EhQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=WfIbKHBaPYEcA6K9XLn1DmoHpG1ILHG/pIyTyRjTw5dqD5JLu7ARO+3qEz6rIwEp2
 gsvNH5RSUMNtnjsqbdnKup8UEwZyddFcgaQGnxj997Z6ApK5bJISBej2U7vv4iQ716
 HPW49EwC5czGc03/lIIq+qPo53T6RGVOFwJJYbhg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4RXLJ021546
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:33 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:32 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:32 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPN062595;
 Thu, 27 Jun 2019 23:27:30 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 03/10] crypto: sa2ul: Add AES ECB Mode support
Date: Fri, 28 Jun 2019 09:57:38 +0530
Message-ID: <20190628042745.28455-4-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212738_138038_FF5E2538 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Add support for AES algorithm in ECB Mode. Data encryption modes
are supported via MCE engine (programmable mode control engine).
ECB (Electronic code book) is a mode of operation for a block cipher,
with the characteristic that each possible block of plaintext has a
defined corresponding ciphertext value and vice versa. In other words,
the same plaintext value will always result in the same ciphertext value.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/crypto/sa2ul.c | 76 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 64bdf6b2b879..a17c1f66c5c1 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -178,6 +178,38 @@ static u8 mci_cbc_dec_array[3][MODE_CONTROL_BYTES] = {
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
 };
 
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For ECB (Electronic Code Book) mode for encryption
+ */
+static u8 mci_ecb_enc_array[3][27] = {
+	{	0x21, 0x00, 0x00, 0x80, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x21, 0x00, 0x00, 0x84, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x21, 0x00, 0x00, 0x88, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For ECB (Electronic Code Book) mode for decryption
+ */
+static u8 mci_ecb_dec_array[3][27] = {
+	{	0x31, 0x00, 0x00, 0x80, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x31, 0x00, 0x00, 0x84, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x31, 0x00, 0x00, 0x88, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
 /*
  * Perform 16 byte or 128 bit swizzling
  * The SA2UL Expects the security context to
@@ -746,6 +778,26 @@ static int sa_aes_cbc_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return sa_aes_setkey(tfm, key, keylen, ad);
 }
 
+static int sa_aes_ecb_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+			     unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
+	int key_idx = (keylen >> 3) - 2;
+
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_NONE;
+	ad->auth_eng.sc_size = 0;
+	ad->mci_enc = mci_ecb_enc_array[key_idx];
+	ad->mci_dec = mci_ecb_dec_array[key_idx];
+	ad->inv_key = true;
+	ad->ealg_id = SA_EALG_ID_AES_ECB;
+	ad->aalg_id = SA_AALG_ID_NONE;
+
+	return sa_aes_setkey(tfm, key, keylen, ad);
+}
+
 static void sa_aes_dma_in_callback(void *data)
 {
 	struct sa_rx_data *rxd = (struct sa_rx_data *)data;
@@ -940,6 +992,30 @@ static struct sa_alg_tmpl sa_algs[] = {
 					}
 			}
 	},
+	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
+		.alg.crypto = {
+			.cra_name = "ecb(aes)",
+			.cra_driver_name = "ecb-aes-sa2ul",
+			.cra_priority = 30000,
+			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
+					CRYPTO_ALG_KERN_DRIVER_ONLY |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_ctxsize = sizeof(struct sa_tfm_ctx),
+			.cra_alignmask = 0,
+			.cra_type = &crypto_ablkcipher_type,
+			.cra_module = THIS_MODULE,
+			.cra_init = sa_aes_cra_init,
+			.cra_exit = sa_aes_cra_exit,
+			.cra_u.ablkcipher = {
+				.min_keysize    = AES_MIN_KEY_SIZE,
+				.max_keysize    = AES_MAX_KEY_SIZE,
+				.setkey		= sa_aes_ecb_setkey,
+				.encrypt	= sa_aes_cbc_encrypt,
+				.decrypt	= sa_aes_cbc_decrypt,
+			}
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
