Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B0C113EDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHhTtubyKKAxc3OonEtcwxtQBNozRvnfV+W/3XXqXk4=; b=cqgKLAf1jWrCzN
	/Uz39WriViMpO6d4nGCBgf8p6weR1jvikWx4cCa+6fb1t1GIbV6+9pY1VVdz1BdzkhmwDil4Ftfka
	vJZ4OhesKx2eHoK/ryvSorXSgxJygbBLEqPeT3djAggSsKOm0hOqHZO9usFp1DL2ETJ3x+SvWi5V7
	e1mdAuz2u+iZwWxQGRp+DfccDXY1leRaqtnKg68oxRiD5maNfMSjqeuk4aR3p2Aq3ucbq7Q51227r
	3x1li4NeGgJ4uUm8dCbt/oLKm1CM3OawqImyijOfLQvScHdtd0d9G/E2UQfw8dM/v1YU9po9rhaGd
	sh1C9I4y/9INVjL6mAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnsr-0007K0-OW; Thu, 05 Dec 2019 09:57:17 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpl-00035O-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:08 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: DgjmBG2l3vtdj+xs72GVL7OCfKVl95bvU5/p7Mn1mpanTCej+oMoH0mgN6x9ctoxdSfq3f/0OK
 geUJ80MRY21i86xcnaF2iFRiM9DOSUxhnwWe1eH5JMdjIp1mm39+PrUGgrkm9iM8ihBOPddloY
 IHuC4xIAC2ySeKNR1eUppyRQhm/23+4+fOSHGC5oyWbYaZTKOnkR3Kl6bwZpH9F6PVikJfDvf8
 bJY6pXCZiloNEjTK/S0XZGfS25sRCYym+7xd7tbHNZ6lYtTxblktREhH8E9zMxgBN7cZc4q8vi
 SsE=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="59347330"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:54:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:54:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 02:54:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiZqPh0Mtnfn5K3IKItNl8wYhLPuJg/wNcuMQIPcISmEYoFRW2CgMs/8F47vDBhaRyXkfGBSxUyob2GovbYpJQ0Aj7kXnM3AcTaxMMqL2rbhL0rFWnFVFur2zhcdpBDiefn72ZE9iIrvfNae1BURO76XYOaKzSGKKdkLAv4VtlF9qHYBcLxIpNGnRZuHY5xQcrrKS7XLtEQLPTkAxs6G+oOk2krbCYmizy3XZpLjUjfFqAEHNnrV/g2LUyVr8Kr1ycRfD1XmDYXcz76TBLhzrqU0+GfHbq4ekdR8FJaRgRWwPrbl1s+oQMhaB6HTYJfrcDVAA+jf42OrlIhYzk/IVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeLwb2XawRQuHknJR4sP/1YbNCjQLINB9ZRF9097Roo=;
 b=RhXCAwTIKpNFIku4+TGbE93ucoYBNg1HA8wEE0MxvbXrfoVqdKZdQ1jx5+cdbT5ExyTZVtySeYtc25n5ysDFyu9jVMOb0Sr/7pN6aKpHVg87XNKtRii33F7JVDHmcQxFKgB+GkBk8pqlRC+hCNrzhsFfMxcf07LnU2TAVSQQOMT4Qe5SyG9yPuZx55vSgIhvYwyEzhdMU+crfPdwt4GxMLFmjaD26Fm2yWF6IFRo3lCj7XGLzsL++g3Q1WWH8uFaN1grmPhW1KMlXlkBlWaJ32RLJfQj8NqF/iWQkfPBCowZVGk0LPoNohEbdyRyK8XzZFdn6OebUMey3Jaz5YQVCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeLwb2XawRQuHknJR4sP/1YbNCjQLINB9ZRF9097Roo=;
 b=Z9NRP71896aU3GWqIH1R6zoQ6tFoivT+ptv3oV2uMMb/GBJ04VAD0bMCf7kq6GFerMHg81maS7TWEEcXb22zcHiZ46aa38hVN8xx7PThMhwHOse7UuOcdHPpr8KUYGdEjiTmW1TkIZph0cXNo6f6K5CGcbhbNRzBNgKITMsHd+8=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:54:03 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:54:03 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 12/16] crypto: atmel-aes - Fix saving of IV for CTR mode
