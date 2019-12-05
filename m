Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB25113ED1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPN1WBaZqug5B5arY+KmZp/u27MHqh+yygDVbaYDioA=; b=PK1igSePRdvVYV
	dsAOD364pBqQKnP0xN+CIWMVfuCR1FesuKQOkpm2VDZJLHVEvlmtvMj1n4MBpX3bZaean5AQIpwHg
	gsFLeMSD235NzcSGrPde64/5wCwaSCVramOIIq1r1rgpeKIvmc/6roSF2jHWe3rCVoYz2WLDBWyXO
	K6aVCEWRlgGzDt13Es3TT5avoRf1Vwt2P58dNnyr8nuLyvKDI4iW6f48g1teXEva73svWHf/ulfuB
	HZWFJvqVyr9LqrMGUjLLG3Wdy55CoQHZ6JDdLS/UHJl2jcQ/0zGu+2PBkSOLlcxv3Mv9/NIK1joXi
	XwuKAzDY8ba0fnivUQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnrO-0005tQ-9S; Thu, 05 Dec 2019 09:55:46 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpe-0002xF-S9
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:00 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: DINsbWI6hwNMFT59pN1L42ywqJVuGdiULiicDLS1QV9/SwTZy6R/vF7UxGB8usviS1fCtgrBao
 nmvCvfOJivYhfjVj/NHf9HFWm0aNCwrUSLuOgLszK67bpU0iqD1FT5A4y04vFxsa/3f7+aMwEt
 s1fEuvtxGn9zz4FOhRKP+59Q44hQE5wtumwWlyMZNeJwCt9c6/4IyllXZAnpFeQbgeC263bbO9
 K3CTo2LrUaZfpMcbkHLZxsNHu1JiMqS25vG1Sa3/Nb5XW7kS2VZztoDR6jKIuBTENoB2pR6RjG
 VgI=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="58828890"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:56 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 02:53:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JpEvl4cX2fDNXMfWK7EV0NNZOeRhCnubqTBRksNNN9Rxnd9nMQ/qL/mr4LgykLnZGpxu+R2ToCFzoslud2nYHyk+8fUegoO7MIbGqAQ1QgbE4Tx313H7RvxCd4ZbUBbbidsLRlJ7QWQtacJqlT0+Qw0svF01efT0ksTEK28QeIeAKFHVmZlZ9Y8KK5wSUfdkPoCVlFCOM2DdSIKBkPl5zs2fMqYg8zm/4sQpYTx6KkNqL0hiqKB7PUEAQIn0a8C0UVZmNtLIK8EYV5hRVGr9KmNHsPvR56nkpVluYK00MgWUZZoJW6El6/amuFlhPdbrKCK0j57czJ6jBPmCl4H8dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SOYRrHFvK4Fnxfw91jxATUd72f9U5vBFOZr930ZMXKc=;
 b=l+95gbydJzroMsiOZlC6uzRjBoFwlW53HkDle3Aitjw51RD9woCOD/bTlw0xefQxi2XZym2/KcNfrWdJ82m/4CK8EM4ae97o2/G9EKFXJ5SpHAP7ygOXjbHwl0nOX+6bT4Qj7qbmqfjzX4DgMVWbcFcOBykdmWQsNnKOAmMeFoeLRXJg59UY5R+1RvTKvscwTgfcBm7M6uX6h78bq2mGASUYzdU/nJWvPxWEeOT6Ul/ZQjw49CbuG2NQESh5b1t4yoN9ahEagnxeuYYQkWk35j/CpUvYXI7RoPwhaKDcjbO49sK0kByA7sTeTu2Q2pFyDa/bWi4o4IildryKgbt3gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SOYRrHFvK4Fnxfw91jxATUd72f9U5vBFOZr930ZMXKc=;
 b=r5GDvXb7tBCxN3LkeKSYKMmCDTslo4V/AweddlvnVGUh2mvK85ljjQudcP62QWJDgjKlkF4k55M3i36vW9BmsJHGlUTvX6ZDjsB8YrxSdnCTYCEtmuUAl0mZP3CZwLR/SF+wHZ6nDUwHikdeqfB0Pbr2f9cz/gWOANsn5YDfX7I=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 06/16] crypto: atmel-{aes, sha,
 tdes} - Rename labels in probe()
