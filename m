Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50F5260F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8saKBD1h+9x4Ja2BI40NJa4u0D/ljCWOvud5IB43nk=; b=lb4nTDl/WlgMPP
	3mocXW/BdofulXwihvtSeGV6vc2Tljmkph2rX37swNW9BjzAMwj5MU8geX4Hy5n9UQOe+IT3LNzLw
	HUvrqi2W8LqLWIf+xua7nrDxYZeXRmgAVM0wV6TPXE718eFpo4pnI1Q7qeCMqGOZqRSkAfTK9qR1M
	tyRoD8B+PciVRVRMaipqgCNBPW2noFwwkG/38ZzL86RHbEOaKYmvJN3mDI/FzgnyAEiUgBAXNJYwE
	+FfbhAb90Spjc7LVWlIbEoq39XDIyvXlE3NBC5w8gZttNAD5U97HIx4Le6bo6yLg2QFqu30ahAob+
	J96WC5wNZDxxxJKwUP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgUV-0002ha-1r; Tue, 25 Jun 2019 08:07:47 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgS1-0000Va-3Z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:05:15 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="40295037"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2019 01:05:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Jun 2019 01:05:15 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Jun 2019 01:05:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPtpqbILqCkHvj0cCIsvblV4Ujs4kfGwKiApPqwXVrE=;
 b=ZG1JZJcy9/qHMV4FkKqel1IOpzDkXBIpgqTeLtTUSIn5CIAmNPGgf/CzR7a03VeE7A7ZpZ5+VNROPLptKU/FBLPTpQ9L0usaLkMEaEL+oxxm0zE1BV2bwEC1eWbmcu5E3hoGoztD8RLbqSM7ULGPBjOTagnL24sCJVJhYmvlzy4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1289.namprd11.prod.outlook.com (10.168.103.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 08:05:04 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 08:05:03 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 7/9] i2c: at91: add support for analog filtering
Thread-Topic: [PATCH v2 7/9] i2c: at91: add support for analog filtering
Thread-Index: AQHVKyyxFUkNa/ZYyUGd5i25NVGhpQ==
Date: Tue, 25 Jun 2019 08:05:03 +0000
Message-ID: <1561449642-26956-8-git-send-email-eugen.hristev@microchip.com>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0105.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::34) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 696859fa-124f-4b92-8e0e-08d6f943d3ee
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1289; 
x-ms-traffictypediagnostic: DM5PR11MB1289:
x-microsoft-antispam-prvs: <DM5PR11MB128904686B0C4D044B5E94B8E8E30@DM5PR11MB1289.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(366004)(396003)(346002)(189003)(199004)(6512007)(53936002)(86362001)(110136005)(6486002)(6436002)(2201001)(316002)(14454004)(2906002)(478600001)(72206003)(66556008)(5660300002)(64756008)(66946007)(66476007)(66446008)(256004)(71200400001)(71190400001)(36756003)(107886003)(305945005)(7736002)(6116002)(25786009)(73956011)(4326008)(3846002)(68736007)(446003)(11346002)(386003)(52116002)(76176011)(2501003)(99286004)(6506007)(486006)(476003)(2616005)(8676002)(66066001)(186003)(26005)(102836004)(50226002)(81166006)(8936002)(81156014)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1289;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cQBae6UjhoH0Mi+gG+RPBd+ZFxPaW7k8qoLnnqYYTo16EJBBzz4Pp8X8TKgrkKmATvmlwQIXNxvITlp8LRPE47TTfR3x64tvtXFEcI7lNetqr99fs1EK5OAth2gFOjBbsmhWEyBMo+8KF5SKpL2XTXyOqqsH4lRxbbEwn0KX2jxIi7pggLy+74168qZAwGMCSd4wdWtPFPIPKPcI4g9YKK0nc6SxLziKOZg80l+Zdai9PW565FepymI7d8R4Y3YB3Wv/p8m601tdffc/bwH6uYXOAciKiHkBfKmU7o7Zej9U4eSqi1H4tDTFFeNGZytzU9CxMfNzR0prgTtK5M/sFdSVmLX9Aa08aI0j/14xim9OCrOqIvzi+pLLjK98Ci33u0pPjq2zEivDEB4drT22UjnbmDyx/3lJlDsPiYvvAaE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 696859fa-124f-4b92-8e0e-08d6f943d3ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 08:05:03.8790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_010513_366810_31C13230 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add support for analog filtering for i2c lines.
The sama5d2 and sam9x60 support this feature.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c   |  9 +++++++++
 drivers/i2c/busses/i2c-at91-master.c | 17 +++++++++++++----
 drivers/i2c/busses/i2c-at91.h        |  4 ++++
 3 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 3bbe37c..d2840ba 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -70,6 +70,7 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
