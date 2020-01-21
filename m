Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B6D143A65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxZZLT7/1Ts/A/oRYl/2He8AxQ17ePJhqqjKcZs8kM=; b=Vn4j0at1Udoiqz
	aQGkld5ROY3hV8Pzl/9NvvsjWEgJccK3p4xGqqHPRNKgDUrxZyVMTxjHvVhfUO7iI9rcRyRAMPeiW
	EhLyzxLHyLN+cbU2gq7jQv6wXgOrETC3wuLZGs0suM4Hwsm1MfZpE0DH2O5ZdmkKznWwRLl0M4scB
	7H9lm6jfmfm/lSBaQZjClOav6zBwMJgX9P4wGEbG7isty4vm4zcEcHlpGMWEYwKjHD747FwbxoZMl
	xhl2o871pRqvrnrV5a7awqBt5lr0iayrJGd+LQPb7jklYCnCNQssMLudbPCBGftXhd2AlYkLlPWDi
	0khv+atJnrq/dfzXfz7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqP5-0006Ee-3s; Tue, 21 Jan 2020 10:04:59 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNk-0005dn-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:45 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /orkjCmffiyF2BaulGpbdtFKRbUa7qslI47o7LUXMZk+d0M6LyLsMragi27y9Ncn3ZJZX7HQHi
 rC/PogzoeOGWNY+yybuOcByPl1dAWro9cA6zski2R/84c27RGEqULVNubftfmhChjSOcCc72nL
 swGKFojqRVH7fqKYIRZJAozxw0yc6yUMdc+3tTXmZXMwBQ/F05+kPYkIYdqzcb2u7J0/5ijH2v
 CRfU3l2qmSLuLJs8CSkt2QafiTi8fmyHV0kThpUEHgR1oCyibhhbay+CEk9hVoE3x24pBsyv11
 A+Y=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61481928"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NopsgyLdjAR+kICy3BVscE0GBn02otM6byGD0bB0ZBxNRxMQM8tlWY3M5eP/DHUJz2Wsc04jUAe1bl6T1PPqlEvXrPraO5fv5Q6b43LZ6O9v6uLA6XpdxP3Sr+IQdm4yZtT5j47WOsUky28LTsx1bhzZ9u5H/QJmtHgvYBVrdZLRJ2F165zZMNlL8xcvjYxny+shs/g74EnhXd21nnSf0UMTfFtdIaA6NJvt7uL8G2gcd9P/w5CdUuNVeqmHYcUyp72TLTuxbJP6y+IBgjsQhg9hU4UnbOqyV1OIU7+hmJbOyoITrhrKzKxvKEmQBX5QYTpncN4F5XFaFxvkMLNh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbLIJkPacqDzJVzTYUV+YvCo+E3r3beOus/TbYJHsMI=;
 b=jb/TpNkY2JIteQK6cxMtLtvj4/hdcJF22TrCFnQsPgXZH1HHEsr9NsrSd9notCsCJpmBhvQ9vKcrNmzp+wa8239zTD+mXwRfkRZrFnZvpeFBc4kqAnfe9AKgY8sIeOuB5DVE7jcnvpGnkNsc45/KVacaKngeMddcPUzwVT8TpPvJDyM+VFzXCvQOy0WqkYQ6x4qLuI5JCf+H+cnfFDgkW2qraPv4bU2I8VrMD26HkR2bDLYvXlJ9KXYp5/7YeWv7osSsPZ6hbpkWiwInfG+xoTngdg18l60SI+9PDZdfR3OE7TZYWbIZvf2NzJvVxv5DnH908kao9M2pTK7fDgROuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbLIJkPacqDzJVzTYUV+YvCo+E3r3beOus/TbYJHsMI=;
 b=RPdrtCFlbW1WKsGPKtr0DJjBxQmNJ2OiKGpW8PB9CWgb4yULAvbSPqK6IdOzlFFSu/+x3oumHz0YXjn0H3X7CgZs8De3jcMyPu8lILbBF2P6eBtyKTkJoVh+ntihOphT7HY+d/GgES7c2FyRTNwstWePrS/raw4glRufXSgNH8o=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:29 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:29 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 01/15] power: reset: at91-reset: introduce struct at91_reset
Thread-Topic: [PATCH 01/15] power: reset: at91-reset: introduce struct
 at91_reset
