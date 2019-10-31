Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A3BEAD04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxq0nWv1wtqhi+M+qY5gS3jtIdE4VELvxlicmoAhKAI=; b=F3Cc/7eetYO/7V
	fiLzRdHfkIA/qRIwOJPdopUekK/VRnbkImucU3vsZ+x81pVPTkewhWljolLdp6yQfIUD8nKMwujPV
	8Mm4cuVOWv+Rc+eKBO3xpm2Ri1b4QIOA4XYtnJE9AQzrwnINcngsmUTqgiLOcMs+LOFr0/qtn2BqT
	q4uNsyYhWdzfSFdIBkTqw5aCcEo1IQz3mECD/qOjhHiGCRs/dJ4cs3/u8B3B3j5Zmrc3mOOfR+sxs
	iUK/F641otEax/dFaUc5yLFNd05/15Y2H2SBTe/CgYaN/lpirVZ5hwg3CM22SKIyk9zlE+OvmjvyJ
	E5yKNjopvSu/f73r2cHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7Hh-0000AT-KF; Thu, 31 Oct 2019 10:02:29 +0000
Received: from mail-eopbgr130043.outbound.protection.outlook.com
 ([40.107.13.43] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7HD-0008PE-4N
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:02:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWxgD9piWbcmDyd9QX7Z9LVEAgtMq1CXrzupgwHfTP1ScNxUI0SnHsCH2tJdW3Nd2QULssE/LKpAxchuLu8CxqRIszoyYn0EuzfCmZElIymGML82lXKxIukBB3znGsmuDDim6d1FTHMrCsR87lT0aifU2jvbNNhub3NIDSETdMtTRHkuNaKAv1rEfLCGB5brGpBSc+viZjg1PWbIVtzJCihj40uCXmAczlZvVR1D29dv9DkaJKbLLA9i+NIUYJc5KOi49KVcCfmT8n5VLYJLZ6gtsLcuKm/72JIw7c2MnQ8BUoL52Bb1QH6gy5+R75wIQdn0VX37SDpXvi6ybwXsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FuEwUkMU6aUSPQit30wKHkooFj+yWbCmhYyxpg+14fg=;
 b=AJcssvlCGnlYt3dnpEcVDq7UCwCVFL23bi9pB2YQlzDWKcuJRqOi8En/sq/D/TS0pOml0RMg//oCNHluCMBvF0039MUz+tHIyAviXPhqsvOk8HgWK3eZteTuRhyx/aZuga60KZltssUCKo8wOJEaghULgKGVDU6gx3iPiQoanwx0jy8hUbzq46zkL6ZxW/Ynbax4PmHuzhDnv6cyAqdkY1jmeCzcoSKCk+R6slvH5MQTssmQ8sBRdLLqje1/lm4/98DZu3Sv1Jl0DDIzylaXKFIbFhR6wcKUYYfz67y7tpCFzhcWz9XXZLYBOL2fu2hVIcd7vuFWflG8pQyWClDtxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FuEwUkMU6aUSPQit30wKHkooFj+yWbCmhYyxpg+14fg=;
 b=ctQDsBSixnLiVhAh6rqc4aFwDvjF5olbOn84Z2hAmhvHk+bffwRulnc1VuRm43Yoh9E/YBEiSUF0E9lAgL+1U+v6vSOuErIsT4UAjDbQxIBwP8ovTWK5sIW232melmD+3PFkeYJGgoW3vnR0JJKARcnreDJCG5p7C35d/tviKec=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6337.eurprd04.prod.outlook.com (20.179.253.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.28; Thu, 31 Oct 2019 10:01:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 10:01:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/2] arm: dts: imx7s: ccm: add assigned-clocks
Thread-Topic: [PATCH 1/2] arm: dts: imx7s: ccm: add assigned-clocks
Thread-Index: AQHVj9I60I1lwvMAGE+caaX9vv5lLA==
Date: Thu, 31 Oct 2019 10:01:55 +0000
Message-ID: <1572515888-3385-2-git-send-email-peng.fan@nxp.com>
References: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:203:b0::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e4580acc-9d46-4b43-f119-08d75de95c69
x-ms-traffictypediagnostic: AM0PR04MB6337:|AM0PR04MB6337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB633768B39EEC2F4B8E0EADDE88630@AM0PR04MB6337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(446003)(2501003)(71190400001)(71200400001)(6436002)(11346002)(8936002)(2616005)(99286004)(316002)(6636002)(66946007)(476003)(478600001)(50226002)(256004)(14454004)(110136005)(54906003)(305945005)(7736002)(2906002)(2201001)(102836004)(76176011)(44832011)(66446008)(64756008)(66476007)(6486002)(66556008)(486006)(3846002)(66066001)(26005)(386003)(86362001)(52116002)(81166006)(81156014)(186003)(5660300002)(8676002)(25786009)(36756003)(6512007)(4326008)(6116002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6337;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AgUYKdF4cfgqDjRsjWNZnp5HNJdymYrWTEr3hfvNEIeRWYyBx4uMMFvgRzUziA2FYTNtoeGaMz6X13ZkiNf1BhonBiZB/5raOwOzLsCzmGO/9CQTBKTfrVyeWZhmJgAe+eBwFJf4E8iM1V59Mrm7ZU7Ego5ctUpxbplvFxHaSd1YNZVoA7ww8DxdyGHN5GwLvCVMlBI9ICpipBhro8gCMk9MKjy6+plL+i1BBePP/29/RpDXffyNK14sOtljJbTeUx0HLkZ7Zb9uAzd/fJJvA+1c8wlVhpotrafWui7e91dRriBjv09NTMOMtNVOUBgg+hXd3iuwClacNMEjURcPFaAy0Kd+sN8by2Bc/hl9bDMeN8YwResvIQnnYW4UB0CcQfz5amgLesg4Zb8kWhcJpPO+xP6Iw7KNldCsymZcVW5dK5RS/vZbBrK+6qKmpAqF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4580acc-9d46-4b43-f119-08d75de95c69
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 10:01:55.7433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6epMvkXEmYY3oZekKdiQoSLzo/+vvSECtGf4ogxBJvZ5yjqZyCBhhLpzZe+hHaDZJgfAiXGs3MwJLchfB3x2vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_030159_178417_3D61ADB2 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add assigned-clocks and assigned-clock-parents, then
we could remove the clk_set_parent code in clk-imx7d.c.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7s.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 1b812f4e7453..36ae864d9b7c 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -625,6 +625,26 @@
 				#clock-cells = <1>;
 				clocks = <&ckil>, <&osc>;
 				clock-names = "ckil", "osc";
+				/*
+				 * gpt1 root clk must be twice as gpt
+				 * counter freq
+				 */
+				assigned-clocks = <&clks IMX7D_PLL_ARM_MAIN_BYPASS>,
+						<&clks IMX7D_PLL_DRAM_MAIN_BYPASS>,
+						<&clks IMX7D_PLL_SYS_MAIN_BYPASS>,
+						<&clks IMX7D_PLL_ENET_MAIN_BYPASS>,
+						<&clks IMX7D_PLL_AUDIO_MAIN_BYPASS>,
+						<&clks IMX7D_PLL_VIDEO_MAIN_BYPASS>,
+						<&clks IMX7D_MIPI_CSI_ROOT_SRC>,
+						<&clks IMX7D_GPT1_ROOT_SRC>;
+				assigned-clock-parents = <&clks IMX7D_PLL_ARM_MAIN>,
+							 <&clks IMX7D_PLL_DRAM_MAIN>,
+							 <&clks IMX7D_PLL_SYS_MAIN>,
+							 <&clks IMX7D_PLL_ENET_MAIN>,
+							 <&clks IMX7D_PLL_AUDIO_MAIN>,
+							 <&clks IMX7D_PLL_VIDEO_MAIN>,
+							 <&clks IMX7D_PLL_SYS_PFD3_CLK>,
+							 <&clks IMX7D_OSC_24M_CLK>;
 			};
 
 			src: src@30390000 {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
