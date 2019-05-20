Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6112722A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 05:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzzrIsJJoLHI96jdirt9+FjBUoX5QIx6/byu/cI0LbY=; b=r4HRi6Y1uuz7yQ
	tDOzBbpe7YxXFaSHObg1kPPrfE2y8xYdA4B9xAfJ7rLiYSeSun9f/hI0t7h3KHpiw552z115r/mIO
	9WDYGG9rianydkCBFhbo+8K+WRq8pPl8LDVj4NzKCy7b8N/cjrqIACMSPa71wWkHclOfbn+hmuTax
	q3o+t5aAHWO/zbcc4alwz5HLmUq9zrV6UrQa1gqhX5jK6S98rQT/w6AonZVZl6rWe2l7E/FrgF8JM
	gntT0nJSpjyQEtvXOSmLkQXpdgAqmb+gs3hmlyl88oFID4Wb9FJElqx1nZhG0PffA2BD2HHqfQM1e
	vl9jArGpGOMS3d3RLQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYdf-0001O9-0e; Mon, 20 May 2019 03:06:59 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYdM-0001Af-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 03:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5fl9/5XXsMpWHM+52CJmqRfSB6cYajFFtCwdVLxlaxs=;
 b=hypZth8095ZC2PzeTbT0GWxkIFiQzOP9bGSZ5xNiBwUsiB0qP9pwWP4jHXRuM+YuCTvyVM8epvlKfCeXjkVUxiiW5t2b1es0hfBTT1gWpXrkXNPajbojzL6aO3ah2TsDpXqGbwQB2A7UHHdIo4H+Frt0d7INUM7JriOMOMGQYSk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6611.eurprd04.prod.outlook.com (20.179.255.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 03:06:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 03:06:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: [RFC 2/2] ARM: dts: imx6ull/z: add fusable-node property
Thread-Topic: [RFC 2/2] ARM: dts: imx6ull/z: add fusable-node property
Thread-Index: AQHVDrkK3jBoIPPnL0GIqBs7vhW/3w==
Date: Mon, 20 May 2019 03:06:39 +0000
Message-ID: <20190520032020.7920-2-peng.fan@nxp.com>
References: <20190520032020.7920-1-peng.fan@nxp.com>
In-Reply-To: <20190520032020.7920-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR03CA0055.apcprd03.prod.outlook.com
 (2603:1096:203:52::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a70147ba-43c6-4a30-b5f9-08d6dcd02d1a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6611; 
x-ms-traffictypediagnostic: AM0PR04MB6611:
x-microsoft-antispam-prvs: <AM0PR04MB66113F5900E52D7B8AC97EAD88060@AM0PR04MB6611.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(39860400002)(396003)(189003)(199004)(66556008)(4744005)(66946007)(66476007)(64756008)(5660300002)(99286004)(73956011)(6116002)(3846002)(66446008)(53936002)(6486002)(7416002)(1076003)(71190400001)(6436002)(36756003)(6512007)(71200400001)(2201001)(68736007)(86362001)(305945005)(81156014)(81166006)(8936002)(50226002)(25786009)(2906002)(8676002)(478600001)(4326008)(14454004)(7736002)(2501003)(76176011)(11346002)(486006)(316002)(256004)(102836004)(110136005)(14444005)(52116002)(476003)(446003)(2616005)(66066001)(186003)(54906003)(386003)(26005)(44832011)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6611;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8s+7+UfHf+iTEMFGrQZkNrAY1EURpMFcl/RRoPNWli/C54VyVo8axIUvYZOCCN16KVguZQTKppPrUiXVyXfKzbZRytEBLthPPqk7hRroUBd3TxYCnYvctzXKfpGbvAVVWnk9QU5bY2d5wDzACKCM9I9CpGNVD1mOBGcBvN41Y/BB/gbdFdVNNUGxXTdGhrgU5E6CNa+SSqDoXBgu8HjS2bXZyeN119vW6qzL7RhvIn8h/sggkb+P4Jn/3ifyGH7+1e4HPIzMPf2LTRK2BtBRluWclA16HX26b8rFlXCKJBg+gJKJlETlnEei7IFlzd/fE3Lpc+lWgYIQXbzDvlo9BVQyVXPBG+nICAk+KTLSY/6XeYO2XUd+fvDSYS5NqWUIUmOOpZkVXsbR3CMJWTU7T4r3Tg7u0vivnA3EQRN+qbc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a70147ba-43c6-4a30-b5f9-08d6dcd02d1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 03:06:39.1774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_200640_987410_F7483254 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add fusable-node property for OCOTP

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx6ull.dtsi | 7 +++++++
 arch/arm/boot/dts/imx6ulz.dtsi | 6 ++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
index 22e4a307fa59..b616ed6ee4bf 100644
--- a/arch/arm/boot/dts/imx6ull.dtsi
+++ b/arch/arm/boot/dts/imx6ull.dtsi
@@ -32,6 +32,13 @@
 
 &ocotp {
 	compatible = "fsl,imx6ull-ocotp", "syscon";
+
+	fusable-node = <&tsc	0xc 22
+			&can1	0xc 26
+			&can2	0xc 27
+			&usdhc1 0x10 4
+			&usdhc2 0x10 5
+			>;
 };
 
 &usdhc1 {
diff --git a/arch/arm/boot/dts/imx6ulz.dtsi b/arch/arm/boot/dts/imx6ulz.dtsi
index 0b5f1a763567..8edd9008e38b 100644
--- a/arch/arm/boot/dts/imx6ulz.dtsi
+++ b/arch/arm/boot/dts/imx6ulz.dtsi
@@ -19,6 +19,12 @@
 	};
 };
 
+&ocotp {
+	fusable-node = <&usdhc1 0x10 4
+			&usdhc2 0x10 5
+			>;
+};
+
 /delete-node/ &adc1;
 /delete-node/ &ecspi3;
 /delete-node/ &ecspi4;
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
