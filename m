Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A3C143A57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqkU3khLvF0PlIG6F8dNh9CTnnWYI6REbyD9+W6UKK8=; b=DFi12Dm/Yy5lD3
	FFQGGJaYcHiame4oiT4PnUeVZLg+zj9LivL2hD+qD8Jg4kr3v8oywBrdcRv8ro/e1EmbelG4HY9h1
	kxNevZN9ZJS9UXviBk4qgNd4nYMH97ZRMxcsNsgyCCcqx0A2xiZcFCUS0jHLMwc8fQ2HE8cZmMqK8
	raUtbmYvsMGqWKd7rJFOsl24BvpjxwBdB3LiLTz2YW5osjm28rJrPKZayqeq5pwvkHT4luFYgMeyB
	TwAgiQvtet/iTHGwTBcpOVJ1olWw1zxtN+dn3k3jahw1oOpb0/nSo2PvjMa90E9NY/DIthAxhP3Fn
	kjZ/Mo6A9vOiiDJGU8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqOe-0005ys-Sw; Tue, 21 Jan 2020 10:04:32 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNk-0005dp-33
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:41 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ca0145M9G2SDBq7LioglYWvecn0gKET4x5AZhCqBRL96JscZ08L9dm48BmUys93cwjzdYWnGfW
 /yU4Coqepf098M1whu/sdph2Yu8GUQnH/SxxlwWh5aOmvpIsl2eGSy+47HSAyR7HsqsUKt5mDU
 iAyQGtuxT57UtlH+49EYKONGKOHhBwefBBE+SQz+y/NE0LoqeYtqziX8/uJznRFotBQ5KHbenq
 /0s06swNoVWvMMj9CU+xbkNmn/l+Kn4cFeM0eWT98w3t6Fyc8LMrZDJRTM83S4iaFo6s19xRvx
 YA8=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61695314"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EifYahtq8uidVjkwEWDVEJVTUAjRLpah1AtPq+9ujWinbqoBMFVkWorQ3gjuuXDPkM29FEVkkg4TMP+AyQA6Lx94TS4WDX7+16nH5Tdy50zjS74WQ8bZR6mzQsFnTSassZ9Z/ALG1CAZyH0YMgWXvJWYxkiBHq6IOtayD6O2yOzLzSkWiwVYWEefiHaW624uV7Aoq7UjPmfLTHbt+0ONP/lRli3HN9jJzr63PWnfbjbjd1hqbgpbgSfrWbR14SijO6o27IwLTO8ZSndVoO3LhHNrc+XKh6vvlepKwFMItJ+DRGHkpZfMw/VzCzVjdfCnhSbjsTHgmi6qw8EYSo8oeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2AYo1W7LWGeA2MKm2KYZLXjVcNJip8lPG4/cv8t56o=;
 b=ayqOa/OnoQIkknzaMe3IAveJtkV5iET09RkHU6aGt5Uzh9FQwehWIBQ1dln4aFCo5BMziT4RJzqzYTJQRLCJXTxHn7XDseCfDkQ0EwNztnSa+DxGBNwA2Hm7HgF8l3kMKcz9cdG8RQkqQZ9Spe48LqUVNO8d8Q7rsruUI+EcgtSQkWRbWG9OZ4HW6i+9CPb57JVBcq2VUAg1pq/XsCs9tIRPP5/xdUXQIwNeMqwgLti2OXNv/49ZaXCQ/wMzc9NN7teAVGPbijUfbXNzgal/gMD63chRjmldETkEuMNuu1KTPKODuRJZIzi4GCeWWoGFT9fORPnTymUnBNiw4qHAGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2AYo1W7LWGeA2MKm2KYZLXjVcNJip8lPG4/cv8t56o=;
 b=ulIOMOJABSjYjj/XyOYm0jSZv15ITLyoSCABZ3lXLEzVQqIJUEsh53GuBtcbWxJJBEaAyv+jv/p0HXrghl12Xtc3OPdE2Y433/OTkR/H6zzejfxl4lN206Me44wPs4kRCCLGFzEPzlKFkbN3XWiiZ6Fw4WbsKMc8XHJNEY5FkiM=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:31 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:31 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 05/15] power: reset: at91-reset: convert reset in pointer to
 struct at91_reset
Thread-Topic: [PATCH 05/15] power: reset: at91-reset: convert reset in pointer
 to struct at91_reset
