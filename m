Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CEA1E982
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 09:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+V0SM4D6ddAKGVFXuktpznMj/adsge1VKvTIrfMMECc=; b=pdrsKYaIBkq6aa
	KWJGVFwqD7vF4UmLHtgK4LCGdeIWfgKlrP5Rec9bpfjHE7uqOfYDemxrKUg7BfuKTRnh/ZVXvyRcX
	X/ed294zhRCph7GmzrP5RyT7FA3c+L3M8CJDaMyiUfpOKcd/QWJ0cU+aaBGjoODPQlZ4UH442rLe+
	cwhBjGjgizO1rXB73X1ZCo5IkFBt1wVBeyt7E90gByLNRx+fT7j/ABJ9BX1xpL3KIANCxOlNKYwos
	pjoLwcpI/KY81KcL3BI/RmIAQi9MTs/n5EA6CL1UPAE9jifCKxL/f7ZEUBpLfFM4F0RD/dWCKwwnr
	9piPpgronwin2iW8kAEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQojr-0005lP-Q1; Wed, 15 May 2019 07:54:11 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQojQ-0005Lx-5z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 07:53:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xeFKX+lnbRylikJpEHNU/WnUY8Eqh5Z3VPRC5oL+UFU=;
 b=CQE8Tjt94W+wT6Jg0UsaPZcgQ5jy/hIbZI/fDpNKQHKvLbtHEBM57CBo0lS99wkG0sM/i5bfuOlwzL9x8RE9dRT5NGyMQZQ7iVvNVc4cOs8zZ6z0pMVElSsy/qfiRZ+TlRiqf80m+Q77F6fSI+/soVIfMIlw3W1AndSmghyYzpM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4644.eurprd04.prod.outlook.com (52.135.149.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Wed, 15 May 2019 07:53:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 07:53:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: [PATCH V3 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Topic: [PATCH V3 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Index: AQHVCvNPYlmGlaKrHkKAaUj4uWVjxg==
Date: Wed, 15 May 2019 07:53:39 +0000
Message-ID: <20190515080703.19147-4-peng.fan@nxp.com>
References: <20190515080703.19147-1-peng.fan@nxp.com>
In-Reply-To: <20190515080703.19147-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR01CA0044.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb1c1ce3-126d-42cc-d8c8-08d6d90a7161
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4644; 
x-ms-traffictypediagnostic: AM0PR04MB4644:
x-microsoft-antispam-prvs: <AM0PR04MB46440C081457AF1A8B1DD15388090@AM0PR04MB4644.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(189003)(99286004)(54906003)(256004)(110136005)(50226002)(478600001)(8936002)(14454004)(2501003)(66066001)(71190400001)(71200400001)(52116002)(102836004)(53936002)(7736002)(4326008)(305945005)(6506007)(81156014)(386003)(81166006)(25786009)(8676002)(6636002)(66476007)(66446008)(64756008)(76176011)(66946007)(73956011)(66556008)(486006)(3846002)(44832011)(476003)(6512007)(6436002)(2616005)(446003)(11346002)(68736007)(6486002)(186003)(7416002)(2906002)(6116002)(316002)(1076003)(36756003)(26005)(86362001)(5660300002)(2201001)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4644;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eNswv+eXCJ+meHP8hE/aRbGhDTHCStrxrSsH/1AZRJ4FIpeTZl/Xeg75UGGi+qxGdfsMaOtaRAbnJolaMan6Ulauxeq8hedzFtsufzD43IaXix2fN/sNNsxbhsLSzvFPz1NzK0Ni2SXyLgVR3TkYLMMhVv+JhI54oF3I0ChoIoYIwMtKBCTpmnctQzoslK9l8LjX3wBK/fSrlFiFYS/WkA2g2tBnFVjU4nAg/j4k8lesuvjIlewuuIDJQQCwACbPa9mw9dFktZMDZb71VyGVGqV+3djN6+753EkH/yBNQmIvLUw+9Ycj8Fva9nL5vOYkukewcH0VsvJ2zJWk+2AfXbOG+KmIPUTZOI4h/F1AVvHJrAjUd4c0BESNQVACwIu2Yj6gaLO48QfftUpRQemBD9qvx791I4a67kgr9KEmNxg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb1c1ce3-126d-42cc-d8c8-08d6d90a7161
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 07:53:40.0118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_005344_622685_00F742F6 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8QXP ocotp node

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Anson Huang <anson.huang@nxp.com>
Cc: Daniel Baluta <daniel.baluta@nxp.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Add R-b tag
V2:
 move address/size-cells below compatible, add "scu"

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2a48ae..725d341ee160 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -141,6 +141,12 @@
 			compatible = "fsl,imx8qxp-iomuxc";
 		};
 
+		ocotp: imx8qx-ocotp {
+			compatible = "fsl,imx8qxp-scu-ocotp";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		pd: imx8qx-pd {
 			compatible = "fsl,imx8qxp-scu-pd";
 			#power-domain-cells = <1>;
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
