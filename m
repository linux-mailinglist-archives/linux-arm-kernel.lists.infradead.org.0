Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D6D19C7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqlL5Kadw3D1iyGiH/uV3d4Fr+M6OwW1fIIjfQjBiE4=; b=iF1uH+8Jd9kQNY
	TYTdKg4Q/Iqyh2T+pICcb9V6g1T3gUNVCoxaxFOvbrdwr4ljLG7lGxnXjZla/56OYGsrxiuv6dGK+
	Ubmeuz+IRPtrCaG9PtBgdqwrGhIPxS4KY6OqDqWO6OLrYxgdz3FP/wDf9LyqLSZdShWEGQQHkt5b9
	mNyqpK3tqHIfJppfQq+tpmLOLOwG2/9iKscJqq/zdwEt3mbvcRc+FJEJOn9A1StsnkiqnD+AQQWqE
	YviPGqBHqLaAqkTYEdT/+0ALlLOgsu9LgOdfgZh1lxPTW4xfQerv9G56Vpw+Bi71s3EUDnzdemKVR
	BrLuVPwZHWbED7sfpV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3d5-0007jy-Lh; Fri, 10 May 2019 11:23:55 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3cm-0007X6-96
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:23:38 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
X-IronPort-AV: E=Sophos;i="5.60,453,1549954800"; d="scan'208";a="32481286"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 May 2019 04:23:35 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.108) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 10 May 2019 04:23:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nN9YO8vWZt5UpM+JIuGZTc1c+9cnd253T+clCCot5pE=;
 b=evYCM6ipm9C3qwSJjP9KmLBCxpHW+OqcCLweeipo0o7emytvqTBbg8Oa/OJ8o9ON9eVUp3z5cHHeT4r2NJoMDdixfcmoOMLPig1mtkWOUbSoZFdSA0TKeQXYfPZKnWZQUtWFJXvhqkn8bmnehMlxhw6fxCqJUKU7kvxSufiz57A=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1935.namprd11.prod.outlook.com (10.175.54.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 11:23:31 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 11:23:31 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers bit
 offsets
Thread-Topic: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Index: AQHVByLMz9Q/0hn5ekyMa2w9MKbUHQ==
Date: Fri, 10 May 2019 11:23:31 +0000
Message-ID: <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0031.eurprd07.prod.outlook.com
 (2603:10a6:800:90::17) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c165f27-4a1b-4937-4d31-08d6d539ee77
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1935; 
x-ms-traffictypediagnostic: MWHPR11MB1935:
x-microsoft-antispam-prvs: <MWHPR11MB1935E060DC7A8573B8910C84870C0@MWHPR11MB1935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(396003)(346002)(39860400002)(136003)(366004)(376002)(199004)(189003)(256004)(52116002)(478600001)(3846002)(99286004)(72206003)(68736007)(26005)(5660300002)(6116002)(66446008)(110136005)(107886003)(2906002)(4326008)(186003)(386003)(6506007)(66476007)(64756008)(66946007)(102836004)(66556008)(54906003)(2501003)(76176011)(14454004)(6512007)(73956011)(6436002)(2616005)(6486002)(7736002)(305945005)(53936002)(66066001)(25786009)(316002)(71200400001)(71190400001)(86362001)(11346002)(446003)(8676002)(81166006)(50226002)(36756003)(81156014)(476003)(8936002)(486006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1935;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mCiwmhjVXqmn8pz+MUkEf0LcOsNvixBa/Lv81Z3/Zv/OH1KjiNkBXpyLZJNWW2C9lIVgux19r+Khs9lBT5pz5by99CeV+QuihoKZ3U7tL7QTuGyENemrGNMH1mFutSvkjh6RA7lFhJvonCiiGoGqDSmhLP7IJyaf1l0PHwTiOHb/Bi/VKdNtKYHqZSVKoXEeN62ufelByuxJaE76p3PWXmvGamjF9zZcv4cSFrDyEjjh7tqor0UMbUhcC48ImCcJjTMBrN6kqUSKcRepFbGj7bl7QS5Gv/lho79LLIeLFmkWbfuB1OZipdXbkJNH5OSJRg+7DjgLor41x3Fleaa78yeBMND/Mw2gB18iI2Va0OnbW+KbbBmIQ8zmHr7vDP95PP83XCWiMp80cbJOnAkDa0fseNR7gMNhDrLeV/EtOBk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c165f27-4a1b-4937-4d31-08d6d539ee77
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 11:23:31.6157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1935
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_042336_370144_911A5167 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Different IPs uses different bit offsets in registers for the same
functionality, thus adapt the driver to support this.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/sckc.c | 100 ++++++++++++++++++++++++++++++++----------------
 1 file changed, 67 insertions(+), 33 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 6c55a7a86f79..2a4ac548de80 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -22,15 +22,23 @@
 #define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * USEC_PER_SEC) / \
 				 SLOW_CLOCK_FREQ)
 
-#define	AT91_SCKC_CR			0x00
-#define		AT91_SCKC_RCEN		(1 << 0)
-#define		AT91_SCKC_OSC32EN	(1 << 1)
-#define		AT91_SCKC_OSC32BYP	(1 << 2)
-#define		AT91_SCKC_OSCSEL	(1 << 3)
+#define	AT91_SCKC_CR		0x00
+#define		AT91_SCKC_RCEN(off)	((off)->cr_rcen)
+#define		AT91_SCKC_OSC32EN(off)	((off)->cr_osc32en)
+#define		AT91_SCKC_OSC32BYP(off)	((off)->cr_osc32byp)
+#define		AT91_SCKC_OSCSEL(off)	((off)->cr_oscsel)
+
+struct clk_slow_bits {
+	u32 cr_rcen;
+	u32 cr_osc32en;
+	u32 cr_osc32byp;
+	u32 cr_oscsel;
+};
 
 struct clk_slow_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 };
 
