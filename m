Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6020143A6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u86OUfOdyA/jwdRGHtTTb1sKwcuXsaPmP7JAfxFGqVw=; b=G6oUQE6j1lii/e
	n/d9rTgChNYCJqOsskc7ZegqTcpDt9l8L/XIEYZ6FWADLC1nX/AZcGxOKgCkfXapJyZCiJ++PLhIP
	6BSRoA6XJSbAzLQA3VpQsPDPijtfOxV7ZuvRSiO1SlCGIe6UuOb2Yc7nHHXVpjDsxC+MyuTqr7VFn
	RueOvAuEYzKySQV6tOEOZWOticbSQQvxiJgjQ2Uq4xmoJwjhnDKyB0zCjrCrBqk/sGjSP1rNEuL4s
	uCP2ZqEk8KSH2OLHrHc+hJ3pR/S8uO9v4qiCE6g6UpjhiXjnJAZLmGW9fgMAGS/yq7QY1peLIB1Dj
	ZQAhNQvCP/Z9v/nOkXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqPk-0006TI-Pu; Tue, 21 Jan 2020 10:05:40 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNo-0005dW-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:44 +0000
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
IronPort-SDR: J1+w2o8MqAUS4S8EsN9alMK6lCGE9jPr3vJ5fiv/J2JmCuD9528wewRIz37rAR4nuSMo9NDlWf
 yxmzR+zwNlhe9sWtX8604oykesS9VEi2mDYanp3Z5mvDmUB6qYCDDIDutLXnNpsGJVkbV/Aq2k
 2xa/Vop5QuTNTG5w/hf/O5Cbi1VXbtWpbHKRy0eDxDf+fYqwuSuaP5U4Nw2n6R/kZuI35YCCfs
 HQM92fLsvMuxtFFA5busOhblcTNwVgkRp5vRkN9z2rZ81O82cUeBgBMexDL7FRrVkUKCCvCJaH
 etk=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61695326"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=enL51cQuvHJ0BQm07D3Jkif+1OKy8YZlCKtB5w6Fo4e5e1/Yh7FYtiiHuz7b9Um9nb7DSkYPZPKZ40YqtBMmagBaqr2/1AzASyJj6bIr/AWK4ATcmeXz2sDLvomUJ50pSDDdoAfTmXz96mttiiikXLyU1hrfLES9LmvMVrzcsmtkSm7uNdg0IgGo7oE8J5vvkYupA+S5yVfDlwSwPSPMsO+wlPExF0Ia/IE/oDPUkWwnEHNkL0TxBJ0ezUKXxjnflKSRvCARn46+ddZ/qO15HydW7dEKmf1I27Ozf007N/0zFWV99znzrnsBxqqCi0zuJIKN2u5rWzq6qG3QNCYfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vPVN9XHe3G1fhnVPARSmchdssRNcGRI8HIQEBWjAQWE=;
 b=EnXwqJSk+cf5tKkwrzpv9GtI3gsNHiPmAi3Grr/yBVEOXCcZbXGLO/pdNjqfWoceuG73KQSYiN3MX3D7AIFGrZ5LqVsZiqg2GFn2oyvSQ4/r4YKZUzrgIizksRJXzuepEM3qsqySFLWvTuRRloqq7TkIZBLo/crM5/RCuSEgdDXW7fcpadIPEvcj3BuruqD6NRcrg5NGYtyVm/LY4Pb76lOq5AYGn9FyhBmMcmzwtzp/sA8fBwhwIR1LY0QO+eTwTl4/q4Ah73xAmlze/vZJe9JqGpE7k/cZ9hUMKWeWyUJ54ijcAILX7yE3IqYSlsTTwj6+GhhVGjXJyFFmW0X9TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vPVN9XHe3G1fhnVPARSmchdssRNcGRI8HIQEBWjAQWE=;
 b=TIw4lVXbGLDp5aKs9XLFWrPJ5vafvglDUWvII4L5CDLZ7xqrLqUl1P2vlh2tUTpg5srPPIwaddbcjJjH/KxeURDJwmwMDrY5enSXth1WibpmqxV2ghS2pq121wTcLLKMolAkt9o4gdwjbYUmNxYQne6q+cyMR16oD/yRdQIeFeY=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:33 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:33 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 09/15] power: reset: at91-reset: introduce args member in
 at91_reset_data
Thread-Topic: [PATCH 09/15] power: reset: at91-reset: introduce args member in
 at91_reset_data
