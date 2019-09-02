Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634B2A53D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt6FUq21bXCszJbEkbz6VlqZKgNrpnH3Pn/eoiOH6Rs=; b=VMkUbP0iEj6K3g
	NKcRGwxONqaEx244aJnaw073fJRJyKuhgCPPVo6n5GYDscvvGppxOW8LZk4q/HnwQfvYWPEWwggse
	H2hf5xuiFkmWZ8kBtjwXyZgmzcyMfe0P2h+Q+VmnxF+bm13FAsYiXeOB5BHZzS4+BqtY6P+xyU1u/
	zlTCArgL+POlILuAmzETvQ1M3Zu+tuOjY8EePhf5a8CotV5R2HjN0lsCAOqom+cqSWk3eJdYBSX5j
	hlojLTM1XKorl+0tYic5y1/Xizpe9wXFhLJqXHJP5GNRBa1pp5H6TRfsNfIhnDkQQyBXB7hxn1QUP
	PwEKauW4PzrNUmZqZ38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jLz-0001ji-Jo; Mon, 02 Sep 2019 10:14:31 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jJu-0000cK-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:24 +0000
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
IronPort-SDR: XyHN4nkeYU1dg3jYZHlOl4Ha9Ke5x/oeJ76qzLNoqk793SxDIOxKdHCnigUoLOFDoN1d55DXrq
 zqmkEUerOGxIIBJBxJbtsRnGWSZhFy54Pbgr8B6DuivnsrkfPJqJm5MIv1DeSjR/VpOIJbHMAE
 v5/QgN8UnptpcTQ8KSWdrPfQ4kneNqJgzhQ4U6jVjscnIxzO93jdqOGEpf25k08enJJbvkJv4A
 0ojeOxw+yFkstJ078IArlqZ308pfd9zNglq0VS1zNbkJDBSyLaQyu04nXF0G9DENT9YW68rfuf
 oiM=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="47478221"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:12:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:12:12 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Sep 2019 03:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vd3oIiyFUroDpPR/0n3HUusr04K9TzF9vZ7NtvzxA7wU848YXCDOnqswjwlk4Irsgn1rdrRv/nxwpT7aYkZdNncXuqe9ZkxBaIDUHzYgHdAWkAsgJnebM22w1Xp+zoZMbMEF4ApVu0NnlNEa/nTk/BVkPxW23ar1IWyx2i5ZXWi9uHjXjaLFsyzfz/+Ks7nnGUGXSjKo1736+d2dPMfg/bXIMxIlCRZmt9mNsou2xLthpneV3uiY+fVcEkhF/y448dsnX6hbOl1MPhzJM3MCsBN/ZqlmfDhcJcni7r7SLkWQsQ0GirJayMLjs9RR02yqlkUEchzyy39T8J/g5WtBcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lysMRDJuItjSsyVJJz4n+LiOmbx8YznG/q2CVYc8HI8=;
 b=ZrKNfJO7UJyh/BaQ1IU7kPWt3+LTjaT7ZkkA8cFNc9DknaqV/JQGmHkH4JX3KKns7foMzUzTD/ZdiGyfER01QCwxOcXfX3ZBSoCKAJWP1aXBu5sqYOYvCo1Ixt+CWoOnYaspcvSJml7vVEOiunuCE73tmdaLzLuMQLwIN6J5D9foXHFuoOmZeDpI9OqNup+igl8FVAN3NVlrSkVfrc9WeuoVmXq4wNfrUjVy7RA7Uo60lHpgayP1y0tOzSpFtzsZJzNsB3pbBq6xq8R9kKOX60V+JB6DUXnBUe/8eZSz4klNv/P8z0fXS6CsPU6ijrQyDaTh//gBU2fAHke9gqQE4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lysMRDJuItjSsyVJJz4n+LiOmbx8YznG/q2CVYc8HI8=;
 b=gpV/jI5l8nr9BUgRGly5j4RB9FcZrq55R1yhqMx35wlNHJLBHFC1i3W7VJEXjBsJOuRCwiLRVZpeNCs2xDnul3BZxsZIumF1Kug4xyi00LZGwqe0FYWcSIh4E64liw9Wy9OsPFljzl+8MrpBKzwxRGxeY5B3JF+U7jYTxV0YPlI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:12:09 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:12:09 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 5/9] i2c: at91: add support for digital filtering
Thread-Topic: [PATCH v4 5/9] i2c: at91: add support for digital filtering
Thread-Index: AQHVYXbhfLYVCgdFUE6oBdl4V+9d3w==
Date: Mon, 2 Sep 2019 10:12:09 +0000
Message-ID: <1567418773-2427-6-git-send-email-eugen.hristev@microchip.com>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0018.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d335fc3-f945-4920-4ac3-08d72f8e03d7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0044B2CCA875045D1A0003A7E8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(446003)(6116002)(86362001)(36756003)(5660300002)(52116002)(2501003)(11346002)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(76176011)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: USzBLJm9OVrPHtrYSEZ1GIvHZ/LrO3DX+nv9sr2rmWMm7soNlkuhqenoTBi/Lm8+SRiJKkDsa73gRPSZFUDJaHmJdF141Qk3NTEs2ZAZY/dBm3aG8N4sQcdQR8nhQ3QSHzsvfKosZLPwLfLQgIEwti6dUuiSCALyq1E1dIodGiNZ/rizb5+dELtYGYoi7XKicJIIOm6h79AKstvT/EefPQNHTUCgUPq3EK5FDGkYx3n8YNkbkWnuuFb0CVxo67XX7WLYWygbRRF3NFxIBgYAImwBTTE/NsMr7Ga6vQFGIKtt+KPzM2l+kbj7qwYOF5WVCQ2Cf2EKNBDSgDU+vAabQzZBeX2rglx2u+v/OKklqfb5y/Ga5f5CnE739C+j4ir3q3iWnqUldmZ5axUJRoU78kmJxJFLiMxL/0NzRc3OIGE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d335fc3-f945-4920-4ac3-08d72f8e03d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:12:09.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RNghFSSDOnj3Sezp6UzYQEGIs4K3FmDTR1bTnmXZ8rpePQrzYC/GYjBs/rdYJvgjGQg5dwFUX3aMjhhg8elNIXd6yNb6JlA4XiV9RM8UwFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031223_087181_B1DF4311 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
