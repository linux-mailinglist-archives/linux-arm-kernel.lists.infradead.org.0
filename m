Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8E819D012
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qq+KHkjcsdBLQOfhpMGeFvVobluvjUSwqbLSPxoBXbY=; b=RIpoba4SFZhUT2
	qkjxTM3Rsi9R3+o2S2xwsm/MepRUJNjZ7uT6v/K6F7HKFebWP2+26P7E1YMVtuT6EKr0Bs5bONiCM
	EtsUCsXWnVQ0OIBTkIVhy0Qg9X0NCBupnFkjMvepWbOcUCgPg1VYLcCKxmCqgxMPrfZ4wVR+gHAgA
	wPQvi+F5hSWMR85yslWx4HCR69teynJK2lszUVORTAH0jBLug6+PUud1xyu8aendaaW2w0PP/ewhz
	6Gz0FkBEqsj/TJQ09ORZM4R5tPRJImkh6mGMv0zOyKVGqNC3gFRPIJrOQaGb9AgWrfGjffkwVPGnR
	Caboho9KikMLjooxjx2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFZG-00076N-Qj; Fri, 03 Apr 2020 06:12:38 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFZ8-00075J-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585894350; x=1617430350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ael21jjk5g1ef+0DnB2pVtVQGI7nlNU6oa66g82DCrw=;
 b=Ubs+AWObggELaqNzNE4NMkIKdoY4JyRW4quWPuxOY8lAsEgzDVUKNfb3
 rZT0Eli3yV4qnTN18ZrfTjFd/JsLH7i6NxzNHZLTDBZvbo5CgqncsIS9Z
 kztgjeU3gjyWbnXjJB3a48P8pvvoicmI+Ao6SClwLFOeDi7dkQMvC+/TY
 1orU9XCNE4/drLLE4NheGNzWxQFw2Vc5AR+rbMHe7i+pcIMssZfa4yXi5
 h/w92KduLm8uhShrRd2k/FZz3fwA6wP8lNVKmZ44ND/SWODFjiemMKm55
 KSXdIWSsecWDqu2kDQ88UBGg67i0fpz/4if92DXBBEfqLYxxJN/5CvInj g==;
IronPort-SDR: /B8LQJEtdHf7cX8AHNFJsR4gjibO9YjyQVB+c2YDtQBUG+5mmvnltiTZV9Dw+2rPNbIJfTwSw1
 32RLbPny3ko6nMI/WfhTlkvN8wPqNVP69oz8GJzL0WgcoO22XTN2/tNIzfsCKfyBK/KfwjGusX
 YAS6iwReQevzxdGSg0n8FORgD9fbEVlR7iPovwDDSO7XmLxUmmfLljA7wM5lEtJ4uDZL22Fa0n
 JG/Wgu/7vE3nW8WwpiMTacW8VNJSU6brKVrBFAn3XkUyV/2OsJBYk6kJzYRHwi3GOZNQCILYz+
 9uA=
X-IronPort-AV: E=Sophos;i="5.72,338,1580799600"; d="scan'208";a="71316157"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 23:12:29 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 23:12:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Apr 2020 23:12:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxKII1/YvchP9UcLXo0U9Xy3Aq9Qmb7KU7OqClll09yrRPnYILU1fORZESAOXGWTJjtuQJq/RMLY1e2p1QxkyX1hIT4noaWgC5o+HeqO9MlDMgmyB3x1rjT2YIdgsmUpcNpq5jp0KhHsORVWv7lI+6i9JEz+dk916ggUZRjRtXmow2gRl9I+YFC5vvr7hSjcC8OhczWUb/KJFmtpEY8WB30laFpA//g7wkY+GWzZ7XwqQGBUDd2FvmmdWHBNUd9Q0nPWHr5+x14LwiQeohWu+NlofP0CwWLSwgM22nCnCNuItX/6uZJhcFof/WlqWADSi3cBLZxyZd+Mw6tTFIlq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EgIDxnM1yekUWzQXQ0H885GQXH7ra4WL9pNKqDNbNk8=;
 b=PwH8Q2mVu2NJHRcgb32R4dU8ZCx0LmeDLuJcLbgF3N0sHbHCJreQhR0wiT/TdBod1MCdwbZBgGx/aDu7gyXvxhcHQjnSTfk0L1vSPoKnQlgGWxt28mMeYEWrZd/NhZMZjsZrJvfG4dh4SpPZnrRU2pNEfvBpK35y+L3qJY5BnAbCIyxP/27TIIS4G8tgGZChgnkfrVBkjOfNh0ioxLu+NDudfdpi/mAay7xhJLdqZi7uDFuFnVOU1gXqHGwZuGnv6skVrrR5mDQxoQ/lnTPetVf1kjvCcUisnpKv9ZOyEUryYN0OhARqloKB/6ndUsQfT4+EXpZQwAailQKXjulT1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EgIDxnM1yekUWzQXQ0H885GQXH7ra4WL9pNKqDNbNk8=;
 b=RcHa/5LJl62qGaNhwKhhSFqMjFEpexLHcmTJPVNbvs/MjjblO1QDnoemyXU7N+3ybwX+mSg8XNrlrEw6XgsXilMSPrwS69AXQzQferDV7cvbAEEMpC7VVE7cVGmNbVwwLFWvkF7Cq8jI+zVnM7tCrlIBwSdrGtfYIJrMB6VYr/c=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4183.namprd11.prod.outlook.com (2603:10b6:a03:18e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 06:12:27 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2856.019; Fri, 3 Apr 2020
 06:12:27 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH 4/5] ARM: dts: at91: sam9x60ek: Add sdmmc1 node
