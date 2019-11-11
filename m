Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9FAF74D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HM80YHbQbOPCuDSHUTgjqkTcCJJwXzLRXclWPC7UKy4=; b=vA199uZwOIpcmU
	OYekyq4cKh9gme6SD2HQOV8DA7mduVImThj5wMuTDCcxCENxgFaclmIagUMJbMmXiAkryTUg3LTMj
	g1olYYdil7uDEMfaDHFJ7Tfw9XWzSK4D4X/zl9vaK+kzwTOo29hQmBAA2+SBPAGjM/EtMtjsl7H7K
	wi48FFRFUZFgAvhs/7rLW2hmJNK+evan32HR6EZrWl5pwm0T/0BV/XG2Xr+5RykDQuSo8tWEe+Z1I
	Xv7SfrBlGMwz+B5qyoGfR+tYEvRKW8+G7pbNycM91hYqvAsuoOGdFk0uFlUTyUIfYOerlMDDQyQp2
	mEAzEHvKowkTLngH5fZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9kl-0006rk-Lc; Mon, 11 Nov 2019 13:29:11 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9ke-0006qu-0v
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:29:05 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ay5tq2Nixy8b/tO9y8IWZu/xAAYwk+tA0JvYCV2b6NQmI3t28RlAmyMRZj+Fk07ROIvCE/7eD+
 rdorvjCC4ePeNIVXYOBZfkW7z7/8RNClIT4YNrqqOq3Mn7qnmyx6/j61Gzjwu6Gq9izJ+mFv1X
 6GvFYopcos1hCNtRP/VfbgbDlqSUhM824Aovsm0Ywf0LvZoPnJzU2huhTrk4xv1B8VQdx0slr9
 ZkPgwFSOXUkOCES23h+4Y1ojyKLtgf9I8U0Q/dvrq+T2tw8neFK2esY/kfQX/4+7eii9cQmBcT
 qLM=
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="54880412"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Nov 2019 06:29:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Nov 2019 06:29:00 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Nov 2019 06:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0W8uQsqDKV/0tvIslgZg32f6RlmolCN4iH5waGo3Ja0gLNk76W38pvmeCsgKgOM+EIgP4ixM7CowOgKcDTlEjyQTWM9SfNJOcANdh0PyTrKZPtmMa27OHxnhoOD+s2zufE8sXAO64CqQynZn/RHtf6JhG0GbdI5zxuDaMVmKCthq9QfwnIQT0t5KOq4X92yoZhFUQCqHKcQhfSPqmJ26EhPu9CaD+yzHV984k9SJ+DRgSKeIEXM3PJLlR8EqYQ+2f8BlhdqrcTKcHMbt14/d0M5OFzlDLC64ZZHWTY5qyPeaJ6oLfkFlPZoXrbyDJD2rQcA2k64TNFROmpEWQXDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDLf4SjLygW5bsSavWlu47+tUSzFyMIhYeFOzkX1XOE=;
 b=TR2e8EsD9SfyDeFdIZtCjIMIjOzg4QSKcN0DyAUtO7L+Q28PliJuPpsWZAr4cuNODeLpGRnmvTuJawXyyLuEXABtszemfb+eqTUhi/GN5TaqIMqzSvIP5B1RI4JxI3hNsSSqs0F8xRZDhnnEAtksItGJfYoYGkBPr0mo9xH0VERVgm0tXgL+Jrt74u8QeuLtQwuzLMNG+8XNlEDmTcq4+69mA7zC80qoI94YveaHBebj506wr8G8gS96MBxPKpzuRurYk1ZL23RdNxFurUQcikQe/NZw4/92Gjy29fJmMuCzHgqboZCiJsh8MTLznuFMaNU/SElPKbCNY3K9IPgkfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDLf4SjLygW5bsSavWlu47+tUSzFyMIhYeFOzkX1XOE=;
 b=tVIhWB0/RTR7ki+tQG7FlQbVAbjwUcZDoj3IgX4q3siBeJz2/K/cLomKFI7TekBKhwPGdVBkzH9A4qwJGjy63SRT7yJaKHIU1qZtNyddKfBD3WywsZr06JR/dNPATvGNeZ9PH+s1xt7FEQqRFh/StFodtqQfY8YpRLqP5DBpAJc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1449.namprd11.prod.outlook.com (10.172.36.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 13:28:57 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 13:28:57 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: at91: sam9x60-pll: adapt PMC_PLL_ACR default value
Thread-Topic: [PATCH] clk: at91: sam9x60-pll: adapt PMC_PLL_ACR default value
Thread-Index: AQHVmJP4gkFvDXEvgEe8yodmIU1IZg==
Date: Mon, 11 Nov 2019 13:28:57 +0000
Message-ID: <1573478913-19737-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR07CA0003.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::16) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3aba037-487f-4e8c-5dcd-08d766ab1ae0
x-ms-traffictypediagnostic: DM5PR11MB1449:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1449E834529C0B0C551A144DE8740@DM5PR11MB1449.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(136003)(346002)(396003)(199004)(189003)(81166006)(81156014)(256004)(14454004)(478600001)(186003)(66446008)(316002)(966005)(8676002)(6512007)(8936002)(6306002)(54906003)(50226002)(52116002)(5660300002)(6486002)(66946007)(110136005)(2501003)(476003)(7736002)(26005)(19627235002)(71190400001)(486006)(71200400001)(107886003)(6506007)(99286004)(102836004)(2906002)(4326008)(86362001)(305945005)(64756008)(66556008)(66476007)(3846002)(386003)(6116002)(6436002)(25786009)(36756003)(2201001)(2616005)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1449;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YAFuhW+ratvUl5tv16s2UdEvLa1mmBZSdHMDrL+BMK2v36fAoGWOA2tx4DzxL4vYsOmcH2WqVV22SF38wk0323kZgjHYIg18k+js0hdFTuCpQLYp2W5jzC93LnP0vz8G1AE2j7dH42DFvo1GrH3hPKliOk81+5ZNCyOu9xLpd1rhkh+kHhRTFLnLMxxDrOt3ThdHseCgKqt72DGFlNE7YMvtVgI3EubAX8Pt5FS667hUz8LFmUeWqBdPee+EUH6NdcAd6kmW6smhD87hhZ9trIqVsi+cVyI7TmkumC+fmqDQvE2T8EXXUkDne+JqUZHKgn6HiVLl6Ry2KJOeC8Ljk2wKQsd2ywtCCw+kVEWvr9JG4tWqjzasa7ASPeMg9MzLjmWLrsG5eHe4+6b2IwZ/L+FYC008kJ6zAlJHl7mdUtNVWYl7t9usJHO00En18Gp1pMBpALdDVI+8ctaOODbpEqeLKtjol54CSJfZ5jzmlUc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d3aba037-487f-4e8c-5dcd-08d766ab1ae0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 13:28:57.4805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4CYPko8o8LQvvv0Pjd/DV7PyrNYh+/xALlDnLALEZONFQlTiwhkWWgyKHpAq1h3QuCF0sD6hSt16Ay1fB5fkBUMTQupzSc+IhJyTjX+MAqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1449
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_052904_164694_41F5C2DE 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Product datasheet recommends different values for UPLL and PLLA analog control
register.
Adapt accordingly.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

