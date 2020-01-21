Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3F143A76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrqXPhyLX3Y9PgF5si0y6QvvZO4ndqTqEI37FBO3fNU=; b=nemuNoyEDhegTl
	LSuUIOeEiCEesiUaYwtww4MO1S6b7WQkmLDncOwys0mOKe/YWyxpcIPIedy9ZgNa7Cy/TugW6pw9I
	CNrVwYrOR292B20fOzVq3OH9bsVrpQP94A3v8BvSvZtxgdm2diz++eeArlmlFEo2ePiqColENI0v2
	XM2awbsE/V/3WTfIvLEcEI8eaWKVAQ9L3IHDhz1/itPMbpR3+yTM7JCTGS9ackLEZsUjk7oHsw343
	kNvhuu4f9mN3AB4OluaGajQheFp1tnfW+M1tImHETzBtGV+eo1jvp0I0OIcDqHgNJi1kQ2ZW3nNmK
	ywTQ6B+M81Lpjym9YEzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqRF-0000UK-Vp; Tue, 21 Jan 2020 10:07:13 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNp-0005fs-Dq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:48 +0000
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
IronPort-SDR: Sa/9BoKSM+p+OcpocxBtgQ7qCmZQS3fzB7xg0vErzECLxEbD7rbwMeFqX7e/cc++Osc50eNn96
 WNyskRKqBN6HLxyN85Lfth6mxYbsc8iXjgc64QtK0Fei4NKy5eThChV5/9ljQW5K+MEEn8fKmn
 WLs3au92BS0erjK16Kc7iJG5TLWQuaMJi/AuMMNORcQgj296+uAxuOc+tPrPHZMaMEfsnBfln2
 ziyOZbYp4sc5e83z9glUnOrmqbHBrsaWe2whDBEkm+A1sD9j1oH4Yo4a7pFEgc5CRTEbuz5vyX
 JnE=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61481933"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SN7sApZGd7CDQuTU7XEneasgU4DlZV02ss1d/nNjMxXItg7Mm9tLOoTpYB9Vk57i4dT8vVFRhaTtsCJoOLJXxo4sDVlZl44podgkw1Qd9KQevsJITYclzz4uPXEt8zSuQHgBiQ5ZhpxDWcNoV0hucNyh3yP9ZSwCeSa/qU0zv9rAXFuTKwOyjL6MIRbHm5HtSE4uz8s0uFd911foUoIpHIyE+ZcjUH+eiock9IVzPsogFUXP7qSrJzzD6MGHo0Js/URvfKhmMGdrrDUn5c8DYfWCkSiZHdTrEkhTnI6XdEo7Trp/PIIrxp3qwsPQ4xo4dAE/EyowoGVhPx70Y/h0pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roNhV/lug8aWHkeuFJYtQ0SZWC6D5jEB8NElpTudAuU=;
 b=Zs7GhTGkS8+V3/67q9+ESPSaiWsIOMJ+3A43KT8VZElvULkRM7gVhu6FuxcWBcba749Mlux95a9clilzUUUXKm0x+nhcKp+h/86cRspUvH7a4ZQrsYG7UkkLXzTAqWgQ2mYV+RjTvwEaDqDUvhs7DPHoLLCYHjDKY/Jeu2xTN21jeXxfmm/dppnS5tZ6XMaGenDO3CZReWVoRnBnlzWeVQ9BZtwKOPoMpfkJOrMTus9mTDPtGvJiT0PaNyuzpxb+JUTvLqH5Lt46SE2zJG0F3n2KgWF1mUs4vhblAFTe7tKx8lXZ/F/IyAOxqPg8f4FyWz2awrUqn4L9nvNsplGmPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roNhV/lug8aWHkeuFJYtQ0SZWC6D5jEB8NElpTudAuU=;
 b=KUc8vqfwGlttIlWcVSYgb7hdmMatGzGzyWshUM6e6HLLxmd0gmTh4LAq/pb99a0wBpNg4FCCwKd/h5yRdCaO66KBWoEENlz/CfkdV+ZcWW0pkLZUNsbCmAgqeDkJCfjwe6yC2sEMbxCD92h7mQMz0MCvhiHPaIZ+kWm3eKpg0uw=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:30 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:30 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 02/15] power: reset: at91-reset: add ramc_base[] to struct
 at91_reset
