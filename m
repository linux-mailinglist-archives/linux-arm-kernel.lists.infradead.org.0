Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336B1143A80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgUS8IoQBLTqN4aJPumLM2kcs1yV3JeVXV2dXPeM+Tw=; b=uThaL192xfERKI
	c21e91XsMSsSEPYp15dT/BkTbEfCSWDtmySPWFsuoUZKQktu7O31iZPG5PiruOVeR5+aivHHf6+Gt
	VYLVaS59bDoEgkZZsFY1rHowVUfAYWEBB6qR05j/YzxOx2MTxi1hM9ahNAYt1Ljc1V+gQZwNEubrM
	juZwTow/RmZq8tmJ7Np2kW8bIy9MAKJRcwcGeGVR1vl7njl5pu3p4bUECKC74HkDGXsTuOZo1rQYM
	LDBh0TaYgADo7+6fDzo3j8pP3zSlU3zG4Jvw8xWWuqw5EhdA2pwvcgLAuEIng7ujO8FM2ufpFeITx
	JSa+ZsItzeWgaQM5C7xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqSq-0001gy-TS; Tue, 21 Jan 2020 10:08:53 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqO1-0005o7-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:59 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lOWJe1In49vnP1Z/Gel0o0GxfzFUHgxGvRRzdJdJ2xhW3s4TWCJA2wNHbOHX8aVfRzd/BHj1rH
 QI8drENUwkAqqHdFATRKPsXSXpyR36j0l1EwXZOP54vgYn5Ms/PTAyn3RJnAsMDRUejg5pkj3s
 UrqD+0tJLZRqDcMhFvfMhPcKmt7AVk5qjDJ0PY37HOQZhWCuCywM9O42eFVUwrwJlR9RZTK6LD
 yEc943uV7h4rxz/Jy9lanxWno5XENZqohAmWbD1sOFwkRkeUUXSLezW8b75bc2e1dYG4/yQRXc
 DRo=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="63244526"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HCRHo1FTfcREcbeNlmeEjYSzGGVGEVPsueMicWTg61sumESCNdU13SiPBtTEwv7o8MvQq8+7F4ArxEZaPjastsXG2wjMtRu6Thfw75lp13CHYNTuB45/blVy3l7ZBzgMwW5xFSIc1bDY8e1Gfcls9kseYJJcTMQqI+qPwuxk9E/VlyRaIkMsznj9IKdhdEkLWXxnX5R4H3hAG/yXJNEePGG908BeVqmst5iwVXM7eWoGeJPRL0tosmbTVIslQNfYg0Qg513e//Gj6kcSepOpp8WdPWYUc788wLntoOl3DJHbt07hWUhxfErvj+++5xC3m/IANpqHkWQ5GTkHIygsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AFHgGzDlqAZhS6/74aT5iE9WHb+jsKf1/phsxgNQNFQ=;
 b=ePRjBUEECaaJJVKqXkTrZDkVw2IkwaSA0SLEJQOdw70nGXkvAsuaoyd5RsSuLxoqFTg07JdJBgVJaJi+ScW2jfwzXVJDwxjIerqHurb9Fq5E0UciXOF201safyOlLR860vdYdh6wYMACp2RAOjk1BgDBlSzZfMHBZDFEca55pPb4L0uoeSB1Ohdxl+7iA4E/53ndxbOHEHyTFeYJZK8Q3BunpciSqKt05DWRhRMpJj6T4jQHuLwu0THhAO5bxgADtPdd2yAZ/qLJFl1E0S1vP9kIHu2/59dC6F9b7JVXnaoBXX1rNJFPQvPUY33eoLSp8bc6ARKlCMNQdBqVXJQLbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AFHgGzDlqAZhS6/74aT5iE9WHb+jsKf1/phsxgNQNFQ=;
 b=kZxV0wO4Xh+yH5XuDJuzuzWEd4Qhg8lS8gCrQ2JEeIyJLfLPdTHLwlinzlbXL7fWHAqAXcOofUERLVLb9Fp2RRiIg/v6QMWQbGvOyBje0HD+IterOrY99l5Gp0tQt4b3jIZdwaIUzIDscA5e1eatZB918ScMtFx00/4yXOy8PK0=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:37 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:37 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 11/15] power: reset: at91-reset: introduce ramc_lpr to struct
 at91_reset
Thread-Topic: [PATCH 11/15] power: reset: at91-reset: introduce ramc_lpr to
 struct at91_reset
