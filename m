Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C748911E13B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzPBTggRbag9aNHS6z412N3KdqfDVeeaE75DL/TXIaA=; b=uDLG75QRsv7qm9
	BBN6wKzDG1o82MgvaOtGe/SxIU9LPMvpaGNV4Xx+7f1pfVOs+XySpJev4v4Z4t2qPr9sdgZId2RrK
	zJXR9nH7cs5yjovz6tZWAMxe+Is1/Xv0lYfsLb64iP+u9QFIXf1vKNlrq4Y7ZCDSlmvPq6qztc3rV
	fDUA1+MzmrsLudx1YODAX3DJM37Wr3Sj06XJhztl98Kitf2ubi9oyAd7UaTtPlslEOfZiniCGvlka
	e4JWk2MLBZbf7goOlwkuK9kVaXUWSo59qKvGwXxvlXx7PRBc6FaFtkpvJAfyGCoz3FzVvUlzL5ZU8
	aZsD3YWr7OAmcf+Znz0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhfW-0001yh-F4; Fri, 13 Dec 2019 09:55:30 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhev-0000Yh-Pb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:54:55 +0000
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
IronPort-SDR: CQXblHFAnDE/4gj70aa2Fm05rncKwNJjzaRIKBsAWhM35Mxq3DvxA+uarksJQjwACy7micLudS
 AL53+knQHUoMyAzMP1vR63EnZ88eS4czLJwpXhvurCz/3UcOR2Yfilqma4et8HzQ4Dc0ZE2XpU
 RhZecbNSQL3aeRflXTkR81FTtu2ZNgu0cDyEt/qLH/mLKFnOlDsV2EHXX4mko8yMwnGu1Xdw/m
 FPiPPcY+cMTztoGr4beUynemy2n2+0pjtpaZU7CuYGLTHl7N1QEzwItSB7weQN/K9bveg8ApU1
 Nnw=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="57649455"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 02:54:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 02:54:50 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Dec 2019 02:54:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OedSMFtP2yVbw5Qx8RCA988S09xEMuNMi8Zgd/jOhOL3RUhYwxP7kuWY0izbHdtI1TJh2zaYWWiWjSreNodfX90ryLUjidjXM6zvd6lpItoTpKp8L0B/NzmLvcsYROwwRAas/camolSqcoY56bxrLe0iuKKibkxpXzLReBa6rOKfMOsLSA0c58Nx5SYx0+qNGn9AUbCwBI+k7Nt11gnjD6dK4TZQ1DXFgieSwDVgMXRsNSzjDNtyGtGXtDeFwX7AjUv2gumfXwIVU9cYipKf2iUnAZuxAKaJB2lV5UPDW/rbmMq9yqiioFaj7HkNGkr3dVs2/K3WOAjbVJufD78Wog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W4XB05tfkqYEMHuUwPlILJvhhTDoOIFJlaErhf7T3i4=;
 b=eYxVn5ffjTnr0W93hsVKfSGxTNewyHmykjmZkqTuL/7ogIMYtHpfQeWIXdtrB0yxRGH6WMBY6VVZCTytjz+B8MoIU1z77WroSEpAelw14hU2kQF7lqFlE+SRji9zE7duUywADMLa84qQ2tsmL3WXxsXDHIx/C9bAFwDQ3gwss9NAjEJ67G0nHUE5pPFfr6w9ljxdnJqfDzGsVOgN4PjdJrbvYpo0u4BeKvpb7kMpMspoWoNvB8JjF+bTFNY6C7/FOmrTU4yGoN7+hayIUKetkNOc4MWS2ka0Wl60yxGQ2xYZ1Y3WnDZCJqCZUR4qhId3E6JBOyjSwn808Ax4nRpQAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W4XB05tfkqYEMHuUwPlILJvhhTDoOIFJlaErhf7T3i4=;
 b=oqf8w3iqZ21pWoVrLbdpp6DVhS2uUk3Sez7sWfnQTdR+MQBooS0eoIhDWkqNM5L8z2Wx9aipNvDlaSClvpH1pcRxhJYGXLAONgpsxSTSDr/T9L+If9q2T4/HIEnWNNemQ3A0eKQajbR3I3NyNbeYoHR3iGP7zJQZiacEicFfceQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3935.namprd11.prod.outlook.com (10.255.180.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Fri, 13 Dec 2019 09:54:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 09:54:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 3/5] crypto: atmel-{aes,sha,tdes} - Stop passing unused
 argument in _dma_init()
Thread-Topic: [PATCH 3/5] crypto: atmel-{aes,sha,tdes} - Stop passing unused
 argument in _dma_init()
