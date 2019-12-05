Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0971141EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 14:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTxNC+9+6YJG/MKsopP3ZsrOvPh1VG21dsc/43E802Y=; b=I9MyL9TPpwLVcY
	nVk85DcVJpnJdJ4Qsdm3tqL2pobtdY5iiYcvF8PXxgbTm0aBnjRczEiew0rrBgknVqSWcBp/OXqJM
	PiXkOnutqnZWQLpcuCgkioRI4ov7BKIQt6g+kSe1CmjrAXXlFZUvDswmfASf6LpXXa2IPUXvIgyW+
	5NyKRd2KpZnSOc+a8jUydmBNcg5lZ/5EfjY5+jIosyI/tLvdnpumDZNnEOCNat937vrOE+JFRTSGb
	ezLeABJJl8bDpY6b3gJyOn2uOOvnJp/84PV7+iGCuOzlaV+pyFyqsE1cExW1sYhEN52ZFzoE8S6jM
	KMMj64OpMDoml7jx4CTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrV7-00046e-S1; Thu, 05 Dec 2019 13:49:01 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrUv-00045Z-4W
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:48:53 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /6EcsHnnW79FH/SBMaPtih1ujr0c9IMUMGwgl+MHe6VKOkBzQGVxAHiqw+QKoG31D+rHchXaOA
 VbhnX1GzVt6FkjV3uVPDhVswlGnnPpeLEv50oLkXW6PuwM/j051unxTIZxVjBMLelZb+ofI17e
 Jo7CD/M9PeahqdKxFdkjoBCErLWz5Chf+514J8jcncALIzz3S5WJ1SQ4tN2J9N07ymmVZXSBXz
 BaIU7pIYKjTCJCApMbzlH2+xmo6XXmMFQ+eBOLpAuUFFMamiESDGPtFjZ920j1i9SKO5r/BWbC
 Dk8=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="56749434"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 06:48:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 06:48:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 06:48:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U48xnuqtN4+BNFWtNkVzCesR/ukAfaVLNcZsdLIjAfIjc1h9Q6ymdM8ZEUvZJkhBNwqN20Yf+JbAInJBQWhGTyJ6DuAOgvthQYjlaZj6kVaK362Szw91zCnb3d2F139J9xYzLmlAN0Ypmvdok16tqC5df84mhSkaaV5xgcW8Ccu99U44tcAn7b1luR6S7ljzdHFfr5RzEJ4h1wN8Qj7UFkSY2Cz7praBrQZdG/N4KY1z2uzseMGG0jgjPt9N8GXj6cEaco7Ko7kgpL3wpABcFi5ZdkmCmvnk/2rHmnWotN3MU43XwZV8aeenhU8jUSMGKBFOd7WqGAGag5xxNFFPeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AvUkra0vxKEvg6UzmZXdIJfMPc4bfT+mouB+B/Vsu5Q=;
 b=BfIJWgbboOgFMcH7lMJulTHJi0OndV8CD/cuvHgCDAjaH0iLMwnlbRUESDFRUkmpNj3t40uwqqpPpD4lHPemOup5/IEtKM6HT14bb6+NRGJd5PttMQh8nDRUe8ysAIxZZAA8VpImdV204wWEtKLfEPOiAR8pWdobM5tt67hqo5NEBSEmtvgITFf9CUNJFOk4e+BHQBgs/AuJr8ffI/NIVQKcI+blmFafI3UY80/UiZMa3BQ8NSbnUN8+0hBf+ACneiMEQR5lNcTPRpgfRGmBzKJ+pQBi6ToAcZbUNIz049gZq6Z9+B7+mNPq7oGS29faAY3H0fuU05VM27Xy18hGIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AvUkra0vxKEvg6UzmZXdIJfMPc4bfT+mouB+B/Vsu5Q=;
 b=YKnB8JrcvcOD/4vWX6bhFiP8Vh7IICZ1xewnqo/bV228dSrpR81Ja39LgRbCASuHCOGY0ZxPHYLexHybpVwgbxHtUUUQ0jHJGBAasXWwO7NCd0P/ci5qo/JLFOvjZ0X7uMhxo/x/b8+gn06TH2+OXBR7M0yCHtQ+lKy7AKYqDcg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3997.namprd11.prod.outlook.com (10.255.181.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 13:48:40 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 13:48:40 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH v2 16/16] crypto: atmel-{aes, sha,
 tdes} - Group common alg type init in dedicated methods
