Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A07113EE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVee1N//ukNRA5bfvDAfxX161bx9Sb5e9g6YBqDBbSk=; b=lj7qN0jqfngFUv
	YzR+hmZPMpdCze2gn2AizJ92RR+LlI1R5KQ6+R6vV8BTzf+LLNJ+JraIgO6cI4jyEgkj0ouIOFawW
	A1BTe+3KFFk9dfs9Tn1oFx+XTTZ5EsA8c4KTAO9GkTM4onppWQEGgsrIPwzcnE7wIEI/OzPSpKVPO
	423oGN8e3+zzWH97cgCI+tk7f4ZOaIu8VI10gceeSbeKgkdIxUfilQz2zGcLZSzTSvTOO/Y8XyTrp
	EEmsQc3IPXDUFiUZuPZDxGh0u4LVfeagva1jyJqOXXBfVC8TpgRaoFIytO8tQU8SvH/Mu/OEmH+OY
	YWe2oORicCSE9V0UMf2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnuO-0000BO-MD; Thu, 05 Dec 2019 09:58:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpu-0003JP-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:17 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: u/9sCziHZgaGjJ7pTSFsQb4Oo5wmAlpeDCDTtTAKpn+fdyy7YElT/NsKNBweS0oUUg+E/xz0fU
 7yFsc3+/LfYU/bsSoc1CJFIvpYyWxMf4oVJKVZUYfhMqNQIh+FTGC2DHbA/bOXVLmd72rSO8mZ
 fq0TThSisNbXscHb6HI9GFYSSDxQVVRpCAoS/hIMnqnSgxzJsbbJ/lBdAwNllfHoPCpNnVrBmb
 d7iP9w6+AwNQS78Nj43TORSRBaoJA+tZgxP2WdyPtWhXQHQMf5HCM18eE4pmhiRP7QCz8ri4i+
 vVg=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="57907214"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:54:13 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:54:14 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 02:54:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3k7ckOmBk8vSVy52zmGtwnjA/NXrNW//VtVrMtHjYtlgJmaFQeuHOMd+xpqMQQPZIPLymx5KQvuiaQxN3iyUVoXQquYf+m3kWhSdV2H1+4K5ycHm32n5Hzxa381pOua5GBvWcx6d+RpZq1ZIZ8xv+6eMYh7csnukYDKDmBuMtSLYtOxeU+VqD4EQUXZfQ2/mFPSmeNzyqWsALJ0XK3Ezztp7sRe3027qFvUeVlUvLDQFdkzkBQVhdfOXt14wS/sZYel1azkC9ekLu8nAgbZ4pV7XYFNGAiqFW4n27sHmzjzuVwT9BAJCuAIV0Pxi4i0pBaHeIf0U0jQw8Mirw9lAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=31S7h+yxA9Ut53hiDOgLJ4EBGdjNO7I5oNVRxf+NHNU=;
 b=V151UDtLBli7RX0mhqYuvP+1WFDO106KSM3MCKNIgwojENpBM76lZoR2Ah0UEzvyu7KgDcEp/+zWQexGonuab9tP9v+WSc1fbDrt2A9c2gBm2tHLaKioTbLALPJa1Y12hgnfaNyX4Gco94QHuW2oapi7cr22ytSAwLaIyJRy2B/6FUW44FdPLGbdNqNfKk5n72U9k/OgXhdC8IUlEoDErpVUG1aApwSXX9X1LM8qXd2U7XJ8npvgPuOhoVL0UdVoNvubW66OS9GUTtCy7DWEVFr+RZ4y0po0LZVWeRRh2CNEvJuVXftcD6A8/ziHw23dfXb/Ciqiqe2LFmdAtEURaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=31S7h+yxA9Ut53hiDOgLJ4EBGdjNO7I5oNVRxf+NHNU=;
 b=eqTD8tZ/owL5oc7uwnozCrUMq6tBf9MBbbe0u173of4paD+eMwgwKHD6aUceGBAUwqjNEgfywPx7HPbUqWOQ0NevOpOW90lFAkAqyNmR/kdEcvEDH/9ldoEHTjwAzNJw0LFd3FcwCHzNSKgo16JuNQI3Rww7ZvvW7KrJflOUmR4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4288.namprd11.prod.outlook.com (52.135.37.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Thu, 5 Dec 2019 09:54:10 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:54:10 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 16/16] crypto: atmel-{aes,sha,tdes} - Group common alg type
 init in dedicated methods
Thread-Topic: [PATCH 16/16] crypto: atmel-{aes,sha,tdes} - Group common alg
 type init in dedicated methods
