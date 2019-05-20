Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B069D22F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAi8kWD+D7aGWOzvRhb4jDCVt3lwldnWBsBHFgEGDTE=; b=VbTch1r510+1LL
	aAATwNSsP5U1NmSYjRflR1gou18R0kLta9AG0CYhFpUp7eX2MXSzcWRW7UoMfsIEBaITYeo64C4DZ
	eRAKOr96x7Y2uU5I1rn5ZEeIDqThP1uJiYR0ne0+8fP1m3l2jN72xlwxxRKG5H07idLdOHHCJh4nK
	V3nyld3K2ohkWGYpLOQZCq33MgQ0VTdlpvY4uZWdLyorqacbwLn3ygWY+xcUEQiPj4obojK+nw04o
	LrYEuqLBO4OavnOy22C4oL7xxr4fOBa2snU2DXE3mQ7IdQK87q+Nu+7P19eJ0oRV98xrU8GI8qhUV
	IEOnYtY6+2EKuOsx8Z8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe66-0005WA-GK; Mon, 20 May 2019 08:56:42 +0000
Received: from mail-ve1eur02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62f]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe5X-0004tk-9R
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EXgftICvessBo51p2ZFUgAnIzxQBFXslehg7YyOaalI=;
 b=M+zrLrqeF/iFUkB3DO9pkaL3yIWtRGYvdGISuZB2SzrSp5O4Pc283sZskRdnV3ocR4yaiDZzguaq2/Kdr35PrUQPXz2bTc5Qk3UlW+mIcq7tjS8Dg9IMwysOq0d5yXqP02s/1LqvbGSFSVzp0XmpqzUN7LA+E/E0KOODHOwRlB0=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6820.eurprd04.prod.outlook.com (52.132.212.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:55:58 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 08:55:58 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones
 <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Topic: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Index: AQHVDunXy9WpVzANakuWAUmu+P7+Wg==
Date: Mon, 20 May 2019 08:55:58 +0000
Message-ID: <3ffd7b9d0b9cc45ac0fd671a701f857be4cfde46.1558341613.git.leonard.crestez@nxp.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0202CA0002.eurprd02.prod.outlook.com
 (2603:10a6:803:14::15) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 660edf4f-8d53-40c7-849b-08d6dd00f9d2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6820; 
x-ms-traffictypediagnostic: AM0PR04MB6820:
x-microsoft-antispam-prvs: <AM0PR04MB6820F56823B7776DAFA98789EE060@AM0PR04MB6820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(52116002)(4326008)(99286004)(25786009)(44832011)(2906002)(256004)(486006)(14444005)(36756003)(6486002)(11346002)(2616005)(14454004)(71190400001)(71200400001)(186003)(118296001)(26005)(478600001)(66066001)(76176011)(6436002)(6116002)(3846002)(446003)(476003)(53936002)(6512007)(316002)(54906003)(8676002)(102836004)(5660300002)(386003)(6506007)(68736007)(8936002)(7736002)(86362001)(7416002)(81166006)(81156014)(50226002)(110136005)(305945005)(64756008)(66556008)(66476007)(66946007)(66446008)(73956011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6820;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uzfEdJfj+dSvlAwZD/M6HyX2IpF7KyBWUB6iI28o2Z9Qc2WKrz4spIeIrttLn1FJviaSRIOSh/ZX8GMNmOii5iAi0Vxl0Ynm8NzsD50dcDOcPByyNwfs+M5U4a4pPVGYQjTFwZKGGWJy4nog0ng73JFZSt9f1amVX9TBE7k/0vbT8Q6HLoTZ3ZJUuymRAVRjD/NOk7d3UcQXkT6g5Igt3m7zGzqmf+AlqIeo37aARLoDd5ElJ8H0ymCJ6BNMbQFFGJ1HQ1gtEP3qPUJZv+3mwoq0rpJ4gTNOVXMkXRZ0lS2Xm+0wNIw5CSdYrdZBwmJzzcy/YSFTy4Uk0OzNqk9gtGjvDeGFhFIfKhUJ+9zmH/V3x58t/gJRoOl2JTCArJEkhQC2P2hu1qRoyT3gI/kI/vP0dPf4IHTn8YA84iOOuW8=
Content-ID: <0E4DA6406293D14A8503094617A5C4CB@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 660edf4f-8d53-40c7-849b-08d6dd00f9d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:55:58.2644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015608_214633_56795568 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Allow overwriting the values in BD718XX_REG_PWRONCONFIG0 and
BD718XX_REG_PWRONCONFIG1 via devicetree.

Keep existing values (from bootloader or OTP) if property is not
present.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/mfd/rohm-bd718x7.c | 42 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
index cdbef83884f0..dffa3f4bffad 100644
--- a/drivers/mfd/rohm-bd718x7.c
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -79,10 +79,48 @@ static const struct regmap_config bd718xx_regmap_config = {
 	.volatile_table = &volatile_regs,
 	.max_register = BD718XX_MAX_REGISTER - 1,
 	.cache_type = REGCACHE_RBTREE,
 };
 
+static int bd718xx_init_press_duration(struct bd718xx *bd718xx)
+{
+	struct device* dev = bd718xx->dev;
+	u32 short_press_ms, long_press_ms;
+	u32 short_press_value, long_press_value;
+	int ret;
+
+	ret = of_property_read_u32(dev->of_node, "rohm,short-press-ms",
+				   &short_press_ms);
+	if (!ret) {
+		short_press_value = min(15u, short_press_ms / 500);
+		ret = regmap_update_bits(bd718xx->regmap,
+					 BD718XX_REG_PWRONCONFIG0,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 short_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron short press\n");
+			return ret;
+		}
+	}
+
+	ret = of_property_read_u32(dev->of_node, "rohm,long-press-ms",
+				   &long_press_ms);
+	if (!ret) {
+		long_press_value = min(15u, long_press_ms / 1000);
+		ret = regmap_update_bits(bd718xx->regmap,
+					 BD718XX_REG_PWRONCONFIG1,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 long_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron long press\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int bd718xx_i2c_probe(struct i2c_client *i2c,
 			    const struct i2c_device_id *id)
 {
 	struct bd718xx *bd718xx;
 	int ret;
@@ -115,10 +153,14 @@ static int bd718xx_i2c_probe(struct i2c_client *i2c,
 	if (ret) {
 		dev_err(&i2c->dev, "Failed to add irq_chip\n");
 		return ret;
 	}
 
+	ret = bd718xx_init_press_duration(bd718xx);
+	if (ret)
+		return ret;
+
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