datasheet link http://ww1.microchip.com/downloads/en/DeviceDoc/SAM9X60-Data-Sheet-DS60001579A.pdf
chapter 57.7.10 optimal setting of the PLLA and PLLUTMI

 drivers/clk/at91/clk-sam9x60-pll.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index 34b8178..dfb354a 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -25,7 +25,8 @@
 #define		PMC_PLL_CTRL1_MUL_MSK		GENMASK(30, 24)
 
 #define PMC_PLL_ACR	0x18
-#define		PMC_PLL_ACR_DEFAULT		0x1b040010UL
+#define		PMC_PLL_ACR_DEFAULT_UPLL	0x12020010UL
+#define		PMC_PLL_ACR_DEFAULT_PLLA	0x00020010UL
 #define		PMC_PLL_ACR_UTMIVR		BIT(12)
 #define		PMC_PLL_ACR_UTMIBG		BIT(13)
 #define		PMC_PLL_ACR_LOOP_FILTER_MSK	GENMASK(31, 24)
@@ -88,7 +89,10 @@ static int sam9x60_pll_prepare(struct clk_hw *hw)
 	}
 
 	/* Recommended value for PMC_PLL_ACR */
-	val = PMC_PLL_ACR_DEFAULT;
+	if (pll->characteristics->upll)
+		val = PMC_PLL_ACR_DEFAULT_UPLL;
+	else
+		val = PMC_PLL_ACR_DEFAULT_PLLA;
 	regmap_write(regmap, PMC_PLL_ACR, val);
 
 	regmap_write(regmap, PMC_PLL_CTRL1,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
