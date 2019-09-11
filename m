Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C9AF7DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SALnHd0D3n10cowpagbNIEeJX/6QO+ZeMx6KbCxgmvU=; b=JOuoqf0IlqAGzp
	15PsT4OZ4Gz0smLRTf47ppKkmG5lzftBC762FrQiiM6NNgswuZ9bZButXoeI2GkTbGHA8HjLKbneA
	yjFQVM/IyG+MyeCK97xxGXq0pRvSdH0/wZHBHMiF/CLJfAfaoOD9k7s7Qz7NcloBb59GTUD/FAtbw
	0KMgWRWWGi84VdiQOJB4pdCc00EVYf2IWut5ZZXBQDbO/JUZOm8Yc5fr/BknrHzgud9PKrME1EIOf
	0EmiLhAHtM18PK6/j8SjVR2WZ4dlxC1jdltyx3M29ZHIJrj0BLC/waHpJKNIbgOazLS34YyQGGWRF
	FUb/v/WvV/DSn4mzqJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xy7-0007XP-W3; Wed, 11 Sep 2019 08:27:16 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xvg-0004FO-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:24:46 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2ZLt5eT37fsOrsZhfcS2vcs6KifSOwJbd16GlLH224OB0dOVip6NDetTZXm8BUVH3ku8Qz8rnr
 YFo+Kj/10LoDLKhxSzIv3jGL/aLat5egVa9wq8BDuviOk4jEs9gA6TTq5AzpnJLFPwbw722tim
 1L7eyCWr72EGp+HG52/IC8WEDmwKWpvzYRSInFwT1uirCcx7FKz0lk5mjH8VjjHHqZDMPcXGPF
 KXklLYF6dzqnYrqZ1injlBXEwdUPxWCPNAzIVQxOKjnEQK3Suo5qfj6MoHRiVByNTWvPg27xaQ
 avA=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="48642370"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 01:24:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 01:24:33 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 01:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bv1+PK8jRmegidQosb5GMDqt0HHtzQwTWociGuxL6AMr85gG2DsTPHrgZRdsXfXp8jcjoLWHXtHhU6Z6nMakdzBqQUGcqn0SiR9X6zUC/++bLAqdVpIjI+8B6kdV/rkpp/KdWSqWkAVDKR8MJv2uuwPE57pw+z8UG4GADItt9iF9wN/vWZZZt5WFHftDTAtRyNMOnOVyDFOH2vopWJPw0xvS8yWzrAu1KwGgzRwLR6lLiha2gVk9LvMEwEeF/rM++bEfK0Mp8gq5IQlV5wUYZGQDpHb2QVERjxMUwBkXoX3mwFRloAkPN4vPrqUrkdheAHm6xfT5/gTAg9yK7u+j1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VOMRzf4H7eeeMZitPyO4ZMWYjxjbYb/chIExeqG8oho=;
 b=LwEe5air5PR1ZZv22ecj9XChOl3p5VPUmRo2smHpD8d1Ny7rQWrXzYBiHAtog7olEE+DfWdlETkMdnIIwlLbBUIjxU0Ndl1e1vUe+uqmao/3K7vriB08XAmt5zs+1cBx7SUFWWp1zVlGlR0xIIvOM8fPz90G4f5Ms5/DK6UaL+vG9udyRH7Z90XdurD92pr9y59R5TLoKaGyEEgnsNKV5JQ5htSKUVVyMYcs3nkAu+pQ8qHSx4z5N99AH7m+p0lHc9vV0hVynO5YevYAcn4yx4AkMZ/AqnEdAas3lPIzZiPM76XMlitvhy7tWRS7u7MsC/sj45IP1f4whaU7jHCvng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VOMRzf4H7eeeMZitPyO4ZMWYjxjbYb/chIExeqG8oho=;
 b=Ae2G46p692VCWVDwWdkVPTczF+pI2/J/pr/Y7mW5ccFIYlnMXHHEEY1Rlvr+sZj5+zxc7/FAKjA+73BhglsDRB1xyVLtN9hn0G5FRTZwKTRYOf3XOCBBKEFoPIvAgiutsdMgkSOfLj7buWDpwanuR617UZRc/yELh1Z3J6niNM4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1452.namprd11.prod.outlook.com (10.172.36.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 08:24:31 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Wed, 11 Sep
 2019 08:24:31 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v5 6/9] i2c: at91: add support for advanced digital filtering
