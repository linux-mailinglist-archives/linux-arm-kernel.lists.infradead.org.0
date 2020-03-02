Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC35176345
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrZWpzdoue7NSL1guP3eKlCqxBixw1tggLUe68eWno0=; b=LopPIiHrLJOvbv
	++bL6pNPX8sUh9VbTSzoUZ8TBH8P4f3akq1Vlug00ALl5fLEej9W1u0rgFuxrN2sjWZE2MOEDa8Ia
	R4ZrtTT8caAsfUq4i2bloXfUcooNbX5+d/Kty9sI8TZ+WLvDIo4hP7TprvzNLGmz4BZu0LuHG1LwS
	kc/BG3GKPU+4sXuU8o1TRO6vbTftgy6h7NZQ4XXO3aHl9oI1Ff87qSBxEMoHIUn/3CHdur8a6fw6Y
	PtERGKfUyGgWt8tb6hLn+Wp64xQ+VL3mNCh9iWCBtoBviRfnwHgXWa339KmKf8iikOuc/OfHauIIn
	aLItr+x7yubZHaa3UAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qCC-00065s-QL; Mon, 02 Mar 2020 18:53:40 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qBj-0005sx-Tn; Mon, 02 Mar 2020 18:53:13 +0000
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
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8fKviJL7RBGjSn8YkyTm1qnM08NFFuZACjexHFP+zcD1IA3uw9cHoBZSLaztuKz0Y+8g5e9+d4
 kS5jhaOHpLlnHfOqNrs3WTvG0ohhoA1KVdl3tOn4RhB+a/hVse0avYhSSivoy0nDJzn8Qs7RWx
 MzjTkjbze84vzUHeafG1s5ZZcB54vemtZ+ivNE6iO+hj144O93v3Me4u6ZXw90o8bAmYq/zqiW
 gwNsDdBRvIVqwb3NpQlPXwwiAK6YMzYdHYyMs5GrsEBtr8lxTNhDoeckad+XcQhtzp5d4KxurU
 zBI=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="68558015"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:53:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BI2NBcMntWmq5nKoMQyQczleDqhAkUzCgQ4hBA9Nre2pLPB8zLMo5uFCBRd+hNCf95KWyC3hMFQcwBzp0H5THDfH66vPOPdh7wkYZ+keATmaG8MXeIDVUoNfD9bWpT5Swz3ZThl3ac96sy8RMCLzuyYuWvKbaMBiT6/gA+NtvRC9E/aZDy9mQXr0b5TdhzEl3MRbSGuQjUIHaH3QuwosWyl7SjVt3fF4JIZzhKyGRPVVmOERwjgylVqxQRbxiesJe31z4lEDTnxKaJtuRV7/SafRzKODH6tUHSLVAf9KBykcEuPxP6Y/tz0Hhq4q7kRFzIPCsiov/KEF2sXGOme3JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkDxmOAlGAqDu7TncfYxduHCeHTW5VhY4jxkovhyIZo=;
 b=j13+WuQ8PMY2x8BWKWolTuPFt0Y9qLA6JnbyALso9FfKveHLddtuEjSieVjxrhwn+onrZH0DKCIh98Kq26JllsH6ZMqUZcK0jUfqnn7bQoB+zpATO9zwDl9eQWCCTKA3f2lryRfWkzz7ZpSCnfxsxeqO7shDRsxwze9LqO+vGhTqxF4WKAdSE3Bs6KoeGFuhCmQ2V6MNd+81kP5XAheiJCADUH5x93LlD7RcVyxWR30TzTXHur3E2aE510pKOMedn2k+RLjjv/tRWg8wqQfRneUhV79hf80s8+na1j2RZH2EfPFZfMizh7JlCkogTfK/GPGkQfIHqL9jaXGsQ3DaMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkDxmOAlGAqDu7TncfYxduHCeHTW5VhY4jxkovhyIZo=;
 b=SE+PJoJ0ZuMFd5LvyU4gTnsZkE+qvranMSYJGKqSol4DVl82tpTdDstL1DsoGqO/MyU20tyacG4dYdgNAI94wNq9+A3K0sr32yHMfnN6muHTyNGdCtCJR0DVzYCoELV5DWVB7+rxlPAD8LQHDM3LjNERvcJZxP38DnLqhCzCL/Q=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:54 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:54 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 15/23] mtd: spi-nor: Move Micron/ST bits out of core.c