Thread-Topic: [PATCH 4/5] ARM: dts: at91: sam9x60ek: Add sdmmc1 node
Thread-Index: AQHWCX7ZcGzkWBrVmUio3lvv2f2mZA==
Date: Fri, 3 Apr 2020 06:12:26 +0000
Message-ID: <20200403061222.1277147-4-tudor.ambarus@microchip.com>
References: <20200403061222.1277147-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200403061222.1277147-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19f17d14-0cf2-41c4-df41-08d7d795fc20
x-ms-traffictypediagnostic: BY5PR11MB4183:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4183E38428E09C866097CFCBF0C70@BY5PR11MB4183.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(396003)(136003)(376002)(346002)(366004)(6512007)(6506007)(478600001)(2906002)(6636002)(2616005)(186003)(6486002)(71200400001)(1076003)(26005)(36756003)(316002)(66946007)(8936002)(4744005)(86362001)(54906003)(110136005)(66556008)(64756008)(66446008)(8676002)(81166006)(81156014)(4326008)(107886003)(5660300002)(91956017)(76116006)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uSdJ9bvrEETDj2zPDG+XqN7fzX89ZUsbBgaVxnGmg5dMKHza2EP8J14dt5ECd78e5XeTX4BUSltdnP9pc5DK3NzMPcjVsH7E/sZyxJHCIjN2gzrLjwh0+zo/Lykow2yIDKcxIueBO0zmzRkuBYk363k6OfyQ28SpcBrE985aZwjRUYbZZYPHCc0XMepZYCIL7IhoS7mzBfcgeJlBE2VU9IBN8GPhO93pKKfZP2CO/xDolau7v4CoY1PRbzh5yqHbOC4mkeTOK2x6ZSD/5d71fXYO0QDE3Hd6/mcHFEVhciJpLIzr7N/ZuO6HpJ4VeWuj9Hp6C2DtBSUnZASWfUaK0SBiw03mysbjLTKrQpIA00ekYxbOwEVt7HsjrLHwN6JLgAX86a4/BkejApSq6nQhLvPvfhROb6skZvCBOOYY6B0+1Fcmn8Dm/D5An6yMjlLH
x-ms-exchange-antispam-messagedata: hN3iCdGwJPk2MKEt4WBbDctOlKc2wg5My96DxmCUgsL0FPWXk8anTWaz/p5x/2ug7QG6+K/jThk97gxnvu15jaKS4206Uki4Jw4lpZ6f7AfDJLdqgsE22mvXOMaNgCFA3SURNLK2wkfJfs+8TL+3Sg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 19f17d14-0cf2-41c4-df41-08d7d795fc20
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 06:12:26.8700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BrXkCteY3KAfWICkmvrFXJdVFrZ/BPlgC6PC8UZLON9hfagENbR7lj7PV0jpzlfm7yY2sOIyonBNyQQWUQUozw4CW5rHB/pHSFVJVn2Bx9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231230_544878_3703A93D 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

sdmmc1 is not populated by default on sam9x60ek, but there are cases
where it is populated with wilc3000. Add the node, but keep it disabled.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 8c3f621efc4b..a5f5718c711a 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -542,6 +542,18 @@
 		};
 	};
 
+	sdmmc1 {
+		pinctrl_sdmmc1_default: sdmmc1 {
+			atmel,pins =
+				<AT91_PIOA 13 AT91_PERIPH_B (AT91_PINCTRL_DRIVE_STRENGTH_HI)				/* PA13 CK periph B */
+				 AT91_PIOA 12 AT91_PERIPH_B (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI)	/* PA12 CMD periph B with pullup */
+				 AT91_PIOA 11 AT91_PERIPH_B (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI)	/* PA11 DAT0 periph B with pullup */
+				 AT91_PIOA  2 AT91_PERIPH_B (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI)	/* PA2 DAT1 periph B with pullup */
+				 AT91_PIOA  3 AT91_PERIPH_B (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI)	/* PA3 DAT2 periph B with pullup */
+				 AT91_PIOA  4 AT91_PERIPH_B (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI)>;	/* PA4 DAT3 periph B with pullup */
+		};
+	};
+
 	gpio_keys {
 		pinctrl_key_gpio_default: pinctrl_key_gpio {
 			atmel,pins = <AT91_PIOD 18 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
@@ -568,6 +580,15 @@
 	disable-wp;
 };
 
+&sdmmc1 {
+	bus-width = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdmmc1_default>;
+	no-1-8-v;
+	non-removable;
+	status = "disabled"; /* Conflict with flx4. */
+};
+
 &qspi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_qspi>;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