Thread-Topic: [PATCH v5 6/9] i2c: at91: add support for advanced digital
 filtering
Thread-Index: AQHVaHpVeESikn7R1E+uNNjYv0u2rQ==
Date: Wed, 11 Sep 2019 08:24:31 +0000
Message-ID: <1568189911-31641-7-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: e29b488f-c037-421f-121d-08d736917859
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1452; 
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1452E09B8038C11C99210328E8B10@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(52116002)(3846002)(2501003)(66556008)(66476007)(66946007)(54906003)(110136005)(478600001)(25786009)(316002)(6436002)(6116002)(76176011)(66066001)(386003)(14454004)(2906002)(102836004)(486006)(476003)(2616005)(11346002)(446003)(6506007)(186003)(26005)(4326008)(8936002)(81166006)(81156014)(7736002)(66446008)(8676002)(5660300002)(50226002)(64756008)(86362001)(2201001)(99286004)(71190400001)(71200400001)(53936002)(36756003)(256004)(107886003)(6512007)(305945005)(6486002)(921003)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1452;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GD/kXNh+vfxR5aTF/96j96Z3ft5OsWK6ySRMhNbcASniulsy9xCzP1SPiXMw9RhV48LeuUxyoveZ5Py0YJ9fCJFQvyaDPoNReM5J9drCpdFZWQXcEHzA2wQHhk3Zpq+ThFps80f0INIDDYbq/bfEW4kHwiVmh5tmiarQnTwSzPvXDs5CAIbOqHSIw6ULTmx397DpHFcyyUpDU8LDd+8RqGx6xUjXBwnWimAETcbLxgvDoHhW+o3R2gl0K+Fnvn7MnjZRIFnPp3A+0CUf4eau+ehXgfcDJ+khmJGaHcIXbnY2ldn1pS3Vvupx71ZiGrptrpS3VSu35Pube2ce/niJXk2eL6BBpBO2DuOioLNjm1pBQB2jwgHV3Wtup0JOhWcu3ORhhWbHWysOMHhJ9iO75wYWR852ceete+yPMeqf/aQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e29b488f-c037-421f-121d-08d736917859
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 08:24:31.6304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HbBcEZl3loIfFH/iSIIfY6aA1f0MJb8m/MDkojGdgLSSBDltOXPK3Iw8l5D4U91bhpvojQVdxCDidC+nzwnZxHh/U4oekOVIgYyqRaUODvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012444_577023_51AB133B 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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

Add new platform data support for advanced digital filtering for i2c.
The sama5d2 and sam9x60 support this feature.
This digital filter allows the user to configure the maximum
width of the spikes that can be filtered.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c   |  9 +++++++++
 drivers/i2c/busses/i2c-at91-master.c | 30 +++++++++++++++++++++++++++---
 drivers/i2c/busses/i2c-at91.h        |  5 +++++
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index e96360f..1f4ee7e 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -69,6 +69,7 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
@@ -78,6 +79,7 @@ static struct at91_twi_pdata at91sam9261_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
@@ -87,6 +89,7 @@ static struct at91_twi_pdata at91sam9260_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
@@ -96,6 +99,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
@@ -105,6 +109,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -136,6 +141,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = false,
 	.has_dig_filtr = false,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
