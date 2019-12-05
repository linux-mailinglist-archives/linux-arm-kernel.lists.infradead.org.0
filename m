Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE79113EB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXAYkZ20pMUcXR+elfNkYQpgnjjEaim7MOc8tfjk5Ns=; b=NB55Nmv/kGiD5a
	G4/+Z9IqmeuJqcM0qKo23I5iI38GP024H9rxvLXo3kXW4f8np1OI1WCgFZOBZTgk9MpvhkhtvMax4
	MAr4SXdQrE00punsb70oLWMdV9omnYxgP7h3wBZZdI/Bufp0Vtw0uQuyxYDvcJN9wmRU5byQuzjWN
	QzT/BSNHCiZNeWQycAVDI/L2oXjIPP3NUG7rHSu2EX0jgEr0EU4kdD4FcKiF8UXo+n1mJnmdt2pl1
	m1vP53QCivkbZiRgBZ8dbvXSC/9zHPDlDE+E2FDoUwpq0wKWc1LeyFRlVvHxDimgZeKohMgT0W6bw
	v+UJXy2z8m5aa5VM2K5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnqG-0003Wf-M0; Thu, 05 Dec 2019 09:54:36 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpW-0002qf-Gz
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:54 +0000
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
IronPort-SDR: TmwG57nGtPEW1qnWkA7UfgOV1HaSzCU9+TdmtqAxXB2Jo8t7r4Y0AvIvQ4Em/N7G/YZ71RIPYy
 0J3Ixn1Nh9zkcJQh7D3u2JNKd6/255a/jpxP0HiDXoK6EA9iiwQLb8/QMl6AmV5XtIa5uxwdsS
 JD5H+eko9GRu80CMvaJ/3b1ZAQdF5q+wU25G2Rsv5Qg+HwmJ7uazWPoonEG8y33CDfN9oeKfnI
 R0KDsXhWglBx8SRaHEphyJlHD0z9EDOt50Sq5tQftbkWh0a8sR6NOxNgvJUeMjO+IVPfVnyg0a
 Lys=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="59347306"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:48 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 02:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sxv0oKueKwz/qZXOSy9Vv1XImPxIJmnnYv5eNm7L8QsWszbKsEkheoWceY9295VUMB53iNm39C2hr/QvCpXO4VMMlQ+BMOMO+ZAQr1QmvW7HeAecq85/rPzDEHmD3q0WKaQX7J7CCjObV9rlrZf9W7u4SRI1gpugQO7Y30C7uAi/h9YfhvCilmcqfiG01YkMmqPszsQ9LZQmbSPu+uIZDbpt+gsh0I52JAQCL5nxXLYJ3smcD1hlnugjiGapSdTCEVeGWfpQkuprxKjLpuSOg7lOQ9JNL/lID9Kwetjm7MD4yxKREmSYpUIGUK8OZeDlAeIHLcOCUWKZCvVHd9Qs+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXA+XnseAC1Qe6w9lVKYyCqn8salS7FIgQksEUWoFsE=;
 b=lMI/GOd/oV9PmInYfynC40j9Hc4ay8wNx0AgLsO019NDlDBci6mIukPJnX2MBNGh05odAGoX4GuJD+WWrhFWBwgO0KmnRtWTZhXp7lovASfGtpNYYgx2yKWli+TKzZ2+CjKQyMLtVllIIhUqTUINF70zxWkfwXBawQVk3W8pNrCnbm49wdog4WkwEqxC7R7CUumzfOLruD4cWrzMZnkOv6QNqhGXmTijnzEMiovAP3BjNFuLv3+LmRwdynRcKEZS96lrdIWljYyzaYTUZ5/kZb/z1fFTPQ4p2VJWkzFiiTqGI4HKaGg1CZtJ8/c0xzYDwqgrCWx1iEe/AmGG6vZQ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXA+XnseAC1Qe6w9lVKYyCqn8salS7FIgQksEUWoFsE=;
 b=V1fC3O/IxJ75raJJCrVlSaC6tbP+6yFNKCRHD16wsmcVjvG2C29A2dt57I3fi5J4oGkuS9nwovFclANYeUrcGNf2T7yhSgwqJj/HRRfxlTQXaSsvFZi/R8KSDeWJP9rBRpCOKTtfwUBf4edUZBELecxYLROP72JznUlxlqsjFNU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:46 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:46 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 02/16] crypto: atmel-{sha,tdes} - Change algorithm priorities
Thread-Topic: [PATCH 02/16] crypto: atmel-{sha,tdes} - Change algorithm
 priorities
