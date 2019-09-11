Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3FFAF7D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt6FUq21bXCszJbEkbz6VlqZKgNrpnH3Pn/eoiOH6Rs=; b=maGpV+KygPkevv
	qn72MoCMPilsyYODPWjz14E2pDguoLXbTHVduP9KC0xaXVME7NlcgLarh4edfCD+078paWz419S/a
	8VeDlQJ8C0+6kyZKfb2p+NOQvzUnUjV46fVuX8cLaNKexWiJzzSNOxR87OMskijXHwGKc5MkOJ2GB
	zvDcgFilWcd8DfKOQPiqPfh7qK6kKyHSCqnNpm+P3TtWMOLFfLLRYOj0Nr0UX8nousKSDla8DGasg
	+/mqasAjPXEATdtzSrQ2ZsF3E8UpVztLP3UGmkF+D2NsBqlXVJdomIWeFohnt3sVqpBxvneDKm7Bi
	pSWLsfVarDVQVOLOGNfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xwU-0005yB-N4; Wed, 11 Sep 2019 08:25:34 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xvT-0003v4-5t
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:24:33 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pjivRJ08USp1FD3jA1C+CpEpKWOHx7voY2Sn0WWqo1NpHBMwy272dTyej1OubCN3TVLwIEg6qp
 064BadlWfTP5cWcdTTJ7BKZzwAeChuOAnJNtw9D5eGL3fSXzNaLwWAWb39ELHLuEnuK1GAmy5R
 czQcCywqoUMjf8M8uD97sv7rosQkMlHE6jBiH1RWxq3ZfmFJAiQwNpFMSQ5j078H7GahPwU2Zz
 qHoJ+vUexD4V6ad4wXOJv/AtEhUSM0gq3iB6P/EfWkZg3O8oANI5xVuf8HBVQJ+tIhlI3UR0Of
 8qQ=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47514872"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 01:24:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 01:24:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 01:24:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNIHpfmttniCKX1UV+W9I+yspdBi/dIffh8U752nYUJ2GGmpB/5lVjbXZoXz0qHBFU52nwYDztjckgXueY6nQTfSNczHlkU06NvrpHk51YiXW5CHHK8xiFfzI8qJQ3CJveWwK8bmFTm0MfC+bmTOpu8r1g0ptstlGOhz5GIpbUVasBS2SqyMSLym5060Vy7H3AAOmPRCr80j/EAizmvNnvWIvWEdMrt/cw0vjymCTEg2cE5PYrPYNdrzbWKQT88yBDHDT8sFzJNA9G2GDGAkU23bYWNFjt0360yG/9flAJnHnSFJlvIlWXjqoAgCsCnLiDxdsLFjoWQ7IkOmnALNdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lysMRDJuItjSsyVJJz4n+LiOmbx8YznG/q2CVYc8HI8=;
 b=P/Gq0kAuO71yokuEZYNeD8faLelqRE6+Jk2WXbwA70DEeGmUFafR/9TaW13YuHgU/ins7B+lQwzUYTxc2s+wl77f4dCBdnT36p6wYO5Shv32dAFhFwXPiZVUrMIvcanvI7b0+aUQ5z3FUE0pbkYpopFDL1Ma7onPia2cmhbrfRo5Mv666TdF3Q0j/deV39x+8LNPjoc9hc5+iFjU7TFODXvugOeJx9UshPxd3D+jjtXFqrd4Ju/6Iz1II0ymvRFwf7x6H5JhzXQaJb6l6nUgoATdIvqgVEb0cXeEx9JWVgAIGgYUQUib/xaP65FCH182uatyGgSRJ7YLGIzbzXEx9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lysMRDJuItjSsyVJJz4n+LiOmbx8YznG/q2CVYc8HI8=;
 b=si6rElJJBMsJ2m1kwm1hoSklsFdrpKjx5o2zDvIzsOhXkXP5DOdKnspVkFQZisTiagMuIF3MQUQyoshszmhOsq2dMKI4QTjdsV7wgkB/mis2SxW7s7k2MWHwSOVLsTf+Wx0R1b8RzNnVG5uDjoHVJaYU9n2zzgdcwu9yQMTcXPg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1452.namprd11.prod.outlook.com (10.172.36.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 08:24:29 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Wed, 11 Sep
 2019 08:24:28 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v5 5/9] i2c: at91: add support for digital filtering
