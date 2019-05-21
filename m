Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F330024C67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQ61rKlKT1F57pwn+lDArctT/6lRwc0wPto4rnD3Pn8=; b=kDRn+wf7bcEw+a
	2n0z71aWIOyuK5sx+j/NiwomMif10SfJFl+9iZbiJfQjaqYP/AOkAHqEjANtCy64L9pP5Hh2TalDK
	3cqnEGkXpv4WT1aArqe2aGsFaFkbO/2J1eDDXbNgSBPmKzou1d8vDtsdxT00ink0qhhB480ZFaGpo
	sCbo9t44zCm9qeQNZBVh11oi1PrSZqXxs2g28/q5I+fU7yL42WRDA83xzVR7sOEKmLON0/EDeZU5I
	9K9Ue6bQADTfOG2Cv4v33EX/z8zAVvN3Rcl+4K3dgOk/Ui9X1SEB7NJVXkoZGH76GZiXn9v50DbHx
	BdCCpJO5oZBjCzQ+BBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1ke-0006SZ-MU; Tue, 21 May 2019 10:12:08 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1k0-0005rZ-KB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:11:30 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,494,1549954800"; d="scan'208";a="35521460"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 03:11:27 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.105) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Tue, 21 May 2019 03:11:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dyUUV49nAVvfsofnHT+QK26Xdm7iINfMoIoLe1CbeM=;
 b=Blg/PhewcIisSSfhJmFKxAaqUG1SKFa9pFagHNR38ab37thJkZhTtVdFZdsieOao/69WBdVmbl0qKWJK4WH3saj6IWpodg7idXLBYatgopnpTxnRhXO3s82Ku3DT6Nb5E0OASzLPDRNLT+zfiwXGA6TRdb3iZq/dqDc1kp6z4aM=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1949.namprd11.prod.outlook.com (10.175.54.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 10:11:26 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 10:11:26 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH v4 2/4] clk: at91: sckc: add support to specify registers bit
 offsets
Thread-Topic: [PATCH v4 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Index: AQHVD72Mmn+Mlx6NL06z+yCYtWa0pg==
Date: Tue, 21 May 2019 10:11:26 +0000
Message-ID: <1558433454-27971-3-git-send-email-claudiu.beznea@microchip.com>
References: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0254.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::26) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31d26765-23c2-4c3f-41d2-08d6ddd4af08
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1949; 
x-ms-traffictypediagnostic: MWHPR11MB1949:
x-microsoft-antispam-prvs: <MWHPR11MB194999E4FA09307168B4B32087070@MWHPR11MB1949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(66446008)(66556008)(81156014)(486006)(66476007)(102836004)(14454004)(2906002)(64756008)(316002)(73956011)(72206003)(26005)(476003)(446003)(68736007)(66066001)(2616005)(186003)(25786009)(99286004)(50226002)(66946007)(11346002)(52116002)(6636002)(2501003)(81166006)(8936002)(6436002)(86362001)(386003)(7736002)(4326008)(110136005)(54906003)(5660300002)(3846002)(6116002)(6506007)(6512007)(36756003)(107886003)(256004)(71200400001)(6486002)(478600001)(53936002)(305945005)(71190400001)(8676002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1949;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: twcuSKKI4ZiDXA7uRsSKr4miX3b0IuaS9A4YY0d/eA456uodm8Ac9jz15N6G1azvoMZMzxaP78oiygryLO3++3txmdYnkZsqS/M6Lha5YAKkYLmDXI8lTGwaHlUM+44YsyYRMV+ceOhFn3lWxzN6isz6QiMqXL4LZUToNCRMtPzFStOZTa74JkfcAI60ROL0wwR2+9jXgK69GUuBjh4FUXpsyfL6NqqVQGtnkCRZfURwi2a0LcIlNCmLEYVltBFK661QyTq+TYtGmpIaqwLyIxL7hQwiVbhaZ9HJYKxJ4cZl50zvnNrpF/7VYOyknzh5ijTugdft0KralI2NZBGxwIYE+Px60V/lvmjaUhgBiXby72vCU3AiQCnzzX7+cDlTOS70DpFZpotn9Zh7U0NXjxgTb61Jqx0a1y2YyrnYNpw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d26765-23c2-4c3f-41d2-08d6ddd4af08
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 10:11:26.2075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1949
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_031128_778819_7259DBCF 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/clk/at91/sckc.c | 93 ++++++++++++++++++++++++++++++++-----------------
 1 file changed, 61 insertions(+), 32 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 6c55a7a86f79..ab18b1da269f 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -23,14 +23,18 @@
 				 SLOW_CLOCK_FREQ)
 
 #define	AT91_SCKC_CR			0x00
-#define		AT91_SCKC_RCEN		(1 << 0)
-#define		AT91_SCKC_OSC32EN	(1 << 1)
-#define		AT91_SCKC_OSC32BYP	(1 << 2)
-#define		AT91_SCKC_OSCSEL	(1 << 3)
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
 
@@ -39,6 +43,7 @@ struct clk_slow_osc {
 struct clk_sama5d4_slow_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	bool prepared;
 };
@@ -48,6 +53,7 @@ struct clk_sama5d4_slow_osc {
 struct clk_slow_rc_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long frequency;
 	unsigned long accuracy;
 	unsigned long startup_usec;
@@ -58,6 +64,7 @@ struct clk_slow_rc_osc {
 struct clk_sam9x5_slow {
 	struct clk_hw hw;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	u8 parent;
 };
 
@@ -69,10 +76,10 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
+	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
 		return 0;
 
-	writel(tmp | AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp | osc->bits->cr_osc32en, sckcr);
 
 	usleep_range(osc->startup_usec, osc->startup_usec + 1);
 
@@ -85,10 +92,10 @@ static void clk_slow_osc_unprepare(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & osc->bits->cr_osc32byp)
 		return;
 
-	writel(tmp & ~AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp & ~osc->bits->cr_osc32en, sckcr);
 }
 
 static int clk_slow_osc_is_prepared(struct clk_hw *hw)
@@ -97,10 +104,10 @@ static int clk_slow_osc_is_prepared(struct clk_hw *hw)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & osc->bits->cr_osc32byp)
 		return 1;
 
