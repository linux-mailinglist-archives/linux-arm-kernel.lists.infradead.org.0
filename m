Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E554D113ED6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp3mQwhOvuVcZXUW2hdcSy9p1Uf77duEEwRJDBMQlrk=; b=XdKqMN7ESM8igL
	Wt0OyXVglfJnY2tAtpA7pcYJlQKXN7XXlIgUzaUW/9Lnwfihs/KYiK76ocVLe+thX2kbx1gRmEZGU
	niMuzHbdWrY/1htQHMqgzLCzkblZxBgKJRM/P3f6YAe/oWEkGjhrnKVotm+6qWUzo5ABrZh97WhtC
	e0j3FgqAyUmSSDjmvB+UNFU1PgRDJZz88sX0m6gDKpRhY7oYkm3LHkNvqKRiYc3QOiWWzpG3q7Fjn
	U5j8mriFLAAdXJqIKr4KUHkK8FXvslKXn3wdaTkr1h++D5fFDnqnNUEfotGNqa5gc8mnyskdwwHYH
	p1N6cck1QrWwLck7MrfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnrs-0006SN-Lc; Thu, 05 Dec 2019 09:56:16 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpg-00030j-On
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:02 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: mvrC3xOwnAcgryn910WMshypjFqmoH6Pr7vQ6aek52q2oO+RvzByEDKljyFxtDKYP95Plkdkg9
 kN62HxHZ1LwrpGSLJmnOLDGmYb5FSuAj+AePUNbBYrT/yNcBrIbYKg+3jLFsySw0sRAoYDrh1R
 V+Wtpkg4RasHgV3BO4q0hlj9hV1bruf0J/UvP5SAK4WS6nZ9qazx7siftWbERRyuWJLpISja+Q
 IG7P6NvWdEFWraKrjIOnMYByeB/eFuwY3KGWrt6IzHLGQfQZnTKhksZYMr695Qnh3LTDRv22NM
 X6w=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="57544835"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:52 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 02:53:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayJZbXF59jqlORHEK7GxEeRbV8EitzLEATdd0zkDAFVd9YCakEQlkTlELLcioQIe+8BIs7RwmpS7ACo9FSbR5WMVdISSVey2slf/D/UKzk9UU2bYJZFv+UqQj8atJB0xoBtIDM5/qIYUjopRgs7SKkZg782CqNusppOVcjiKsTpq0uSswbvCF+7Q/95AlBk5JKARWEuGHqiwUWradwzV76njbLR8eD7vHGGDMVGOeSRslUbx/QrMJbhprAACQ3R/X49Kr3u+BP0H4YeMPjS2f0wEJr+/iZdOtZXPR+f8yZUHEtDAoNprbiSMewikIzbtAuPeKv4Bjg9owD7Tmbrf9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvSrvoS5dVkNU+oGN2yTf3DQHoV59G2i2Qo6vcY+f9M=;
 b=TgpmPneSWdIUhwWnLA2VJj4KQDWefGnr06A5GSxmBfGBYfbZagdYADmN5SSFzZ5icWURLMp9VPbwCqJSMmp4AYUzAOs6X/P4pYRAA1bWAGDwErgnGzrH37mGeTvYmDVv+fKVmbxbAQoGm8mmDs9Xt/G4Zn8sbMfyvl+4xsebjoJ9rRgmPTnJIl54Xn8Dpw5dg81Wfr9F25Gid6AWv9vigEdubfZ10p6MmWOQZU0BxJvZcwIm3KvPpubAiiu9KH+sqA5sGs0lBJ25Fx9us6xphxUzhPbNQLCvYVRju2abftzPZAOlQ3fslTJiRz4iPoq8eWnu4btfGgx/e4GqogdQjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvSrvoS5dVkNU+oGN2yTf3DQHoV59G2i2Qo6vcY+f9M=;
 b=uW4XbtAvZ6utytbEWvjWxKLgJmZurVwG6d07FSN+rjPGVYu78BTCfb9BViFtq5EF8o3y3N6jnIBN0AljPKSvfn488wzVjPgqDVSk+MrhW0MKqGQSxqhzykVy+zb4p/dVdtK9PjUo2q2e0ULfua7TKN84UkUlwZ3A0BxYkH6accA=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4288.namprd11.prod.outlook.com (52.135.37.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Thu, 5 Dec 2019 09:53:50 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:50 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 04/16] crypto: atmel-{sha,tdes} - Propagate error from
 _hw_version_init()
Thread-Topic: [PATCH 04/16] crypto: atmel-{sha,tdes} - Propagate error from
 _hw_version_init()
