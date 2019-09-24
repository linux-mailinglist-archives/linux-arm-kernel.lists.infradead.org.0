Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A88BC380
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRLFEYTquqZQ5cg/vlbYnyEUEAdi95QR1e9FSgCUO00=; b=bwsSIjzgQwwy92
	v8EnTovMuN7exg7pDWUgEiv/bt2Vlmo86D5CmGYMnwd9MrD2pLGqZ6iZf+hTymtwy+WJRdE4V51uS
	O22mB5bJ1/gJNN6HXf/T9vD3QOh+USY3nIC/5jVemwiFlo0mRyB9aUGYAf7jv0ySAcTUy79BV7Svn
	LW0gpjNen/4p6mmdBucg1iB7+InnePb+8MVLOnf5UlujpPwegSaIqqhkCdjH+iyJdvTL7L+yKnBw7
	PG7nskZkXzNjlNODMfpBqHIik8XrSxoePuTchue6VrrSr11hFwSWtjzA76N9LLxSbmvHsebMk7xCz
	8ZkbqMewbLc06X3hVJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfge-0005oN-Rq; Tue, 24 Sep 2019 07:56:40 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfWy-0004HC-J6; Tue, 24 Sep 2019 07:46:44 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: WyaAB6vePZ64oyM9HCGficqYY5gscx9j2nPOp7Ibh2gWOpLJBWsimsQgCI4Tb2sl0ZRQ3zFLGH
 jMtB58e/HtFCIpvELc+wxOfKTj6ONUJXOgE47qoTCFsipFCT5eH1RjDiaPsqBMyITwrjdjzvRd
 qP3hRDvQUaBAPMnz0ab046yNK9wsaRyl22aMeDY8bN+84KOTxOZugVDQ/l6u1f2VM+YHl96MjN
 BXwZWswDm1bcY0mZlhROir/Ofwy7oHORk24ymI1U2KnaGwAS88ERaxZ7+aTm/4rd8K2VQNFtil
 Jew=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="49066159"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:39 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Sep 2019 00:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVI3Av6yjWGPXYYdYx5UJaVzOGbFViuRjhPrO64aBMjWOgnJYc5Mw3JsE97hwRs/fDZUOZJEz0XaeWmXtavEJIwIZbL1gIS+8YveTVMctG1dht2yo2oN9plZhLQFmUOD7jPNLM0KBe390w7T1HfPln0TCDibwxrnTbkS0gOIyBQLdhjrzVhb9plntytU24buH6gz+JHWyQXrIzlgpNgJJSnOoe+wG5CUnnG4x0/VExiVUIzcSBTAg0kVoFt66dRowJ53VP8sQ8LxmY/ZYLgHB9GMnW34ZCPfYX4cDv3J2Wkf+/9r1YpV8I1UE64zk3WYwA3mG774vbXsMRLIvFkIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYZYbHuPFCDOfQWMOdFyoLqrdHxWtzITS85uwXtqQOU=;
 b=eQfNB+bvYXJ8ut6DKCX7da0o8OuB2B9DGoGiLmSRpQIFPz72M7LvLexWlOHT/Xr4Wd1VFh4b5jnEH5U+qG4ZAKxPh+Kju2jpceJkl07BG0ga2zOFoYtYcaw/x5dhuF8FXbMUXyFJFXyqz3GZz+FVg2lLk2GTqyhrlV4H0Nr22xRo+Rpb6GXf+Ao3ZemdprDNtRlQoEdamy0SDBsfuxOj9Lkdwp+PIY8L2exNBMHaFwgZUu9uAvv0tr+GPxYgkRWYTvadB/gyt+vGAEwPnM/A+VVxjRX0mfUaYvWuCKUWI+8gIOSLyIsb2XG7/+Bmtp+Q8+FTw/+cHwPPRo6MkRhi2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYZYbHuPFCDOfQWMOdFyoLqrdHxWtzITS85uwXtqQOU=;
 b=cBdKBRwdEefknUXatdE94aQXYLfsnoKccOc0Jypvs9ClExE1dd8J+Un++4+9mqnAEMz+SDrM+YplMM4cXpuUp7B0K5ARMYDugBgiPvs9VL11zKErK4mE8Ar76P6db9kJwFEzTALKRzDvfgBYaRGiIoSUbP1g79w47Dy6h7AErMU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:38 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:38 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 14/22] mtd: spi-nor: Drop duplicated new line
Thread-Topic: [PATCH v2 14/22] mtd: spi-nor: Drop duplicated new line
Thread-Index: AQHVcqwyfs9wXyU76EaTMhQ38FDWyg==
Date: Tue, 24 Sep 2019 07:46:38 +0000
Message-ID: <20190924074533.6618-15-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0101CA0082.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::50) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2892f808-34fc-499c-cb23-08d740c354a1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319CD6BDD7CAE1BACB3F875F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(14444005)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(4744005)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /qHikcriA1ge+RA6pKe3cyeZ98rrgequCQvZta4fb5aXvH1SqyBJsLa9GapZP5ItEFTpMaBu3BI+cqHZtxON3HGKBXsDcMwm2HHsAKAwaQtKMtloG5FUuH4Pi0LNdSeYdZu8IJa7OGgeQj+hxzIxauxCEu7ZUFBHc2nleLr5yZf0RAehPmIB4/ZBHcXCdOtEwXJyiQtHNScDJW5GU5WLL8l5Lmh0LKf4548L5vo8fPMaiCIAkcC9XavUVqpIdz+/cjYtQUdygWTNbiBiT9NjDwNp4FynELl/8z8+N4t7R7CG7t3WV1wpbSK9rLeSbAqgeywdmeHCR8ES8LYqHSrVq2EfPKREWUcy+UUkbBm+qETsFgRnO501HkRaspqEAp/s5xz4+R81hY9HMqeJw1xAxurlM4dJVlUUNA0n5kXZ8VA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2892f808-34fc-499c-cb23-08d740c354a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:38.1832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XA4XitCIbfcxmKtkaAhqs0PqQL/wiVaHXwbDc6e8PiGpz6W3eXUwiuPBCJ1v2aSXVujcNYDheCSKTsQsYdeMPgZcHXq/7IutC2Y1ZqtJ5Z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004640_794920_E8F34C70 
X-CRM114-Status: UNSURE (   7.89  )
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
Cc: linux-aspeed@lists.ozlabs.org, Tudor.Ambarus@microchip.com, andrew@aj.id.au,
 richard@nod.at, linux-kernel@vger.kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, joel@jms.id.au, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Two new lines, remove one.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 191a76c3f7bb..d971f5a4b11f 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -841,7 +841,6 @@ static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
 	return mtd->priv;
 }
 
-
 static u8 spi_nor_convert_opcode(u8 opcode, const u8 table[][2], size_t size)
 {
 	size_t i;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