Thread-Index: AQHVq1HxV08z2q1qzUizBwqVxO+JTQ==
Date: Thu, 5 Dec 2019 09:54:10 +0000
Message-ID: <20191205095326.5094-17-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: a3ae047b-b0c2-4fe1-233d-08d779691388
x-ms-traffictypediagnostic: MN2PR11MB4288:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB428855C7CB19E1FE150922B2F05C0@MN2PR11MB4288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(6506007)(1076003)(305945005)(4326008)(2616005)(86362001)(478600001)(11346002)(102836004)(107886003)(2906002)(50226002)(5660300002)(66446008)(66946007)(66476007)(66556008)(14454004)(1730700003)(64756008)(76176011)(8936002)(52116002)(81166006)(186003)(5640700003)(81156014)(36756003)(71200400001)(71190400001)(54906003)(6512007)(316002)(6486002)(30864003)(25786009)(8676002)(26005)(6916009)(99286004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4288;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3lxjIcR3YaVcgmf2KIN+EbJUCqsf0KnybRkphJskb24FOQ2PpPd9fjyPkydzeV5MQfDtCXI0Iz7vyaEXw+4YDQ2XMe6HIGKPSlHQNo/HzrcePc3wu8rJ2JVU14xaNTJqUa1xBxz3E+Qu9MVW3awF53PUFAOOkUWNA2hsoi+InbJYQUNe0LEM8+DrmT88uqpcqHncYyVUftsvR4PHhsZdNSlxLqWHe1yG3R5YHxnIn62PIob+MyZhpoN0AN+b9Lp1vE3FdfNwXKywTrYaXflQU1wLs8pME687/gCzn22TzuF00eqhY4dkzcP30nvYZmnE3sFJC2zn/CDA4fDJSzYJTUr1WURraCTBO+ZK/p+bGvnrJ02BI7JSm5DR2OwK+CzuuFXQBE3ES3IQAWRpmf9UyeDREH1ZtKDXvMksyYhZ/QuXzgYRfjnLSloMFJ1sTDr5y0C9xEGmzENIqSIFYtWMQ+1UXev7Vr21wyJ31VIXmB0T0ceACJBWCiwWWZH9uTnu
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ae047b-b0c2-4fe1-233d-08d779691388
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:54:10.4149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eXyCPXQ24UVe2QQT4uk2wlWfLBcHZnZ+eRZjK7ge0eT8K4h+a/y6XnHHCDzOqN56+K7LbzsYm0YjrXpIEncbVYEReOL428deydm3A/JsUSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015414_780584_CA686D92 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
 drivers/crypto/atmel-aes.c  | 82 ++++++++++-----------------------------------
 drivers/crypto/atmel-sha.c  | 45 +++++++++----------------
 drivers/crypto/atmel-tdes.c | 39 +++++----------------
 3 files changed, 42 insertions(+), 124 deletions(-)

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
index a620a6a1cee3..a91612c94755 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -1267,12 +1267,9 @@ static struct ahash_alg sha_1_256_algs[] = {
 		.base	= {
 			.cra_name		= "sha1",
 			.cra_driver_name	= "atmel-sha1",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA1_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_cra_init,
 		}
 	}
@@ -1291,12 +1288,9 @@ static struct ahash_alg sha_1_256_algs[] = {
 		.base	= {
 			.cra_name		= "sha256",
 			.cra_driver_name	= "atmel-sha256",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA256_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_cra_init,
 		}
 	}
@@ -1317,12 +1311,9 @@ static struct ahash_alg sha_224_alg = {
 		.base	= {
 			.cra_name		= "sha224",
 			.cra_driver_name	= "atmel-sha224",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA224_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_cra_init,
 		}
 	}
@@ -1343,12 +1334,9 @@ static struct ahash_alg sha_384_512_algs[] = {
 		.base	= {
 			.cra_name		= "sha384",
 			.cra_driver_name	= "atmel-sha384",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA384_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
 			.cra_alignmask		= 0x3,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_cra_init,
 		}
 	}
@@ -1367,12 +1355,9 @@ static struct ahash_alg sha_384_512_algs[] = {
 		.base	= {
 			.cra_name		= "sha512",
 			.cra_driver_name	= "atmel-sha512",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA512_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_ctx),
 			.cra_alignmask		= 0x3,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_cra_init,
 		}
 	}
@@ -2099,12 +2084,9 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha1)",
 			.cra_driver_name	= "atmel-hmac-sha1",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA1_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_hmac_cra_init,
 			.cra_exit		= atmel_sha_hmac_cra_exit,
 		}
@@ -2124,12 +2106,9 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha224)",
 			.cra_driver_name	= "atmel-hmac-sha224",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA224_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_hmac_cra_init,
 			.cra_exit		= atmel_sha_hmac_cra_exit,
 		}
@@ -2149,11 +2128,8 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha256)",
 			.cra_driver_name	= "atmel-hmac-sha256",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA256_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
-			.cra_alignmask		= 0,
 			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_hmac_cra_init,
 			.cra_exit		= atmel_sha_hmac_cra_exit,
@@ -2174,12 +2150,9 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha384)",
 			.cra_driver_name	= "atmel-hmac-sha384",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA384_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_hmac_cra_init,
 			.cra_exit		= atmel_sha_hmac_cra_exit,
 		}