Thread-Topic: [PATCH 06/16] crypto: atmel-{aes,sha,tdes} - Rename labels in
 probe()
Thread-Index: AQHVq1HnsuLmnGSJ10WhJdITuvt32g==
Date: Thu, 5 Dec 2019 09:53:53 +0000
Message-ID: <20191205095326.5094-7-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 2f63ed5c-3edd-494f-eed8-08d779690979
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB367777617B4F550E5F2DCD27F05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:220;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4tlqrL9+mDNHdtjphKWyYoMz4jKOSYzbwfmTnzIwYtTuv/Cb4ZxGPbuF+Menk/6+GC5VSzI+8m4IQj8oeSmiP1uJNFf943d17CXgauHnDNLWSnjBMz0xAqIQsU0JeuZVdHg8vj3GzXlFSwvFQQlMU+ThM0yqVjEDnu8IO3pjBvSHlNM7OWAX8NQLw7XmDVg5VXJKyMCvZZyBySPubdZYus4WmKZa0YG2ASqdJrqeWTg/XhNKpHhWzF14zMpQqOnYVtLeMHu7qXiM6cWVwXKshHE8OeUCkm3cdUpiYCRxy8G7AhhSNGlRNsjtfJDitszxc3R6r9htKon3iV99Bj5Zr1e+LHwj9ueOj0e5MJSi/1Xf5Fk5PnUsF40vbVGxSHhgBySsXQ7X4ByARpW6y2Me944ZwYw3EwJNKvjmazuDvtjfLNQ7J0sdcoNEayhu5/XDMVj++ORuEUmKz7+gtficQg5kTHhA/F6bqkrq511RTbZMt6FFDobMUxxmU+lybqnd
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f63ed5c-3edd-494f-eed8-08d779690979
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:53.5106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugeHGve8XYE3/ShdoaLPduKsOodJ7doESEmv9jgPQV+V1j3Vohbyaz7uaG9kPoin2rfoxifH/T09c5LVIFLYaIBCKpJsxjQD5rtLqxKdByc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015358_964364_E9823AA5 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Choose label names which say what the goto does and not from where
the goto was issued. This avoids adding superfluous labels like
"err_aes_buff".

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c  | 27 +++++++++++++--------------
 drivers/crypto/atmel-sha.c  | 25 ++++++++++++-------------
 drivers/crypto/atmel-tdes.c | 26 ++++++++++++--------------
 3 files changed, 37 insertions(+), 41 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 1cb5564e73f4..0744859ec793 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -2650,7 +2650,7 @@ static int atmel_aes_probe(struct platform_device *pdev)
 	if (!aes_res) {
 		dev_err(dev, "no MEM resource info\n");
 		err = -ENODEV;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 	aes_dd->phys_base = aes_res->start;
 
@@ -2658,14 +2658,14 @@ static int atmel_aes_probe(struct platform_device *pdev)
 	aes_dd->irq = platform_get_irq(pdev,  0);
 	if (aes_dd->irq < 0) {
 		err = aes_dd->irq;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = devm_request_irq(&pdev->dev, aes_dd->irq, atmel_aes_irq,
 			       IRQF_SHARED, "atmel-aes", aes_dd);
 	if (err) {
 		dev_err(dev, "unable to request aes irq.\n");
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	/* Initializing the clock */
@@ -2673,40 +2673,40 @@ static int atmel_aes_probe(struct platform_device *pdev)
 	if (IS_ERR(aes_dd->iclk)) {
 		dev_err(dev, "clock initialization failed.\n");
 		err = PTR_ERR(aes_dd->iclk);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	aes_dd->io_base = devm_ioremap_resource(&pdev->dev, aes_res);
 	if (IS_ERR(aes_dd->io_base)) {
 		dev_err(dev, "can't ioremap\n");
 		err = PTR_ERR(aes_dd->io_base);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = clk_prepare(aes_dd->iclk);
 	if (err)
-		goto res_err;
+		goto err_tasklet_kill;
 
 	err = atmel_aes_hw_version_init(aes_dd);
 	if (err)
-		goto iclk_unprepare;
+		goto err_iclk_unprepare;
 
 	atmel_aes_get_cap(aes_dd);
 
 #if IS_ENABLED(CONFIG_CRYPTO_DEV_ATMEL_AUTHENC)
 	if (aes_dd->caps.has_authenc && !atmel_sha_authenc_is_ready()) {
 		err = -EPROBE_DEFER;
-		goto iclk_unprepare;
+		goto err_iclk_unprepare;
 	}
 #endif
 
 	err = atmel_aes_buff_init(aes_dd);
 	if (err)
-		goto err_aes_buff;
+		goto err_iclk_unprepare;
 
 	err = atmel_aes_dma_init(aes_dd, pdata);
 	if (err)
-		goto err_aes_dma;
+		goto err_buff_cleanup;
 
 	spin_lock(&atmel_aes.lock);
 	list_add_tail(&aes_dd->list, &atmel_aes.dev_list);
@@ -2727,12 +2727,11 @@ static int atmel_aes_probe(struct platform_device *pdev)
 	list_del(&aes_dd->list);
 	spin_unlock(&atmel_aes.lock);
 	atmel_aes_dma_cleanup(aes_dd);
-err_aes_dma:
+err_buff_cleanup:
 	atmel_aes_buff_cleanup(aes_dd);
-err_aes_buff:
-iclk_unprepare:
+err_iclk_unprepare:
 	clk_unprepare(aes_dd->iclk);
-res_err:
+err_tasklet_kill:
 	tasklet_kill(&aes_dd->done_task);
 	tasklet_kill(&aes_dd->queue_task);
 
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index e85fa48e3d10..8f63a1aebd9e 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -2778,7 +2778,7 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	if (!sha_res) {
 		dev_err(dev, "no MEM resource info\n");
 		err = -ENODEV;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 	sha_dd->phys_base = sha_res->start;
 
@@ -2786,14 +2786,14 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	sha_dd->irq = platform_get_irq(pdev,  0);
 	if (sha_dd->irq < 0) {
 		err = sha_dd->irq;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = devm_request_irq(&pdev->dev, sha_dd->irq, atmel_sha_irq,
 			       IRQF_SHARED, "atmel-sha", sha_dd);
 	if (err) {
 		dev_err(dev, "unable to request sha irq.\n");
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	/* Initializing the clock */
@@ -2801,23 +2801,23 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	if (IS_ERR(sha_dd->iclk)) {
 		dev_err(dev, "clock initialization failed.\n");
 		err = PTR_ERR(sha_dd->iclk);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	sha_dd->io_base = devm_ioremap_resource(&pdev->dev, sha_res);
 	if (IS_ERR(sha_dd->io_base)) {
 		dev_err(dev, "can't ioremap\n");
 		err = PTR_ERR(sha_dd->io_base);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = clk_prepare(sha_dd->iclk);
 	if (err)
-		goto res_err;
+		goto err_tasklet_kill;
 
 	err = atmel_sha_hw_version_init(sha_dd);
 	if (err)
-		goto iclk_unprepare;
+		goto err_iclk_unprepare;
 
 	atmel_sha_get_cap(sha_dd);
 
@@ -2828,16 +2828,16 @@ static int atmel_sha_probe(struct platform_device *pdev)
 			if (IS_ERR(pdata)) {
 				dev_err(&pdev->dev, "platform data not available\n");
 				err = PTR_ERR(pdata);
-				goto iclk_unprepare;
+				goto err_iclk_unprepare;
 			}
 		}
 		if (!pdata->dma_slave) {
 			err = -ENXIO;
-			goto iclk_unprepare;
+			goto err_iclk_unprepare;
 		}
 		err = atmel_sha_dma_init(sha_dd, pdata);
 		if (err)
-			goto err_sha_dma;
+			goto err_iclk_unprepare;
 
 		dev_info(dev, "using %s for DMA transfers\n",
 				dma_chan_name(sha_dd->dma_lch_in.chan));
@@ -2863,10 +2863,9 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	spin_unlock(&atmel_sha.lock);
 	if (sha_dd->caps.has_dma)
 		atmel_sha_dma_cleanup(sha_dd);
-err_sha_dma:
-iclk_unprepare:
+err_iclk_unprepare:
 	clk_unprepare(sha_dd->iclk);
-res_err:
+err_tasklet_kill:
 	tasklet_kill(&sha_dd->queue_task);
 	tasklet_kill(&sha_dd->done_task);
 
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 9baae2065474..16527ef2a05b 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -1280,7 +1280,7 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 	if (!tdes_res) {
 		dev_err(dev, "no MEM resource info\n");
 		err = -ENODEV;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 	tdes_dd->phys_base = tdes_res->start;
 
@@ -1288,14 +1288,14 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 	tdes_dd->irq = platform_get_irq(pdev,  0);
 	if (tdes_dd->irq < 0) {
 		err = tdes_dd->irq;
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = devm_request_irq(&pdev->dev, tdes_dd->irq, atmel_tdes_irq,
 			       IRQF_SHARED, "atmel-tdes", tdes_dd);
 	if (err) {
 		dev_err(dev, "unable to request tdes irq.\n");
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	/* Initializing the clock */
@@ -1303,25 +1303,25 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 	if (IS_ERR(tdes_dd->iclk)) {
 		dev_err(dev, "clock initialization failed.\n");
 		err = PTR_ERR(tdes_dd->iclk);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	tdes_dd->io_base = devm_ioremap_resource(&pdev->dev, tdes_res);
 	if (IS_ERR(tdes_dd->io_base)) {
 		dev_err(dev, "can't ioremap\n");
 		err = PTR_ERR(tdes_dd->io_base);
-		goto res_err;
+		goto err_tasklet_kill;
 	}
 
 	err = atmel_tdes_hw_version_init(tdes_dd);
 	if (err)
-		goto res_err;
+		goto err_tasklet_kill;
 
 	atmel_tdes_get_cap(tdes_dd);
 
 	err = atmel_tdes_buff_init(tdes_dd);
 	if (err)
-		goto err_tdes_buff;
+		goto err_tasklet_kill;
 
 	if (tdes_dd->caps.has_dma) {
 		pdata = pdev->dev.platform_data;
@@ -1330,16 +1330,16 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 			if (IS_ERR(pdata)) {
 				dev_err(&pdev->dev, "platform data not available\n");
 				err = PTR_ERR(pdata);
-				goto err_pdata;
+				goto err_buff_cleanup;
 			}
 		}
 		if (!pdata->dma_slave) {
 			err = -ENXIO;
-			goto err_pdata;
+			goto err_buff_cleanup;
 		}
 		err = atmel_tdes_dma_init(tdes_dd, pdata);
 		if (err)
-			goto err_tdes_dma;
+			goto err_buff_cleanup;
 
 		dev_info(dev, "using %s, %s for DMA transfers\n",
 				dma_chan_name(tdes_dd->dma_lch_in.chan),
@@ -1364,11 +1364,9 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 	spin_unlock(&atmel_tdes.lock);
 	if (tdes_dd->caps.has_dma)
 		atmel_tdes_dma_cleanup(tdes_dd);
-err_tdes_dma:
-err_pdata:
+err_buff_cleanup:
 	atmel_tdes_buff_cleanup(tdes_dd);
-err_tdes_buff:
-res_err:
+err_tasklet_kill:
 	tasklet_kill(&tdes_dd->done_task);
 	tasklet_kill(&tdes_dd->queue_task);
 
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
