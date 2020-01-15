Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A93713C21E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TzJX/Rtpn6ohqX2E2ukOZ8WtC+DvJPjyh4U9CNEIGOw=; b=pCDOfjiiViVLH4
	tAZTcWaiKAt7HQe8Hd1BYzWbgK+wk1/0QoS+MHF03sGWKQhA6BLideuRJ9SmD6mOuUtf0MGGST67S
	MPPdnohbd82rrpEW1XQTTrWDpN+IU65XI7I7tbwhjN/ErKyYshwUISwELADBH50ue+89sIGQ+prg0
	8EhoXwnz1Sh2aIxuqH/AUg1hDL55Bd8n41r1IHHyN0Et467IXcKItDZtGNTLnVQY+OfD+zsUZaCCc
	Q21Q83Ig158mUdr3dmdS/GRLbbhu3ubDI5D15JOrq/KHRNaqkQKMkiO2WLDjpv9sYg2u5OFaWmEXs
	LUt/qweoi272lwU4Bw9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriF9-0001zp-81; Wed, 15 Jan 2020 12:57:55 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriBY-00067U-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:54:17 +0000
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
IronPort-SDR: vsf0OJA3gnWyGZSPexxAuXK7P9IGVvLSZSjr/cD7S9Op6FE4Fo2cD2v8cOBPyM07fZHy6CQdsd
 doaMqqqteb0Rn14WTelKD7x3Y8nvgsKUjcy1Bjqo+tJDYV0iaplo7ndCRGdPemM1txub6xCG5v
 t515Vzojg/TTkaTSm6m/PQmvm7ovqbqzCGQWqKN6paVP/ZeZ/+vOz/HFLBl+IFz7bSo027ON2i
 xZ25rjRm7iKuKZBVT4JYqPNJrHW1F4/dHBhfxwFSozyrYJDR5hdbg4Ah//Rt+x9+BeGZBoSB2+
 bww=
X-IronPort-AV: E=Sophos;i="5.70,322,1574146800"; d="scan'208";a="62677312"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jan 2020 05:54:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Jan 2020 05:53:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 15 Jan 2020 05:53:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FS7TQsHL9WzVibVM6/9JCJ3N4muwCJn2yS78iL+pfkFGpkgpirSq0r3yej5YU2aGpuxzicSoYfdzHlgInm2j6OjKUyDrUMrqh/d5eQHMSf0ZnqVhbJ6kQHLklBCVCtqUE0mwMEXsVjHq11aQG2ZqtqmWtfn9Bwv+uZ/j+nANENNwjI/EnQuZlfwcjwxNq0Ez68HTQchBpOVXjKi0OJdG+lAAATC0zKO+RIh8UXMqV3uSnlTnaCCxxlj+MrR1Qjc6OOq/Ahn1zO7QCgWWaPDnD2JJvV/Mmdxt5NdwuNuD7Qoj6P/DCEIbBUJY00L7ziKnd8dBje94USLUu1gPP2laRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4eByEj+FNMw2xeS+UoyjoGh/yWRW5/XtFcdOxRUfuWU=;
 b=FRtIYYULsgcu1oCzHgaTvbekaFTqhoj/hYu72SeEDS7K5her3GcxkXggNB48XXzQwrjrMqai7RplwnwK08541RY88Kr1IOHLfaccKSjK3hrdf/kMvIJtbodgjzDXnu66ydKksLui5sgDnIZGc9oE4Kb2tMoEdJEVak3HP0rMfKLDfCkt3vxT7yqBnENngjPRlg1Xe+yeb01h33lzfxnhimKHiSdQ3xnQAxzupPHwgoJyiYt9GnyookNbweu/UVY7ASUn63MXSSptVFgveCi0sRw56m7w0cX5NHJDnYQj5m06ZUv1SHV8HasM4IKcZnCydvAoKhN2TRep3BYq27QV5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4eByEj+FNMw2xeS+UoyjoGh/yWRW5/XtFcdOxRUfuWU=;
 b=cCjwPyWErFiyqVp8rTM8Iy0gYFMFH5Rpm6/OM1baWdtbG4e0/+rEIX5UalxiAhr8NHPDfb1LKHZZZbupdr1aJ7v50ksgN8eVK/f4yjyR/u2v/BHzxOsRZWfwM8tzGJQ8H3aiKWTK5kComVkuoYrjQsIInFeRd7CFphnymPu3Ym8=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3968.namprd11.prod.outlook.com (10.255.180.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Wed, 15 Jan 2020 12:53:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b%7]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 12:53:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>, <peter.ujfalusi@ti.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH] crypto: atmel-{aes,sha,tdes} - Retire crypto_platform_data
