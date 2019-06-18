Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619574A074
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxZ5Rx90ROrj9DFR4ghW58832fiiVxnW9jV0dmca+iU=; b=FOaYmi5qZQlGwh
	xg+aGaDsD8lLzoXqiAdThBbmDxPSdSemxTVO9fGSjFdp6V/Tw/4RuVg9oknjq4dTGyxUy3tiSPah4
	w5s8UTb5LPhr0D4gpSXXswYgmRzaT2ukv2RYeWSQhY8g/PUhTxiF2FSuVFIu3Y4caDGj/ZenKXiz5
	grc+WYCKcqOnxjRlHjORtIUfeuyWE09ekoJ9n11hnA8bWQ5p6mSYVMhB6CXvEULuMN6BIHzO9ZCvc
	lXwLGcd3voiv7OOP/7qtl1ko4OwVaNveWU31YPmxpKE7qiRnu8eWwTI0pvG28zqKOzoCma8ZrA5DK
	aFaqsLo9DWewmdSkG19Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCyT-0006on-LF; Tue, 18 Jun 2019 12:12:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCuy-00032K-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:08:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IC8d0f113933;
 Tue, 18 Jun 2019 07:08:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560859719;
 bh=0zvb4oMtQmrHpjjM5stcwnynpmyBJnr20M+fOpeBneo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OCJu9kbhQSQ1dpYRGmJpw6cCKtJPT/B+ajMbj54MXVg0IYCXbG5GdytaDmZNQmaAB
 eitykPeQqa9FSnuD9z0/Ax8AGBLoZULXRrY1+1tZu00u8QGGMe5cHcPRxurnqpIBSQ
 J5qimvMiRm/UB775XFF1S9lTDlSdufTlEjhOXg5M=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IC8dqk044879
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 07:08:39 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 07:08:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 07:08:38 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IC89Gh080327;
 Tue, 18 Jun 2019 07:08:36 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [PATCH 09/10] sa2ul: Add 3DES ECB & CBC Mode support
Date: Tue, 18 Jun 2019 17:38:42 +0530
Message-ID: <20190618120843.18777-10-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618120843.18777-1-j-keerthy@ti.com>
References: <20190618120843.18777-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050852_235210_8D11D111 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Triple DES (3DES), officially the Triple Data Encryption Algorithm
(TDEA or Triple DEA), is a symmetric-key block cipher, which applies
the DES cipher algorithm three times to each data block

Add 3DES ECB(Electronic code book) & CBC(Cipher Block Chaining)
Mode support.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/crypto/sa2ul.c | 112 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 74211cd21c62..8d535fc9867f 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -210,6 +210,35 @@ static u8 mci_ecb_dec_array[3][27] = {
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
 };
 
+/*
+ * Mode Control Instructions for DES algorithm
+ * For CBC (Cipher Block Chaining) mode and ECB mode
+ * encryption and for decryption respectively
+ */
+static u8 mci_cbc_3des_enc_array[MODE_CONTROL_BYTES] = {
+	0x20, 0x00, 0x00, 0x18, 0x88, 0x52, 0xaa, 0x4b, 0x7e, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_cbc_3des_dec_array[MODE_CONTROL_BYTES] = {
+	0x30, 0x00, 0x00, 0x85, 0x0a, 0xca, 0x98, 0xf4, 0x40, 0xc0, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_ecb_3des_enc_array[MODE_CONTROL_BYTES] = {
+	0x20, 0x00, 0x00, 0x85, 0x0a, 0x04, 0xb7, 0x90, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_ecb_3des_dec_array[MODE_CONTROL_BYTES] = {
+	0x30, 0x00, 0x00, 0x85, 0x0a, 0x04, 0xb7, 0x90, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
 /*
  * Perform 16 byte or 128 bit swizzling
  * The SA2UL Expects the security context to
@@ -877,6 +906,39 @@ static int sa_aes_ecb_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return sa_aes_setkey(tfm, key, keylen, ad);
 }
 
+static int sa_3des_cbc_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+			      unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_NONE;
+	ad->auth_eng.sc_size = 0;
+	ad->mci_enc = mci_cbc_3des_enc_array;
+	ad->mci_dec = mci_cbc_3des_dec_array;
+	ad->ealg_id = SA_EALG_ID_3DES_CBC;
+	ad->aalg_id = SA_AALG_ID_NONE;
+
+	return sa_aes_setkey(tfm, key, keylen, ad);
+}
+
+static int sa_3des_ecb_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+			      unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_NONE;
+	ad->auth_eng.sc_size = 0;
+	ad->mci_enc = mci_ecb_3des_enc_array;
+	ad->mci_dec = mci_ecb_3des_dec_array;
+	ad->aalg_id = SA_AALG_ID_NONE;
+
+	return sa_aes_setkey(tfm, key, keylen, ad);
+}
+
 static void sa_aes_dma_in_callback(void *data)
 {
 	struct sa_rx_data *rxd = (struct sa_rx_data *)data;
@@ -1787,6 +1849,56 @@ static struct sa_alg_tmpl sa_algs[] = {
 			}
 		}
 	},
+	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
+		.alg.crypto = {
+			.cra_name = "cbc(des3_ede)",
+			.cra_driver_name = "cbc-des3-sa2ul",
+			.cra_priority = 30000,
+			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
+					CRYPTO_ALG_KERN_DRIVER_ONLY |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_blocksize = DES_BLOCK_SIZE,
+			.cra_ctxsize = sizeof(struct sa_tfm_ctx),
+			.cra_alignmask = 0,
+			.cra_type = &crypto_ablkcipher_type,
+			.cra_module = THIS_MODULE,
+			.cra_init = sa_aes_cra_init,
+			.cra_exit = sa_aes_cra_exit,
+			.cra_u.ablkcipher = {
+				.min_keysize    = 3 * DES_KEY_SIZE,
+				.max_keysize    = 3 * DES_KEY_SIZE,
+				.ivsize		= DES_BLOCK_SIZE,
+				.setkey		= sa_3des_cbc_setkey,
+				.encrypt	= sa_aes_cbc_encrypt,
+				.decrypt	= sa_aes_cbc_decrypt,
+			}
+		}
+	},
+	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
+		.alg.crypto = {
+			.cra_name = "ecb(des3_ede)",
+			.cra_driver_name = "ecb-des3-sa2ul",
+			.cra_priority = 30000,
+			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
+					CRYPTO_ALG_KERN_DRIVER_ONLY |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_blocksize = DES_BLOCK_SIZE,
+			.cra_ctxsize = sizeof(struct sa_tfm_ctx),
+			.cra_alignmask = 0,
+			.cra_type = &crypto_ablkcipher_type,
+			.cra_module = THIS_MODULE,
+			.cra_init = sa_aes_cra_init,
+			.cra_exit = sa_aes_cra_exit,
+			.cra_u.ablkcipher = {
+				.min_keysize    = 3 * DES_KEY_SIZE,
+				.max_keysize    = 3 * DES_KEY_SIZE,
+				.ivsize		= DES_BLOCK_SIZE,
+				.setkey		= sa_3des_ecb_setkey,
+				.encrypt	= sa_aes_cbc_encrypt,
+				.decrypt	= sa_aes_cbc_decrypt,
+			}
+		}
+	},
 	/* AEAD algorithms */
 	{.type	= CRYPTO_ALG_TYPE_AEAD,
 		.alg.aead = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
