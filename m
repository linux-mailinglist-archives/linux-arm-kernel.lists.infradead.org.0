Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEFE11E13A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWDYe2ZMZqgLzvGxp5pM0LgL5WnxbANxXC6fTuCv3zQ=; b=pM2e8u/WhMy04r
	K+sl9NDPJjMmGApVWXrNrKg1TvuXBmmleMprlqUG+Tj6K+wqchXxOryCy5C7brxUS6nWxemGfLrj4
	FUpf2NA0PPKzJ1LzQJaPs9QImvCIIU+tcyIvwClU4t0a+M8+i8e28QNiRsqhE7eIWl9DidUhpLX5Y
	1wKJlyE+UwlUJrSa/NyKaWuHYbDVFHWdNNoX2cbufKIoW3CJGDZ2E6WLS8ttwHC9JzN/vv5+mY+FD
	QaHefNAXkUB36jkA3QCf5jJlGEy77F9D/qGdVdKrdc3X0GtckOTWAclMruDuMtV0FBGYtRmR1Jv6B
	y7GorMVhlI0fNMdOQRmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhfF-0000a7-IK; Fri, 13 Dec 2019 09:55:13 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifheu-0000Yh-AO
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:54:53 +0000
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
IronPort-SDR: Wxc1BHQu0Ft7Vbod7NyRM3QAGynH88OulwHc/OzbHDOVOzyfLInMj0V4jzA+xeylAXnO8qRjkn
 sdL+6zAd5BFufsSPWemqcze6326oMlaIwxgtuK1DQAOBrI0BWb+B41du4qml1Afsjql+5RAhfR
 7TmFMy8NsIS2YW7LENGGVvdZJjSwWfQXcuecNq1pl2ScF3HDOZFEiutPG1bky01bdw9akqdeuK
 rROm26FaBbKV8e5w2i9FaNsk+Gzy4wpB6miTI9Y4NlsdTgEkrQlL72/ThZdG1q/0LkvsBee+rz
 0hQ=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="57649452"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 02:54:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 02:54:49 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Dec 2019 02:54:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JAZv96/oVjhy0TywBkSEm7i4soEA9IiAMBMMYiRiTKRbpvEEa5A01H2IZyV+kkL8lU+rlp7I2QyNoalu82yXJBDO3bqdv4S9f9YHPYLWp42hXZaXmzeye8ApvVwH4EKrLj79A2XKHrgl4Zz4U5MggkLvg43EDiOq6cjd//v5fh/Wif852kYEiozCfxWJzJdxq9DVb7S5RAcrnK4gbSCeVzVnZjU67mFf6W7S7Loxs75PcWWV/T43jPrOxViRv9iOeSYhucpBET9LmVF/mLqW0JPh2joszzJEIi9c/dnnLMaOhcHGCz0d+iLiBgxHvYnUMEj/9YRJlDBgOCUw3ILJEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NeDqx7LrQMA08AVT50hCJsEFCoejkUetk+9QxD5C1U=;
 b=ErJ6of+E7zlpc4KITDHQVgmjRfiVCXhFFKp2qDggf7DK9ULvr64PtKaLbHdyODaerETTrAmcA9GJdTxMqUAASsbMtTuDCk55KsAj4r+DNOMEx3+J9KIhwcwBpreCrwdRd7DMXqJmHncag9YjCgnqeHKtBalvc1ECCGQsLnOzqJp2bRZHAg5drl+ORTWiR5zaF7V3UtaKZyPsXYt9JfVCC6RaFYtcH25SVQMMCjjVkvlgc3F3N3ofeGlSeKOQLZW0dt5BYX7fjmjEdBP5WDJAJUIU8xv3U21lyID/LgA733MHlRqZSYPh3FsLTq9XK+7zOY4hxj7hta0k0onhM+BkSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NeDqx7LrQMA08AVT50hCJsEFCoejkUetk+9QxD5C1U=;
 b=utfwM0TM+MhWbJkhV6BrO5ZbUYdDZ8OWapruG9NpAbY6FWuAYSrlR8KLDgCFhkF/SQg1jObeJei8XUnnFolaQ+panmIetUNsfd6lGtkXmYcfySZXYWlZUzwopvUcN+lBR1E5c0zW8lbk9MJNIzyYZjkpwVv5Zmp/MiRNeaiRA5s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3935.namprd11.prod.outlook.com (10.255.180.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Fri, 13 Dec 2019 09:54:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 09:54:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 2/5] crypto: atmel-{aes,sha,tdes} - Drop duplicate init of
 dma_slave_config.direction
