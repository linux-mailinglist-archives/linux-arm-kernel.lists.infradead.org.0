Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2E663212
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MOhN1/0BxdXBO5PSFSQrKu62+fiRd+FfBauO4C9//kM=; b=I0Q+MCODaNgApY
	zi/T7yhU6Y0IBFJIvD7XK2MKAzJm2HXhNLNxr8UfzRw8pwgNrq/c76mUQ2z6SYK0MSFxIstxAkCr/
	38Q4gDeOI0AwNo47TLBAnW36qz23I9hKubbzFk0OIITTXNpQuGwvpP9RMbDI4MpfKU1ZTnGmxMR8h
	/XL8EAVCqneArRqnFsONL+XfT6gikRWnRuFxxrK21TkPurHdOZXbvfxL7ZhGjdawDC/+owqKNcays
	k8obt6VmaAvfudwaASWF57uZ/Dg69Z0ZjqHRBIWP6oWrJ0eWwXfAioogWG27mcfLLqrZPWcxXtBzx
	n3O7U4SlIG8jtBrSnCgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkYQ-0000FO-7m; Tue, 09 Jul 2019 07:28:46 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkWT-0007IX-MS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:26:50 +0000
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
IronPort-SDR: hDycyhyUlO/tAJG4VASrQeTGiTKoyc0D7IoBtpdVpcEBPnwN/txM4PBrAPO4xROS5vDs62JBZg
 jrQMdroznQbVaz216xKPBPYFtn/kp6L85/TKXeh3/2YpvyOttWNQzCr8fqJWMhcSToRDJRHM6e
 UazcHjbGmc55lfTmWfdaeapKAIBFOgA/v/kqwUFIahTj6O3iDLfuyC8pWsIkuYePNFfkaUDiTf
 l8bEaqwLu5d6Y3jG6vLlzBlXq66A7yN2vJLr5OE2E1nOplqEdV4omNuJz1FcvYVcp/nHD6sLhH
 QZY=
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="40535428"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2019 00:26:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jul 2019 00:26:40 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 9 Jul 2019 00:26:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e14MSquKxbd4bZG/2vXuYDVoJ1T/bwEZYDRZd/kR/XE=;
 b=LzVCfS5Ao9qXcXBoG9xoQDpqFL5a6UxK6ASA5mMrFiaj4Xt6VFa+ZX07oG2bT6u9w57zsyYEwoa5svYP0n4yHSpOQI6ySeZcgKpcQikoDtT7eRrEZF9l3XbZTP/oLcThOhGdsGXp7l3maV3XKK8vSQKDN7EHvbZk2RahAIhXQas=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1722.namprd11.prod.outlook.com (10.168.105.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.20; Tue, 9 Jul 2019 07:26:39 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925%8]) with mapi id 15.20.2052.019; Tue, 9 Jul 2019
 07:26:38 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <wim@linux-watchdog.org>, <linux-watchdog@vger.kernel.org>,
 <linux@roeck-us.net>
Subject: [PATCH RESEND] watchdog: sama5d4: fix WDD value to be always set to
 max
Thread-Topic: [PATCH RESEND] watchdog: sama5d4: fix WDD value to be always set
 to max
Thread-Index: AQHVNiel3tqC/c4NYUqYBLX/IH2ZHg==
Date: Tue, 9 Jul 2019 07:26:38 +0000
Message-ID: <1562656725-21468-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0142.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::26) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50cfd7bc-2e63-4aac-fc4d-08d7043ec7dd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1722; 
x-ms-traffictypediagnostic: DM5PR11MB1722:
x-microsoft-antispam-prvs: <DM5PR11MB1722854E6C1703FCF198EB06E8F10@DM5PR11MB1722.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(396003)(366004)(376002)(189003)(199004)(386003)(54906003)(110136005)(14454004)(476003)(26005)(102836004)(5660300002)(6506007)(6512007)(71190400001)(486006)(107886003)(68736007)(81166006)(2616005)(8676002)(81156014)(66446008)(8936002)(6486002)(256004)(71200400001)(66946007)(6436002)(66556008)(2501003)(64756008)(66476007)(73956011)(4326008)(2906002)(2201001)(186003)(7736002)(478600001)(72206003)(305945005)(50226002)(53936002)(316002)(99286004)(86362001)(25786009)(66066001)(52116002)(36756003)(3846002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1722;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fRiGREg25Pe7/UFdIfyTXjFE254q+LqVqrw+EtkAK8d/KBHqTF2lwYnoUg/90tGaxip/7/Y69p1+TsyPvjeKwQ810ixn0kSE2ob67TcnC8EuwpAmy+znje1lZN2bGPF+yTtY6lbbNliSOZkdy699IwbFfURxglyo76fK80nARRza7Q8MVe5HGZ8s3V6yJRdXHhDe1Asoc8116DDs7M3dbYu/Kd375rfORZ59dcHx0dsNEbUuEqMyhdl7dIAtjBJ4IawfpPAqquFuOr9a3FJrEar0t3TKuitV7TuKBg0JiDjcF3PgLgVjhf7zq1fcM4B6AxX9oE1b8JyKnQ5e9eE6ZKu7i8pibEIgwO4BP0mndFcGcoRlZdLfL3s/2mZWCIJH/zuYeZsZ20qCeJI20Agad1Q8UvxyhNsbS4eKXef5H+E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 50cfd7bc-2e63-4aac-fc4d-08d7043ec7dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:26:38.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_002646_089936_7D6D58E2 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
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

WDD value must be always set to max (0xFFF) otherwise the hardware
block will reset the board on the first ping of the watchdog.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/watchdog/sama5d4_wdt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index b8da1bf..5afe10c 100644
--- a/drivers/watchdog/sama5d4_wdt.c
+++ b/drivers/watchdog/sama5d4_wdt.c
@@ -110,9 +110,7 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
 	u32 value = WDT_SEC2TICKS(timeout);
 
 	wdt->mr &= ~AT91_WDT_WDV;
-	wdt->mr &= ~AT91_WDT_WDD;
 	wdt->mr |= AT91_WDT_SET_WDV(value);
-	wdt->mr |= AT91_WDT_SET_WDD(value);
 
 	/*
 	 * WDDIS has to be 0 when updating WDD/WDV. The datasheet states: When
@@ -248,7 +246,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
 	timeout = WDT_SEC2TICKS(wdd->timeout);
 
-	wdt->mr |= AT91_WDT_SET_WDD(timeout);
+	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
 	wdt->mr |= AT91_WDT_SET_WDV(timeout);
 
 	ret = sama5d4_wdt_init(wdt);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