@@ -145,6 +151,7 @@ static struct at91_twi_pdata sama5d4_config = {
 	.has_alt_cmd = false,
 	.has_hold_field = true,
 	.has_dig_filtr = true,
+	.has_adv_dig_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
@@ -154,6 +161,7 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_alt_cmd = true,
 	.has_hold_field = true,
 	.has_dig_filtr = true,
+	.has_adv_dig_filtr = true,
 };
 
 static struct at91_twi_pdata sam9x60_config = {
@@ -163,6 +171,7 @@ static struct at91_twi_pdata sam9x60_config = {
 	.has_alt_cmd = true,
 	.has_hold_field = true,
 	.has_dig_filtr = true,
+	.has_adv_dig_filtr = true,
 };
 
 static const struct of_device_id atmel_twi_dt_ids[] = {
diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index df80557..273bd8b 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -43,6 +43,12 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev)
 	/* enable digital filter */
 	if (pdata->has_dig_filtr && dev->enable_dig_filt)
 		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);
+
+	/* enable advanced digital filter */
+	if (pdata->has_adv_dig_filtr && dev->enable_dig_filt)
+		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT |
+			       (AT91_TWI_FILTR_THRES(dev->filter_width) &
+				AT91_TWI_FILTR_THRES_MASK));
 }
 
 /*
@@ -51,7 +57,7 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev)
  */
 static void at91_calc_twi_clock(struct at91_twi_dev *dev)
 {
-	int ckdiv, cdiv, div, hold = 0;
+	int ckdiv, cdiv, div, hold = 0, filter_width = 0;
 	struct at91_twi_pdata *pdata = dev->pdata;
 	int offset = pdata->clk_offset;
 	int max_ckdiv = pdata->clk_max_div;
@@ -90,11 +96,29 @@ static void at91_calc_twi_clock(struct at91_twi_dev *dev)
 		}
 	}
 
+	if (pdata->has_adv_dig_filtr) {
+		/*
+		 * filter width = 0 to AT91_TWI_FILTR_THRES_MAX
+		 * peripheral clocks
+		 */
+		filter_width = DIV_ROUND_UP(t->digital_filter_width_ns
+				* (clk_get_rate(dev->clk) / 1000), 1000000);
+		if (filter_width > AT91_TWI_FILTR_THRES_MAX) {
+			dev_warn(dev->dev,
+				"Filter threshold set to its maximum value (%d instead of %d)\n",
+				AT91_TWI_FILTR_THRES_MAX, filter_width);
+			filter_width = AT91_TWI_FILTR_THRES_MAX;
+		}
+	}
+
 	dev->twi_cwgr_reg = (ckdiv << 16) | (cdiv << 8) | cdiv
 			    | AT91_TWI_CWGR_HOLD(hold);
 
-	dev_dbg(dev->dev, "cdiv %d ckdiv %d hold %d (%d ns)\n",
-		cdiv, ckdiv, hold, t->sda_hold_ns);
+	dev->filter_width = filter_width;
+
+	dev_dbg(dev->dev, "cdiv %d ckdiv %d hold %d (%d ns), filter_width %d (%d ns)\n",
+		cdiv, ckdiv, hold, t->sda_hold_ns, filter_width,
+		t->digital_filter_width_ns);
 }
 
 static void at91_twi_dma_cleanup(struct at91_twi_dev *dev)
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index c75447e..d7cf01e3 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -86,6 +86,9 @@
 
 #define AT91_TWI_FILTR		0x0044
 #define AT91_TWI_FILTR_FILT	BIT(0)
+#define AT91_TWI_FILTR_THRES(v)		((v) << 8)
+#define AT91_TWI_FILTR_THRES_MAX	7
+#define AT91_TWI_FILTR_THRES_MASK	GENMASK(10, 8)
 
 #define	AT91_TWI_FMR		0x0050	/* FIFO Mode Register */
 #define	AT91_TWI_FMR_TXRDYM(mode)	(((mode) & 0x3) << 0)
@@ -112,6 +115,7 @@ struct at91_twi_pdata {
 	bool has_alt_cmd;
 	bool has_hold_field;
 	bool has_dig_filtr;
+	bool has_adv_dig_filtr;
 	struct at_dma_slave dma_slave;
 };
 
@@ -150,6 +154,7 @@ struct at91_twi_dev {
 	struct i2c_client *slave;
 #endif
 	bool enable_dig_filt;
+	u32 filter_width;
 };
 
 unsigned at91_twi_read(struct at91_twi_dev *dev, unsigned reg);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
