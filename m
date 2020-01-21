Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EDC143A6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgbEZxJAKvFYRbOmwfPmUuNu1zl743+Ebp+5po74Qf4=; b=is9mMBB3FVL5ur
	KTPrT+e7lCZcFU+N27VUsGxJElc19XzZXeghREBe2PV4cfvwxAeznbP/3jSiDAmz+PT+vhSEuoMNJ
	Z64+XghYu7Up4HS3waL4FNOiRtjW2t5bPEeZzc1Jh8i2/tNzA7k77dJ994hHTRnzuez+u/NKTT5I1
	9h7JA9SCWPnsou7eTeekx638JHAYJKp0XDYc1/dQayOjD3Wql/Ps/5R/wolxCRn6vvPZfqqwQBCEM
	Lnz4BgJ+Ho91c/d02e7sJXwZHe686vm9U6hojwlnaSAGTWKM40ZP02lVXi9lS1jR+zWjDjUqg3Hsn
	DiDaaQ+n+S70V2WM/m1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqQ1-0007vN-Bp; Tue, 21 Jan 2020 10:05:57 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNn-0005ew-95
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
IronPort-SDR: /v1X6D6l6vAnnQ4G+XuD76qV5U0W8UlDQ87P0jFn+v7VdCCtp7jVzIozq6DxVNNVUdOiM4lkDh
 xv2ZwjACK7Q3OZ1Bb42anHIQpaByr4NucPKeIAZGV+uKxGl9WWBAxKal1MMrwilNiHSbygSjHB
 IiJitX0U2y8BI+eskxW2mEotUCxMgIaB2GmsdfFNeDUy+591OgPB/UbEZkDFd73qCickGTqTEl
 r6+YVqsqtebN2C/aykj39eu9aUQXQG7RHuMlW3t20z5SpoP04SEMSabu35fW1wwxU6r2RjjIRx
 U3w=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61695317"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:35 -0700
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
 b=U8/fIN/BPeiiGJFDaQK0jQna0QEgEuVJ1FxESA0A7JSvIfUYMyHNOqwWLhmXuL5Rt65InfzmcpBuajGD/c6MROhC8EYQhRJV/NodiViP/f6zvb8SH+Vpqnksj1CWEwfZUaw4kGgki53Z0Cn2ml4abe3eLkyKOGDbCYOCTr7JqNBsNE4w5N/R/hgixebdL+74+eAtVqDnxIaMTDUAuBg8ysHda1QxIfI3Kfid3z0b08F5M+tmuGFBVh2oRifHv1Mxn3gm07WHYXm+I/kfngN6uf4qMdDvjFXHWe079WALKVWg/EcNong0CQMrDPm3mJ9Z+VH8VMPBW47OgZjuB1MmOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQoTLeyPGWZaEfxVhk1HhANrwKlp3HUszSHXDBCHZTc=;
 b=hFmFWiNkaHv3uSLakDaoBInSO1r84oWRVPFnZVc9LYRBCK1dP3GBCOIMxu8qjyLSSUVhmjaS53ObwwW3vAE+VcJn4umMa373TiGIiY3rzK7vvCAZ4weEuH4GDT/t+/Dx/46acpt64f2fzIFSpv+LcoJ/QvfEkVC1k82VbqpcH6T2WJfFv8/xdqHscbh18V+OpU7bVJLB2Im28UzKiy2U9ukVGT7zYNn2QmhmI401enBStItMgZlH/E7VmSh/YwmfVx+0BEt0JaGU+uMubnRdOLkhFKjCH22aFLO4V5kT6BEFMePZtYKm+R3Io4qfXKdHgvfhZJARE6XxehPGYwmPBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQoTLeyPGWZaEfxVhk1HhANrwKlp3HUszSHXDBCHZTc=;
 b=clbyyZAIRDsXndjbr8mSmsBWFfIx5yfgHLJF3C+2KS+Ck5bBkNbdmP2R/WeRzdmsrke6IOrFMVJpfqYd+bvHqHwNrl+CaYATLPv+lv1VxgkboI7MkUBZoiyMpOlAg97GyOjXMCUXoGWIQXvwaqjiHNNHZJp6EFKnlGz+FylEOKo=
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
Subject: [PATCH 08/15] power: reset: at91-reset: introduce struct
 at91_reset_data
Thread-Topic: [PATCH 08/15] power: reset: at91-reset: introduce struct
 at91_reset_data