Thread-Topic: [PATCH 2/5] crypto: atmel-{aes,sha,tdes} - Drop duplicate init
 of dma_slave_config.direction
Thread-Index: AQHVsZta6SvbcgatykCqmhrO1amI4Q==
Date: Fri, 13 Dec 2019 09:54:46 +0000
Message-ID: <20191213095423.6687-2-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 489a8edc-f158-4a83-9cba-08d77fb27ca3
x-ms-traffictypediagnostic: MN2PR11MB3935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3935B5A50FD57DA29756DF8AF0540@MN2PR11MB3935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
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
x-microsoft-antispam-message-info: av3zv3dJ38E3DTZRebKgenpfp6Y+gyGx1mDOnpUDLblKsAf4ATwF8xQieqbQDciNjho22Q7SD2ZpR6gkCJVodvKBdCCLs0tR8IIsLHxEJKAQxYOYJtlehWZ1rj85+GJqyeMeqCuT+ijYYUX4pMq6Tu6JYBBccdjYTDd6E5GqyH41jBy/ajue+5dpq8C0uRq93A8t1PGB7+vg5PSsuHYUYFqRcH9ZbVnZCmCMGTeFLEZwbtLzjNTtwZeIO41aCLdFO7mg/LECGAO5vl70S6VepQ+a/TevSS88LFtfYpKoapZc0NExXuuZt81qC10DNMbBm4+QBFibUg7nOwm/jsvFdgFUKcZebCo6fSCrgjHdbhkcOPwRjI165t/9bDaTjCHfkpTJ2XKDol6+o0Hc3OoGUjFmi+umNZnN1D+7/IKujfvHrAeZHeynqgqMIIWmyc9fTUacT6RGZi1rqBJ6dQQldrLP1hu2aWrxuGjhDhCyUnTq2IyeX+JhYvRhItW8/Pc9
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 489a8edc-f158-4a83-9cba-08d77fb27ca3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 09:54:46.9947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emSCxbgYZo2dhNWivkyxxsLvezPZE7X60Q4r6I64A+FY11s9B62KLOSnivfTw8uer1E7WPn+l8BDGNgk7tZc2G6dmLECT+trrQMihiee8BQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015452_396629_C7C1425B 
X-CRM114-Status: UNSURE (   8.02  )
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

The 'direction' member of the dma_slave_config will be going away
as it duplicates the direction given in the prepare call.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c  | 1 -
 drivers/crypto/atmel-sha.c  | 1 -
 drivers/crypto/atmel-tdes.c | 2 --
 3 files changed, 4 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index c3f0e99d24b0..d5a116693010 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -817,7 +817,6 @@ static int atmel_aes_dma_transfer_start(struct atmel_aes_dev *dd,
 	int err;
 
 	memset(&config, 0, sizeof(config));
-	config.direction = dir;
 	config.src_addr_width = addr_width;
 	config.dst_addr_width = addr_width;
 	config.src_maxburst = maxburst;
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index 7cf4ec9ed93a..21fcc04f6688 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -2493,7 +2493,6 @@ static int atmel_sha_dma_init(struct atmel_sha_dev *dd,
 		return ret;
 	}
 
-	dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
 	dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
 		SHA_REG_DIN(0);
 	dd->dma_lch_in.dma_conf.src_maxburst = 1;
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 12268b549596..51b332527efd 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -753,7 +753,6 @@ static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
 		goto err_dma_in;
 	}
 
-	dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
 	dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
 		TDES_IDATA1R;
 	dd->dma_lch_in.dma_conf.src_maxburst = 1;
@@ -770,7 +769,6 @@ static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
 		goto err_dma_out;
 	}
 
-	dd->dma_lch_out.dma_conf.direction = DMA_DEV_TO_MEM;
 	dd->dma_lch_out.dma_conf.src_addr = dd->phys_base +
 		TDES_ODATA1R;
 	dd->dma_lch_out.dma_conf.src_maxburst = 1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
