Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB69FDF47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 14:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rpr5r9Zo/w0Bf4lc+QeoJiTe7gYNeAKPSAky3RC3GmQ=; b=IbaSuo2C3p3PJE
	4P0UTInTQY6obpcDEOm5/VgKubuY4NZqqhvAKYW30C/5GhHyFW6xgFkPG0BW/j6w60cGpK8B6ovpv
	D26MSCAkJV6D1+tepY5F8sm3e8IhKxfcwj6ia1HTjtlj8YLLzGUseFAKC6huySmy4gJFVLI87j3gF
	5zK7Z4u8+TIg6JjpSBvPI+drUjJCA6dH+0eiL6J1Fz8oHOgDwOfk24OAqVG01PgXrrQ0KOydhidXR
	B/G1Fi+s9iqRMWyRVks2ht8T8oVnW97oA4nxq3rjha8z7V4pFUkSs61J7koAlUzEgDeJPhU6Mh5gv
	qoOhgro5wdzgiYETW1Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbyh-0002aY-6D; Fri, 15 Nov 2019 13:49:35 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbyR-0002ZB-5U
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 13:49:20 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: e+2vHAhIJMkphrue75duHRHCBu17/jRxoORFcGMyjdyP9Gy8Z0NiUXGS6WZ3txLZD4h8GfF6Z4
 S9Gz7v/3YlBavM9PBnbOKgJYhvFJzPYJNbX84cRNyzl8I+iLRhs7l1pqnFZlphCQraa4J0vphJ
 SFyv9VMdSfHTxRz/p7zy+HI0aI/yjS44KX7nV+xumiw4zZYOrKBpOBFaG/0RGwkTTAw9WUr9ow
 UmiLZ+ZLUdUcOG4v29ZHZknL6PWaW3WXKxU4G+WFvrv/GUyKw5ByGk0DRh6SpSctgZvYZPROv9
 E3E=
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="54484154"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Nov 2019 06:49:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Nov 2019 06:49:11 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 15 Nov 2019 06:49:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WF4vBgJKNh3gy/Zfe6zgTmjrJsqA/NbXLFtj8GSuX6f53I7bIvs4QpN6FxsyF3Ra686iBdVLXHB5KwLk3DQkwxfQ5ZwWip7Zt2LpnFfIC3MUCVq0uxwm7116eTVMJWw1DbmM3qpsXluwGz08xr5xx/ol/vyB0x7DxQEcKaYbG34tdF2F5tw5rveRW4Ue4DkCwRq1uQQGGfdSxKJg6M5eVACbY8sOQvMUV6bfPXUXRuA5w4SS+NmYpyhkjoDi0+TWok4ex3pFZXf5kWqQbjvTcGbNg4RJJZ+KER33x3+sPyQIOzrRc5YeBbeAnfdm204u3Pd3fsE+ge9m9RfdKV5+cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmL+hqdqyAzXAq27hJ5vER4se5l/r6bFxzNtVY4+5sY=;
 b=fgq5boECKGRWFip8trsFn1/Tx8OCkeCuW9Kr491tlog4Kk1MN+dlYMQkJ9MEMr/M5cAJMx8Z7LqDZyyTP33eQy5sa69oP8UxUMGcoVb99vVFHF46gdjkqz3W4AIq9U/JAnP3hu6WMcV23DFRi9s46FbxTNg/9CY8RB1DOUv/NoOR9lWTepwABbfN00QVDI9oQF89vaII9jqQneCnELI42ejc3c1qUEJTEMIomzCrf022MBDm0P7DauS6dmILX4xPpjOlwphlPsGjEskJ73fX5mUHzxohDcehlOQDalwsqTAs9IINTY+JCFYOh3V4QgHN6W53kMJULx1QFf0sxP+K7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmL+hqdqyAzXAq27hJ5vER4se5l/r6bFxzNtVY4+5sY=;
 b=alzfldcHoRrM8b8UZvW9jwW+LyI5MnTgXWo+b4qh60YYP6l6D8NAudiTmiG4WvY8IgES7Itv907yU+AQwrvDE4FrSlu4o+HH7SXgzBxOP+cR4X4nGCIiSDZc/sVvdHPobtXxvBuplZS8wwd7k4HPmd02ySwRucSoNculGqv052c=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4159.namprd11.prod.outlook.com (20.179.150.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Fri, 15 Nov 2019 13:49:07 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2451.027; Fri, 15 Nov 2019
 13:49:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Thread-Topic: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Thread-Index: AQHVm7tzmqQuq6l82kiSJWdwlyo4Og==
Date: Fri, 15 Nov 2019 13:49:06 +0000
Message-ID: <20191115134854.30190-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BE0P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::27) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 382fa047-a7e5-42b0-9982-08d769d2955e
x-ms-traffictypediagnostic: MN2PR11MB4159:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB41596BFADE4A41763BADE92AF0700@MN2PR11MB4159.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(39860400002)(396003)(376002)(199004)(189003)(14444005)(102836004)(66446008)(6916009)(14454004)(2351001)(26005)(50226002)(6116002)(36756003)(71200400001)(3846002)(52116002)(99286004)(25786009)(8936002)(5660300002)(71190400001)(6506007)(6436002)(386003)(8676002)(6486002)(107886003)(2501003)(66476007)(66946007)(66556008)(6512007)(478600001)(64756008)(5640700003)(1730700003)(81156014)(81166006)(186003)(1076003)(7736002)(305945005)(316002)(2616005)(4326008)(54906003)(486006)(476003)(256004)(66066001)(2906002)(86362001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4159;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oNRhIqAUr/BSV2O47QOoqqe+ReFfeMeWrW2JpHy59iWdLxuSJoeMAKFqSCAcCwAX1qxQVrwq2iAh9gPmriFU9cLbcWcH7kvD6X0vmqEkESM0oWoGy7eO47gF6nvD2sk274zVfFkSxyIQzjmWNj5xUTWzui2og1EAOEKaCIcTPNrph+w9YDYOzNl/9R0a0f5nGXwZVBQn3nvfUI2diSne5M/L+JB2htYHD4lhzKfZX7xG8G4bwaeBq1dwL0t7PwNRrmrOr8lTIbrFzu0FBC6L1SykmHGs4y3UCNhfIo8hFUozEekV4hWcdzvcgyrjSF5zpMiyWfcjCrB5B02+lbPnbQDZZ/3tm/Iht6yssW2NBRAhGh4BP4a2KgYGYSuQMwtY/y+4FGomFyZgkxHM9e0fch2hb3yBdxO/m1UoXopIt1dyxraLWT6HNVL5ih/JKkZA
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 382fa047-a7e5-42b0-9982-08d769d2955e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 13:49:06.9376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VqZRjXC334x6dOT7iMU2/yhmiDi+ttf8Nh4Ix5PRlgmVeSiSOv/SERsAlaBrr1iHtNBDUePXu3yDQNGHFa48XI5K7e0zuKlT58UGP55hbps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_054919_242519_4DC09DEE 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The req->iv of the skcipher_request is expected to contain the
last ciphertext block when the {en,de}crypt operation is done.
In case of in-place decryption, copy the ciphertext in an
intermediate buffer before decryption.

This fixes the following tcrypt tests:
alg: skcipher: atmel-cbc-des encryption test failed (wrong output IV) on test vector 0, cfg="in-place"
00000000: fe dc ba 98 76 54 32 10
alg: skcipher: atmel-cbc-tdes encryption test failed (wrong output IV) on test vector 0, cfg="in-place"
00000000: 7d 33 88 93 0f 93 b2 42

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-tdes.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index bb7c0a387c04..0c1f79b30fc1 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -81,6 +81,7 @@ struct atmel_tdes_ctx {
 
 struct atmel_tdes_reqctx {
 	unsigned long mode;
+	u8 lastc[DES_BLOCK_SIZE];
 };
 
 struct atmel_tdes_dma {
@@ -572,6 +573,30 @@ static int atmel_tdes_crypt_start(struct atmel_tdes_dev *dd)
 	return err;
 }
 
+static void
+atmel_tdes_set_iv_as_last_ciphertext_block(struct atmel_tdes_dev *dd)
+{
+	struct skcipher_request *req = dd->req;
+	struct atmel_tdes_reqctx *rctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
+
+	if (req->cryptlen < ivsize)
+		return;
+
+	if (rctx->mode & TDES_FLAGS_ENCRYPT) {
+		scatterwalk_map_and_copy(req->iv, req->dst,
+					 req->cryptlen - ivsize, ivsize, 0);
+	} else {
+		if (req->src == req->dst)
+			memcpy(req->iv, rctx->lastc, ivsize);
+		else
+			scatterwalk_map_and_copy(req->iv, req->src,
+						 req->cryptlen - ivsize,
+						 ivsize, 0);
+	}
+}
+
 static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
 {
 	struct skcipher_request *req = dd->req;
@@ -580,6 +605,8 @@ static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
 
 	dd->flags &= ~TDES_FLAGS_BUSY;
 
+	atmel_tdes_set_iv_as_last_ciphertext_block(dd);
+
 	req->base.complete(&req->base, err);
 }
 
@@ -668,8 +695,8 @@ static int atmel_tdes_crypt_dma_stop(struct atmel_tdes_dev *dd)
 
 static int atmel_tdes_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(
-			crypto_skcipher_reqtfm(req));
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(skcipher);
 	struct atmel_tdes_reqctx *rctx = skcipher_request_ctx(req);
 
 	if (mode & TDES_FLAGS_CFB8) {
@@ -700,6 +727,15 @@ static int atmel_tdes_crypt(struct skcipher_request *req, unsigned long mode)
 
 	rctx->mode = mode;
 
+	if (!(mode & TDES_FLAGS_ENCRYPT) && req->src == req->dst) {
+		unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
+
+		if (req->cryptlen >= ivsize)
+			scatterwalk_map_and_copy(rctx->lastc, req->src,
+						 req->cryptlen - ivsize,
+						 ivsize, 0);
+	}
+
 	return atmel_tdes_handle_queue(ctx->dd, req);
 }
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
