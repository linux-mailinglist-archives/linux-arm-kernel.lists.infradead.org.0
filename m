Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F41143A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0/E9MShx6/hs7aOLYUcFs3bdFgjZtbhfnEckWYxTrI=; b=pDLsX3jq6o1EYV
	sxTyKTPDLAV0zBYB8SNEdCtBmukSHQMP/x+BIlkNre6qyQ7n/vuyQBjrg9S980sgCj2hIzNfPADx8
	IeinNrJ4i0lOdO7J9g2MJnz9LuTREhKBIrQqJO88SsLdTzSKg2+/B+z9hOu8D7nO5Xmi+fJTwI25L
	yXHIXUogngYo2ftVYrsssBYgHZH+KOKAXfpCNBba4xij/6+a2zppnIk2ngC/r1h7FMYwZMtaGHDHR
	S9L1xFuqL19Gm6WN5Hy06SndmO4eyID3M6X8XhnD8uowuZk6ugIFGm1L+BJ3SDhVpwZReeHks0dlz
	k0LanRltlQJ06VYvqbfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqTA-0001x8-Mf; Tue, 21 Jan 2020 10:09:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNx-0005ec-47
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:58 +0000
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
IronPort-SDR: r58NK1H09lJE6HK5EENXeRR19+c1fbnA4h68g2Jmo/76t4L74or2G1FA4fXDSYjZHEwN4TpXaB
 eDnjZDKZZFtXRHoy2Njrm//TDP3Zis5OJgSVibr77Zarx8VAyd6+9sWtq4YllPnqECwO1JtGli
 YbLPI6WOp4gOhFudYx1LOMVRtfKYm9FIM+WyLjPFB0roUyQlytXehCXvGFAFKJu4bAor82zPcL
 7K2EsdNr+35YDwKe8JpRolacESCq4zQkOK2wilwW2m0XDKlL18UCkaoqnd+vHJLyDdWscnGBl+
 DNc=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61482001"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SYJQPmZpZ3Rv0wdxW52FDVjUUEr6Rs07DEXqm0OWIH9Ch0txAw56nJoVb+Au/MjAduB5bzWLKgJupAeTBLp6pINtKxgEaJ2m9uK+d6yfUGLyDnEzblzD+FNAmGF1IyaQv/Y5Ot6BumNMvE5qvYFyuvJbcDo8pRDRqzEKFV4NawtgitvcF+HKKDxnjzxALx5OrVaWTRfKbIH13ZTEJFw1zdWuckeg8mn+n4/Px6Kbf4lHnSVnSInrDCHPzD5m0/b0szs6l5SuRAQfeeeVxWPq8Z7SOcPHGYuJ31gU6mpeBrCihwAIHAoWXO6bkQaZhG0PO1YfBbADKLDiP8kRE+qfzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RhtQU+CBLsVB99bvIxgdXMyFoajsowwgPLcLAi9dwgc=;
 b=Dy8v6quBLA/Dz9d1W2gPn0eLiSd3pIwIzRy32V54NF25jVP5+FNdxduxg8ISCspaGimOLQZBySmeB7/vXhOa+HXXpl9g+ifkvYi7CaBGOa/1z5FCpdz/Ov68ALJlpWr72NOJwD3YXfziklOi4MJsW0bmkuriOMOsXRbKque92dc2AS7jpo5M0N/f6xY80rJemNY4+z6wkzueFMul47XdrokxivZaBvvW0RT5mve7WPixZrfpBVbCHn3gYjrCxj/lCzD/Uk0oB7+Zu85hX9VCVJoPiLoYeLtCJ1BOI49qj9pPQ2eKtvBMn9pCSQlHKEM8nyk4j+2qkZzx1o7hFlvfsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RhtQU+CBLsVB99bvIxgdXMyFoajsowwgPLcLAi9dwgc=;
 b=e7E6kK/jRFm8Uc1XJhifrbjsyPGjhR3iSMkCdKi0zSNIWVClp6uiQs8P45iqV5tM/okdX+DKGkMv33AdVekjzagN2uu6uysWNLnAxW1llkRBBYHFdu35//+L4BWPxlky5WFEgRE7iWaiOKrFgdveuV+a299cFBgVPXbk9KGLXy0=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:38 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:38 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 12/15] power: reset: at91-reset: make at91sam9g45_restart()
 generic
