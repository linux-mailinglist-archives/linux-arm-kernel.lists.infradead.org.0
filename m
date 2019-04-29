Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAF1E80A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kqdDtLuloG+OFDrwGKD73aFjxxFsdRnSTdXpFwLKas=; b=DFphX0Ix+2lT5a
	8fZmeBTX1uoqz1BskwHzTLOCTJT42DI7SxMJU+dG554pNsNsauXSvAgwFPPJ+YsNRlPTHFCzP2Ptt
	UHorvrWUvVaY+cvqF4s2pmDUdrZoADXv58rBrx4Ps7r0WJf809vwAuhKCH6a3auDiLym72FwA+G+T
	5ORkTPwfsUA3RHbHJih0slPJYO6+W6NvsP0QOVTCjBxfPhDUKUY6sE2NSXwOvSgCTHnURzt4exVCf
	NPvkkwRVZT5213Rgucj/iPW2vzkLBk2wqSJ8ModQtrca3SkLYzT6ipv6SuhfWjlj7Xx4+gGstE4bu
	MeQvxaJNB8tg8rEEaKmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9P2-0001v0-Oi; Mon, 29 Apr 2019 16:45:16 +0000
Received: from mail-eopbgr10040.outbound.protection.outlook.com ([40.107.1.40]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9OU-0001XU-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LaN4K7Ljl7NrL5u9OgXh16npo5By6z7HoyeHqyXAF0I=;
 b=dno+0ZpNN8V8kjuXgYOwY68hBCy8uaYKO7Gqvt/bz7xdqGi8FBMa/vD2jWdL+R/cjdnthw8iuGuuPSrzjX5GJ3jWhd/GLVzSp7gs68ZnBrTXr2rxy0iuW06i8xi1V42/qsklqmcTjFMkJ/hmLseOPvdylylzm0xyEq6CPjhQnfA=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB5791.eurprd04.prod.outlook.com (20.178.127.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 16:44:35 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:35 +0000
From: Frank Li <frank.li@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V9 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHU/qrTq/C0isgdyEqfhmtsVBA3aw==
Date: Mon, 29 Apr 2019 16:44:34 +0000
Message-ID: <1556556252-22868-3-git-send-email-Frank.Li@nxp.com>
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR01CA0009.prod.exchangelabs.com (2603:10b6:805:b6::22)
 To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8aad9f7-ffc1-4039-b056-08d6ccc1f5e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5791; 
x-ms-traffictypediagnostic: VI1PR04MB5791:
x-microsoft-antispam-prvs: <VI1PR04MB5791B86C801763FD79AC074188390@VI1PR04MB5791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(102836004)(7736002)(305945005)(7416002)(2201001)(86362001)(25786009)(4326008)(99286004)(186003)(110136005)(316002)(3846002)(66946007)(66476007)(66556008)(6512007)(6486002)(26005)(6116002)(76176011)(64756008)(66446008)(73956011)(52116002)(386003)(6506007)(6436002)(2906002)(53936002)(36756003)(2616005)(476003)(97736004)(11346002)(2501003)(486006)(81156014)(8676002)(50226002)(81166006)(8936002)(446003)(71190400001)(5660300002)(71200400001)(478600001)(14454004)(256004)(4744005)(66066001)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5791;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X/JTJxaPN6w1KsUMWojkAiCNKy0spK54O+oIyd+pQFaU7GHEUlz9iTyT5beCFUcishb1jlSmwta5WCFdzIbuuV2J8+6IkzvPJMoVTaq2ovmGqCqbV/uOXBzTf2R8ojFfgBLmLRD4XARWx/juz0KNI89CWypZy+pxcYNA/f7mfhNgTImRnSMBDT4vBMLtwF98z6jXQOQ5j1wFH3R4jk0A4A3EehcjfaMgS2Oz1HyMLAvlU5i4byozVvgKZc/s8iu5uVZdx/oi71SFSZzA8omqECxK8QZQR8m4A9XrD75rXUyr8rapqFgvH/GrGNJDyWZOTSpbL76/LsMbNc6jEn6CKNxnmCTZRvlEz3ikjG/T8uTWUHf7dU0amkZbOuxoxXwfE/DI7v7fgTWjPpH2v+TZ/SLP54oaxL/jRM/RFoyPUz4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8aad9f7-ffc1-4039-b056-08d6ccc1f5e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:34.9901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094442_529330_8B3E217E 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Change from v8 to v9
* put ddr-pmu under ddr_subsystem bus

Change from v3 to v8
* none

Change from v2 to v3
* ddr_pmu0 -> ddr-pmu

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2..b66f713 100644
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
+	        ddr-pmu@5c020000 {
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