Thread-Topic: [PATCH 02/15] power: reset: at91-reset: add ramc_base[] to
 struct at91_reset
Thread-Index: AQHV0EIIuO4qrCljfEmTEHRlxAGwaQ==
Date: Tue, 21 Jan 2020 10:03:30 +0000
Message-ID: <1579601001-5711-3-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c9375f7-0bce-4f06-84b5-08d79e592ac4
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195FF35469F5E972E91F951870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
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
x-microsoft-antispam-message-info: rhvjf1XUngHnEuK6xTRjIq1wShdAjXVc9sMZ/66KOjCvG2eDkrI9PFZ4s+f/W6iYbSAU7RoCHncFG8ELdO9/ArVLIckGI72VaI7rEhQFcFvGft1ldg1Qpagx4EUveb6MdqKQ0iZLhTYyb8uW4mARoUhnZh0o2CgbjCJn6s99g646KLhigFTIjIa2oWgcGo0NwpuiXUXjvvA5F6AsNqEsThDl6HWoPX29H9UV4okEJPz3SqvXm3jxIgM63xaSQVlRNacQHM5nSKcP+r49O+gkdrVKvX6kEps4dIuxRqkP5ufFhXhD7Rv5wYxrUfIBNtQKb1QykyAuGZBR+YE99AYdwYdX9plOt/bKigvhqWykR0zTkdu2OHFLy1Y0jwYlOAPXRn7ip/IZTBlnjc6seyh+N7vZkilegpQtElqqOQbTAALZn5aK8FNZz6wbDIWsoZsR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9375f7-0bce-4f06-84b5-08d79e592ac4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:30.2414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SED+nJBepTns5yDEcfa0773UFfzbGP1uolsaFt/zvAVAbGMAwCCKbJNi5gpNxcyRznvz4WNv7UYQmg7pVdMGu7MdA2pqlFES2zeJ/aNvwPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020341_530929_996E5957 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

Add ramc_base[] to struct at91_reset.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 2df0610e5527..999d3a1653d2 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -51,11 +51,11 @@ enum reset_type {
 
 struct at91_reset {
 	void __iomem *rstc_base;
+	void __iomem *ramc_base[2];
 };
 
 static struct at91_reset reset;
 
-static void __iomem *at91_ramc_base[2];
 static struct clk *sclk;
 
 /*
@@ -81,7 +81,7 @@ static int at91sam9260_restart(struct notifier_block *this, unsigned long mode,
 
 		"b	.\n\t"
 		:
-		: "r" (at91_ramc_base[0]),
+		: "r" (reset.ramc_base[0]),
 		  "r" (reset.rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_SDRAMC_LPCB_POWER_DOWN),
@@ -123,8 +123,8 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 
 		"	b	.\n\t"
 		:
-		: "r" (at91_ramc_base[0]),
-		  "r" (at91_ramc_base[1]),
+		: "r" (reset.ramc_base[0]),
+		  "r" (reset.ramc_base[1]),
 		  "r" (reset.rstc_base),
 		  "r" (1),
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPCB_POWER_DOWN),
@@ -225,8 +225,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	if (!of_device_is_compatible(pdev->dev.of_node, "atmel,sama5d3-rstc")) {
 		/* we need to shutdown the ddr controller, so get ramc base */
 		for_each_matching_node(np, at91_ramc_of_match) {
-			at91_ramc_base[idx] = of_iomap(np, 0);
-			if (!at91_ramc_base[idx]) {
+			reset.ramc_base[idx] = of_iomap(np, 0);
+			if (!reset.ramc_base[idx]) {
 				dev_err(&pdev->dev, "Could not map ram controller address\n");
 				of_node_put(np);
 				return -ENODEV;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