@@ -80,6 +81,7 @@ static struct at91_twi_pdata at91sam9261_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
@@ -90,6 +92,7 @@ static struct at91_twi_pdata at91sam9260_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
@@ -100,6 +103,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
@@ -110,6 +114,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -142,6 +147,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_hold_field = false,
 	.has_dig_filtr = false,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
@@ -152,6 +158,7 @@ static struct at91_twi_pdata sama5d4_config = {
 	.has_hold_field = true,
 	.has_dig_filtr = true,
 	.has_adv_dig_filtr = false,
+	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
@@ -162,6 +169,7 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_hold_field = true,
 	.has_dig_filtr = true,
 	.has_adv_dig_filtr = true,
+	.has_ana_filtr = true,
 };
 
 static struct at91_twi_pdata sam9x60_config = {
@@ -172,6 +180,7 @@ static struct at91_twi_pdata sam9x60_config = {
 	.has_hold_field = true,
 	.has_dig_filtr = true,
 	.has_adv_dig_filtr = true,
+	.has_ana_filtr = true,
 };
 
 static const struct of_device_id atmel_twi_dt_ids[] = {
diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index d82601b..8fe3a2c 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -32,6 +32,7 @@
 void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 {
 	struct at91_twi_pdata *pdata = dev->pdata;
+	u32 filtr = 0;
 
 	/* FIFO should be enabled immediately after the software reset */
 	if (dev->fifo_size)
@@ -42,13 +43,19 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 
 	/* enable digital filter */
 	if (pdata->has_dig_filtr && dev->enable_dig_filt)
-		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);
+		filtr |= AT91_TWI_FILTR_FILT;
 
 	/* enable advanced digital filter */
 	if (pdata->has_adv_dig_filtr && dev->enable_dig_filt)
-		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT |
-			       (AT91_TWI_FILTR_THRES(7) &
-				AT91_TWI_FILTR_THRES_MASK));
+		filtr |= AT91_TWI_FILTR_FILT |
+			 (AT91_TWI_FILTR_THRES(7) & AT91_TWI_FILTR_THRES_MASK);
+
+	/* enable analog filter */
+	if (pdata->has_ana_filtr && dev->enable_ana_filt)
+		filtr |= AT91_TWI_FILTR_PADFEN | AT91_TWI_FILTR_PADFCFG;
+
+	if (filtr)
+		at91_twi_write(dev, AT91_TWI_FILTR, filtr);
 }
 
 /*
@@ -807,6 +814,8 @@ int at91_twi_probe_master(struct platform_device *pdev,
 	dev->enable_dig_filt = of_property_read_bool(pdev->dev.of_node,
 						     "enable-dig-filt");
 
+	dev->enable_ana_filt = of_property_read_bool(pdev->dev.of_node,
+						     "enable-ana-filt");
 	at91_calc_twi_clock(dev);
 
 	dev->adapter.algo = &at91_twi_algorithm;
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 7b8c371..4ca9c191 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -86,6 +86,8 @@
 
 #define AT91_TWI_FILTR		0x0044
 #define AT91_TWI_FILTR_FILT	BIT(0)
+#define AT91_TWI_FILTR_PADFEN	BIT(1)
+#define AT91_TWI_FILTR_PADFCFG	BIT(2)
 #define AT91_TWI_FILTR_THRES(v)		((v) << 8)
 #define AT91_TWI_FILTR_THRES_MASK	GENMASK(10, 8)
 
@@ -115,6 +117,7 @@ struct at91_twi_pdata {
 	bool has_hold_field;
 	bool has_dig_filtr;
 	bool has_adv_dig_filtr;
+	bool has_ana_filtr;
 	struct at_dma_slave dma_slave;
 };
 
@@ -153,6 +156,7 @@ struct at91_twi_dev {
 	struct i2c_client *slave;
 #endif
 	bool enable_dig_filt;
+	bool enable_ana_filt;
 };
 
 unsigned at91_twi_read(struct at91_twi_dev *dev, unsigned reg);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