Thread-Topic: [PATCH 15/23] mtd: spi-nor: Move Micron/ST bits out of core.c
Thread-Index: AQHV8L1+gJS7qPNcuESq74JW7WJBUA==
Date: Mon, 2 Mar 2020 18:07:53 +0000
Message-ID: <20200302180730.1886678-16-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b5f6de6-dc5b-4ef4-9a93-08d7bed4a108
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB41427222528325550D3A17DBF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(30864003)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ue4ix5RVmQ+bW5kegReSBoFA5a4HyYHzxxzLeU8UFZjR6IWCYNk9upbhHycTd1NSOpbMOyhHfPwqSlp07R6or5xvrZzQIWjXuhU71Jjuzo5i2B4ZiRKzW33XavuZdENlAVWa7s8Azn8EFeeGBXVWx1J37bnc1qoEIVfhjsD0m5HVucYz8Xu3asVyrthcCA/ps82FDrHEkE+cuWuPetLKsWKcUFMOgW5UMqVK9gFxnS8slqMLAIgR9ILb3WQTVRMatisNmfdqHa2ypCeaKTwzvcruNVQQ0Yv938TYjjURLwxJ79ox/CJ0SCFXxe6WeG0siUCD0EGCAtxpQ8GTZcvNpsHGq/P18dNw8U/+m9MK2tVwNq+snA0rf+7ScHYOciEvEGmi8Ax+r1kOi9NjpZM74DJCyngfpahqdEhRqj6EX6D2V9vNsW27kD7O02riwJlr
x-ms-exchange-antispam-messagedata: kMCdad3fLF/qo3VmdyISWyCqZK74bOY9c9hj28S98jCvzD25AZMokdyhlO08ArXsTR1KKqt3sE+j2Gjst7S2CdXyXTgSIBnJRfnOaNfJ77oWBV7sUDjf8i9nPlcxxU/qNf1OlH+6FjXB+420CkXzvg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b5f6de6-dc5b-4ef4-9a93-08d7bed4a108
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:53.2239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1lR17PK9nJ+WsMM9o6tGEBpAOBK3/Qvt+L/UFErh9ZRXAep71Wg9qenYmdkGcVHc1s5g2Jjz6pQCuHdsrDCN0TAKjg0MSRHmVLKbyQgCApc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_105312_012510_2B1E808C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 Tudor.Ambarus@microchip.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Create a SPI NOR manufacturer driver for Micron/ST chips, and move the
Micron/ST definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile    |   1 +
 drivers/mtd/spi-nor/core.c      |  98 +-----------------------
 drivers/mtd/spi-nor/core.h      |   2 +
 drivers/mtd/spi-nor/micron-st.c | 129 ++++++++++++++++++++++++++++++++
 4 files changed, 134 insertions(+), 96 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/micron-st.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index c94798987801..c7e5fb908bec 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -10,4 +10,5 @@ spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
 spi-nor-objs			+= issi.o
 spi-nor-objs			+= macronix.o
+spi-nor-objs			+= micron-st.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 9d0e0fc5af45..8d54dfe33cdc 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2017,53 +2017,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Micron <--> ST Micro */
-	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
-	{ "n25q032a",	 INFO(0x20bb16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
-	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25ql256a",  INFO6(0x20ba19, 0x104400, 64 * 1024,  512,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
-			      USE_FSR | SPI_NOR_DUAL_READ |
-			      SPI_NOR_QUAD_READ) },
-	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25ql512a",  INFO6(0x20ba20, 0x104400, 64 * 1024, 1024,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25qu512a",  INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-	{ "mt25ql02g",   INFO(0x20ba22, 0, 64 * 1024, 4096,
-			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
-			      NO_CHIP_ERASE) },
-	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-
-	/* Micron */
-	{
-		"mt35xu512aba", INFO(0x2c5b1a, 0, 128 * 1024, 512,
-			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
-			SPI_NOR_4B_OPCODES)
-	},
-	{ "mt35xu02g",  INFO(0x2c5b1c, 0, 128 * 1024, 2048,
-			     SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
-			     SPI_NOR_4B_OPCODES) },
-
 	/* Spansion/Cypress -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
@@ -2121,42 +2074,6 @@ static const struct flash_info spi_nor_ids[] = {
 			      SPI_NOR_DUAL_READ) },
 	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 
-	/* ST Microelectronics -- newer production may have feature updates */
-	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
-	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
-	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
-	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
-	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
-	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
-	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
-	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
-
-	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
-	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
-	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
-	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
-	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
-	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
-	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
-	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
-	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
-
-	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
-	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
-	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
-
-	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
-	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
-	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
-
-	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, SECT_4K) },
-	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
-	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
-
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
 	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
 	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
