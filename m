Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9127817B67
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/IYGGiqIM4x5TeEIaXfQlNxoyAJWzjnTNJwLpuEvYfw=; b=LRiF2dxDtBaDhp
	sxKshE5ePXtdHpk8lCph+LW/vHNWUn2bFDKFVxXXnCgXCA2DtBPNX+CIL4AFaz4hAQVMMzT4wz23d
	kfDcOtFIP91ucVAqmlPbTNDp7u6awLi+m2HvOe1L8GrC1nmS/MX8rD0N38hKOPx1wbMctB5APlT2J
	BnsJ9fmbv1RGECkYRpYJnK6DMF1QsRjKCxFtxiL47hCFUk32czQZbb3ubiDxDsNM9cL9KdokJJn6P
	Cg0JP4FQDrInCcrMg867c/4rxogzJejw51Ia6+4PSKPErA5glES4ZLDjCYkJtY8wj+f9mSnjXNYh1
	RDgSuIzfTYPrV3DURZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONM7-0008Tm-De; Wed, 08 May 2019 14:15:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONM0-0008St-1k
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 14:15:29 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,446,1549954800"; d="scan'208";a="33789240"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 08 May 2019 07:15:24 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.38) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Wed, 8 May 2019 07:15:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/Xx5YEhkVZVHwnhYrprUn4r0hi1bHDxXgY040TgjqE=;
 b=Xmve6yXjOLui6N+bjWg68t3JwKG/LC2ULtvx5q52jgNAEmuytpu/GFdzWYPVoN6EM0ewow29o/JqrVRudXeQ+JwSW5MdMPeqY04gresZgKwiizpkBnshCshEpDzqi4Yo055cpTr9P9ciDrpEs/JYvTm+glUDXOqWMZYlcpnRj6A=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1898.namprd11.prod.outlook.com (10.175.92.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Wed, 8 May 2019 14:15:03 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc%3]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 14:15:03 +0000
From: <Eugen.Hristev@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <linux-watchdog@vger.kernel.org>
Subject: [PATCH] watchdog: sama5d4: fix WDD value to be always set to max
Thread-Topic: [PATCH] watchdog: sama5d4: fix WDD value to be always set to max
Thread-Index: AQHVBahu/JHAOFdIPEa7ks2ptdaG2g==
Date: Wed, 8 May 2019 14:15:03 +0000
Message-ID: <1557324535-9050-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR08CA0031.eurprd08.prod.outlook.com
 (2603:10a6:803:104::44) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93658306-6273-4ab6-6198-08d6d3bf9036
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR11MB1898; 
x-ms-traffictypediagnostic: DM5PR11MB1898:
x-microsoft-antispam-prvs: <DM5PR11MB1898CDF2EFCDB172BF8C099FE8320@DM5PR11MB1898.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(346002)(376002)(189003)(199004)(53936002)(86362001)(66446008)(73956011)(2501003)(71200400001)(71190400001)(476003)(8936002)(50226002)(66066001)(25786009)(68736007)(2616005)(4326008)(6486002)(14454004)(6436002)(66946007)(66476007)(66556008)(64756008)(107886003)(256004)(72206003)(2201001)(6512007)(478600001)(110136005)(102836004)(26005)(6506007)(186003)(6116002)(3846002)(486006)(316002)(386003)(305945005)(7736002)(2906002)(99286004)(52116002)(36756003)(81156014)(8676002)(5660300002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1898;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nlAngoE0nfyuSR3CJm84CYXyO/+ypYnUSpYOqt03TJ9OZzv01Yu4sqVNeHSqmGN4UlgnygrduB6cpPnbuEiSYUe744Mu71rap1Cl+1zx2926kjeZhrobNEiOaGGWUY0uibE+Ngt07l5MglYsSFoOwNXzXNKD8TwRGbTsY8mNwZbwLNJYfdOJBJ0F01WLpFbIltT8vZad8Ljnua2JlD8oa9Cgyix8RyKJXzHlHnsfwZfTiNjXIZPxdM7FRbpWwW1wxaBMAhvloax1bzYCcuK8WQDIVd96BHR3WhYz7iMy09fFX+sjNbE1MrxnxfUozuPn4gaw8gFC2KAd8QhGXjD+rvasm/U8J2FCt1JFo04qhJTE6VkGglDkXpvLmL9kFD/1cWluqZDUofPfcQSnUwLLZL75CDI7rqS9oSevIMU1gu0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 93658306-6273-4ab6-6198-08d6d3bf9036
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 14:15:03.6715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1898
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_071528_187640_FF16F41B 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/watchdog/sama5d4_wdt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index 1e93c1b..d495336 100644
--- a/drivers/watchdog/sama5d4_wdt.c
+++ b/drivers/watchdog/sama5d4_wdt.c
@@ -111,9 +111,7 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
 	u32 value = WDT_SEC2TICKS(timeout);
 
 	wdt->mr &= ~AT91_WDT_WDV;
-	wdt->mr &= ~AT91_WDT_WDD;
 	wdt->mr |= AT91_WDT_SET_WDV(value);
-	wdt->mr |= AT91_WDT_SET_WDD(value);
 
 	/*
 	 * WDDIS has to be 0 when updating WDD/WDV. The datasheet states: When
@@ -251,7 +249,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
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
