Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8517625925
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGAV1sjLI9zKVS4f3w2NUZ8b08yCoKd87kM7yS9NPX8=; b=Zk2rQOOO8QuL7h
	1QydgDCt7DXGzkqsL+IGXOekl3Iu5YMOiBoRU8cxy34xV6R9HQZCLX3mgdolzxAwZcLEz7vbmgkE/
	inup8QjA7ra9S7IfBayQ86GQ0fx+vlTsP4eGlxMIz5m9j1tWML0XVNY1uGszq6wt5x4EJdRQb4sgP
	u/RCdIiOCnxpqW9uOLMvmzc9yYloeNNcwEUL60wksqrc4NZSeedLJZIWd1X0Fx/FEc6JTQ5dN6p4D
	MaMUwURVT4SsFdYy7oK3gnA2+jE5Uzs9oWo08kOXCRrIir2leyRuBkGQuvKSnCZhO8dHFvIgNRp/H
	rQx/VavTGdlnzO5C4P+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBZb-0001IU-3k; Tue, 21 May 2019 20:41:23 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBZS-0001HT-Im
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:41:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bfiq/vIiOuvsHqF+BQZMxg8taUYLP5xpfjq59jBV97A=;
 b=rAF+++i98aGNRqM9S5QbRsnOVeRnN0Ed5RXDvz+jhzOdjgoVfq2kJCHZ/p3RrphzjC+5qJGYH9AFoxrUIdUnmJ75WCJ079cY/xvPSXpuuvAtqRHnnZGnGVUU7kNSBQY/yJr+PjWQ4Ecn4dsECDqAhHIRo+oRRtT5HEAiL6zlqqA=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:10 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones
 <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/3] mfd: bd718x7: Set button press duration via dt only
Thread-Topic: [PATCH v2 0/3] mfd: bd718x7: Set button press duration via dt
 only
Thread-Index: AQHVEBWFR7ADgdaGUEibZiyeov26zQ==
Date: Tue, 21 May 2019 20:41:10 +0000
Message-ID: <cover.1558471150.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: 3dc45f85-7bf9-4db7-819b-08d6de2ca805
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3970; 
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB3970CFAB413DD77D6ECEBC71EE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(966005)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(8676002)(44832011)(4326008)(81166006)(81156014)(486006)(6306002)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(256004)(110136005)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3970;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WFdWWbgvi1FTiEfiKSlGYrbW/QfFuy+cG07z4pyxh66Of9w02ii82nPheJb5VEJPpQMmRkesrye7l0zqSBOzRuZEgSWIOuaJtEBYdRXJJlkGr+g8fa7hFYejQ+JlE6zRPlSgMWusMa5OyFnVkVrnVsxd/J7HVJVU31t+dF+zhMB0o922k85pEn228rBuTlnkQZXdc062tApopQOwWGTYjyna0i/clmnr+VD0DWddhokUg7g3FREuKScTkDp5gKa+neCJFFWZ0Vz38BFMacGY7VnM1Yws6GXeZz8rOs2/dASFDOlcrJasnpOHFmNHavFGT9Ci4ZL/8ZaAW8yGBkkYy3ykG8Dm01MPP/Ok6LWIKbWl6OgogotPtYAbr2fxn3tJ5iinZGauVhQRc9Mpn+d+62a/jdkJCOJY3n8MGyOImgk=
Content-ID: <F446258C55C1014A9AFE8BF5C134C01C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc45f85-7bf9-4db7-819b-08d6de2ca805
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:10.7459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_134114_622019_90EAD248 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
is not desirable, power button should behave identically from bootloader
to kernel.

Add DT properties to allow explicitly overriding press durations but
don't do anything by default.

Changes since v1:
 * Attempt to round to closest supporting value
 * Spelling fix in PATCH 2 commit message
 * Collect acks
Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=119597

Leonard Crestez (3):
  mfd: bd718x7: Remove hardcoded config for button press duration
  dt-bindings: mfd: Document short/long press duration for bd718x7
  mfd: bd718x7: Make power button press duration configurable

 .../bindings/mfd/rohm,bd71837-pmic.txt        |  8 +++
 drivers/mfd/rohm-bd718x7.c                    | 61 ++++++++++++-------
 2 files changed, 48 insertions(+), 21 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