Thread-Topic: [PATCH v2 16/16] crypto: atmel-{aes, sha,
 tdes} - Group common alg type init in dedicated methods
Thread-Index: AQHVq3Kz/CkLIKxG10a/cp5orQDsLg==
Date: Thu, 5 Dec 2019 13:48:39 +0000
Message-ID: <20191205134824.9744-1-tudor.ambarus@microchip.com>
References: <20191205095326.5094-17-tudor.ambarus@microchip.com>
In-Reply-To: <20191205095326.5094-17-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0036.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::49) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0642bbe-1a54-4150-7e1a-08d77989d593
x-ms-traffictypediagnostic: MN2PR11MB3997:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3997327DD416F0936A6F1C58F05C0@MN2PR11MB3997.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(346002)(136003)(199004)(189003)(8936002)(102836004)(2616005)(11346002)(107886003)(1730700003)(4326008)(25786009)(52116002)(6506007)(186003)(26005)(81156014)(6486002)(66476007)(66446008)(76176011)(66946007)(54906003)(64756008)(5640700003)(66556008)(86362001)(316002)(99286004)(478600001)(14444005)(6916009)(36756003)(305945005)(1076003)(2906002)(71200400001)(71190400001)(14454004)(6512007)(81166006)(5660300002)(50226002)(8676002)(30864003)(142933001)(559001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3997;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CJC1HtrkBmRjOOQvQK0Rmeds6W+6Q/TrRwCgiLUJEyjN+hj60rSREM+4A3ls+IOZNCP6Jijfcj2PKbtIa3MhDLf6gW7VAFKDRoE3JL06ZUfnaexBYMIeuHJQGQwLln+qhwpMUCbGXekd/XWo1yob0gMnnL1vF7lb4qEalQyvEOCvqbYzOJP55XqGx8tlFf6/PPiKGiBpPh4oezY59CQj0EG79obAPOCBIP27RyVh9QPXAvGmyJExTGz3YKJrlkQE+19t4pwR27zP/nWOPyurEPaRTX3/piN8gKEF8+llR+zxg211LdYrEi3PbbrHtcZR4RYQR/ePTmymdXk2Snhy0Kkn0zZJoYCirmAreKoVlsk4sMIihFD89RIRgR+lP0qjOOZwkrJfB+5a5z/3IKPHZe9gzj+OhMhXmMVF3b6W4nOwSexZoz7L/bJw3W3PjCnU9y7loTJ2d57EW+gNoWfA43hX3x2btANOlpkBl36Zv4MBFX08PwM/7hQ2japzdtaD
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0642bbe-1a54-4150-7e1a-08d77989d593
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 13:48:39.9886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zOfoFSfbsUghRlekNMGMtg8M7komsS3OE5J32uYa3+51Tn6ONNLR4dopNz80FfMw70zKduArHjTEuR+jXB3Zy2ANhKuPBrFT6HJ5OugAYGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_054849_384325_A4F7B1C4 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Move common alg type init to dedicated methods.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v2: more common alg init for atmel-sha

 drivers/crypto/atmel-aes.c  |  82 +++--------
 drivers/crypto/atmel-sha.c  | 324 ++++++++++++++------------------------------
 drivers/crypto/atmel-tdes.c |  62 ++-------
 3 files changed, 129 insertions(+), 339 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 18802c977291..d96759357d03 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -1289,12 +1289,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "ecb(aes)",
 	.base.cra_driver_name	= "atmel-ecb-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= AES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1306,12 +1302,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "cbc(aes)",
 	.base.cra_driver_name	= "atmel-cbc-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= AES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1324,12 +1316,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "ofb(aes)",
 	.base.cra_driver_name	= "atmel-ofb-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= AES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1342,12 +1330,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "cfb(aes)",
 	.base.cra_driver_name	= "atmel-cfb-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= AES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1360,12 +1344,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "cfb32(aes)",
 	.base.cra_driver_name	= "atmel-cfb32-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1378,12 +1358,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "cfb16(aes)",
 	.base.cra_driver_name	= "atmel-cfb16-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1396,12 +1372,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "cfb8(aes)",
 	.base.cra_driver_name	= "atmel-cfb8-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1414,12 +1386,8 @@ static struct skcipher_alg aes_algs[] = {
 {
 	.base.cra_name		= "ctr(aes)",
 	.base.cra_driver_name	= "atmel-ctr-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= 1,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctr_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_ctr_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1434,12 +1402,8 @@ static struct skcipher_alg aes_algs[] = {
 static struct skcipher_alg aes_cfb64_alg = {
 	.base.cra_name		= "cfb64(aes)",
 	.base.cra_driver_name	= "atmel-cfb64-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB64_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_aes_init_tfm,
 	.min_keysize		= AES_MIN_KEY_SIZE,
@@ -1825,12 +1789,8 @@ static struct aead_alg aes_gcm_alg = {
 	.base = {
 		.cra_name		= "gcm(aes)",
 		.cra_driver_name	= "atmel-gcm-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= 1,
 		.cra_ctxsize		= sizeof(struct atmel_aes_gcm_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 };
 
@@ -1947,12 +1907,8 @@ static int atmel_aes_xts_init_tfm(struct crypto_skcipher *tfm)
 static struct skcipher_alg aes_xts_alg = {
 	.base.cra_name		= "xts(aes)",
 	.base.cra_driver_name	= "atmel-xts-aes",
-	.base.cra_priority	= ATMEL_AES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= AES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_aes_xts_ctx),
-	.base.cra_alignmask	= 0xf,
-	.base.cra_module	= THIS_MODULE,
 
 	.min_keysize		= 2 * AES_MIN_KEY_SIZE,
 	.max_keysize		= 2 * AES_MAX_KEY_SIZE,
@@ -2252,12 +2208,8 @@ static struct aead_alg aes_authenc_algs[] = {
 	.base = {
 		.cra_name		= "authenc(hmac(sha1),cbc(aes))",
 		.cra_driver_name	= "atmel-authenc-hmac-sha1-cbc-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= AES_BLOCK_SIZE,
 		.cra_ctxsize		= sizeof(struct atmel_aes_authenc_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 },
 {
@@ -2272,12 +2224,8 @@ static struct aead_alg aes_authenc_algs[] = {
 	.base = {
 		.cra_name		= "authenc(hmac(sha224),cbc(aes))",
 		.cra_driver_name	= "atmel-authenc-hmac-sha224-cbc-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= AES_BLOCK_SIZE,
 		.cra_ctxsize		= sizeof(struct atmel_aes_authenc_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 },
 {
@@ -2292,12 +2240,8 @@ static struct aead_alg aes_authenc_algs[] = {
 	.base = {
 		.cra_name		= "authenc(hmac(sha256),cbc(aes))",
 		.cra_driver_name	= "atmel-authenc-hmac-sha256-cbc-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= AES_BLOCK_SIZE,
 		.cra_ctxsize		= sizeof(struct atmel_aes_authenc_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 },
 {
@@ -2312,12 +2256,8 @@ static struct aead_alg aes_authenc_algs[] = {
 	.base = {
 		.cra_name		= "authenc(hmac(sha384),cbc(aes))",
 		.cra_driver_name	= "atmel-authenc-hmac-sha384-cbc-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= AES_BLOCK_SIZE,
 		.cra_ctxsize		= sizeof(struct atmel_aes_authenc_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 },
 {
@@ -2332,12 +2272,8 @@ static struct aead_alg aes_authenc_algs[] = {
 	.base = {
 		.cra_name		= "authenc(hmac(sha512),cbc(aes))",
 		.cra_driver_name	= "atmel-authenc-hmac-sha512-cbc-aes",
-		.cra_priority		= ATMEL_AES_PRIORITY,
-		.cra_flags		= CRYPTO_ALG_ASYNC,
 		.cra_blocksize		= AES_BLOCK_SIZE,
 		.cra_ctxsize		= sizeof(struct atmel_aes_authenc_ctx),
-		.cra_alignmask		= 0xf,
-		.cra_module		= THIS_MODULE,
 	},
 },
 };
@@ -2469,29 +2405,45 @@ static void atmel_aes_unregister_algs(struct atmel_aes_dev *dd)
 		crypto_unregister_skcipher(&aes_algs[i]);
 }
 
+static void atmel_aes_crypto_alg_init(struct crypto_alg *alg)
+{
+	alg->cra_flags = CRYPTO_ALG_ASYNC;
+	alg->cra_alignmask = 0xf;
+	alg->cra_priority = ATMEL_AES_PRIORITY;
+	alg->cra_module = THIS_MODULE;
+}
+
 static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
 {
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
+		atmel_aes_crypto_alg_init(&aes_algs[i].base);
+
 		err = crypto_register_skcipher(&aes_algs[i]);
 		if (err)
 			goto err_aes_algs;
 	}
 
 	if (dd->caps.has_cfb64) {
+		atmel_aes_crypto_alg_init(&aes_cfb64_alg.base);
+
 		err = crypto_register_skcipher(&aes_cfb64_alg);
 		if (err)
 			goto err_aes_cfb64_alg;
 	}
 
 	if (dd->caps.has_gcm) {
+		atmel_aes_crypto_alg_init(&aes_gcm_alg.base);
+
 		err = crypto_register_aead(&aes_gcm_alg);
 		if (err)
 			goto err_aes_gcm_alg;
 	}
 
 	if (dd->caps.has_xts) {
+		atmel_aes_crypto_alg_init(&aes_xts_alg.base);
+
 		err = crypto_register_skcipher(&aes_xts_alg);
 		if (err)
 			goto err_aes_xts_alg;
@@ -2500,6 +2452,8 @@ static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
 #if IS_ENABLED(CONFIG_CRYPTO_DEV_ATMEL_AUTHENC)
 	if (dd->caps.has_authenc) {
 		for (i = 0; i < ARRAY_SIZE(aes_authenc_algs); i++) {
+			atmel_aes_crypto_alg_init(&aes_authenc_algs[i].base);
+
 			err = crypto_register_aead(&aes_authenc_algs[i]);
 			if (err)
 				goto err_aes_authenc_alg;
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index a620a6a1cee3..0412c4f0d743 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -1252,130 +1252,66 @@ static int atmel_sha_cra_init(struct crypto_tfm *tfm)
 	return 0;
 }
 
+static void atmel_sha_alg_init(struct ahash_alg *alg)
+{
+	alg->halg.base.cra_priority = ATMEL_SHA_PRIORITY;
+	alg->halg.base.cra_flags = CRYPTO_ALG_ASYNC;
+	alg->halg.base.cra_ctxsize = sizeof(struct atmel_sha_ctx);
+	alg->halg.base.cra_module = THIS_MODULE;
+	alg->halg.base.cra_init = atmel_sha_cra_init;
+
+	alg->halg.statesize = sizeof(struct atmel_sha_reqctx);
+
+	alg->init = atmel_sha_init;
+	alg->update = atmel_sha_update;
+	alg->final = atmel_sha_final;
+	alg->finup = atmel_sha_finup;
+	alg->digest = atmel_sha_digest;
+	alg->export = atmel_sha_export;
+	alg->import = atmel_sha_import;
+}
+
 static struct ahash_alg sha_1_256_algs[] = {
 {
-	.init		= atmel_sha_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.finup		= atmel_sha_finup,
-	.digest		= atmel_sha_digest,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA1_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "sha1",
-			.cra_driver_name	= "atmel-sha1",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA1_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_cra_init,
-		}
-	}
+	.halg.base.cra_name		= "sha1",
+	.halg.base.cra_driver_name	= "atmel-sha1",
+	.halg.base.cra_blocksize	= SHA1_BLOCK_SIZE,
+
+	.halg.digestsize = SHA1_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.finup		= atmel_sha_finup,
-	.digest		= atmel_sha_digest,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA256_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "sha256",
-			.cra_driver_name	= "atmel-sha256",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA256_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_cra_init,
-		}
-	}
+	.halg.base.cra_name		= "sha256",
+	.halg.base.cra_driver_name	= "atmel-sha256",
+	.halg.base.cra_blocksize	= SHA256_BLOCK_SIZE,
+
+	.halg.digestsize = SHA256_DIGEST_SIZE,
 },
 };
 
 static struct ahash_alg sha_224_alg = {
-	.init		= atmel_sha_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.finup		= atmel_sha_finup,
-	.digest		= atmel_sha_digest,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA224_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "sha224",
-			.cra_driver_name	= "atmel-sha224",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA224_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_cra_init,
-		}
-	}
+	.halg.base.cra_name		= "sha224",
+	.halg.base.cra_driver_name	= "atmel-sha224",
+	.halg.base.cra_blocksize	= SHA224_BLOCK_SIZE,
+
+	.halg.digestsize = SHA224_DIGEST_SIZE,
 };
 
 static struct ahash_alg sha_384_512_algs[] = {
 {
-	.init		= atmel_sha_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.finup		= atmel_sha_finup,
-	.digest		= atmel_sha_digest,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA384_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "sha384",
-			.cra_driver_name	= "atmel-sha384",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA384_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
-			.cra_alignmask		= 0x3,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_cra_init,
-		}
-	}
+	.halg.base.cra_name		= "sha384",
+	.halg.base.cra_driver_name	= "atmel-sha384",
+	.halg.base.cra_blocksize	= SHA384_BLOCK_SIZE,
+	.halg.base.cra_alignmask	= 0x3,
+
+	.halg.digestsize = SHA384_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.finup		= atmel_sha_finup,
-	.digest		= atmel_sha_digest,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA512_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "sha512",
-			.cra_driver_name	= "atmel-sha512",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA512_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
-			.cra_alignmask		= 0x3,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_cra_init,
-		}
-	}
+	.halg.base.cra_name		= "sha512",
+	.halg.base.cra_driver_name	= "atmel-sha512",
+	.halg.base.cra_blocksize	= SHA512_BLOCK_SIZE,
+	.halg.base.cra_alignmask	= 0x3,
+
+	.halg.digestsize = SHA512_DIGEST_SIZE,
 },
 };
 
@@ -2084,131 +2020,61 @@ static void atmel_sha_hmac_cra_exit(struct crypto_tfm *tfm)
 	atmel_sha_hmac_key_release(&hmac->hkey);
 }
 
+static void atmel_sha_hmac_alg_init(struct ahash_alg *alg)
+{
+	alg->halg.base.cra_priority = ATMEL_SHA_PRIORITY;
+	alg->halg.base.cra_flags = CRYPTO_ALG_ASYNC;
+	alg->halg.base.cra_ctxsize = sizeof(struct atmel_sha_hmac_ctx);
+	alg->halg.base.cra_module = THIS_MODULE;
+	alg->halg.base.cra_init	= atmel_sha_hmac_cra_init;
+	alg->halg.base.cra_exit	= atmel_sha_hmac_cra_exit;
+
+	alg->halg.statesize = sizeof(struct atmel_sha_reqctx);
+
+	alg->init = atmel_sha_hmac_init;
+	alg->update = atmel_sha_update;
+	alg->final = atmel_sha_final;
+	alg->digest = atmel_sha_hmac_digest;
+	alg->setkey = atmel_sha_hmac_setkey;
+	alg->export = atmel_sha_export;
+	alg->import = atmel_sha_import;
+}
+
 static struct ahash_alg sha_hmac_algs[] = {
 {
-	.init		= atmel_sha_hmac_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.digest		= atmel_sha_hmac_digest,
-	.setkey		= atmel_sha_hmac_setkey,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA1_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "hmac(sha1)",
-			.cra_driver_name	= "atmel-hmac-sha1",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA1_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_hmac_cra_init,
-			.cra_exit		= atmel_sha_hmac_cra_exit,
-		}
-	}
+	.halg.base.cra_name		= "hmac(sha1)",
+	.halg.base.cra_driver_name	= "atmel-hmac-sha1",
+	.halg.base.cra_blocksize	= SHA1_BLOCK_SIZE,
+
+	.halg.digestsize = SHA1_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_hmac_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.digest		= atmel_sha_hmac_digest,
-	.setkey		= atmel_sha_hmac_setkey,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA224_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "hmac(sha224)",
-			.cra_driver_name	= "atmel-hmac-sha224",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA224_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_hmac_cra_init,
-			.cra_exit		= atmel_sha_hmac_cra_exit,
-		}
-	}
+	.halg.base.cra_name		= "hmac(sha224)",
+	.halg.base.cra_driver_name	= "atmel-hmac-sha224",
+	.halg.base.cra_blocksize	= SHA224_BLOCK_SIZE,
+
+	.halg.digestsize = SHA224_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_hmac_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.digest		= atmel_sha_hmac_digest,
-	.setkey		= atmel_sha_hmac_setkey,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA256_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "hmac(sha256)",
-			.cra_driver_name	= "atmel-hmac-sha256",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA256_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_hmac_cra_init,
-			.cra_exit		= atmel_sha_hmac_cra_exit,
-		}
-	}
+	.halg.base.cra_name		= "hmac(sha256)",
+	.halg.base.cra_driver_name	= "atmel-hmac-sha256",
+	.halg.base.cra_blocksize	= SHA256_BLOCK_SIZE,
+
+	.halg.digestsize = SHA256_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_hmac_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.digest		= atmel_sha_hmac_digest,
-	.setkey		= atmel_sha_hmac_setkey,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA384_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "hmac(sha384)",
-			.cra_driver_name	= "atmel-hmac-sha384",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA384_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_hmac_cra_init,
-			.cra_exit		= atmel_sha_hmac_cra_exit,
-		}
-	}
+	.halg.base.cra_name		= "hmac(sha384)",
+	.halg.base.cra_driver_name	= "atmel-hmac-sha384",
+	.halg.base.cra_blocksize	= SHA384_BLOCK_SIZE,
+
+	.halg.digestsize = SHA384_DIGEST_SIZE,
 },
 {
-	.init		= atmel_sha_hmac_init,
-	.update		= atmel_sha_update,
-	.final		= atmel_sha_final,
-	.digest		= atmel_sha_hmac_digest,
-	.setkey		= atmel_sha_hmac_setkey,
-	.export		= atmel_sha_export,
-	.import		= atmel_sha_import,
-	.halg = {
-		.digestsize	= SHA512_DIGEST_SIZE,
-		.statesize	= sizeof(struct atmel_sha_reqctx),
-		.base	= {
-			.cra_name		= "hmac(sha512)",
-			.cra_driver_name	= "atmel-hmac-sha512",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
-			.cra_blocksize		= SHA512_BLOCK_SIZE,
-			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
-			.cra_init		= atmel_sha_hmac_cra_init,
-			.cra_exit		= atmel_sha_hmac_cra_exit,
-		}
-	}
+	.halg.base.cra_name		= "hmac(sha512)",
+	.halg.base.cra_driver_name	= "atmel-hmac-sha512",
+	.halg.base.cra_blocksize	= SHA512_BLOCK_SIZE,
+
+	.halg.digestsize = SHA512_DIGEST_SIZE,
 },
 };
 