@@ -39,6 +47,7 @@ struct clk_slow_osc {
 struct clk_sama5d4_slow_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	bool prepared;
 };
@@ -48,6 +57,7 @@ struct clk_sama5d4_slow_osc {
 struct clk_slow_rc_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long frequency;
 	unsigned long accuracy;
 	unsigned long startup_usec;
@@ -58,6 +68,7 @@ struct clk_slow_rc_osc {
 struct clk_sam9x5_slow {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	u8 parent;
 };
 
@@ -69,10 +80,11 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
+	if (tmp & (AT91_SCKC_OSC32BYP(osc->bits) |
+		   AT91_SCKC_OSC32EN(osc->bits)))
 		return 0;
 
-	writel(tmp | AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp | AT91_SCKC_OSC32EN(osc->bits), sckcr);
 
 	usleep_range(osc->startup_usec, osc->startup_usec + 1);
 
@@ -85,10 +97,10 @@ static void clk_slow_osc_unprepare(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & AT91_SCKC_OSC32BYP(osc->bits))
 		return;
 
-	writel(tmp & ~AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp & ~AT91_SCKC_OSC32EN(osc->bits), sckcr);
 }
 
 static int clk_slow_osc_is_prepared(struct clk_hw *hw)
@@ -97,10 +109,10 @@ static int clk_slow_osc_is_prepared(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & AT91_SCKC_OSC32BYP(osc->bits))
 		return 1;
 
-	return !!(tmp & AT91_SCKC_OSC32EN);
+	return !!(tmp & AT91_SCKC_OSC32EN(osc->bits));
 }
 
 static const struct clk_ops slow_osc_ops = {
@@ -114,7 +126,8 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
 			   unsigned long startup,
-			   bool bypass)
+			   bool bypass,
+			   const struct clk_slow_bits *bits)
 {
 	struct clk_slow_osc *osc;
 	struct clk_hw *hw;
@@ -137,10 +150,11 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 	osc->hw.init = &init;
 	osc->sckcr = sckcr;
 	osc->startup_usec = startup;
+	osc->bits = bits;
 
 	if (bypass)
-		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN) | AT91_SCKC_OSC32BYP,
-		       sckcr);
+		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN(osc->bits)) |
+					AT91_SCKC_OSC32BYP(osc->bits), sckcr);
 
 	hw = &osc->hw;
 	ret = clk_hw_register(NULL, &osc->hw);
@@ -173,7 +187,7 @@ static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) | AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) | AT91_SCKC_RCEN(osc->bits), sckcr);
 
 	usleep_range(osc->startup_usec, osc->startup_usec + 1);
 
@@ -185,14 +199,14 @@ static void clk_slow_rc_osc_unprepare(struct clk_hw *hw)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) & ~AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) & ~AT91_SCKC_RCEN(osc->bits), sckcr);
 }
 
 static int clk_slow_rc_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
-	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN);
+	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN(osc->bits));
 }
 
 static const struct clk_ops slow_rc_osc_ops = {
@@ -208,7 +222,8 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
 			      unsigned long accuracy,
-			      unsigned long startup)
+			      unsigned long startup,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_slow_rc_osc *osc;
 	struct clk_hw *hw;
@@ -230,6 +245,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 
 	osc->hw.init = &init;
 	osc->sckcr = sckcr;
+	osc->bits = bits;
 	osc->frequency = frequency;
 	osc->accuracy = accuracy;
 	osc->startup_usec = startup;
@@ -255,14 +271,14 @@ static int clk_sam9x5_slow_set_parent(struct clk_hw *hw, u8 index)
 
 	tmp = readl(sckcr);
 