Thread-Index: AQHVq1HiMEgFlFkcD0GAuCy2Po73TQ==
Date: Thu, 5 Dec 2019 09:53:46 +0000
Message-ID: <20191205095326.5094-3-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 29f6a808-bdad-49a5-64c9-08d77969055b
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36779B21B0B55F93CA9C0855F05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(107886003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B2/oUNv0fcSJxBH2+cR3B5tHBk38W54iV0N7Wijy9UwK8JP8lpwThH54LkuNS6HQ3l/BlJvhRNKtY99KNmefLQpHX75tAkNqClA4bMNL0BdYYx24Er2BAEclzS0EqqZx3MB+FdEpWKF9mpe+SM0JsrkCMLliGHWSv0kKblaKZ3ucRRSZmzmn2tn1Xdap96iWeaaT8va91qOD1T/W0QdIlwYjxngdAkC+Wr+Ly5JccP369+r++q8bgRedO1XEdAoZrur2AIiXgCF0u8ltK30Ak1LdskUwZgjYXnsoamAkIQjyW73k+CiiIMcjZHE3W5cQX6bBNlwRa+nH9gN8EVbSklMgQEBAL22XIkzS5OYtl+B++/AqWzK858NYFjm6MmPl3d6SVqwOBzWbUBN1mKDXFjV82VxqOIHSaf0KCJI4nLy+H9oEuTRUQt8fo3bk3BlJAEviflKEPSOLakDJaecoAkHbT2v0MuDTqBvM2b+ZPP3THr0uzA1frB5LqUg89WW4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f6a808-bdad-49a5-64c9-08d77969055b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:46.7045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlej7/C20royESG81HyJ0r5ySoU2hvHKejITPxZGl0ViqejoU28+ICfBf8aylsPYd5abT9MCvkLo0uazaUfbywXkgSdqprAGl0BbYSvQVrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015350_640895_18BCFA11 
X-CRM114-Status: UNSURE (   7.03  )
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

Increase the algorithm priorities so the hardware acceleration is now
preferred to the software computation: the generic drivers use 100
as priority.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-sha.c  | 22 ++++++++++++----------
 drivers/crypto/atmel-tdes.c | 22 ++++++++++++----------
 2 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index 8ea0e4bcde0d..3bbec58bf2cd 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -40,6 +40,8 @@
 #include "atmel-sha-regs.h"
 #include "atmel-authenc.h"
 
+#define ATMEL_SHA_PRIORITY	300
+
 /* SHA flags */
 #define SHA_FLAGS_BUSY			BIT(0)
 #define	SHA_FLAGS_FINAL			BIT(1)
@@ -1263,7 +1265,7 @@ static struct ahash_alg sha_1_256_algs[] = {
 		.base	= {
 			.cra_name		= "sha1",
 			.cra_driver_name	= "atmel-sha1",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA1_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
@@ -1287,7 +1289,7 @@ static struct ahash_alg sha_1_256_algs[] = {
 		.base	= {
 			.cra_name		= "sha256",
 			.cra_driver_name	= "atmel-sha256",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA256_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
@@ -1313,7 +1315,7 @@ static struct ahash_alg sha_224_alg = {
 		.base	= {
 			.cra_name		= "sha224",
 			.cra_driver_name	= "atmel-sha224",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA224_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
@@ -1339,7 +1341,7 @@ static struct ahash_alg sha_384_512_algs[] = {
 		.base	= {
 			.cra_name		= "sha384",
 			.cra_driver_name	= "atmel-sha384",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA384_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
@@ -1363,7 +1365,7 @@ static struct ahash_alg sha_384_512_algs[] = {
 		.base	= {
 			.cra_name		= "sha512",
 			.cra_driver_name	= "atmel-sha512",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA512_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
@@ -2099,7 +2101,7 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha1)",
 			.cra_driver_name	= "atmel-hmac-sha1",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA1_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
@@ -2124,7 +2126,7 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha224)",
 			.cra_driver_name	= "atmel-hmac-sha224",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA224_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
@@ -2149,7 +2151,7 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha256)",
 			.cra_driver_name	= "atmel-hmac-sha256",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA256_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
@@ -2174,7 +2176,7 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha384)",
 			.cra_driver_name	= "atmel-hmac-sha384",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA384_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
@@ -2199,7 +2201,7 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha512)",
 			.cra_driver_name	= "atmel-hmac-sha512",
-			.cra_priority		= 100,
+			.cra_priority		= ATMEL_SHA_PRIORITY,
 			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA512_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 9b69e7a26639..a6b36abba3d1 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -40,6 +40,8 @@
 #include <linux/platform_data/crypto-atmel.h>
 #include "atmel-tdes-regs.h"
 
+#define ATMEL_TDES_PRIORITY	300
+
 /* TDES flags  */
 #define TDES_FLAGS_MODE_MASK		0x00ff
 #define TDES_FLAGS_ENCRYPT	BIT(0)
@@ -929,7 +931,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des)",
 	.base.cra_driver_name	= "atmel-ecb-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -946,7 +948,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des)",
 	.base.cra_driver_name	= "atmel-cbc-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -964,7 +966,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb(des)",
 	.base.cra_driver_name	= "atmel-cfb-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -982,7 +984,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb8(des)",
 	.base.cra_driver_name	= "atmel-cfb8-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1000,7 +1002,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb16(des)",
 	.base.cra_driver_name	= "atmel-cfb16-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1018,7 +1020,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb32(des)",
 	.base.cra_driver_name	= "atmel-cfb32-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1036,7 +1038,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des)",
 	.base.cra_driver_name	= "atmel-ofb-des",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1054,7 +1056,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ecb-tdes",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1071,7 +1073,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des3_ede)",
 	.base.cra_driver_name	= "atmel-cbc-tdes",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
@@ -1089,7 +1091,7 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ofb-tdes",
-	.base.cra_priority	= 100,
+	.base.cra_priority	= ATMEL_TDES_PRIORITY,
 	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
