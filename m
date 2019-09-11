Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A31AF94E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AmJ2NTo6MkJeehKAEyukyvRDWJx+sPsMQ4NGYzedgJ4=; b=WU1oCFzKlaP84x
	lOvimzvgTIifJ9GDXPJBHHq3gFg7SKazOnQMStSWVq18Hqp8++7ArfhS+Rqcxn4v/cbrC6rvnOn2G
	8Z6eTuDf/hK3x0oAB2TQnvDdvGsgP8MjepNPBmuiDufCQVx7UfcU5oDm6V8EOUTqaawUCZJ2Jc7rb
	2MPwZ0dyItqohl9cin+6qrJN1peGn90cR2siBnkEagbjgHgXdQZtDQc0ZXK+/hfTs9fD8TyiGnkB/
	A/qxktjgNcTJjTXHS9cyArcbc5EOvPsXaf9N1AAfuySIAk+KcrGFNr/2zvaUhylybZuzZPyOL00NV
	2J6aai59RJIx+5KNroKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zBI-0004e6-Cj; Wed, 11 Sep 2019 09:44:56 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7g-0001gg-Ur; Wed, 11 Sep 2019 09:41:14 +0000
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
IronPort-SDR: ciYjYe5olj+lNH2b/8zzBJuqBaM0AJNvEEQgTegNacb+1wEw1cDjJ8Xi4E2F6K6DZ5yGQsQz8+
 OD/I6bZf48doVdextxBv7KvBm5U+D2lz5t9YdZygH0OlcTG+dMESC20GPfLoGCA/u47r4/Py8e
 aRZhCT1q1VM56bdez5+Jz3a8cIDkg7TzAzUnFsS+iP+t+FeLc1/9Q5EQkUuJMZOTb6+2lWpMvl
 hwO5o1fYZkZ6aFZ2FQvtSRNLUptnFEeFExb49nBFmwOEYqFO94jePZsXt89L+37rGXLATgVLqq
 pSQ=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="47528356"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:40:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:40:44 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 02:40:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OnMQkyG/Mh6qIKRtOeihIIjv3E+l02JMwYYXl5pwMkfVR3mjrD/VxG6CSzfUAOCH95sw4pFmR0VQAWDUQxfqs//VySMFtv3mDNxpUqkvjVReAi6Eq+t/C926eprYRZb9o2HufFTrT25FjwkvpRpFz4is2ZsXsZm2R2UaGzQdSePVgW7hHg7URPI0KGnRQuaLQG+S1GnMepHzXEOJaWemJysvkgbCTDePA3/mlRVZtXZl1TzflCJiVxxEpkjyBU4rBj6HWoVJLPCAOQm+WgAVYC30JVBhVqh3riIAekQ/3/EXoZtFlurKWeQKZs55/N1+TpxTqv2jHOUel2vUXmTVEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ys0ySanDxvKSuni2DkoCA+py7hv5YKiDDD/ymu6Y3Ps=;
 b=BdUTKC/t9l3vF8k0w0nf/1Sub0ARMCuuPBMeA4lSJR3bNhs/G6CuaD03UnP/+uSjtZMotWYU+2+IusmeTmW2n3yOCHkpZLN/uZu55ausVif7ceLXTpNYyQCzNYZE8dbKdeLqisg6jWRYCh+RSgviUO2Uz6bCymTJ20IOiAk3PW45yjAtOijrtyHCDvnYaRD1X+9PAAfJRwdsnQnrDFs0b88NwcUILEcehgNFVelO7z/+Mflrz/y85A7jet5NuxyOlzH2O2chE6/4mjpsHMnTVkGk1NFApJJ+ydbHExJj23l2BLqaMxF0ykU9Wi8l8Tx2OAPqNQ12bgSZWNhVY4uXPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ys0ySanDxvKSuni2DkoCA+py7hv5YKiDDD/ymu6Y3Ps=;
 b=Tw4IX6APTmYAFGPhOYg37zNqxnyr/PZYoiOUiX22eqPgqs2ZrIDoUfL3C1X/ubrlaMxnWFxXf5zTP0mF6VT9ZXrrs/+ABmDBbg80goX/9xOF23GjtZTy/shUx8xXUdtKRn/YwGi2cr+aqMNaR2FNU6aCo0c8SuUBntm+98w2OgI=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:40:42 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:40:42 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 00/13] mtd: spi-nor: Clean Flash Register operations