@@ -2199,12 +2172,9 @@ static struct ahash_alg sha_hmac_algs[] = {
 		.base	= {
 			.cra_name		= "hmac(sha512)",
 			.cra_driver_name	= "atmel-hmac-sha512",
-			.cra_priority		= ATMEL_SHA_PRIORITY,
-			.cra_flags		= CRYPTO_ALG_ASYNC,
 			.cra_blocksize		= SHA512_BLOCK_SIZE,
 			.cra_ctxsize		= sizeof(struct atmel_sha_hmac_ctx),
 			.cra_alignmask		= 0,
-			.cra_module		= THIS_MODULE,
 			.cra_init		= atmel_sha_hmac_cra_init,
 			.cra_exit		= atmel_sha_hmac_cra_exit,
 		}
@@ -2556,17 +2526,28 @@ static void atmel_sha_unregister_algs(struct atmel_sha_dev *dd)
 	}
 }
 
+static void atmel_sha_ahash_alg_init(struct ahash_alg *alg)
+{
+	alg->halg.base.cra_flags = CRYPTO_ALG_ASYNC;
+	alg->halg.base.cra_priority = ATMEL_SHA_PRIORITY;
+	alg->halg.base.cra_module = THIS_MODULE;
+}
+
 static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 {
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(sha_1_256_algs); i++) {
+		atmel_sha_ahash_alg_init(&sha_1_256_algs[i]);
+
 		err = crypto_register_ahash(&sha_1_256_algs[i]);
 		if (err)
 			goto err_sha_1_256_algs;
 	}
 
 	if (dd->caps.has_sha224) {
+		atmel_sha_ahash_alg_init(&sha_224_alg);
+
 		err = crypto_register_ahash(&sha_224_alg);
 		if (err)
 			goto err_sha_224_algs;
@@ -2574,6 +2555,8 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 
 	if (dd->caps.has_sha_384_512) {
 		for (i = 0; i < ARRAY_SIZE(sha_384_512_algs); i++) {
+			atmel_sha_ahash_alg_init(&sha_384_512_algs[i]);
+
 			err = crypto_register_ahash(&sha_384_512_algs[i]);
 			if (err)
 				goto err_sha_384_512_algs;
@@ -2582,6 +2565,8 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 
 	if (dd->caps.has_hmac) {
 		for (i = 0; i < ARRAY_SIZE(sha_hmac_algs); i++) {
+			atmel_sha_ahash_alg_init(&sha_hmac_algs[i]);
+
 			err = crypto_register_ahash(&sha_hmac_algs[i]);
 			if (err)
 				goto err_sha_hmac_algs;
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index d10be95a6470..6bb9d48379a2 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -928,12 +928,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des)",
 	.base.cra_driver_name	= "atmel-ecb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -945,12 +942,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des)",
 	.base.cra_driver_name	= "atmel-cbc-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -963,12 +957,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb(des)",
 	.base.cra_driver_name	= "atmel-cfb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -981,12 +972,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb8(des)",
 	.base.cra_driver_name	= "atmel-cfb8-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -999,12 +987,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb16(des)",
 	.base.cra_driver_name	= "atmel-cfb16-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x1,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -1017,12 +1002,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cfb32(des)",
 	.base.cra_driver_name	= "atmel-cfb32-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x3,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -1035,12 +1017,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des)",
 	.base.cra_driver_name	= "atmel-ofb-des",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES_KEY_SIZE,
@@ -1053,12 +1032,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ecb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ecb-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
@@ -1070,12 +1046,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "cbc(des3_ede)",
 	.base.cra_driver_name	= "atmel-cbc-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
@@ -1088,12 +1061,9 @@ static struct skcipher_alg tdes_algs[] = {
 {
 	.base.cra_name		= "ofb(des3_ede)",
 	.base.cra_driver_name	= "atmel-ofb-tdes",
-	.base.cra_priority	= ATMEL_TDES_PRIORITY,
-	.base.cra_flags		= CRYPTO_ALG_ASYNC,
 	.base.cra_blocksize	= DES_BLOCK_SIZE,
 	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
 	.base.cra_alignmask	= 0x7,
-	.base.cra_module	= THIS_MODULE,
 
 	.init			= atmel_tdes_init_tfm,
 	.min_keysize		= DES3_EDE_KEY_SIZE,
@@ -1165,11 +1135,20 @@ static void atmel_tdes_unregister_algs(struct atmel_tdes_dev *dd)
 		crypto_unregister_skcipher(&tdes_algs[i]);
 }
 
+static void atmel_tdes_skcipher_alg_init(struct skcipher_alg *alg)
+{
+	alg->base.cra_flags = CRYPTO_ALG_ASYNC;
+	alg->base.cra_priority = ATMEL_TDES_PRIORITY;
+	alg->base.cra_module = THIS_MODULE;
+}
+
 static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
 {
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