-	if ((!index && !(tmp & AT91_SCKC_OSCSEL)) ||
-	    (index && (tmp & AT91_SCKC_OSCSEL)))
+	if ((!index && !(tmp & AT91_SCKC_OSCSEL(slowck->bits))) ||
+	    (index && (tmp & AT91_SCKC_OSCSEL(slowck->bits))))
 		return 0;
 
 	if (index)
-		tmp |= AT91_SCKC_OSCSEL;
+		tmp |= AT91_SCKC_OSCSEL(slowck->bits);
 	else
-		tmp &= ~AT91_SCKC_OSCSEL;
+		tmp &= ~AT91_SCKC_OSCSEL(slowck->bits);
 
 	writel(tmp, sckcr);
 
@@ -275,7 +291,7 @@ static u8 clk_sam9x5_slow_get_parent(struct clk_hw *hw)
 {
 	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
 
-	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL);
+	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL(slowck->bits));
 }
 
 static const struct clk_ops sam9x5_slow_ops = {
@@ -287,7 +303,8 @@ static struct clk_hw * __init
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
-			      int num_parents)
+			      int num_parents,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_sam9x5_slow *slowck;
 	struct clk_hw *hw;
@@ -309,7 +326,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 
 	slowck->hw.init = &init;
 	slowck->sckcr = sckcr;
-	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL);
+	slowck->bits = bits;
+	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL(slowck->bits));
 
 	hw = &slowck->hw;
 	ret = clk_hw_register(NULL, &slowck->hw);
@@ -322,7 +340,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 }
 
 static void __init at91sam9x5_sckc_register(struct device_node *np,
-					    unsigned int rc_osc_startup_us)
+					    unsigned int rc_osc_startup_us,
+					    const struct clk_slow_bits *bits)
 {
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
 	void __iomem *regbase = of_iomap(np, 0);
@@ -335,7 +354,8 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		return;
 
 	hw = at91_clk_register_slow_rc_osc(regbase, parent_names[0], 32768,
-					   50000000, rc_osc_startup_us);
+					   50000000, rc_osc_startup_us,
+					   bits);
 	if (IS_ERR(hw))
 		return;
 
@@ -358,11 +378,12 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		return;
 
 	hw = at91_clk_register_slow_osc(regbase, parent_names[1], xtal_name,
-					1200000, bypass);
+					1200000, bypass, bits);
 	if (IS_ERR(hw))
 		return;
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
+	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
+					   bits);
 	if (IS_ERR(hw))
 		return;
 
@@ -373,16 +394,23 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		of_clk_add_hw_provider(child, of_clk_hw_simple_get, hw);
 }
 
+static const struct clk_slow_bits at91sam9x5_bits = {
+	.cr_rcen = BIT(0),
+	.cr_osc32en = BIT(1),
+	.cr_osc32byp = BIT(2),
+	.cr_oscsel = BIT(3),
+};
+
 static void __init of_at91sam9x5_sckc_setup(struct device_node *np)
 {
-	at91sam9x5_sckc_register(np, 75);
+	at91sam9x5_sckc_register(np, 75, &at91sam9x5_bits);
 }
 CLK_OF_DECLARE(at91sam9x5_clk_sckc, "atmel,at91sam9x5-sckc",
 	       of_at91sam9x5_sckc_setup);
 
 static void __init of_sama5d3_sckc_setup(struct device_node *np)
 {
-	at91sam9x5_sckc_register(np, 500);
+	at91sam9x5_sckc_register(np, 500, &at91sam9x5_bits);
 }
 CLK_OF_DECLARE(sama5d3_clk_sckc, "atmel,sama5d3-sckc",
 	       of_sama5d3_sckc_setup);
@@ -398,7 +426,7 @@ static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
 	 * Assume that if it has already been selected (for example by the
 	 * bootloader), enough time has aready passed.
 	 */
-	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL)) {
+	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL(osc->bits))) {
 		osc->prepared = true;
 		return 0;
 	}
@@ -421,6 +449,10 @@ static const struct clk_ops sama5d4_slow_osc_ops = {
 	.is_prepared = clk_sama5d4_slow_osc_is_prepared,
 };
 
+static const struct clk_slow_bits at91sama5d4_bits = {
+	.cr_oscsel = BIT(3),
+};
+
 static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
@@ -455,6 +487,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->hw.init = &init;
 	osc->sckcr = regbase;
 	osc->startup_usec = 1200000;
+	osc->bits = &at91sama5d4_bits;
 
 	hw = &osc->hw;
 	ret = clk_hw_register(NULL, &osc->hw);
@@ -463,7 +496,8 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 		return;
 	}
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
+	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
+					   &at91sama5d4_bits);
 	if (IS_ERR(hw))
 		return;
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