Thread-Topic: [PATCH 00/13] mtd: spi-nor: Clean Flash Register operations
Thread-Index: AQHVaIT67doM0cAg5keFoIj15sOM0A==
Date: Wed, 11 Sep 2019 09:40:42 +0000
Message-ID: <20190911094031.17615-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0118.eurprd09.prod.outlook.com
 (2603:10a6:803:78::41) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5eccf51f-ced8-4b5f-2f29-08d7369c1cca
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401FD8ADAF90EBC036BB5AFF0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nYcOmEfZdcPo8pUuNQ8mfRLOSfuSpRKyvAPxpyhQ9P6DdCNp9zaN6YfEJ39U25MU+bh8XJ0NG2UXE1Ehgf23haDzbLqv9dxT5qjSG+drHkUL7Sjg/Gvl40E8aNvsBwWPBLi7vjDqDFaNhtvgUItmpOGEOLDPSAEoaYIErrTDiZAl3tKtQvUq1B6U5iIaQuXtkF013SwSK7tqS0GaUYE0QojmFyTiUG2m8TaU7M2T4yAk3ao6hnAs7GsrZNsWMFpPEv60xsR0nhWOLDJT4JRxpS5HU4VU8kkVRgco96iK13CQyBLAdiqiGHJLKBSN9G8I0GYx7Z52A3b9o1YPwctn+niDqTMZ56wrpYkkj00m3pxIGnG5pOzvLyA9qw4vypNYDNzUEoS6r/UA3fyexa/YxGf6QT9m5a7eMWEimjxpEgk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eccf51f-ced8-4b5f-2f29-08d7369c1cca
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:40:42.6232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TMoOJIKs9lb9JQXPtk+NpWgYpuunBsW9fB67/FmSFuFa/TKF3vK4CXWDrrluZxPRFQj8pNanf04RkoGqaWNDQ07uWXTtfea4ngQr8NEqm/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024113_146499_33A097CD 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Introduce 'struct spi_nor_controller_ops' and move all the SPI NOR
controller driver specific operations inside it.

Clean the SPI NOR Flash Register operations.

Tudor Ambarus (13):
  mtd: spi-nor: hisi-sfc: Drop nor->erase NULL asignment.
  mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
  mtd: spi-nor: cadence-quadspi: Fix cqspi_command_read() definition
  mtd: spi-nor: Rename nor->params to nor->flash
  mtd: spi-nor: Rework read_sr()
  mtd: spi-nor: Rework read_fsr()
  mtd: spi-nor: Rework read_cr()
  mtd: spi-nor: Rework write_enable/disable()
  mtd: spi-nor: Rework write_sr()
  mtd: spi-nor: Rework spi_nor_read/write_sr2()
  mtd: spi-nor: Report error in spi_nor_xread_sr()
  mtd: spi-nor: Void return type for spi_nor_clear_sr/fsr()
  mtd: spi-nor: Drop duplicated new line

 drivers/mtd/spi-nor/aspeed-smc.c      |   23 +-
 drivers/mtd/spi-nor/cadence-quadspi.c |   54 +-
 drivers/mtd/spi-nor/hisi-sfc.c        |   23 +-
 drivers/mtd/spi-nor/intel-spi.c       |   24 +-
 drivers/mtd/spi-nor/mtk-quadspi.c     |   25 +-
 drivers/mtd/spi-nor/nxp-spifi.c       |   23 +-
 drivers/mtd/spi-nor/spi-nor.c         | 1283 ++++++++++++++++++---------------
 include/linux/mtd/spi-nor.h           |   63 +-
 8 files changed, 824 insertions(+), 694 deletions(-)

-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
