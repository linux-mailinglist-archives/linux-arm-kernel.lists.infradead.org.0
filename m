Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C03E10E742
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbjlMJFDvMUiKKRWHLUQIslbxAiN/ce2L2eRLjo5vHU=; b=m5wvPe3ubIvvCq
	Kv7N+E438Kcebuog8vfwkdNXuvmHnoPTHIUmSXiZWRDXzjcYv7STCEEy5Q1wCX+lQSXOpBObFSgQo
	hzb6gXxsi6D7BVLqdhL0SgLyb7lugsA2CggYFxBr8aajFnFwOyMajSn8x3L8a2zsETfeuZ4l7N/Du
	+wQBeMlv+dD2e4YKuKRvpjS3wVqsq9Wy9Hb3RcklXin9/XRe+8Jk59RjIHAe1onAUAsW/MEGWczSr
	jKMpMXwu294FYpQawc9v/tLPt6Jxlk2k6ceJL3hVh8wkqtBPmB0zWO54vNN0Hw987iKVubLxSzjuT
	MwjjyUJaDi/C0P1D2oBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhVz-0002mA-Fg; Mon, 02 Dec 2019 08:57:07 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhVf-0002cF-44
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:56:48 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: ERf+ttE0Vz3IbNAngz3sdId57iyf6xmJkjlJJibhJAXHkysgQovuYrXO4prCyQhtkxucFL4ey6
 t9dbRxQahT41j0/h9CQ12xreWMnClSszNrBawwbxP61rUM2KyGzQ/il44zl5j6dHkCAJqHKuUs
 vzWNjh/q4nv+iMNuPAeaWaGYHn5sKjhIBrWnENnFpD8gjDNrJvBl53FpNeUuS+iD6QI/ztx2Bb
 1PvdJJCNW/xUk7wiXsP70MwiZY9txuT9RRj5398qwmr9klKhOn5ndrWp94z48RFs0411W2MSqf
 CqI=
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="56243844"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Dec 2019 01:56:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Dec 2019 01:56:43 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Dec 2019 01:56:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VAtwjUFJiGQjtUhq/eIJmQq+uQmMVDANUm2Y6aPY3Udwns8yIorfyIr9HtllFEsk+6AF71/jU3qLjgJrw8lpXN0Av/uZPML8PG+E6090A3Tur6XD99Cfb8qphEM9zVTi+j3LuQ5iu4qOrfmpjSZv7Oe2a1ltX+OHKRZA9ZtqTarx6ZvVPpa56nXvHJzmzm71xy+J0K3JUks1ZzUSGtjG4olYlQvaxLIYiKSKBgIQwbmKI6h7TOSxCp0MyJ4/QrtzeUoWfTLF0Z+euL6Mv6/4acq/iBzq7u0+uF/g0chQ5HV5XM7TszZ5fbpaUWupNfd0r2x+77Tm3Y2jAGXNpKef9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOhrs97xBW4YAOnWtzATScoo1jq/qjR3Jexc5MPzLRk=;
 b=e8qkBQIEngMzRlvOTLbTcquwjwpje2axiJjPM9v96yXMhmA9EDUe8ONqzVsz614V4EIWE/xOUF5y1uP7wa8QBpjfa9FCwWoTelZLBQnRyJgzROmy0C5RFQHxHHMIiDhDNmdO4bLmCIoJ5QAwo+UmSMyHiMRNHRVZYYKK3nYtvmvACKkMwsb2RSqAabeX4yr8zXQKwYHjGkETScYjvab04wP3uhg2b90cfo7dDgIzeXw9mcLfja1cWggfb/MUzSAK55LzhwgcFu7qf2yRGVVGVvTPdaB8RGviV6gAUeOE4BIKWXLdKZaVMtdURQZ78l09WbCHRT/WQt+UI7swWf7YrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOhrs97xBW4YAOnWtzATScoo1jq/qjR3Jexc5MPzLRk=;
 b=EpPnFpm4rvnYO9hrgN0NpGpDvVdKNgrQRQhMQihrtPDmkhfFaJcYDxoaacuNYj4V5WZ+6HXNahszt3ZkrCHIO4xC+8wMBabx9ByP00kljASrPbkfkHsCbamH49yXKyA6uB6hq5YHAmQKTOjKbT6XrZkoG9XNW0EZsR8vk3VjLYQ=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1482.namprd11.prod.outlook.com (10.172.34.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 08:56:41 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 08:56:41 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Ludovic.Desroches@microchip.com>,
 <wsa@the-dreams.de>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <peda@axentia.se>
Subject: [PATCH 3/3] i2c: at91: remote default value initialization
Thread-Topic: [PATCH 3/3] i2c: at91: remote default value initialization
Thread-Index: AQHVqO5qRS7EndVcI0qSwCQ3iWhpeA==
Date: Mon, 2 Dec 2019 08:56:41 +0000
Message-ID: <1575276957-5615-3-git-send-email-eugen.hristev@microchip.com>
References: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0037.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::14) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6c71ab7-61a4-482c-f592-08d777058c7d
x-ms-traffictypediagnostic: DM5PR11MB1482:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1482B9C9EEAB3398DA8EC0DFE8430@DM5PR11MB1482.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(14454004)(305945005)(2906002)(6512007)(4326008)(54906003)(110136005)(316002)(71190400001)(71200400001)(76176011)(5660300002)(6436002)(6486002)(2501003)(256004)(2201001)(36756003)(11346002)(386003)(6506007)(446003)(102836004)(52116002)(2616005)(186003)(26005)(7736002)(86362001)(81156014)(50226002)(8676002)(8936002)(107886003)(25786009)(6116002)(81166006)(66556008)(66476007)(66446008)(64756008)(66946007)(99286004)(66066001)(478600001)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1482;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DGtGsfBnu7rgqDtWPC1uMKv+/lI49GxfEh+4w67KC1oAXnimzjDEubQ4l7oeIjrNGmuqNzHp9o6gCCLcoPYO5H8vWvJKAjojoAmOqW2q34bFa43BOdnfxZ8srGZWDTkZZdsI5cVH6oyBMLTLYuBI3q3zDdKc3mdvAIr5hIhqg6GF+VJ6hCAcsDRGG9tIcOHy24a7fYadULwXqbifIBNvrwhQtyK4Gudib1sz9nS1Vupc0T0KHNmZxrukFCoa44JfViQyPr/eWZ0lOdO8Wva+a/68Lj4lfAaUxTGbfww3fAM5a547OTJDAp9Lvl0Ry08qDmVrUTVRQU21PmWMBfi7e2iGFKvoNs9n1EOJYNG/xYrON3S3TeUjd+PYFTa8cm64oXlK0QCPVap9K2xvehzhls3NeQNwvjy6WBKM4hGD+r5cjlKBz06YLBXmYl+avppV
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c71ab7-61a4-482c-f592-08d777058c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 08:56:41.4930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FEny7Bn6qOeYXRJ98yQZ+RKg5tm7YAUI7Gn6BA9FZoRDhqFqh50BO9lXUpf1OOc/yvbyOoVBtMOq2/svcifkFRBsIwSDQPF6einwes8Ctvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_005647_206533_BA6EE1BF 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com, Codrin.Ciubotariu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Platform data structs are initialized by default with zero values.
Thus it becomes redundant to initialize them manually to zero (false).
Remove extra false initialization for field members in structs.

Suggested-by: Wolfram Sang <wsa@the-dreams.de>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c | 39 --------------------------------------
 1 file changed, 39 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 5137e62..3da1a8a 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -66,55 +66,26 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.clk_max_div = 5,
 	.clk_offset = 3,
 	.has_unre_flag = true,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
 	.clk_max_div = 5,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -142,23 +113,13 @@ static const struct platform_device_id at91_twi_devtypes[] = {
 static struct at91_twi_pdata at91sam9x5_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
 	.has_hold_field = true,
 	.has_dig_filtr = true,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
