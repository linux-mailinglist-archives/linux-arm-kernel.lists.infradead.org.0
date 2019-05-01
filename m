Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECEA10CD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifheP9+M5DcZYkPuWcdnzV0WdIYs0K6VtPSc7epfrDA=; b=tFq9HHAw1G4kcO
	iGVtC9KFECm9ZodkB63e7GPuKHaiHNW95tufuwgJfBjZQBsBWOR/8foBY56gHUxlaqg/yjkQ8cBYu
	PIjHvGMjEM7gruU5/Ne27sIo/s/zZi7cR7a42UNd8oeYM3Kwn5VgrVopR6HOU4as4ApTOqQl2QaAE
	P/51OCw6xu1I9dwxuRI5gZ1szSOh56ckiH9zfLuXz92N5Yfs8DjhH6E3vC0ta1VF6bPXfJHd/H0Nf
	EEPnZjp4MowWXPXcRPbjLlDyOpmQp1SRipyF2fmcLK8r87w7uYnG6diIchVMHTO24GIwfCFpKE2An
	qBuqg8JIEa09wLLohFrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuD5-0005XA-Gz; Wed, 01 May 2019 18:44:03 +0000
Received: from mail-eopbgr10084.outbound.protection.outlook.com ([40.107.1.84]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuCd-00053y-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKmqgfUeA+Pvh7XUoqEZpieIG+gFsQv7jjA4yDLe7/k=;
 b=lVb69dXhPEOebdUZkyclVGjiHnLTgjOA5fmVdv38Oyn8yV9FDFBv4i8mogvFsJTVORwgSNkppeTGyJ39+G7KqGP29ALe8cQDdTELKaPFXw7yHe5OrRwatNdygk3l7QFC3bkvSOHg9cUEUJvCDdCwIVfYw5h7uYxEWSoc8IH9CHk=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4093.eurprd04.prod.outlook.com (52.133.12.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 18:43:32 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:43:32 +0000
From: Frank Li <frank.li@nxp.com>
To: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHVAE3GEjqL0w/qSkWq9sVitoSq+g==
Date: Wed, 1 May 2019 18:43:32 +0000
Message-ID: <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0013.namprd05.prod.outlook.com
 (2603:10b6:803:40::26) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16c47f0f-9241-4fa0-cc8e-08d6ce64e8fc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4093; 
x-ms-traffictypediagnostic: VI1PR04MB4093:
x-microsoft-antispam-prvs: <VI1PR04MB4093C85CEEA43DDC884553C9883B0@VI1PR04MB4093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(52116002)(446003)(305945005)(7736002)(316002)(66066001)(110136005)(99286004)(386003)(66946007)(66446008)(66476007)(2201001)(66556008)(4744005)(64756008)(81156014)(50226002)(8936002)(73956011)(36756003)(81166006)(8676002)(71190400001)(6436002)(476003)(4326008)(2616005)(7416002)(26005)(102836004)(76176011)(256004)(486006)(14454004)(11346002)(478600001)(25786009)(86362001)(68736007)(6506007)(6116002)(6486002)(2501003)(186003)(5660300002)(3846002)(2906002)(6512007)(71200400001)(53936002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4093;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DDpbxmISQHvHBXDtTV9NoM31zaQsLov2Hy4IZCb4CV5c+rdW0kNDyr5andXPDWXxvaar1t9/Q7MJTR++wwfry0HM3XXjMmN2qljBMy7zppNyuHGUcyQkZy2JLHPwVDZU2uVNxeiC8yR2/wLFU4QHaabIGRXEAIEIHlxJ+FxCx/PSCfzZQZTfVZUhmQvQwrgK/Dylvetv1Ip4LTaq1f5L96aytFLJVDE1Qdde4JjovRNtrNvL4M77Osv2VwamqdRtUOqyEUcaUbus1oFx5J9tfImY85Js352YDKITq8/5Mji3R7hj3g+13VsBxobKgfAOgK69rZ/9gF5R0CpPdZRsG/HnKpEV4sLx2lWbL1/FjFdSKzjsoKzd5q/Fps8ECn1q+i7IUpMWSlRZ78QDoTyC0O/ZIjs0Vo4ME8qOgJuYT0w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c47f0f-9241-4fa0-cc8e-08d6ce64e8fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:43:32.3649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_114336_172439_5AFFD2D0 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ddr performance monitor

Signed-off-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---

Notes:
    No change from v9 to v12

    Change from v8 to v9
    * put ddr-pmu under ddr_subsystem bus

    Change from v3 to v8
    * none

    Change from v2 to v3
    * ddr_pmu0 -> ddr-pmu

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2..a33e08c 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -378,6 +378,20 @@
 		};
 	};
 
+	ddr_subsyss: bus@5c000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
+
+		ddr-pmu@5c020000 {
+			compatible = "fsl,imx8-ddr-pmu";
+			reg = <0x5c020000 0x10000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
 	lsio_subsys: bus@5d000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