Thread-Index: AQHV0EIK+7UC3MHoP0+g4a2qwcFNkA==
Date: Tue, 21 Jan 2020 10:03:34 +0000
Message-ID: <1579601001-5711-12-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 085119cf-9556-4162-8bee-08d79e592f13
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195CAD3342E3B8B434D96FA870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(6666004)(316002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mu4QcK/f27ERhSjKtJPE7M5GhxbZ1III4PZAf1YrswQa8nvKOK4qBj9+Lise/tSdAdr/YXkW39vGWYZIx2mMkIeCT+9CUsySBnSQzK7V14csrp4r8xrbKxENSagRmgqnaq2c3igvuUrawkefDbm+4vO9b/98DlkFVQY3R0roVKO+o9c2BlfgOcw53YjAjC24KtFt6WI2/wfYsX6LLzIP9va3Mj5MD2kPcjOpYlGNxBFdb9Y+lHND2yacb/HXS0BmujGmJQSmQaeIRW3oc0YNpyZ49Dm8lToWyDNoZScqUDYdbHww0uiCz8SwMm5vntU0CrCiqS8HbLvgw0rZDh8htGA/f5f3zOs5p6bO7iV5Nkid70PosBuEvUR/L7cjHb2s0257N6b0a3UOTqP9T1wHd2hy3BkDBp8OsOMUD+foiLFCsEbn4j6LL9h2+qH3UtOS
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 085119cf-9556-4162-8bee-08d79e592f13
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:35.3005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7TbEOjLiPzKsMd3c1ueNjinQmjxSdzO0guq8L4TJp6z0zCseikobCbzPj1hdfZjC1BotCEaZGOPL1HToem+DhVE6bHQ36Mn4R/gWnBNks+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020353_225951_9B78CB78 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Claudiu.Beznea@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce ramc_lpr to struct at91_reset. This will lead to the
unification of at91sam9260_restart() and at91sam9g45_restart().

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 3b1d566350f4..4e1961334e4d 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -61,6 +61,7 @@ struct at91_reset {
 	struct clk *sclk;
 	struct notifier_block nb;
 	u32 args;
+	u32 ramc_lpr;
 };
 
 /*
@@ -81,7 +82,7 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 		"str	%2, [%0, #" __stringify(AT91_SDRAMC_TR) "]\n\t"
 
 		/* Power down SDRAM */
-		"str	%3, [%0, #" __stringify(AT91_SDRAMC_LPR) "]\n\t"
+		"str	%3, [%0, %5]\n\t"
 
 		/* Reset CPU */
 		"str	%4, [%1, #" __stringify(AT91_RSTC_CR) "]\n\t"
@@ -92,7 +93,8 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_SDRAMC_LPCB_POWER_DOWN),
-		  "r" (reset->args));
+		  "r" (reset->args),
+		  "r" (reset->ramc_lpr));
 
 	return NOTIFY_DONE;
 }
@@ -122,11 +124,11 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 		/* Disable SDRAM0 accesses */
 		"1:	str	%3, [%0, #" __stringify(AT91_DDRSDRC_RTR) "]\n\t"
 		/* Power down SDRAM0 */
-		"	str	%4, [%0, #" __stringify(AT91_DDRSDRC_LPR) "]\n\t"
+		"	str	%4, [%0, %6]\n\t"
 		/* Disable SDRAM1 accesses */
 		"	strne	%3, [%1, #" __stringify(AT91_DDRSDRC_RTR) "]\n\t"
 		/* Power down SDRAM1 */
-		"	strne	%4, [%1, #" __stringify(AT91_DDRSDRC_LPR) "]\n\t"
+		"	strne	%4, [%1, %6]\n\t"
 		/* Reset CPU */
 		"	str	%5, [%2, #" __stringify(AT91_RSTC_CR) "]\n\t"
 
@@ -137,7 +139,8 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPCB_POWER_DOWN),
-		  "r" (reset->args)
+		  "r" (reset->args),
+		  "r" (reset->ramc_lpr)
 		: "r4");
 
 	return NOTIFY_DONE;
@@ -193,8 +196,14 @@ static void __init at91_reset_status(struct platform_device *pdev,
 }
 
 static const struct of_device_id at91_ramc_of_match[] = {
-	{ .compatible = "atmel,at91sam9260-sdramc", },
-	{ .compatible = "atmel,at91sam9g45-ddramc", },
+	{
+		.compatible = "atmel,at91sam9260-sdramc",
+		.data = (void *)AT91_SDRAMC_LPR,
+	},
+	{
+		.compatible = "atmel,at91sam9g45-ddramc",
+		.data = (void *)AT91_DDRSDRC_LPR,
+	},
 	{ /* sentinel */ }
 };
 
@@ -263,7 +272,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 
 	if (!of_device_is_compatible(pdev->dev.of_node, "atmel,sama5d3-rstc")) {
 		/* we need to shutdown the ddr controller, so get ramc base */
-		for_each_matching_node(np, at91_ramc_of_match) {
+		for_each_matching_node_and_match(np, at91_ramc_of_match, &match) {
+			reset->ramc_lpr = (u32)match->data;
 			reset->ramc_base[idx] = of_iomap(np, 0);
 			if (!reset->ramc_base[idx]) {
 				dev_err(&pdev->dev, "Could not map ram controller address\n");
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