Thread-Index: AQHV0EIJnY4G7esm70ub3Ro4FxXzlA==
Date: Tue, 21 Jan 2020 10:03:31 +0000
Message-ID: <1579601001-5711-6-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ad519e4-6372-4489-81ec-08d79e592b9f
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195AF521FED3B2F02E3E86E870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(316002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EXGMJNT52j9dpkURZINgyDnr5X19HKBvGAusI+ebnc2yyZ+0lBktbyHvilFACduaQSN4lBxUll7rrZA0QTYBK73O0taLnI69nEvFKWETpsFshOYb2JZ17v6T1cxbfS9Zm52G8M/z0VvrbNASEZjyacpaRwiu73tSEdzTMNFvEwm5raOcz7gHfQ7Gby7BqFnKqRYYgHEDc/LDVKYWGaKsvroDFZbCGfzdtt9V3kQBBZ7FBwNJHfdwpaOtrlNRR+CEFEsRsFOtYjBo6ZlhuCvseLcjtL5v+BDImxQKY9h/jpDOPxyCDyw3hv8/1/jHAk6l6BmoY52Hw2rcoM39RufPsuhruy3qPpb9ojlkXUNINqMjOOPrWDujCgJVmsuxmxiRb6iEC1sk/vZkZClzv1aQI6SRBSp6ccRiQnFno9wuUnVcM6hB1an4pheNqVkPO8in
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ad519e4-6372-4489-81ec-08d79e592b9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:31.6486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PKoOCoLsWAHPpZUQtmm5yG3mjaadVVYkGH5fT8j7t2ggmfdV3kcZP/I+zoP+PcQ5wllKRV54hgVFEhqZmJ6f5OYmSeqmj8FClWdwtSrrq0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020336_210387_F5C958B3 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Convert reset in pointer to struct at91_reset.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 50 ++++++++++++++++++++++------------------
 1 file changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index e8840193620d..4bb5eef4b258 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -56,7 +56,7 @@ struct at91_reset {
 	struct notifier_block nb;
 };
 
-static struct at91_reset reset;
+static struct at91_reset *reset;
 
 /*
 * unless the SDRAM is cleanly shutdown before we hit the
@@ -81,8 +81,8 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 
 		"b	.\n\t"
 		:
-		: "r" (reset.ramc_base[0]),
-		  "r" (reset.rstc_base),
+		: "r" (reset->ramc_base[0]),
+		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_SDRAMC_LPCB_POWER_DOWN),
 		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST));
@@ -123,9 +123,9 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 
 		"	b	.\n\t"
 		:
-		: "r" (reset.ramc_base[0]),
-		  "r" (reset.ramc_base[1]),
-		  "r" (reset.rstc_base),
+		: "r" (reset->ramc_base[0]),
+		  "r" (reset->ramc_base[1]),
+		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPCB_POWER_DOWN),
 		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST)
@@ -138,7 +138,7 @@ static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 			   void *cmd)
 {
 	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST),
-	       reset.rstc_base);
+	       reset->rstc_base);
 
 	return NOTIFY_DONE;
 }
@@ -147,7 +147,7 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
 			 void *cmd)
 {
 	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
-	       reset.rstc_base);
+	       reset->rstc_base);
 
 	return NOTIFY_DONE;
 }
@@ -155,7 +155,7 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
 static void __init at91_reset_status(struct platform_device *pdev)
 {
 	const char *reason;
-	u32 reg = readl(reset.rstc_base + AT91_RSTC_SR);
+	u32 reg = readl(reset->rstc_base + AT91_RSTC_SR);
 
 	switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
 	case RESET_TYPE_GENERAL:
@@ -212,8 +212,12 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	struct device_node *np;
 	int ret, idx = 0;
 
-	reset.rstc_base = of_iomap(pdev->dev.of_node, 0);
-	if (!reset.rstc_base) {
+	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
+	if (!reset)
+		return -ENOMEM;
+
+	reset->rstc_base = of_iomap(pdev->dev.of_node, 0);
+	if (!reset->rstc_base) {
 		dev_err(&pdev->dev, "Could not map reset controller address\n");
 		return -ENODEV;
 	}
@@ -221,8 +225,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	if (!of_device_is_compatible(pdev->dev.of_node, "atmel,sama5d3-rstc")) {
 		/* we need to shutdown the ddr controller, so get ramc base */
 		for_each_matching_node(np, at91_ramc_of_match) {
-			reset.ramc_base[idx] = of_iomap(np, 0);
-			if (!reset.ramc_base[idx]) {
+			reset->ramc_base[idx] = of_iomap(np, 0);
+			if (!reset->ramc_base[idx]) {
 				dev_err(&pdev->dev, "Could not map ram controller address\n");
 				of_node_put(np);
 				return -ENODEV;
@@ -232,22 +236,22 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(at91_reset_of_match, pdev->dev.of_node);
-	reset.nb.notifier_call = match->data;
-	reset.nb.priority = 192;
+	reset->nb.notifier_call = match->data;
+	reset->nb.priority = 192;
 
-	reset.sclk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(reset.sclk))
-		return PTR_ERR(reset.sclk);
+	reset->sclk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(reset->sclk))
+		return PTR_ERR(reset->sclk);
 
-	ret = clk_prepare_enable(reset.sclk);
+	ret = clk_prepare_enable(reset->sclk);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not enable slow clock\n");
 		return ret;
 	}
 
-	ret = register_restart_handler(&reset.nb);
+	ret = register_restart_handler(&reset->nb);
 	if (ret) {
-		clk_disable_unprepare(reset.sclk);
+		clk_disable_unprepare(reset->sclk);
 		return ret;
 	}
 
@@ -258,8 +262,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 
 static int __exit at91_reset_remove(struct platform_device *pdev)
 {
-	unregister_restart_handler(&reset.nb);
-	clk_disable_unprepare(reset.sclk);
+	unregister_restart_handler(&reset->nb);
+	clk_disable_unprepare(reset->sclk);
 
 	return 0;
 }
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