Thread-Index: AQHVsZtb4TmLqdhnCEy1DKQBtubjBA==
Date: Fri, 13 Dec 2019 09:54:49 +0000
Message-ID: <20191213095423.6687-3-tudor.ambarus@microchip.com>
References: <20191213095423.6687-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191213095423.6687-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0046.eurprd05.prod.outlook.com
 (2603:10a6:800:60::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [86.122.210.80]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 391e608d-1b5a-460b-0526-08d77fb27de4
x-ms-traffictypediagnostic: MN2PR11MB3935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB393580FA7D639BAD5295499EF0540@MN2PR11MB3935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(199004)(189003)(2616005)(2906002)(6486002)(6916009)(71200400001)(6512007)(86362001)(186003)(26005)(478600001)(52116002)(64756008)(66446008)(81156014)(1076003)(5660300002)(81166006)(54906003)(107886003)(8936002)(36756003)(316002)(66556008)(66476007)(66946007)(6506007)(4326008)(8676002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3935;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdNMZBT9z0MOPJnrlaccVJnXvb2LKR/yaEhY3FeBd7wJF5wZnz1EyZ1o2Ss5yQBDUOG71AaCwNmJ0/vaiGWRUldEyT0E2p2IPqc0dvRfoXRnjdmA62FKrj2BUy7hLR9l9bePzWRR6N9TrHcqnffhOqu4aAzJuSNWJAD+kmThm4zmzrKHRok+NjLDWXgjAt341qvgHkVjMgaFP5F0yVWO1UnAu2YdUUY91EDYO6ZiNBwNyh5PhXk5jDMcJ5CVudTpe8f/ulunNHC5uN7IZ8tV92lrMfjbLyPK34+1BaS+fwBjNsx5skPZxl2kbRrvTnrzgvSPkvaXDTWnb9eTcDCkkHLtkUVIWzQb4jZPWLfgBPMfquTLLPoWJoOd1ITx5qYwMe02jjcJ/S+xTnwA3QrOManeYruK6nEIp4I958OjKq1HC3TzxafxDlr8krnifJOxsVdyJasWg6D967cH4tnL7sKcAYdSfoWWqrDGrGp+JpVD7zLjbflqLsdVFsP73xMo
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 391e608d-1b5a-460b-0526-08d77fb27de4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 09:54:49.0805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eRmQtNB1jDe92tFIQFe9A5IOhUQb8SlnL3V5QnsJo8BU381twweYR/84yVlNgkt72sI7aAylUKYioW4+hhPnx6gg/yVq0ZUwES5GDaoAWJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015453_889218_06DF3D4D 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

pdata is not used.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c  | 5 ++---
 drivers/crypto/atmel-sha.c  | 5 ++---
 drivers/crypto/atmel-tdes.c | 5 ++---
 3 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index d5a116693010..986f1ca682aa 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -2270,8 +2270,7 @@ static void atmel_aes_buff_cleanup(struct atmel_aes_dev *dd)
 	free_page((unsigned long)dd->buf);
 }
 
-static int atmel_aes_dma_init(struct atmel_aes_dev *dd,
-			      struct crypto_platform_data *pdata)
+static int atmel_aes_dma_init(struct atmel_aes_dev *dd)
 {
 	int ret;
 
@@ -2598,7 +2597,7 @@ static int atmel_aes_probe(struct platform_device *pdev)
 	if (err)
 		goto err_iclk_unprepare;
 
-	err = atmel_aes_dma_init(aes_dd, pdata);
+	err = atmel_aes_dma_init(aes_dd);
 	if (err)
 		goto err_buff_cleanup;
 
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index 21fcc04f6688..a0d42bdc311f 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -2481,8 +2481,7 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 	return err;
 }
 
-static int atmel_sha_dma_init(struct atmel_sha_dev *dd,
-				struct crypto_platform_data *pdata)
+static int atmel_sha_dma_init(struct atmel_sha_dev *dd)
 {
 	dd->dma_lch_in.chan = dma_request_chan(dd->dev, "tx");
 	if (IS_ERR(dd->dma_lch_in.chan)) {
@@ -2674,7 +2673,7 @@ static int atmel_sha_probe(struct platform_device *pdev)
 			}
 		}
 
-		err = atmel_sha_dma_init(sha_dd, pdata);
+		err = atmel_sha_dma_init(sha_dd);
 		if (err)
 			goto err_iclk_unprepare;
 
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 51b332527efd..d42b22775ee9 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -741,8 +741,7 @@ static int atmel_tdes_crypt(struct skcipher_request *req, unsigned long mode)
 	return atmel_tdes_handle_queue(ctx->dd, req);
 }
 
-static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
-			struct crypto_platform_data *pdata)
+static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd)
 {
 	int ret;
 
@@ -1268,7 +1267,7 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 			}
 		}
 
-		err = atmel_tdes_dma_init(tdes_dd, pdata);
+		err = atmel_tdes_dma_init(tdes_dd);
 		if (err)
 			goto err_buff_cleanup;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
