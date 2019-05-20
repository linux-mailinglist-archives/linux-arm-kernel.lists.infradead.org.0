Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D747822F7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rV1WNPludsfEekU656DfP38lDgVOHaIu5ivQkOpCLI=; b=IWRwdI8iBFePFV
	QtoNTOSg9EMhxgryyXMtEjEjVzKt+hwRe1LxmeO1//GDpWnpMqL5cTqtyRasj9ewqZT7o9UYHQdof
	I/N/N1fbLixTSOlp76GT1tVqOFqSBDSchX4BtTh0SqgqP4qPnXGCd9MyPWf8KhOL0cEP66WtAQFMF
	bGMQK5XZv6Jjt2N3NsmBzk+VJ6a3SjkPkEqiBy3iZcreWGiN0Kt2Cq1t+K3bkRFCSrF6dP+eKA5MU
	2Y7W9uZ5tOEsOp1keZcGJYjHawhytD9ksKgyQB+5heZcni5cO8NZ4Dk/GgZSBIMLpwhRDsu6k6Vb9
	/EO8c02CEJFrBnpoRfvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe5v-0005GV-8F; Mon, 20 May 2019 08:56:31 +0000
Received: from mail-ve1eur02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62f]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe5U-0004tk-9O
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2pw1Z9rqWsYuXRv33b1XobHJzCEVui6viAnh/TilvI=;
 b=gcQ30b3gISwl4Dt+zld6sA03DrhBrW0HFsmrx8u1TZmEi0CASnCCYg05nrvH/vXhAfjZdPQb7NKwWmjPZoSKZt9DLVCsFfVZSydt2Y8WztYT2ChlyGNhO9kdNgZbnSgftZusugmHW34yyuIV8PT/jX20lsxRXsli/DoS1O5+Oqs=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6820.eurprd04.prod.outlook.com (52.132.212.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:55:57 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 08:55:57 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones
 <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 2/3] dt-bindings: mfd: Document short/long press duration for
 bd718x7
Thread-Topic: [PATCH 2/3] dt-bindings: mfd: Document short/long press duration
 for bd718x7
Thread-Index: AQHVDunWB5EBcmH4106zeOJ1/ofgbA==
Date: Mon, 20 May 2019 08:55:57 +0000
Message-ID: <6983773421a6d89b7c206a71684a95c83eef118b.1558341613.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: 9dd11b47-c9d7-4ad6-dfb6-08d6dd00f927
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6820; 
x-ms-traffictypediagnostic: AM0PR04MB6820:
x-microsoft-antispam-prvs: <AM0PR04MB68202F294B65DA402BDD2336EE060@AM0PR04MB6820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(52116002)(4326008)(99286004)(25786009)(44832011)(2906002)(256004)(486006)(36756003)(6486002)(11346002)(2616005)(14454004)(71190400001)(71200400001)(186003)(118296001)(26005)(478600001)(66066001)(76176011)(6436002)(6116002)(3846002)(446003)(476003)(53936002)(6512007)(316002)(54906003)(8676002)(102836004)(5660300002)(386003)(6506007)(68736007)(8936002)(7736002)(86362001)(7416002)(81166006)(81156014)(50226002)(110136005)(305945005)(64756008)(66556008)(66476007)(66946007)(66446008)(73956011)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6820;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: c6dF6lbu9FnCxfg3AzcTGDodeSyLlWFrJrI3Z1OcZTxM3aeOVY5egKBWpKRxiu0wJsf+7fGzCj4oCHebhwTZjPVUrHceyT+vOmHex7dTArFADJFlz4373iSXAWdFimoh8yy0T8ZLhEGpP0YnQhZvgPPRCVSKwhs1ipI1Qm8G8jtQkF4ssmKDRUwUaeEOGko74HthFgsfgKT/FRQhNQ6InDOA1ybBLIJZJERV2lNfmG1PtyT4lvDWwWe3SKPQPBxJkhadcad2kPFvUouWIecYzSJKkxfpzqLyn6wunvyRMqgUoS5ZHwRbKYGFwsK0SNpcQPMYVAUCV/O7f3WJiTRpkFwkPKb1rCaDjOesTFphO0kBXwjprMVY7Spz3EmSryoimiH8xF7hY8qYsFeoTCcJT1tFAP3JLpPuVQ0NVQ57HPM=
Content-ID: <75392B1B12119348BD5D51BAB52C4B5C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dd11b47-c9d7-4ad6-dfb6-08d6dd00f927
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:55:57.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015604_658500_1E335A02 
X-CRM114-Status: GOOD (  10.90  )
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

These valeus can be overwritten at probe time.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../devicetree/bindings/mfd/rohm,bd71837-pmic.txt         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
index d5f68ac78d15..3649c1191432 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
@@ -36,10 +36,18 @@ switched power state to SNVS. If reset is done via READY state the power
 outputs will be returned to HW control by OTP loading. Thus the reset
 target state is set to READY by default. If SNVS state is used the boot
 crucial regulators must have the regulator-always-on and regulator-boot-on
 properties set in regulator node.
 
+- rohm,short-press-ms	: Short press duration in milliseconds
+- rohm,long-press-ms	: Long press duration in milliseconds
+
+Configure the "short press" and "long press" timers for the power button.
+Values are rounded to what hardware supports (500ms multiple for short and
+1000ms multiple for long). If these properties are not present the existing
+configuration (from bootloader or OTP) is not touched.
+
 Example:
 
 	/* external oscillator node */
 	osc: oscillator {
 		compatible = "fixed-clock";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