Thread-Index: AQHV0EIHIa10Wtf9lkq33X+2rWQtjA==
Date: Tue, 21 Jan 2020 10:03:29 +0000
Message-ID: <1579601001-5711-2-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a673460-22cb-4d6b-c236-08d79e592a7d
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB319541DAFDBCAB97FEB4F6BA870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:820;
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
x-microsoft-antispam-message-info: fVTJAC6E3S/lXgbt5ZGvoKlMZq2cVTbliXKohUiEX7OdYjT974va/W/s/Vh7C0nbuQ/Q4zIu+Tr5eYXku1pJMUuesDjcU6OnbIOWvJq+C/ATBpH8BZUs5M/xwWNzH72oedibGuGOw0TLcxjP9gHnlaeozc0G782VTjS+8ZsQJm+ZHKuPUO06sM+OH0a7bjPw9NL0+u5jxnE0XQrjW7Tn7yUvwd2kAUI3IMSN4kjt+LTKnrJNEsHQ9uMnzLA9LDFyRF2XUlOF8Z8cgvLCJjTyYuENE7wfbGlHUyvMKDHJaRL+uXO9S2SdVfINehvGA7glQIgJeethKukbzrBHd4d1nJhs2xWKo93LCge+YK/Z/7XII8kAu6N/K18X+N4Zx/w9kvsKDZcVpjoKKrWUtGlsf/Cm3m6e5psJvXdNWUlGEPoi1YLvuK0Dmh3zQTY3VCyo
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a673460-22cb-4d6b-c236-08d79e592a7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:29.8027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y0QIrBbADO5ckb+Iqo7o+KD/Vz30rTWE90zGhd3eNkCZjn+a6WKL+QiyCLrZyMEPoXmd/Q2feJiKDrbt/FZ1o30R4iU3Uid+ABfP3FP3GvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020336_484372_1AE830E6 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Introduce struct at91_reset intended to keep all the at91 reset controller
data.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index d94e3267c3b6..2df0610e5527 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -49,7 +49,13 @@ enum reset_type {
 	RESET_TYPE_ULP2		= 8,
 };
 
-static void __iomem *at91_ramc_base[2], *at91_rstc_base;
+struct at91_reset {
+	void __iomem *rstc_base;
+};
+
+static struct at91_reset reset;
+
+static void __iomem *at91_ramc_base[2];
 static struct clk *sclk;
 
 /*
@@ -76,7 +82,7 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 		"b	.\n\t"
 		:
 		: "r" (at91_ramc_base[0]),
-		  "r" (at91_rstc_base),
+		  "r" (reset.rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_SDRAMC_LPCB_POWER_DOWN),
 		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST));
@@ -119,7 +125,7 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 		:
 		: "r" (at91_ramc_base[0]),
 		  "r" (at91_ramc_base[1]),
-		  "r" (at91_rstc_base),
+		  "r" (reset.rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPCB_POWER_DOWN),
 		  "r" cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST)
@@ -131,8 +137,8 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 			   void *cmd)
 {
-	writel(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
-	       at91_rstc_base);
+	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST),
+	       reset.rstc_base);
 
 	return NOTIFY_DONE;
 }
@@ -140,14 +146,16 @@ static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 static int samx7_restart(struct notifier_block *this, unsigned long mode,
 			 void *cmd)
 {
-	writel(AT91_RSTC_KEY | AT91_RSTC_PROCRST, at91_rstc_base);
+	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
+	       reset.rstc_base);
+
 	return NOTIFY_DONE;
 }
 
 static void __init at91_reset_status(struct platform_device *pdev)
 {
 	const char *reason;
-	u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
+	u32 reg = readl(reset.rstc_base + AT91_RSTC_SR);
 
 	switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
 	case RESET_TYPE_GENERAL:
@@ -208,8 +216,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	struct device_node *np;
 	int ret, idx = 0;
 
-	at91_rstc_base = of_iomap(pdev->dev.of_node, 0);
-	if (!at91_rstc_base) {
+	reset.rstc_base = of_iomap(pdev->dev.of_node, 0);
+	if (!reset.rstc_base) {
 		dev_err(&pdev->dev, "Could not map reset controller address\n");
 		return -ENODEV;
 	}
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
