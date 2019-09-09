Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFC9ADC1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiaRUa9F+Glihv0Xyhj/7Cffu2CcvKrRFTq9Yx5ZM4k=; b=T9bzj+Jo7Kt3l3
	/zRlxXocGn7jUJWCoIfV00wzf/pt+bNJpU96NhIpuy98lgvHDIUMUnoiuRjrA7Jbs7+qqINeuTjvs
	Bd3fSeBB4uyQtq7O4TnKMkwXUfEMxXIb5PPFHQHY3F36TSMC5k7N/YzvhNnH6lpBnm6ncCTpAOuTC
	IIQ8A6/oLr4JqlxpljkKCgD1erbDs72Bd637taug1pysKGiZf2XKRb9j+/QxKG1z2WZHvbAquQmiV
	RJIO2Yyq8eCpgbijuKm12rHTICYlfAh1KD1+Qm7zSrxo9I1radOyFZY4UoMMPnY99fKVwyT6e2oxf
	/lbD+nk7A49/1i5qxk8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ld3-0005Wo-7Q; Mon, 09 Sep 2019 15:30:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Lct-0005W4-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:30:48 +0000
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
IronPort-SDR: ccbNsLOoifjEPI11f+uOX5ZNG0AiPYIuluuO9997OB7beS40YzhY2f5EyydeHenaQ75K093Zfs
 48TcixKRMXuFLnKQ2jQ48lgKEERiWJbrnZcwVVCUMbs23fqucxUzJXo2RpVArJJFr/Qca+Us3R
 RHbjJtmntYrKA1PI+CVhZnDcJjejJHiA8lwkKqTEpDVU5eFsmcXsk+NS5sdo7OcKzOB69T/yYS
 hl46X70tIh7XYZRYfrUlCtMZhD+l+X7XI9BsZNRdC8SlwnK1cVy/lH8kGcCFR6nDIBVIZeONtc
 oW4=
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="49761958"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Sep 2019 08:30:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Sep 2019 08:30:35 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 9 Sep 2019 08:30:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UhUyBeGQw4Hyz5M6CpdXu38cheWebHZ+XB4p7Nxt0E2NFf3NQqUPitDschPTG9/1MavQazrpHc+qly4qweS+mixECRCh5auuRr82/LLeYe2F9nhWXa0dh9zxLYulKTR9uEsU5aX7iozjYsYLI4MuCGNxxtOtHTIZzivr6rvx9Cbay2Kn+EImQ5DQ+3uOJSdIAb2rv4gOprlHyQ++jWB9UTwPXTZLBTzKose9x1XQeBXEOYZEPWo3bWE+Q9JOZGSBuTH8jXGISJa/MuDlC0rIWl1nFNtsvT0NHrzKcFFh1pFpvsSMykKALb2cm0n7BpAJq2r3a2Rhtp0GPl05ZPI7TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpRhqvFsjSjdI2XEvbiXask3H/Hnl+qkBaPeZxpmvT8=;
 b=AttRS6lDVMpvEWCmQpK5E9NEqaz5Ova/PnObqGwWVuijIoiMXs20GpqZ9MKrCquXGChifNigZKPsyDQvKhVMdFmg9KlJAhEzWDrn3zIfngr7Z+jIN9k7YjTqWKaOMjNk3HtV8d4ouOEhoTmZJ1XeXGwtvSsTm/NTs1/ZFf1tlAzV1JujA8lgMOgFYC/k+gHyjhJxBKsDqG1d5V7sUILQ1AnXR2zkq/4gF7kYjOVgVjfiF09oRJ9gvdH1Fh3ktZKY6ndYNcITppdaIgTwf5HHBjw3b6SCjt36t4R4jUOVVWXo7rJUqUfobt8gDwGeAOBWjtHGE1Y1sIB2Gcy8o+qqSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpRhqvFsjSjdI2XEvbiXask3H/Hnl+qkBaPeZxpmvT8=;
 b=TzTKABURKNIN9Nu6ThgXByfAo38XPouHhFMZXk/ZzJL1uxZrEMVSphsuMZiWALsC5SwccQgA3237Lsg+PM3RLIx0vsdkQ+535uUWTTqFlQYd+tiGBNBaZbVRs9JPXRxUlYjYCy4QyU9AA86+PhDCwcswKnOREAcdbryPlosLTDc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1899.namprd11.prod.outlook.com (10.175.87.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 9 Sep 2019 15:30:34 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 15:30:34 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] clk: at91: select parent if main oscillator or bypass is
 enabled
