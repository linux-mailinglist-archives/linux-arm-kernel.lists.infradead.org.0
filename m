Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B5636CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXOlcHdZB7tiegnF8wfJhvBHfrW5p7fVSxtPWDQNG64=; b=mY9c6ywCMm9lx1
	cq2k0e7WJw4593Uo0ZU+QjsVkdg/N/4IF72HTdP126dpwzqrC1b3CJjKalUr6id6qoixuTDGVqWod
	zIqWymLaMaB8bBg7VALrmBH66rjOgrF/8DHgtbJnjuT3vgXQbfzcTUI6ve4RoywEJpzWaQ4UJGDsZ
	4ngHAUdkA7ZE8VO2bPbGSPwfJH32cgr+rf1pQ4WZIfl1jy1qbcSnLP5idlM2UHVT1nA7wW3apqLuR
	MCrP1xLpddtdq+OG3AQqddWTS6T7hM7RdSU6di8UAElazdZzPXEDo6XqrBQ1yGPi+qkN8Piuq06lE
	hNRc+mc0lcbY1sWmqXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkq3s-0003QI-1j; Tue, 09 Jul 2019 13:21:36 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkq2B-00017b-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:19:53 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: W4By7rnWN36FO3XLkPVDKZTXmaZTcA2W8N32MjFh977Z8j1VclrqS27s93YJfC7gNMx5b1fisK
 7u0apUAtc+p0XO1gjCbIHgvhZk4P2wGDVBor+Cmrcsjr0u/uXGBffTKB+VueP1++y2wo8EBglF
 +aV9M1ZNq7l4XTEhLpBzLBF76P8gWT0MUJVlO27Kp50vgGDz3pTHRQfCwN8Ms2LvBfpbvxOQ+X
 C+Dw5Jfr/9Xg0n8z+sFAhfl6q5YDv8tXHZngjXDWgp7RLwK6g1emK5SJ640e/ojlnvrQ+CSdqY
 QHg=
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="37467836"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2019 06:19:50 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jul 2019 06:19:48 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 9 Jul 2019 06:19:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cq8xIgYUxgUzQm29HmCZ/WEn8nbiSZ6TOWyjkwjX1Bc=;
 b=mqBoP2p/xEpjCfYDWBKGSpS0ANgHeP8PtEVygNdDMvjZlThIdaZIvNK69WVujs9dwj2SOvv3u1s7lCx4wfuJKWc5wv+lXQcBPJ8uwAa9fbcUKbUFQZo4HJa6Z7qHhhermy6qHZjsZU+7YDN6ty0bFKx0fQa/M6zjSnJSbEPqoZg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1866.namprd11.prod.outlook.com (10.175.87.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 13:19:48 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925%8]) with mapi id 15.20.2052.019; Tue, 9 Jul 2019
 13:19:48 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v3 7/9] i2c: at91: add support for analog filtering