-	return !!(tmp & AT91_SCKC_OSC32EN);
+	return !!(tmp & osc->bits->cr_osc32en);
 }
 
 static const struct clk_ops slow_osc_ops = {
@@ -114,7 +121,8 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
 			   unsigned long startup,
-			   bool bypass)
+			   bool bypass,
+			   const struct clk_slow_bits *bits)
 {
 	struct clk_slow_osc *osc;
 	struct clk_hw *hw;
@@ -137,10 +145,11 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 	osc->hw.init = &init;
 	osc->sckcr = sckcr;
 	osc->startup_usec = startup;
+	osc->bits = bits;
 
 	if (bypass)
-		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN) | AT91_SCKC_OSC32BYP,
-		       sckcr);
+		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
+					osc->bits->cr_osc32byp, sckcr);
 
 	hw = &osc->hw;
 	ret = clk_hw_register(NULL, &osc->hw);
@@ -173,7 +182,7 @@ static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) | AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
 
 	usleep_range(osc->startup_usec, osc->startup_usec + 1);
 
@@ -185,14 +194,14 @@ static void clk_slow_rc_osc_unprepare(struct clk_hw *hw)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) & ~AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) & ~osc->bits->cr_rcen, sckcr);
 }
 
 static int clk_slow_rc_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
-	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN);
+	return !!(readl(osc->sckcr) & osc->bits->cr_rcen);
 }
 
 static const struct clk_ops slow_rc_osc_ops = {
@@ -208,7 +217,8 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
 			      unsigned long accuracy,
-			      unsigned long startup)
+			      unsigned long startup,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_slow_rc_osc *osc;
 	struct clk_hw *hw;
@@ -230,6 +240,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 
 	osc->hw.init = &init;
 	osc->sckcr = sckcr;
+	osc->bits = bits;
 	osc->frequency = frequency;
 	osc->accuracy = accuracy;
 	osc->startup_usec = startup;
@@ -255,14 +266,14 @@ static int clk_sam9x5_slow_set_parent(struct clk_hw *hw, u8 index)
 
 	tmp = readl(sckcr);
 
-	if ((!index && !(tmp & AT91_SCKC_OSCSEL)) ||
-	    (index && (tmp & AT91_SCKC_OSCSEL)))
+	if ((!index && !(tmp & slowck->bits->cr_oscsel)) ||
+	    (index && (tmp & slowck->bits->cr_oscsel)))
 		return 0;
 
 	if (index)
-		tmp |= AT91_SCKC_OSCSEL;
+		tmp |= slowck->bits->cr_oscsel;
 	else
-		tmp &= ~AT91_SCKC_OSCSEL;
+		tmp &= ~slowck->bits->cr_oscsel;
 
 	writel(tmp, sckcr);
 
@@ -275,7 +286,7 @@ static u8 clk_sam9x5_slow_get_parent(struct clk_hw *hw)
 {
 	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
 
-	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL);
+	return !!(readl(slowck->sckcr) & slowck->bits->cr_oscsel);
 }
 
 static const struct clk_ops sam9x5_slow_ops = {
@@ -287,7 +298,8 @@ static struct clk_hw * __init
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
-			      int num_parents)
+			      int num_parents,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_sam9x5_slow *slowck;
 	struct clk_hw *hw;
@@ -309,7 +321,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 
 	slowck->hw.init = &init;
 	slowck->sckcr = sckcr;
-	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL);
+	slowck->bits = bits;
+	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
 
 	hw = &slowck->hw;
 	ret = clk_hw_register(NULL, &slowck->hw);
@@ -322,7 +335,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 }
 
 static void __init at91sam9x5_sckc_register(struct device_node *np,
-					    unsigned int rc_osc_startup_us)
+					    unsigned int rc_osc_startup_us,
+					    const struct clk_slow_bits *bits)
 {
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
 	void __iomem *regbase = of_iomap(np, 0);
@@ -335,7 +349,8 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		return;
 
 	hw = at91_clk_register_slow_rc_osc(regbase, parent_names[0], 32768,
-					   50000000, rc_osc_startup_us);
+					   50000000, rc_osc_startup_us,
+					   bits);
 	if (IS_ERR(hw))
 		return;
 
@@ -358,11 +373,12 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
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
 
@@ -373,16 +389,23 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
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
@@ -398,7 +421,7 @@ static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
 	 * Assume that if it has already been selected (for example by the
 	 * bootloader), enough time has aready passed.
 	 */
-	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL)) {
+	if ((readl(osc->sckcr) & osc->bits->cr_oscsel)) {
 		osc->prepared = true;
 		return 0;
 	}
@@ -421,6 +444,10 @@ static const struct clk_ops sama5d4_slow_osc_ops = {
 	.is_prepared = clk_sama5d4_slow_osc_is_prepared,
 };
 
+static const struct clk_slow_bits at91sama5d4_bits = {
+	.cr_oscsel = BIT(3),
+};
+
 static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
@@ -455,6 +482,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->hw.init = &init;
 	osc->sckcr = regbase;
 	osc->startup_usec = 1200000;
+	osc->bits = &at91sama5d4_bits;
 
 	hw = &osc->hw;
 	ret = clk_hw_register(NULL, &osc->hw);
@@ -463,7 +491,8 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
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