Thread-Index: AQHV0EIJAKB1rrnAy0m3EgT+VbjOYA==
Date: Tue, 21 Jan 2020 10:03:32 +0000
Message-ID: <1579601001-5711-9-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81dc8160-20b7-4013-7dd6-08d79e592c8c
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB31951ABC56D95D105D2DBC26870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:651;
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
x-microsoft-antispam-message-info: ft51/GC4XXJVp0sUlVAky0db8CfD+51Fl1rQicl/CdiE0+redg98ifQcFHjXGbAtLS9q/P2bp5040CpRS13GNGYDKhAsU4hNZi7wt+U+khBHvYmnPtodvEl3ykuLTIV9jZHMOH3pBuZgO33cqDIHqqAKGFxu+jDhRnp8wZ8ekpE4PGHeiG8XTtWZlBPqqcLLPEz4x/eR+opP7O9yMJ9pNaNb7CgNQAXm34P2Rk8SxPxWIAxlRW9OajvV2GuhWAnKGR+iQepq1eLbcCfjWM2YJT6dA8IaqBfkIcjvb42qTSiEhl0BHHY7JkF/RHddNE+ijGmnhRjpsjH3Mc8c/7Md77bmtduKcFHjGAgOEfqKIkh/Z00zmkWO0P7+yAToZdIelNHGn45lSQk8ytvz3xcClNuhVlzYPRZgvlahxbsmS9ca4fRbUwZIUQRj77xsTZjn
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 81dc8160-20b7-4013-7dd6-08d79e592c8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:32.9689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fr9/OAZhmsSwhgMLWTk6K4+3N+gydqzeZelQAsKLLU6k/MhP+PW/e0E+sPX1ToFchu6o7bz8bzkpDWqLDppdCf/WmFuolfa8gzLVawXSvVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020339_350259_78114605 
X-CRM114-Status: UNSURE (   9.95  )
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

Introduce struct at91_reset_data to be able to provide per SoC
data. At the moment this being only notifier callback.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 50 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 7ba77555e9e1..c653bd7ac29a 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -49,6 +49,11 @@ enum reset_type {
 	RESET_TYPE_ULP2		= 8,
 };
 
+struct at91_reset_data {
+	int (*notifier_call)(struct notifier_block *this, unsigned long mode,
+			     void *cmd);
+};
+
 struct at91_reset {
 	void __iomem *rstc_base;
 	void __iomem *ramc_base[2];
@@ -203,18 +208,50 @@ static const struct of_device_id at91_ramc_of_match[] = {
 	{ /* sentinel */ }
 };
 
+static const struct at91_reset_data at91sam9260_reset_data = {
+	.notifier_call = at91sam9260_restart,
+};
+
+static const struct at91_reset_data at91sam9g45_reset_data = {
+	.notifier_call = at91sam9g45_restart,
+};
+
+static const struct at91_reset_data sama5d3_reset_data = {
+	.notifier_call = sama5d3_restart,
+};
+
+static const struct at91_reset_data samx7_reset_data = {
+	.notifier_call = samx7_restart,
+};
+
 static const struct of_device_id at91_reset_of_match[] = {
-	{ .compatible = "atmel,at91sam9260-rstc", .data = at91sam9260_restart },
-	{ .compatible = "atmel,at91sam9g45-rstc", .data = at91sam9g45_restart },
-	{ .compatible = "atmel,sama5d3-rstc", .data = sama5d3_restart },
-	{ .compatible = "atmel,samx7-rstc", .data = samx7_restart },
-	{ .compatible = "microchip,sam9x60-rstc", .data = samx7_restart },
+	{
+		.compatible = "atmel,at91sam9260-rstc",
+		.data = &at91sam9260_reset_data
+	},
+	{
+		.compatible = "atmel,at91sam9g45-rstc",
+		.data = &at91sam9g45_reset_data
+	},
+	{
+		.compatible = "atmel,sama5d3-rstc",
+		.data = &sama5d3_reset_data
+	},
+	{
+		.compatible = "atmel,samx7-rstc",
+		.data = &samx7_reset_data
+	},
+	{
+		.compatible = "microchip,sam9x60-rstc",
+		.data = &samx7_reset_data
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, at91_reset_of_match);
 
 static int __init at91_reset_probe(struct platform_device *pdev)
 {
+	const struct at91_reset_data *reset_data;
 	const struct of_device_id *match;
 	struct at91_reset *reset;
 	struct device_node *np;
@@ -244,7 +281,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(at91_reset_of_match, pdev->dev.of_node);
-	reset->nb.notifier_call = match->data;
+	reset_data = match->data;
+	reset->nb.notifier_call = reset_data->notifier_call;
 	reset->nb.priority = 192;
 
 	reset->sclk = devm_clk_get(&pdev->dev, NULL);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