@@ -2254,6 +2171,8 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_intel,
 	&spi_nor_issi,
 	&spi_nor_macronix,
+	&spi_nor_micron,
+	&spi_nor_st,
 };
 
 static const struct flash_info *
@@ -3038,14 +2957,6 @@ static void sst_set_default_init(struct spi_nor *nor)
 	nor->flags |= SNOR_F_HAS_LOCK;
 }
 
-static void st_micron_set_default_init(struct spi_nor *nor)
-{
-	nor->flags |= SNOR_F_HAS_LOCK;
-	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-	nor->params.quad_enable = NULL;
-	nor->params.set_4byte = spi_nor_en4_ex4_wen_set_4byte;
-}
-
 static void winbond_set_default_init(struct spi_nor *nor)
 {
 	nor->params.set_4byte = winbond_set_4byte;
@@ -3060,11 +2971,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_ST:
-	case SNOR_MFR_MICRON:
-		st_micron_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_SST:
 		sst_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 9af3a701de95..7e3ec8e4ef34 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -176,6 +176,8 @@ extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
 extern const struct spi_nor_manufacturer spi_nor_issi;
 extern const struct spi_nor_manufacturer spi_nor_macronix;
+extern const struct spi_nor_manufacturer spi_nor_micron;
+extern const struct spi_nor_manufacturer spi_nor_st;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
new file mode 100644
index 000000000000..8017ca58b3a5
--- /dev/null
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005, Intec Automation Inc.
+ * Copyright (C) 2014, Freescale Semiconductor, Inc.
+ */
+
+#include <linux/mtd/spi-nor.h>
+
+#include "core.h"
+
+static const struct flash_info micron_parts[] = {
+	{ "mt35xu512aba", INFO(0x2c5b1a, 0, 128 * 1024, 512,
+			       SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
+			       SPI_NOR_4B_OPCODES) },
+	{ "mt35xu02g", INFO(0x2c5b1c, 0, 128 * 1024, 2048,
+			    SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
+			    SPI_NOR_4B_OPCODES) },
+};
+
+static const struct flash_info st_parts[] = {
+	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64,
+			      SPI_NOR_QUAD_READ) },
+	{ "n25q032a",	 INFO(0x20bb16, 0, 64 * 1024,   64,
+			      SPI_NOR_QUAD_READ) },
+	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25ql256a",  INFO6(0x20ba19, 0x104400, 64 * 1024,  512,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
+			      USE_FSR | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25ql512a",  INFO6(0x20ba20, 0x104400, 64 * 1024, 1024,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25qu512a",  INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "mt25ql02g",   INFO(0x20ba22, 0, 64 * 1024, 4096,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+
+	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
+	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
+	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
+	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
+	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
+	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
+	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
+	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
+	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
+
+	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
+	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
+	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
+	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
+	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
+	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
+	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
+	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
+	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
+
+	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
+	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
+	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
+
+	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
+	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
+	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
+
+	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, SECT_4K) },
+	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
+	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
+};
+
+static void micron_st_default_init(struct spi_nor *nor)
+{
+	nor->flags |= SNOR_F_HAS_LOCK;
+	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
+	nor->params.quad_enable = NULL;
+	nor->params.set_4byte = spi_nor_en4_ex4_wen_set_4byte;
+}
+
+static const struct spi_nor_fixups micron_st_fixups = {
+	.default_init = micron_st_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_micron = {
+	.name = "micron",
+	.parts = micron_parts,
+	.nparts = ARRAY_SIZE(micron_parts),
+	.fixups = &micron_st_fixups,
+};
+
+const struct spi_nor_manufacturer spi_nor_st = {
+	.name = "st",
+	.parts = st_parts,
+	.nparts = ARRAY_SIZE(st_parts),
+	.fixups = &micron_st_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
