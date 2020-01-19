Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A76141D3F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 11:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrVf2ityj5u98S3urXSSrplWhXrplc8iDxYbWfxsM4E=; b=ozjob6PB8irp4k
	UQfuJo+0kaxOkLexsazEWR5QgmoFp78aInOoKcU1ReH76wUZxf/qyBz9KwVsLAhHqVj/hm7iUdmxz
	xX0g5uiNM7rflJtPTlG+sWClTRr6McDqcTIt1KD7FuMw5oKysXSl6J03eN8mu4YVhWkMp6LibHJ0s
	ew8EsKsw6Jac3ID5nncLfSqtSydHlcpU4NsEFMnBy+6D60MCFXuMHLch/lyy/FiH/olt/PL9KggMc
	os7ClC1kn+LTfW7RpCsxwbR0Nj1+rKWw++r88lmEc2O+wrTmDO5wfi5WdzRJ7zeoTAPXTt1qNaw4B
	hjfy1BCJ9hEKvTye1Gig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it7YZ-0005Sb-Ix; Sun, 19 Jan 2020 10:11:47 +0000
Received: from mail-eopbgr40050.outbound.protection.outlook.com ([40.107.4.50]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it7YO-0005SH-70
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 10:11:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A67cDd4OWG7sw4LKAl1S/7tWHCnJwxHV9gJl4H399OkX8pVtjxy5dS66naGZALjTmNi5OCmctt2Vp5Q3QfMxWoxL7ISsQjjzGTIC/0jo6hFxBsE/mdDbs8hEdoKZgLssq3rJ+V3WOT76N8UU/d88B0smnHepy5Jpe3DW2w1xijSWFGgV1Roh7j94xT0jOT83q/Aokn1U4/ROH/JNGVw3m8XGvEO8senA/naYNf67vEy1RwGmqT7obkyBsAIi1jEhFpueJtWBA7iwtLFODMHXiZs7JQZtd6d7V9D4Y8uEwOGSdeYxSK+qhZGX6hZI+s2OAfEB52DeCFKEqGv/suyH1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBmX0oXHl3mLCKM3vt12XfHpIPLvThoU0574maatKDY=;
 b=mr0bmYiPcDBfV6+dc6UVH5+0UBWI+FS0I4sDUtz8tD+9sk9w0w7WwICJSb2e1v7Wu7pMpazYZSSEPcg0X7BNgs3CFY5BTDX8B0/83cUxluvB6W+NLk1AL0/s7AqhLfw0qgidHrYTzYPQIJe0INijjviCMcV1juwyF686P7tCqAJmcEGM4Xq10ePgs77cmNP5friNfe3hcNtrx260DdZj57qQriLVylvm0AeKLyZp4NIu2WbyxYvhd2UnJLEeyoyh9n6cQoqHJ3USsljWkKT9gRIRt9PLbh5r4JW3Hz4Ms9RrpKlBvi/I1Sn2Qr89ztck69A+Mk2TdM9VDureSoIlbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBmX0oXHl3mLCKM3vt12XfHpIPLvThoU0574maatKDY=;
 b=mkT1jcMFlmoZiUJn41KsuwOwC3sQmDkEs0OWjpg0ftE6A/XDTfQ285hFUH0xEnSgAPovAKpiW+pCHqPHhXYEjPwbqPD8NMusj2Y3Wamj2grvBIjH/SQg2N5ZDmmpRdxYisYwtT+1OtNL+zZvtZJf2LebWeJoEBfcLDZ425gUw4Y=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0SPR01MB0058.eurprd04.prod.outlook.com (20.179.37.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Sun, 19 Jan 2020 10:11:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2644.024; Sun, 19 Jan 2020
 10:11:32 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR01CA0065.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2644.23 via Frontend
 Transport; Sun, 19 Jan 2020 10:11:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mm: drop redundant interrupt-parent
Thread-Topic: [PATCH] arm64: dts: imx8mm: drop redundant interrupt-parent
Thread-Index: AQHVzrDSsTSUbG7Zs0OJCGW8FrFIzA==
Date: Sun, 19 Jan 2020 10:11:32 +0000
Message-ID: <1579428407-9981-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0065.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f95858c-c1eb-4b2c-85da-08d79cc7f507
x-ms-traffictypediagnostic: AM0SPR01MB0058:|AM0SPR01MB0058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0SPR01MB0058696D4A1E2C4F56DB7D0E88330@AM0SPR01MB0058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0287BBA78D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(66556008)(66476007)(66446008)(64756008)(2906002)(16526019)(186003)(6512007)(36756003)(478600001)(7416002)(44832011)(26005)(66946007)(6486002)(4326008)(956004)(2616005)(8936002)(4744005)(81166006)(81156014)(6506007)(52116002)(6666004)(86362001)(5660300002)(316002)(8676002)(110136005)(54906003)(71200400001)(69590400006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0SPR01MB0058;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ux3v6zAVBXNcQp93Paod4jdjcSna6i0MVieBWA9fU6qFLUOuiZtjhosWCH+7Sesrl7CQsOlTHda0X1acNs9N9ZKb3vV1pdXt4PaQc/7ELZt+kBvZhhF9y7gkSZMRWXrtNG2BuIZmw1Kg7Pf3W+03Josaxu5mE950kjZAjWYcbns95L8vTW0GXmffo5CSiapyraDGOCSQGXJQ0UDhj7ZokNR9dCZK1CHEbomKCfyUXESpbxxEiGsKLc1aON+4ga6jr7O8/PQHlTlyR/mxE0INPo9cw0KEy1KC2RLOIzqLum+rBPyLx55dBe+Jz8zOh3O4drNAwzSseF8tkxViAsAozF1274fpnfHDkrEHxWJUmccinUMFiTws93uvC8riZPHb0lP2wpUmiOnYQ49fGSBFiEtOMhwGYi/f86VdPSmEb2KR6kE0jhcI42lsQ43lBMtA8MIx7ykFtjYOrLNFKMw8vaxCAxrYgGJO8JCU4Gec4fZnVT1A71yjaY6EEfuet2S93DZyTg9grQkVUDt4/aavSA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f95858c-c1eb-4b2c-85da-08d79cc7f507
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2020 10:11:32.3188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UFB9UMFNL6+uufIT6sNiglpLoBdyeQvhjJ2DYDwqTVOaB8u0AI8j7elt9lCzzNOyQh/Dk8oT8FZHMr6AgrTgyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB0058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_021136_255127_2F7C2366 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is interrupt-parent = <&gic> in root node, there is no
need set it again in node ddr-pmu@3d800000.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..b3d0b29d7007 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -896,7 +896,6 @@
 		ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
-			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 		};
 	};
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