Thread-Topic: [PATCH] crypto: atmel-{aes,sha,tdes} - Retire
 crypto_platform_data
Thread-Index: AQHVy6LXut8r3iS6VEeTVRKPcWRArg==
Date: Wed, 15 Jan 2020 12:53:53 +0000
Message-ID: <20200115125347.269203-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d50e40bb-c30f-443f-5b9c-08d799b9f9ed
x-ms-traffictypediagnostic: MN2PR11MB3968:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39688F00C7EA1C6DEEC77C83F0370@MN2PR11MB3968.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:116;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(346002)(396003)(189003)(199004)(110136005)(6512007)(81156014)(81166006)(186003)(86362001)(2906002)(54906003)(66946007)(91956017)(107886003)(71200400001)(4326008)(478600001)(8676002)(76116006)(66476007)(26005)(66556008)(36756003)(8936002)(2616005)(6506007)(64756008)(1076003)(6636002)(316002)(66446008)(5660300002)(6486002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3968;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6oCkG9lspl5jA0XoYMj/2E8ID0mpZCCcF6jQgvkyUJnt65M77ZSKO36HlmBMftaUGRkSZ9DA82qzAYUOwy+F7n09qhmj1haLs4IkZAsEox2UHemLyfr2V1IyRylKK5wRqc9KUHCocD9Cr4ics+Bp70g5mdDmb5s/0JXWL6VSvFZnocjbpnYCN2OEm7gwtATUDgRQ4TIQF4Wfpl2rAeoqXrnU4lSncW6JTepppLiubZpz+9KjSGc3nxuBkLvS8aa3tSsVHJ0V04SfRi/wx5uJFf4g/8pro/HC0WXj/RXAIKmOlPWLdK2QVlYpgizUuidWCPjmmzBPVUN+1RL3rgRn7LEbT3qajoUSmVV2AgVdXpa8nd1ILrzadOEEoyiKGQrmB/S5rrhL/d21Pzhu1TLmdEI2uBE46p+CA1ysnLHzj8pC/cx6AlDl9Slp2yqp+WmL+MH0uO8F9T7P3G6Bkk08wknLEZP0dyG2dzwsziDphq+Eba+drwEPmzcTv/7TtDWi
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d50e40bb-c30f-443f-5b9c-08d799b9f9ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:53:53.4587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0gB00GB06k3zr2pgEG5c7y2fDyBOgL7bckR5DlHfOyJ3ix0hUSCTgeguCOMbWiiY+mJwzb2PKaE6Nzq2Y6LezJtrUBZA92krxtV/A2EXeo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3968
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045412_962680_9CC041A4 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

These drivers no longer need it as they are only probed via DT.
crypto_platform_data was allocated but unused, so remove it.
This is a follow up for:
commit 45a536e3a7e0 ("crypto: atmel-tdes - Retire dma_request_slave_channel_compat()")
commit db28512f48e2 ("crypto: atmel-sha - Retire dma_request_slave_channel_compat()")
commit 62f72cbdcf02 ("crypto: atmel-aes - Retire dma_request_slave_channel_compat()")

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c                 | 32 +-------------------
 drivers/crypto/atmel-sha.c                 | 35 +---------------------
 drivers/crypto/atmel-tdes.c                | 35 +---------------------
 include/linux/platform_data/crypto-atmel.h | 23 --------------
 4 files changed, 3 insertions(+), 122 deletions(-)
 delete mode 100644 include/linux/platform_data/crypto-atmel.h

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index b001fdcd9d95..8f47acad1cbb 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -21,6 +21,7 @@
 #include <linux/platform_device.h>
 
 #include <linux/device.h>
+#include <linux/dmaengine.h>
 #include <linux/init.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
@@ -37,7 +38,6 @@
 #include <crypto/xts.h>
 #include <crypto/internal/aead.h>
 #include <crypto/internal/skcipher.h>
-#include <linux/platform_data/crypto-atmel.h>
 #include "atmel-aes-regs.h"
 #include "atmel-authenc.h"
 
@@ -2487,45 +2487,15 @@ static const struct of_device_id atmel_aes_dt_ids[] = {
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, atmel_aes_dt_ids);
-
-static struct crypto_platform_data *atmel_aes_of_init(struct platform_device *pdev)
-{
-	struct device_node *np = pdev->dev.of_node;
-	struct crypto_platform_data *pdata;
-
-	if (!np) {
-		dev_err(&pdev->dev, "device node not found\n");
-		return ERR_PTR(-EINVAL);
-	}
-
-	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
-	if (!pdata)
-		return ERR_PTR(-ENOMEM);
-
-	return pdata;
-}
-#else
-static inline struct crypto_platform_data *atmel_aes_of_init(struct platform_device *pdev)
-{
-	return ERR_PTR(-EINVAL);
-}
 #endif
 
 static int atmel_aes_probe(struct platform_device *pdev)
 {
 	struct atmel_aes_dev *aes_dd;
-	struct crypto_platform_data *pdata;
 	struct device *dev = &pdev->dev;
 	struct resource *aes_res;
 	int err;
 
-	pdata = pdev->dev.platform_data;
-	if (!pdata) {
-		pdata = atmel_aes_of_init(pdev);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-	}
-
 	aes_dd = devm_kzalloc(&pdev->dev, sizeof(*aes_dd), GFP_KERNEL);
 	if (!aes_dd)
 		return -ENOMEM;
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index e8e4200c1ab3..03839006086b 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -21,6 +21,7 @@
 #include <linux/platform_device.h>
 
 #include <linux/device.h>
+#include <linux/dmaengine.h>
 #include <linux/init.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
@@ -36,7 +37,6 @@
 #include <crypto/sha.h>
 #include <crypto/hash.h>
 #include <crypto/internal/hash.h>
-#include <linux/platform_data/crypto-atmel.h>
 #include "atmel-sha-regs.h"
 #include "atmel-authenc.h"
 
@@ -2561,34 +2561,11 @@ static const struct of_device_id atmel_sha_dt_ids[] = {
 };
 
 MODULE_DEVICE_TABLE(of, atmel_sha_dt_ids);
-
-static struct crypto_platform_data *atmel_sha_of_init(struct platform_device *pdev)
-{
-	struct device_node *np = pdev->dev.of_node;
-	struct crypto_platform_data *pdata;
-
-	if (!np) {
-		dev_err(&pdev->dev, "device node not found\n");
-		return ERR_PTR(-EINVAL);
-	}
-
-	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
-	if (!pdata)
-		return ERR_PTR(-ENOMEM);
-
-	return pdata;
-}
-#else /* CONFIG_OF */
-static inline struct crypto_platform_data *atmel_sha_of_init(struct platform_device *dev)
-{
-	return ERR_PTR(-EINVAL);
-}
 #endif
 
 static int atmel_sha_probe(struct platform_device *pdev)
 {
 	struct atmel_sha_dev *sha_dd;
-	struct crypto_platform_data	*pdata;
 	struct device *dev = &pdev->dev;
 	struct resource *sha_res;
 	int err;
@@ -2660,16 +2637,6 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	atmel_sha_get_cap(sha_dd);
 
 	if (sha_dd->caps.has_dma) {
-		pdata = pdev->dev.platform_data;
-		if (!pdata) {
-			pdata = atmel_sha_of_init(pdev);
-			if (IS_ERR(pdata)) {
-				dev_err(&pdev->dev, "platform data not available\n");
-				err = PTR_ERR(pdata);
-				goto err_iclk_unprepare;
-			}
-		}
-
 		err = atmel_sha_dma_init(sha_dd);
 		if (err)
 			goto err_iclk_unprepare;
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index e7cd7b01b931..ed40dbb98c6b 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -21,6 +21,7 @@
 #include <linux/platform_device.h>
 
 #include <linux/device.h>
+#include <linux/dmaengine.h>
 #include <linux/init.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
@@ -34,7 +35,6 @@
 #include <crypto/algapi.h>
 #include <crypto/internal/des.h>
 #include <crypto/internal/skcipher.h>
-#include <linux/platform_data/crypto-atmel.h>
 #include "atmel-tdes-regs.h"
 
 #define ATMEL_TDES_PRIORITY	300
@@ -1157,34 +1157,11 @@ static const struct of_device_id atmel_tdes_dt_ids[] = {
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, atmel_tdes_dt_ids);
-
-static struct crypto_platform_data *atmel_tdes_of_init(struct platform_device *pdev)
-{
-	struct device_node *np = pdev->dev.of_node;
-	struct crypto_platform_data *pdata;
-
-	if (!np) {
-		dev_err(&pdev->dev, "device node not found\n");
-		return ERR_PTR(-EINVAL);
-	}
-
-	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
-	if (!pdata)
-		return ERR_PTR(-ENOMEM);
-
-	return pdata;
-}
-#else /* CONFIG_OF */
-static inline struct crypto_platform_data *atmel_tdes_of_init(struct platform_device *pdev)
-{
-	return ERR_PTR(-EINVAL);
-}
 #endif
 
 static int atmel_tdes_probe(struct platform_device *pdev)
 {
 	struct atmel_tdes_dev *tdes_dd;
-	struct crypto_platform_data	*pdata;
 	struct device *dev = &pdev->dev;
 	struct resource *tdes_res;
 	int err;
@@ -1256,16 +1233,6 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 		goto err_tasklet_kill;
 
 	if (tdes_dd->caps.has_dma) {
-		pdata = pdev->dev.platform_data;
-		if (!pdata) {
-			pdata = atmel_tdes_of_init(pdev);
-			if (IS_ERR(pdata)) {
-				dev_err(&pdev->dev, "platform data not available\n");
-				err = PTR_ERR(pdata);
-				goto err_buff_cleanup;
-			}
-		}
-
 		err = atmel_tdes_dma_init(tdes_dd);
 		if (err)
 			goto err_buff_cleanup;
diff --git a/include/linux/platform_data/crypto-atmel.h b/include/linux/platform_data/crypto-atmel.h
deleted file mode 100644
index 0471aaf6999b..000000000000
--- a/include/linux/platform_data/crypto-atmel.h
+++ /dev/null
@@ -1,23 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __LINUX_CRYPTO_ATMEL_H
-#define __LINUX_CRYPTO_ATMEL_H
-
-#include <linux/platform_data/dma-atmel.h>
-
-/**
- * struct crypto_dma_data - DMA data for AES/TDES/SHA
- */
-struct crypto_dma_data {
-	struct at_dma_slave	txdata;
-	struct at_dma_slave	rxdata;
-};
-
-/**
- * struct crypto_platform_data - board-specific AES/TDES/SHA configuration
- * @dma_slave: DMA slave interface to use in data transfers.
- */
-struct crypto_platform_data {
-	struct crypto_dma_data	*dma_slave;
-};
-
-#endif /* __LINUX_CRYPTO_ATMEL_H */
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
