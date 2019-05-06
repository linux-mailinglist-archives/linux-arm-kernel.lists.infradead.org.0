Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163F7143BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 05:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0nVeRitkg8bViv5AFO4y/HZvR0LL9OAyqrQMXDIQLg=; b=PPBv57KqgD0NVw
	FHPrW93n/G0zrCX+5seluGqfVHU/7pLj00SevLpkTmnzQ3V2pI5BglDhZPyUaXS12cHsLVUOIaBZj
	6QmWessiHJUomczd1dzVLwskAuJDfW/5cA2jGbZCKNHiEwQ1x38tpIRV9lJHiYYGtMnYtaRyNxhs6
	3BUwYAQC+vxoFcds+YvmemY3PlUj/VUl8LM2yC3gRrhK9VkRJproXkUIjzH5bdgIIFnd8gwHsPNmA
	L28yg5otDY9PKcmKv5s8tJ268RDqybzrEkt9GULrljTuOAwGKykgIK6fxJvzDqC62ouG9cGpEf+G6
	E70edmviB6ZS/eaMc5LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNUHP-00045C-Bw; Mon, 06 May 2019 03:27:03 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNUHG-000446-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 03:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bxvQGQbH2tLbVgKYQP3jL/FBS7qQD22SU+HfqpMWV74=;
 b=ibqcNQNyC5leozw1lkqDDMl/xxCktXxqinK54W8MLEX4VqkPaaiDKIOB2qF3R/usN5RosD/eQ5LkFeU22xOdF5oLJ+GLtwEfuA5qIGvnOzXfcODRzi2qkLLBNTZbH/gvKbzGSjZ+t3xM+5WV8WDhofmP7DssyU0OpoyAgDZNCyQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3756.eurprd04.prod.outlook.com (52.134.73.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 03:26:49 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 03:26:49 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] ARM: dts: imx6sl: Assign corresponding clocks instead of
 dummy clock
Thread-Topic: [PATCH 1/2] ARM: dts: imx6sl: Assign corresponding clocks
 instead of dummy clock
Thread-Index: AQHVA7uKX2mzfOc840Ke1bKA2KP6TQ==
Date: Mon, 6 May 2019 03:26:48 +0000
Message-ID: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0212.apcprd02.prod.outlook.com
 (2603:1096:201:20::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2cadbc5-e755-4308-63b9-08d6d1d2ac65
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3756; 
x-ms-traffictypediagnostic: DB3PR0402MB3756:
x-microsoft-antispam-prvs: <DB3PR0402MB375645686B1BE5663A860FBDF5300@DB3PR0402MB3756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:334;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(6436002)(14444005)(110136005)(6486002)(316002)(71190400001)(71200400001)(256004)(8676002)(81156014)(81166006)(8936002)(50226002)(66946007)(7736002)(2501003)(4326008)(52116002)(66556008)(64756008)(86362001)(66476007)(2201001)(66446008)(2906002)(99286004)(6116002)(3846002)(305945005)(478600001)(68736007)(6512007)(14454004)(53936002)(2616005)(36756003)(5660300002)(73956011)(66066001)(102836004)(186003)(26005)(386003)(6506007)(25786009)(486006)(476003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3756;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pvii0iXonzZ9x6rKMHbqLnTNOV13UhBo4ytvuF7c6NZXR5mmF02AWNawuEl0FNK2r/cUzeej7QY5PzRJ5En2PNPyQMlAj9Y8rjNLOMaQzBhS7YdFMdMXrRdvjos/iBSbsyvJ7Y0KiY612bgLVQXr3DvhGgW54P7/kXupTAnwq37KTy0podgSn947vf6LChsKr0Y/JhVvHeeR0DEgGEoCOhXIDjzn9Btmiz9s906FYz5qKpKtEKWbLcw5bvawiB9FSjNl1H/6Ole5DVd7knvc0CJoHHRUGY4QRdFa7LWOutSoN9nwFPvSVmAw1ALy4VyOM7ugEofjdNhLvIqvwfUa6SjKynbdZQJzKesHp5MfG0zSNjloY+9EV4ciUMow5Mw1FIVdQBvrv+L0jAVx+cdUzJ7y9UC8Bv794xc27MjNsuk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2cadbc5-e755-4308-63b9-08d6d1d2ac65
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 03:26:49.0320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_202654_355067_4744EDB7 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6SL's KPP and WDOG use IMX6SL_CLK_IPG as clock root,
assign IMX6SL_CLK_IPG to them instead of IMX6SL_CLK_DUMMY.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sl.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 9ddbeea..9393f03 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -495,7 +495,7 @@
 				compatible = "fsl,imx6sl-kpp", "fsl,imx21-kpp";
 				reg = <0x020b8000 0x4000>;
 				interrupts = <0 82 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 				status = "disabled";
 			};
 
@@ -503,14 +503,14 @@
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 			};
 
 			wdog2: wdog@20c0000 {
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 				status = "disabled";
 			};
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