Thread-Topic: [PATCH v5 5/9] i2c: at91: add support for digital filtering
Thread-Index: AQHVaHpUF8/4sBZb20uY7HIPGe992w==
Date: Wed, 11 Sep 2019 08:24:28 +0000
Message-ID: <1568189911-31641-6-git-send-email-eugen.hristev@microchip.com>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c1e24ff-bc8d-49fd-6d37-08d7369176a2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1452; 
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14526432592458A1D0876D2FE8B10@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(52116002)(3846002)(2501003)(66556008)(66476007)(66946007)(54906003)(110136005)(478600001)(25786009)(316002)(6436002)(6116002)(76176011)(66066001)(386003)(14454004)(2906002)(102836004)(486006)(476003)(2616005)(11346002)(446003)(6506007)(186003)(26005)(4326008)(8936002)(81166006)(81156014)(7736002)(66446008)(8676002)(5660300002)(50226002)(64756008)(86362001)(2201001)(99286004)(71190400001)(71200400001)(53936002)(36756003)(256004)(107886003)(6512007)(305945005)(6486002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1452;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1aF3jxAtmpvIyFFGoneBajoZGDmUe743EoMn0Ox005AtPGrNWwn4/a/4i1+MdkFYNwqooWRWBCI3tL5JeX2a+wBOWOh2tyt4twhhgJNpJSAAqkW/tXBbWigh0aMz4JyaY0QkmveSPjKX9XFSdxduDGihAiAwpRswvoHZT8eJePsgIdak+RfuFGyXwT/+R70uCHN+aaP06hMQoZE46TOuJxt1lNf4bcfhMm1qac/3baaFV0FffIIolku27td9FCe7J4wHmqbtvHtY30IOlcOdLl1/x6yDYb/18S1VPiiMkJo1+arAjmSEehbxMShgLi187WEsJrZrVDrwY/aVHcopAnQro+ukb97SaAvAL5ksf5Vsdq86TDfbDiP6Jruc5U303RkzbQVDUB7G60dpqvtxUIr0ZcRSsE1iRyEw2R5+CFE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c1e24ff-bc8d-49fd-6d37-08d7369176a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 08:24:28.8327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: picUN0FENe2Cfmu3sl0nJkIcTvXvGAHBux1rkdGGLZYh68YRqvzb0a+o9YLqCN/x3yGB2c3I3Mzaca/E6iX8pkuWe+YPXhHX94RjUP2c9+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012431_615465_E630A4A8 
X-CRM114-Status: GOOD (  11.84  )
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
 drivers/i2c/busses/i2c-at91-master.c | 9 +++++++++
 drivers/i2c/busses/i2c-at91.h        | 5 +++++
 3 files changed, 23 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index caf1846..e96360f 100644
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
index a3fcc35..df80557 100644
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
+	if (pdata->has_dig_filtr && dev->enable_dig_filt)
+		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);
 }
 
 /*
@@ -793,6 +799,9 @@ int at91_twi_probe_master(struct platform_device *pdev,
 		dev_info(dev->dev, "Using FIFO (%u data)\n", dev->fifo_size);
 	}
 
+	dev->enable_dig_filt = of_property_read_bool(pdev->dev.of_node,
+						     "i2c-digital-filter");
+
 	at91_calc_twi_clock(dev);
 
 	dev->adapter.algo = &at91_twi_algorithm;
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 499b506..c75447e 100644
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
 
@@ -145,6 +149,7 @@ struct at91_twi_dev {
 	unsigned smr;
 	struct i2c_client *slave;
 #endif
+	bool enable_dig_filt;
 };
 
 unsigned at91_twi_read(struct at91_twi_dev *dev, unsigned reg);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