Thread-Topic: [PATCH 12/15] power: reset: at91-reset: make
 at91sam9g45_restart() generic
Thread-Index: AQHV0EIMzNNYH7bibkmfRa3URPRK0Q==
Date: Tue, 21 Jan 2020 10:03:37 +0000
Message-ID: <1579601001-5711-13-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19de8d39-22a3-4999-7f06-08d79e592f8a
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB31959292EE126FC2D61E1CBD870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(316002)(478600001)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eyFquF0mICdDMqiW6lBR0+cLnQfZyMa3HKOANV28WCBU6qNG0yBLc0HgAvQFf95vzZ09yY+f6+HgcbLEUib9VVWe+gzZZymRgpKLFib4ZYEa4p3EQlavXoYmfaXz106h1F7FbN4Aqz1ImkBAX+mJ1QVgWWnSfSOHwm1GaA1ZnULoLIoY67E2RVgOf6jK2KBAJv42QRm7OVDMKXf51pU/0YOY0aVjutjzJ0O/ki95k/C3OkUFCj9g7o3DuCPkjMFBadL5Fy/Tj03VhllP5TgZBcsHQ9wh/aaf26flfVkogcKpXR3ghtoxP5FJLc67uIHRfRKWwV+c5xnVVws1ZS3MJbORZY7lDdfYD4sgd4Lyt6sfNgNY4UL2KpnBhHc+i4PVdaeeqSa63eJ57qgccLPKcovK9FqnMfUIWwg6VDMUrp9uH9QWtg4Vc41sf21ea0DCp0dIVpLeGKQiUWCOshgZJ/7jXeYBAkTTC/g5tQhkfPY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 19de8d39-22a3-4999-7f06-08d79e592f8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:37.7241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qrFbL6wJdJz9oKq1ZwP4sij/ruQyyNGJfO1nqJsr8KPQxPRYTJGmy9k0K1fni+C+MCuliq8mrrT0bqgqmNSJzKM2FuzbT/MTlrvAp8G2g9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020349_293578_139DD948 
X-CRM114-Status: UNSURE (   7.67  )
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

Make at91sam9g45_restart() generic.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 4e1961334e4d..61433060d784 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -105,32 +105,23 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 	struct at91_reset *reset = container_of(this, struct at91_reset, nb);
 
 	asm volatile(
-		/*
-		 * Test wether we have a second RAM controller to care
-		 * about.
-		 *
-		 * First, test that we can dereference the virtual address.
-		 */
-		"cmp	%1, #0\n\t"
-		"beq	1f\n\t"
-
-		/* Then, test that the RAM controller is enabled */
-		"ldr	r4, [%1]\n\t"
-		"cmp	r4, #0\n\t"
-
 		/* Align to cache lines */
 		".balign 32\n\t"
 
 		/* Disable SDRAM0 accesses */
-		"1:	str	%3, [%0, #" __stringify(AT91_DDRSDRC_RTR) "]\n\t"
+		"	tst	%0, #0\n\t"
+		"	beq	1f\n\t"
+		"	str	%3, [%0, #" __stringify(AT91_DDRSDRC_RTR) "]\n\t"
 		/* Power down SDRAM0 */
 		"	str	%4, [%0, %6]\n\t"
 		/* Disable SDRAM1 accesses */
+		"1:	tst	%1, #0\n\t"
+		"	beq	2f\n\t"
 		"	strne	%3, [%1, #" __stringify(AT91_DDRSDRC_RTR) "]\n\t"
 		/* Power down SDRAM1 */
 		"	strne	%4, [%1, %6]\n\t"
 		/* Reset CPU */
-		"	str	%5, [%2, #" __stringify(AT91_RSTC_CR) "]\n\t"
+		"2:	str	%5, [%2, #" __stringify(AT91_RSTC_CR) "]\n\t"
 
 		"	b	.\n\t"
 		:
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