Thread-Topic: [PATCH 12/16] crypto: atmel-aes - Fix saving of IV for CTR mode
Thread-Index: AQHVq1Hswvi5MUOxfE+TUslwNbNKZA==
Date: Thu, 5 Dec 2019 09:54:03 +0000
Message-ID: <20191205095326.5094-13-tudor.ambarus@microchip.com>
References: <20191205095326.5094-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191205095326.5094-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb6c0613-5faa-4099-fee8-08d779690f4d
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3677B53683A0B83C465F4CFFF05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VAnEREDJbbtF9P1+QNNjjMsHKtPy5dK53zQlxbhwroFmeInPcEpWhNofzKyTNCZ60vRbSOxjLpIAL9Iq0yXW1IQPXCz2d+csTMd5fKKUePKLuKqZH7q/6WxfAYozDR3SpqIu7euxcGi39vQdZvB9ulJIa40p9f2dHb6N3w19ZdfEKuPk9v4faVArYuzvYGIkdeRhE1wNJUfN7AYICsyQ8IsLimpS1LOPdkUuV9AWaV87VSMBI6+FQZim/F5oQ+e8VXSWyoyxz+JgzT//mcmewZGMkOz87U2hn+4Aaiua9wHknGMjxZmq3kDKdDDb8gs6IWh/vhOON/t903vWc4nrWWNkAiHdNySad/VQS/3uYm+J1PW73Jks965xsD5BkmKGRMbLcagByYOsVoENwbT/KYbFZUXez+cHftbKQlHfylidYcMqJO0JeV+99hXYg32L
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fb6c0613-5faa-4099-fee8-08d779690f4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:54:03.3040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvGCXLsTO1T6T6f8+pZ9053VaC2xV6x6hZy40hE4UHl7TxvY0DY1tFbKKwu4wn+7k5hYR/J9xTCNf7MmvIVnx039FFHxABKNBNZY2P8vbVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015406_027229_2745BB4A 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The req->iv of the skcipher_request is expected to contain the
last used IV. Update the req->iv for CTR mode.

Fixes: bd3c7b5c2aba ("crypto: atmel - add Atmel AES driver")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c | 43 +++++++++++++++++++++++++++++++------------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index cbfe6ccd2a0d..60f54580d646 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -121,6 +121,7 @@ struct atmel_aes_ctr_ctx {
 	size_t			offset;
 	struct scatterlist	src[2];
 	struct scatterlist	dst[2];
+	u16			blocks;
 };
 
 struct atmel_aes_gcm_ctx {
@@ -513,6 +514,26 @@ static void atmel_aes_set_iv_as_last_ciphertext_block(struct atmel_aes_dev *dd)
 	}
 }
 
+static inline struct atmel_aes_ctr_ctx *
+atmel_aes_ctr_ctx_cast(struct atmel_aes_base_ctx *ctx)
+{
+	return container_of(ctx, struct atmel_aes_ctr_ctx, base);
+}
+
+static void atmel_aes_ctr_update_req_iv(struct atmel_aes_dev *dd)
+{
+	struct atmel_aes_ctr_ctx *ctx = atmel_aes_ctr_ctx_cast(dd->ctx);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
+	int i;
+
+	for (i = 0; i < ctx->blocks; i++)
+		crypto_inc((u8 *)ctx->iv, AES_BLOCK_SIZE);
+
+	memcpy(req->iv, ctx->iv, ivsize);
+}
+
 static inline int atmel_aes_complete(struct atmel_aes_dev *dd, int err)
 {
 	struct skcipher_request *req = skcipher_request_cast(dd->areq);
@@ -527,8 +548,12 @@ static inline int atmel_aes_complete(struct atmel_aes_dev *dd, int err)
 	dd->flags &= ~AES_FLAGS_BUSY;
 
 	if (!dd->ctx->is_aead &&
-	    (rctx->mode & AES_FLAGS_OPMODE_MASK) != AES_FLAGS_ECB)
-		atmel_aes_set_iv_as_last_ciphertext_block(dd);
+	    (rctx->mode & AES_FLAGS_OPMODE_MASK) != AES_FLAGS_ECB) {
+		if ((rctx->mode & AES_FLAGS_OPMODE_MASK) != AES_FLAGS_CTR)
+			atmel_aes_set_iv_as_last_ciphertext_block(dd);
+		else
+			atmel_aes_ctr_update_req_iv(dd);
+	}
 
 	if (dd->is_async)
 		dd->areq->complete(dd->areq, err);
@@ -1007,12 +1032,6 @@ static int atmel_aes_start(struct atmel_aes_dev *dd)
 				   atmel_aes_transfer_complete);
 }
 
-static inline struct atmel_aes_ctr_ctx *
-atmel_aes_ctr_ctx_cast(struct atmel_aes_base_ctx *ctx)
-{
-	return container_of(ctx, struct atmel_aes_ctr_ctx, base);
-}
-
 static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_ctr_ctx *ctx = atmel_aes_ctr_ctx_cast(dd->ctx);
@@ -1020,7 +1039,7 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 	struct scatterlist *src, *dst;
 	size_t datalen;
 	u32 ctr;
-	u16 blocks, start, end;
+	u16 start, end;
 	bool use_dma, fragmented = false;
 
 	/* Check for transfer completion. */
@@ -1030,14 +1049,14 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 
 	/* Compute data length. */
 	datalen = req->cryptlen - ctx->offset;
-	blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
+	ctx->blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
 	ctr = be32_to_cpu(ctx->iv[3]);
 
 	/* Check 16bit counter overflow. */
 	start = ctr & 0xffff;
-	end = start + blocks - 1;
+	end = start + ctx->blocks - 1;
 
-	if (blocks >> 16 || end < start) {
+	if (ctx->blocks >> 16 || end < start) {
 		ctr |= 0xffff;
 		datalen = AES_BLOCK_SIZE * (0x10000 - start);
 		fragmented = true;
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
