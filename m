Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DA24C82A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dagVmt9m5L6g868224AIe63DxIaJgMYRQXHETEuD+/Q=; b=FuCVpGIDKaM3LH
	2uzAh17GWLYX66BMbM7IYHBtOgB4drzhdOidDjW/ls2Bkc7rkaj3fhIpsmhQH4B5JhG/x22be8dZA
	1tjl6j+mjAylyem2/sc5mfKGyddcpQrzMQXaQMQWwPNa/8Wzj7TrqcBHJerkiAB6pkq1Pa2aZ/W05
	kB6TWmzR7EbnQQHCDeT9lvJDVCJQtYixdXO5f5Zye+q4r7npw/bdCrVaE/ZvY6VCGRrhR5+JlLxsL
	WPJYaWzaHgqRgnRdRdqYXFCKnXqUqsENEHvzKbZ52ZtHG4cPJKxA/8djgX5iQNC5tAcAzK3A9zUh3
	YPAuSWK+C/j6nu2zB7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrJl-0003CI-Nl; Thu, 20 Jun 2019 07:17:09 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrJ2-0002zq-U8
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:16:26 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="38158413"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jun 2019 00:16:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 00:16:14 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 20 Jun 2019 00:16:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cN+5xsPEDLvxd8OuF3X+j6jVmD8gBhULlm1qLztT5mk=;
 b=kkN0S/k10QazR8rIZGQZ74r1ak7JCCsZzQOVCCHnYPyNVEHThh2LNajPGMggXipbxzpdLlrbOz5OC551p5i+lvAdAxKm1DMW9Gf0gPSsV0MQhdtn8x70/4ieAnGvtgjRXH9yY5sOGEGHyG2qD7wHueVm0+ijPk1DbM+7UQYTuc4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1802.namprd11.prod.outlook.com (10.175.87.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 07:16:13 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 07:16:13 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/5] i2c: at91: add support for digital filtering
Thread-Topic: [PATCH 3/5] i2c: at91: add support for digital filtering
Thread-Index: AQHVJzgKQnaxfk8mV0C5xiMA7uCgiQ==
Date: Thu, 20 Jun 2019 07:16:13 +0000
Message-ID: <1561014676-22446-3-git-send-email-eugen.hristev@microchip.com>
References: <1561014676-22446-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1561014676-22446-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0054.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::43) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c40f75a-4cb1-4e70-24dd-08d6f54f2cfc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1802; 
x-ms-traffictypediagnostic: DM5PR11MB1802:
x-microsoft-antispam-prvs: <DM5PR11MB180285970C4D8E72B3A95DF0E8E40@DM5PR11MB1802.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(64756008)(73956011)(305945005)(3846002)(66556008)(8676002)(71200400001)(8936002)(81156014)(81166006)(66446008)(186003)(36756003)(110136005)(50226002)(2616005)(76176011)(446003)(476003)(53936002)(102836004)(71190400001)(52116002)(14454004)(2501003)(107886003)(99286004)(26005)(316002)(2906002)(6486002)(11346002)(6506007)(386003)(486006)(256004)(66066001)(2201001)(68736007)(66946007)(6116002)(478600001)(7736002)(72206003)(6512007)(4326008)(25786009)(6436002)(66476007)(86362001)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1802;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KV3Ob/RFCVpzeKMTeuQZ1p56urJTkTqgb3k4qfXA/knPgO9MvcxiyrTxNgfpey/nunHBKut1zS1UzteIgRy4L/r0iLxTkRUg2ESbsLOMTCRd+QJeshAsgVuPez6Si21cKVNRUVKlrLXn2kdyokHxGrVVClOFE8mU5hOudBBVDxT5E+ZRLsf0GUn7u0rcAzetKC3OJ1V5aoGdLKmoS82M0B39LYUePX2wmt9wc2KwiRpYmq8vWP8uSSxeBQfNufaCUSLjOwzQH8/iLH9g9h8z/glIxB98fAo7SdnoemQr1JaN9RnWkf6F9VLteK9YNvTW7IA2flAT76rmxB46+GZpkDuiwJC86IFNgKS/sLgNw9uaueSGNH+aIeFBVfakx/Zzkp86QZr0YMjkAQJo/YEWhebUIGEY8tKCVsqxGG3Q4L0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c40f75a-4cb1-4e70-24dd-08d6f54f2cfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 07:16:13.4104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_001625_324597_B1EDCE8F 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add new platform data support for digital filtering for i2c.
The sama5d4, sama5d2 and sam9x60 support this feature.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c   | 9 +++++++++
 drivers/i2c/busses/i2c-at91-master.c | 6 ++++++
 drivers/i2c/busses/i2c-at91.h        | 4 ++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index a663a7a..62610af 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -68,6 +68,7 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.has_unre_flag = true,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
@@ -76,6 +77,7 @@ static struct at91_twi_pdata at91sam9261_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
@@ -84,6 +86,7 @@ static struct at91_twi_pdata at91sam9260_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
@@ -92,6 +95,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
@@ -100,6 +104,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -130,6 +135,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_dig_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
@@ -138,6 +144,7 @@ static struct at91_twi_pdata sama5d4_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = true,
+	.has_dig_filtr = true,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
@@ -146,6 +153,7 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_unre_flag = true,
 	.has_alt_cmd = true,
 	.has_hold_field = true,
+	.has_dig_filtr = true,
 };
 
 static struct at91_twi_pdata sam9x60_config = {
@@ -154,6 +162,7 @@ static struct at91_twi_pdata sam9x60_config = {
 	.has_unre_flag = true,
 	.has_alt_cmd = true,
 	.has_hold_field = true,
+	.has_dig_filtr = true,
 };
 
 static const struct of_device_id atmel_twi_dt_ids[] = {
diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index e87232f..366e90f 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -31,12 +31,18 @@
 
 void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 {
+	struct at91_twi_pdata *pdata = dev->pdata;
+
 	/* FIFO should be enabled immediately after the software reset */
 	if (dev->fifo_size)
 		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_FIFOEN);
 	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSEN);
 	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
 	at91_twi_write(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
+
+	/* enable digital filter */
+	if (pdata->has_dig_filtr)
+		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);
 }
 
 /*
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 499b506..3e80811 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -84,6 +84,9 @@
 #define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
 #define	AT91_TWI_ACR_DIR	BIT(8)
 
+#define AT91_TWI_FILTR		0x0044
+#define AT91_TWI_FILTR_FILT	BIT(0)
+
 #define	AT91_TWI_FMR		0x0050	/* FIFO Mode Register */
 #define	AT91_TWI_FMR_TXRDYM(mode)	(((mode) & 0x3) << 0)
 #define	AT91_TWI_FMR_TXRDYM_MASK	(0x3 << 0)
@@ -108,6 +111,7 @@ struct at91_twi_pdata {
 	bool has_unre_flag;
 	bool has_alt_cmd;
 	bool has_hold_field;
+	bool has_dig_filtr;
 	struct at_dma_slave dma_slave;
 };
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
