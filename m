Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D6E25926
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y32x+/GVnojaxqE3YEvYVyvRdkmglbK0pK6+sz/M2oM=; b=WHo36XYvMN9+Bg
	PluLRgB4+KBimRrEt9TPhrh3zf8wjtAVdOr8xVQTumuMdia9OAZd9eKkTZ9oRf8asA7YFtftsYFUJ
	v8W+Y7hNKUpaLv6SBH1uheRz5xII5J31Q2Mo/1J1aZgrYq8B5GBffrUoxHA6UUQ9H/X21YHP/AYw1
	dc7dCcxsYbamvdbEtow57hOzRlTC5SrjeSwLI3XQZMeTEA3sfEwFV3bXWdxRJ061fRoEQDpw6U3za
	k8goRxBlCVON1XqXBWgj7MNgzq45HzW/Ezmd+up6o8q+mxchg8UT9m2cXFfNxEtEXjRZewCf0ntt+
	KYnugS4uBvVoRcEp5V/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBZq-0001aB-G7; Tue, 21 May 2019 20:41:38 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBZU-0001HT-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXq73tbMJnfuMyfPcfVzprVxJwcp+bZoNmtN/+KBQE4=;
 b=nYpeoPrzYN4rAe3Qq9kKGVSRzyHNu9f23lUPMYfNBRi29TmVYUOWD6db1iKin7OH38EAycs8gBtjbV92OnZlpaJIipt+7g5vC/WpR60fVB0tINzpzPaomKhlOkU1Umr7ZqdCqffbqXzt1GQDgah57wpD59x4QttMa++IDVbjLyU=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:12 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones
 <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button press
 duration
Thread-Topic: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Index: AQHVEBWHmAHXX/uy10eYy8IyUG2pTg==
Date: Tue, 21 May 2019 20:41:12 +0000
Message-ID: <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558471150.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0430.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::34) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9aa0f93-1cc9-4af7-5375-08d6de2ca91f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3970; 
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-microsoft-antispam-prvs: <AM0PR04MB39705E04FFAA17EDCE6B895CEE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(118296001)(8676002)(44832011)(4326008)(81166006)(81156014)(76176011)(486006)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(14444005)(446003)(256004)(110136005)(11346002)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3970;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y6v7DwdiYPL+dnvoMi6VYhi6m9oWSRdzdAwoyxTpfvxMArbEuZuUwdJ5RKd62JlTVhDpxV0OUMQXOghn+oII8PmvR9MXc/T1npvPcnfWxVlBy46liOOLZVahvh6wvd1Vn1f7ntzaWgxus46zudvfcqL7jGe6xfbZ17oPahTPiKy+yNuP6GOxbDyHj+rxPGNiRtGOa9mUnJKDXXKPbV8hQ28BtAsyhVu/chCU6CLGBGPeLEsPkP1vam7azBh012md1Bevr0tz79gPSqOGt1pMT7PEljIv15SsjSeH+SoHg11mqx0hrTeKUtRMxz8IzrHLhL4+ROlB1rEHNwXD5tGc0KYe8rRa78U0YzlJVv8Ye2NIhTL3Yz/Z8KlgO7Odq0eIxvrq26RlHWO5WN6QDEfNeP85kB7LcnUT77FWZ6ybhho=
Content-ID: <890B93925C7E29428C5069DFFEABA9D6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9aa0f93-1cc9-4af7-5375-08d6de2ca91f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:12.4289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_134116_511612_3160AC8E 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Angus Ainslie <angus@akkea.ca>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset button on imx8mm-evk is tied to PWRON_B pin of bd71847 and the
long press duration is set to zero from OTP. The linux driver overrides
those values and breaks reset from button.

Overwriting OTP or bootloader configuration with some hardcoded defaults
is not desirable, keep already programmed values instead.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/mfd/rohm-bd718x7.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
index a29d529a96f4..cdbef83884f0 100644
--- a/drivers/mfd/rohm-bd718x7.c
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -115,33 +115,10 @@ static int bd718xx_i2c_probe(struct i2c_client *i2c,
 	if (ret) {
 		dev_err(&i2c->dev, "Failed to add irq_chip\n");
 		return ret;
 	}
 
-	/* Configure short press to 10 milliseconds */
-	ret = regmap_update_bits(bd718xx->regmap,
-				 BD718XX_REG_PWRONCONFIG0,
-				 BD718XX_PWRBTN_PRESS_DURATION_MASK,
-				 BD718XX_PWRBTN_SHORT_PRESS_10MS);
-	if (ret) {
-		dev_err(&i2c->dev,
-			"Failed to configure button short press timeout\n");
-		return ret;
-	}
-
-	/* Configure long press to 10 seconds */
-	ret = regmap_update_bits(bd718xx->regmap,
-				 BD718XX_REG_PWRONCONFIG1,
-				 BD718XX_PWRBTN_PRESS_DURATION_MASK,
-				 BD718XX_PWRBTN_LONG_PRESS_10S);
-
-	if (ret) {
-		dev_err(&i2c->dev,
-			"Failed to configure button long press timeout\n");
-		return ret;
-	}
-
 	ret = regmap_irq_get_virq(bd718xx->irq_data, BD718XX_INT_PWRBTN_S);
 
 	if (ret < 0) {
 		dev_err(&i2c->dev, "Failed to get the IRQ\n");
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