Thread-Index: AQHV0EIKKlAxzgdug0mON1UVGCeEBw==
Date: Tue, 21 Jan 2020 10:03:33 +0000
Message-ID: <1579601001-5711-10-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfb40eed-4995-4cff-075b-08d79e592cdb
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195D67A52314AD3F3FDAD2C870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
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
x-microsoft-antispam-message-info: WCEdwSWSySOHGzYtsXYozv5B4zFLMF8CjhcueAiI8EQ+XaQQ1Js4PpFUWDStFrOTP0XEeR4U4IjoQe/KgFa5F5jp1ONG9MXl7vP56jQ2IUn6K0H2neWsp7xl2/O4dowj9/izqMpClE3/BCvmeX08xjX70qIUMnKx1TuVBqUospWDTuF3ygUvmz6+IKXCicAS9K0vJym6qbAWUwkK4TSbFxOoqiY5QA/GKsu5zapTRGCvCuQcG4pb5BZ+y3RSTIT0DKfNxdFC/U2BYrp7OV65HZR7oYhv6BWgEtK4TFa72sUZ2+Aejiqm4ax09BA0H8CEO60J65FmJK8mvFV4Sd7t3CNnu14LWgi8Tu/AF+zTgZx4I9BnMHWMgQnhDqJX2KkYbwscfdkmhSTlueMAfw5UeSACC7taVwsLTnpkwn2hKwxAtBUbqftpKcXA0E4B/9Js
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cfb40eed-4995-4cff-075b-08d79e592cdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:33.4836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Up9dmCCfhm66RZ2GMEQpQlRpFCGMiy7+c1wC9IBSdm/bqMeIuvOiBXLntr7TvXDbH41Q/vAz/zHC0Cw3Jk7WdYE8AB0Fi4oy8sStd/dO0+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020340_452374_379EA136 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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

Introduce args member in struct at91_reset_data. It stores the value
that needs to be written in mode register so that the reboot actions
to happen. With these changes samx7_restart() could be removed.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index c653bd7ac29a..dc48f6850796 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -52,6 +52,7 @@ enum reset_type {
 struct at91_reset_data {
 	int (*notifier_call)(struct notifier_block *this, unsigned long mode,
 			     void *cmd);
+	u32 args;
 };
 
 struct at91_reset {
@@ -59,6 +60,7 @@ struct at91_reset {
 	void __iomem *ramc_base[2];
 	struct clk *sclk;
 	struct notifier_block nb;
+	u32 args;
 };
 
 /*
@@ -90,7 +92,7 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_SDRAMC_LPCB_POWER_DOWN),
-		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST));
+		  "r" (reset->args));
 
 	return NOTIFY_DONE;
 }
@@ -135,7 +137,7 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 		  "r" (reset->rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPCB_POWER_DOWN),
-		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST)
+		  "r" (reset->args)
 		: "r0");
 
 	return NOTIFY_DONE;
@@ -146,19 +148,7 @@ static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 {
 	struct at91_reset *reset = container_of(this, struct at91_reset, nb);
 
-	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST),
-	       reset->rstc_base);
-
-	return NOTIFY_DONE;
-}
-
-static int samx7_restart(struct notifier_block *this, unsigned long mode,
-			 void *cmd)
-{
-	struct at91_reset *reset = container_of(this, struct at91_reset, nb);
-
-	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
-	       reset->rstc_base);
+	writel(reset->args, reset->rstc_base);
 
 	return NOTIFY_DONE;
 }
@@ -210,18 +200,22 @@ static const struct of_device_id at91_ramc_of_match[] = {
 
 static const struct at91_reset_data at91sam9260_reset_data = {
 	.notifier_call = at91sam9260_restart,
+	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
 };
 
 static const struct at91_reset_data at91sam9g45_reset_data = {
 	.notifier_call = at91sam9g45_restart,
+	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
 };
 
 static const struct at91_reset_data sama5d3_reset_data = {
 	.notifier_call = sama5d3_restart,
+	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
 };
 
 static const struct at91_reset_data samx7_reset_data = {
-	.notifier_call = samx7_restart,
+	.notifier_call = sama5d3_restart,
+	.args = AT91_RSTC_KEY | AT91_RSTC_PROCRST,
 };
 
 static const struct of_device_id at91_reset_of_match[] = {
@@ -284,6 +278,7 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	reset_data = match->data;
 	reset->nb.notifier_call = reset_data->notifier_call;
 	reset->nb.priority = 192;
+	reset->args = reset_data->args;
 
 	reset->sclk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(reset->sclk))
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