Thread-Topic: [PATCH v3 7/9] i2c: at91: add support for analog filtering
Thread-Index: AQHVNlj791nOX1HT/U6j4xjMbRtzOA==
Date: Tue, 9 Jul 2019 13:19:48 +0000
Message-ID: <1562678049-17581-8-git-send-email-eugen.hristev@microchip.com>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0141.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::19) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44ef458d-72d2-49ff-6131-08d704701e27
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1866; 
x-ms-traffictypediagnostic: DM5PR11MB1866:
x-microsoft-antispam-prvs: <DM5PR11MB1866BFABA82724FD4A7E23C7E8F10@DM5PR11MB1866.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(136003)(376002)(39860400002)(189003)(199004)(72206003)(50226002)(86362001)(4326008)(76176011)(110136005)(66066001)(14454004)(54906003)(2201001)(7416002)(316002)(5660300002)(8936002)(71190400001)(52116002)(71200400001)(8676002)(66446008)(2616005)(66476007)(446003)(53936002)(11346002)(26005)(6512007)(107886003)(256004)(6486002)(6436002)(81166006)(81156014)(64756008)(386003)(66946007)(73956011)(2906002)(66556008)(25786009)(486006)(102836004)(476003)(2501003)(305945005)(68736007)(478600001)(186003)(99286004)(6116002)(6506007)(3846002)(7736002)(36756003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1866;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T9Ajvtp1adjUFZMcwAmwfcIdx8tGIoS/aSR9fdN9rVz8KVX69LaYNVUYtmQ10bL65QEGZuEuO5NF2q7gSThF7wU5IqRBIMK6gvwy0Rt+VCC719W8cqFIr77G+X9zVghH0X6qlsPpIOpeKjbKD+oU0P5yaM1DdlsW/XJu8moLqScqD4fWPqw9884tacMsO/JZJpUAd7exK4OnRrIIz1NXSELi0qHHw2vZBphMfN2joyW2PWRe0mfqlDeiO4pZCXAujNeLVKcIG2KNjCVN/hI/16gr4Gh9M3gpadIL4GrD3cUtrHZuGMsVIKHpJZZux/+PVxciZExla4OBkiiC6XT3yGCC/dONpI+iXxx40CwIhrKFz0VZK6c5OTmCba+ljQNsGbxa8Wo6ADbqaC/M7WldKN6CIcTkr1YQnsIeFO05ofw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 44ef458d-72d2-49ff-6131-08d704701e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 13:19:48.6361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_061951_391195_F5504F78 
X-CRM114-Status: GOOD (  12.08  )
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
 drivers/i2c/busses/i2c-at91-master.c | 18 ++++++++++++++----
 drivers/i2c/busses/i2c-at91.h        |  3 +++
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
index 344fd26..4b89610 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -32,6 +32,7 @@
 void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 {
 	struct at91_twi_pdata *pdata = dev->pdata;
+	u32 filtr = 0;
 
 	/* FIFO should be enabled immediately after the software reset */
 	if (dev->fifo_size)
@@ -42,13 +43,20 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 
 	/* enable digital filter */
 	if (pdata->has_dig_filtr && dev->enable_dig_filt)
-		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);
+		filtr |= AT91_TWI_FILTR_FILT;
 
 	/* enable advanced digital filter */
 	if (pdata->has_adv_dig_filtr && dev->enable_dig_filt)
-		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT |
-			       (AT91_TWI_FILTR_THRES(dev->filter_width) &
-				AT91_TWI_FILTR_THRES_MASK));
+		filtr |= AT91_TWI_FILTR_FILT |
+			 (AT91_TWI_FILTR_THRES(dev->filter_width) &
+			 AT91_TWI_FILTR_THRES_MASK);
+
+	/* enable analog filter */
+	if (pdata->has_ana_filtr && dev->enable_ana_filt)
+		filtr |= AT91_TWI_FILTR_PADFEN;
+
+	if (filtr)
+		at91_twi_write(dev, AT91_TWI_FILTR, filtr);
 }
 
 /*
@@ -825,6 +833,8 @@ int at91_twi_probe_master(struct platform_device *pdev,
 	dev->enable_dig_filt = of_property_read_bool(pdev->dev.of_node,
 						     "i2c-dig-filter");
 
+	dev->enable_ana_filt = of_property_read_bool(pdev->dev.of_node,
+						     "i2c-ana-filter");
 	at91_calc_twi_clock(dev);
 
 	dev->adapter.algo = &at91_twi_algorithm;
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index d7cf01e3..977a67b 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -86,6 +86,7 @@
 
 #define AT91_TWI_FILTR		0x0044
 #define AT91_TWI_FILTR_FILT	BIT(0)
+#define AT91_TWI_FILTR_PADFEN	BIT(1)
 #define AT91_TWI_FILTR_THRES(v)		((v) << 8)
 #define AT91_TWI_FILTR_THRES_MAX	7
 #define AT91_TWI_FILTR_THRES_MASK	GENMASK(10, 8)
@@ -116,6 +117,7 @@ struct at91_twi_pdata {
 	bool has_hold_field;
 	bool has_dig_filtr;
 	bool has_adv_dig_filtr;
+	bool has_ana_filtr;
 	struct at_dma_slave dma_slave;
 };
 
@@ -154,6 +156,7 @@ struct at91_twi_dev {
 	struct i2c_client *slave;
 #endif
 	bool enable_dig_filt;
+	bool enable_ana_filt;
 	u32 filter_width;
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