Thread-Topic: [PATCH 2/2] clk: at91: select parent if main oscillator or
 bypass is enabled
Thread-Index: AQHVZyOF1aEN8SUUrUGnVcaoCs40gw==
Date: Mon, 9 Sep 2019 15:30:34 +0000
Message-ID: <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0132.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::16) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2ceb05f-a2ff-4a43-6e0f-08d7353aa7d7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1899; 
x-ms-traffictypediagnostic: DM5PR11MB1899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1899D8333A223A3A3BA44023E8B70@DM5PR11MB1899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(346002)(396003)(366004)(199004)(189003)(316002)(76176011)(11346002)(99286004)(14454004)(2501003)(486006)(66556008)(446003)(305945005)(66446008)(64756008)(2906002)(5660300002)(66476007)(6512007)(476003)(2616005)(26005)(102836004)(2201001)(53936002)(6436002)(8936002)(8676002)(52116002)(36756003)(54906003)(81166006)(81156014)(86362001)(110136005)(6506007)(66946007)(256004)(3846002)(6116002)(186003)(7736002)(6486002)(71190400001)(71200400001)(66066001)(107886003)(478600001)(386003)(25786009)(4326008)(50226002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1899;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cySd2/30TB3oakWiLWlePWpIyJ2AyKYSHYoFxvAGdl7UL0ikgC/KPjz7JyqeuWCyT72zZCSoi3KJx6ksUknGk6Q4QFyzBnKMC0Kezk5Dqd3YEOyhKN1axsH61ZuYOd7aWiJ8c5I/ek2YUkpW8XqeVjOZUdMTD0Z3hix6Y1S7Fe8sm02cHpoU8wOjyXEwt+03NXnmUnGCRvn59vna9HKiLKlEFZ4bImFZDk1ZHQfPQa5yhJdh1ByLydYe86Udkj0Ur3rQ91vQCX7COToXAAyDEY0gsab/1F7/h6lJ68Ixrn5nO0adVJd51hNKQJ9hHgn9DcQPJygNvSJKS3NCgMs+67vmaAx/FHfSKnw/stw/9om/+MoGjX4dYW3geeyjtENt+FCCNBBbixrdQ42+DxZHatq8ibJhUVo5rCD6YLxeVDg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ceb05f-a2ff-4a43-6e0f-08d7353aa7d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 15:30:34.2530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Pa/x9lHLxBwgi5w8chFc11qLI8eySiTFR5Zd+l59SzBre5PwzJPWCTtfrklfJHcSKOF7xp68i1EMwCkKQSaZonSlDuq1LiwA6bF00tmpl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083047_243127_7AA5DA97 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Selecting the right parent for the main clock is done using only
main oscillator enabled bit.
In case we have this oscillator bypassed by an external signal (no driving
on the XOUT line), we still use external clock, but with BYPASS bit set.
So, in this case we must select the same parent as before.
Create a macro that will select the right parent considering both bits from
the MOR register.
Use this macro when looking for the right parent.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/clk/at91/clk-main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index ebe9b99..87083b3 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -21,6 +21,10 @@
 
 #define MOR_KEY_MASK		(0xff << 16)
 
+#define clk_main_parent_select(s)	(((s) & \
+					(AT91_PMC_MOSCEN | \
+					AT91_PMC_OSCBYPASS)) ? 1 : 0)
+
 struct clk_main_osc {
 	struct clk_hw hw;
 	struct regmap *regmap;
@@ -113,7 +117,7 @@ static int clk_main_osc_is_prepared(struct clk_hw *hw)
 
 	regmap_read(regmap, AT91_PMC_SR, &status);
 
-	return (status & AT91_PMC_MOSCS) && (tmp & AT91_PMC_MOSCEN);
+	return (status & AT91_PMC_MOSCS) && clk_main_parent_select(tmp);
 }
 
 static const struct clk_ops main_osc_ops = {
@@ -450,7 +454,7 @@ static u8 clk_sam9x5_main_get_parent(struct clk_hw *hw)
 
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
 
-	return status & AT91_PMC_MOSCEN ? 1 : 0;
+	return clk_main_parent_select(status);
 }
 
 static const struct clk_ops sam9x5_main_ops = {
@@ -492,7 +496,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 	clkmain->hw.init = &init;
 	clkmain->regmap = regmap;
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
-	clkmain->parent = status & AT91_PMC_MOSCEN ? 1 : 0;
+	clkmain->parent = clk_main_parent_select(status);
 
 	hw = &clkmain->hw;
 	ret = clk_hw_register(NULL, &clkmain->hw);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