Thread-Index: AQHVq1HlIYTa3qx/o0e+5eYjgTGE8g==
Date: Thu, 5 Dec 2019 09:53:50 +0000
Message-ID: <20191205095326.5094-5-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 949bd7b1-98eb-4ce4-2129-08d77969076a
x-ms-traffictypediagnostic: MN2PR11MB4288:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4288113427DE25F7EABD9800F05C0@MN2PR11MB4288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(6506007)(1076003)(305945005)(4326008)(2616005)(86362001)(478600001)(11346002)(102836004)(107886003)(2906002)(50226002)(5660300002)(66446008)(66946007)(66476007)(66556008)(14454004)(1730700003)(64756008)(76176011)(8936002)(52116002)(81166006)(186003)(5640700003)(81156014)(36756003)(71200400001)(71190400001)(54906003)(6512007)(316002)(6486002)(25786009)(8676002)(26005)(6916009)(99286004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4288;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZJOB9lrb2Iv2qFCBxPkbf61byBKWRIeHHEo96dc9cNt1aCbMmzimWswZD81VJkDenLYJLnz4TQFH9R64zewZ6Nm/jUdce3qOheHxyJvzJJKElqbDvkcGgMTj0fN1v6c1e7UBFc+A5qNbIHuq6WFC+4SQaSELaflSDuNbmt3W1XpAkJdnAPHil8vNS6XBDJDTdO0eZVu4EI0ESeDWOcUMHEwO6MjOW50uBUDujWSiD0Eqd5aM1tNFbhIw8fNe1KbgzPXO2cmu/3m2uYnEghKRSPBGMnXuoULZTN7bHKYxA9YESikMULs1wppvEYqWpP6VLPLPSr266iaav7MzHPNjlhfZUZay3T79OwbNy0uMl6aNRzQNbZzbhMwDO/DxxLww6Lk6sOE8G7ZbgN8Eq82TPjXVXFpZN7lOgnr713FHvGJxmiAP1UXjEgjsumAse+8CfDboQ4j6KaiLosp2dC5U+VkwR5fJw1DX6bfmuIqDre7OKUQvoOc0wMzGcmKDUg/x
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 949bd7b1-98eb-4ce4-2129-08d77969076a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:50.0956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6/PXqWM6g911pFXIwoyebhNfmJris6bkwgJWOLJyXxgZx9DqI9miDuTN2NAAeVEPNnjmXurbD0gMnBivfrLWyvr69z6Lno8MYgo5KUHOyxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015400_872108_23A0D6A9 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

atmel_{sha,tdes}_hw_version_init() calls atmel_{sha,tdes}_hw_init(),
which may fail. Check the return code of atmel_{sha,tdes}_hw_init()
and propagate the error if needed.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-sha.c  | 14 +++++++++++---
 drivers/crypto/atmel-tdes.c | 14 +++++++++++---
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index 3bbec58bf2cd..bf53b8aa8bfc 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -1038,9 +1038,13 @@ static inline unsigned int atmel_sha_get_version(struct atmel_sha_dev *dd)
 	return atmel_sha_read(dd, SHA_HW_VERSION) & 0x00000fff;
 }
 
-static void atmel_sha_hw_version_init(struct atmel_sha_dev *dd)
+static int atmel_sha_hw_version_init(struct atmel_sha_dev *dd)
 {
-	atmel_sha_hw_init(dd);
+	int err;
+
+	err = atmel_sha_hw_init(dd);
+	if (err)
+		return err;
 
 	dd->hw_version = atmel_sha_get_version(dd);
 
@@ -1048,6 +1052,8 @@ static void atmel_sha_hw_version_init(struct atmel_sha_dev *dd)
 			"version: 0x%x\n", dd->hw_version);
 
 	clk_disable(dd->iclk);
+
+	return 0;
 }
 
 static int atmel_sha_handle_queue(struct atmel_sha_dev *dd,
@@ -2811,7 +2817,9 @@ static int atmel_sha_probe(struct platform_device *pdev)
 	if (err)
 		goto res_err;
 
-	atmel_sha_hw_version_init(sha_dd);
+	err = atmel_sha_hw_version_init(sha_dd);
+	if (err)
+		goto iclk_unprepare;
 
 	atmel_sha_get_cap(sha_dd);
 
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 1b1767ca9444..c47ceb593fa4 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -236,9 +236,13 @@ static inline unsigned int atmel_tdes_get_version(struct atmel_tdes_dev *dd)
 	return atmel_tdes_read(dd, TDES_HW_VERSION) & 0x00000fff;
 }
 
-static void atmel_tdes_hw_version_init(struct atmel_tdes_dev *dd)
+static int atmel_tdes_hw_version_init(struct atmel_tdes_dev *dd)
 {
-	atmel_tdes_hw_init(dd);
+	int err;
+
+	err = atmel_tdes_hw_init(dd);
+	if (err)
+		return err;
 
 	dd->hw_version = atmel_tdes_get_version(dd);
 
@@ -246,6 +250,8 @@ static void atmel_tdes_hw_version_init(struct atmel_tdes_dev *dd)
 			"version: 0x%x\n", dd->hw_version);
 
 	clk_disable_unprepare(dd->iclk);
+
+	return 0;
 }
 
 static void atmel_tdes_dma_callback(void *data)
@@ -1309,7 +1315,9 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 		goto res_err;
 	}
 
-	atmel_tdes_hw_version_init(tdes_dd);
+	err = atmel_tdes_hw_version_init(tdes_dd);
+	if (err)
+		goto res_err;
 
 	atmel_tdes_get_cap(tdes_dd);
 
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