@@ -2561,12 +2427,16 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(sha_1_256_algs); i++) {
+		atmel_sha_alg_init(&sha_1_256_algs[i]);
+
 		err = crypto_register_ahash(&sha_1_256_algs[i]);
 		if (err)
 			goto err_sha_1_256_algs;
 	}
 
 	if (dd->caps.has_sha224) {
+		atmel_sha_alg_init(&sha_224_alg);
+
 		err = crypto_register_ahash(&sha_224_alg);
 		if (err)
 			goto err_sha_224_algs;
@@ -2574,6 +2444,8 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 
 	if (dd->caps.has_sha_384_512) {
 		for (i = 0; i < ARRAY_SIZE(sha_384_512_algs); i++) {
+			atmel_sha_alg_init(&sha_384_512_algs[i]);
+
 			err = crypto_register_ahash(&sha_384_512_algs[i]);
 			if (err)
 				goto err_sha_384_512_algs;
@@ -2582,6 +2454,8 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 
 	if (dd->caps.has_hmac) {
 		for (i = 0; i < ARRAY_SIZE(sha_hmac_algs); i++) {
+			atmel_sha_hmac_alg_init(&sha_hmac_algs[i]);
+
 			err = crypto_register_ahash(&sha_hmac_algs[i]);
 			if (err)
 				goto err_sha_hmac_algs;
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index d10be95a6470..b4b758604f44 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -924,18 +924,23 @@ static int atmel_tdes_init_tfm(struct crypto_skcipher *tfm)
 	return 0;
 }
 
+static void atmel_tdes_skcipher_alg_init(struct skcipher_alg *alg)
+{
+	alg->base.cra_priority = ATMEL_TDES_PRIORITY;
+	alg->base.cra_flags = CRYPTO_ALG_ASYNC;
+	alg->base.cra_ctxsize = sizeof(struct atmel_tdes_ctx),
+	alg->base.cra_module = THIS_MODULE;
+
+	alg->init = atmel_tdes_init_tfm;
+}
+
 static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des)",
 	.base.cra_driver_name	= "atmel-ecb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.setkey			= atmel_des_setkey,
@@ -945,14 +950,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des)",
 	.base.cra_driver_name	= "atmel-cbc-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -963,14 +963,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb(des)",
 	.base.cra_driver_name	= "atmel-cfb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -981,14 +976,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb8(des)",
 	.base.cra_driver_name	= "atmel-cfb8-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -999,14 +989,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb16(des)",
 	.base.cra_driver_name	= "atmel-cfb16-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x1,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -1017,14 +1002,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb32(des)",
 	.base.cra_driver_name	= "atmel-cfb32-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x3,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -1035,14 +1015,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des)",
 	.base.cra_driver_name	= "atmel-ofb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
 	.max_keysize		= DES_KEY_SIZE,
 	.ivsize			= DES_BLOCK_SIZE,
@@ -1053,14 +1028,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ecb-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
 	.max_keysize		= DES3_EDE_KEY_SIZE,
 	.setkey			= atmel_tdes_setkey,
@@ -1070,14 +1040,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des3_ede)",
 	.base.cra_driver_name	= "atmel-cbc-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
 	.max_keysize		= DES3_EDE_KEY_SIZE,
 	.setkey			= atmel_tdes_setkey,
@@ -1088,14 +1053,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ofb-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
-	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
-	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
 	.max_keysize		= DES3_EDE_KEY_SIZE,
 	.setkey			= atmel_tdes_setkey,
@@ -1170,6 +1130,8 @@ static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(tdes_algs); i++) {
+		atmel_tdes_skcipher_alg_init(&tdes_algs[i]);
+
 		err = crypto_register_skcipher(&tdes_algs[i]);
 		if (err)
 			goto err_tdes_algs;
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
