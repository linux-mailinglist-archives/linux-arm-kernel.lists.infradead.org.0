Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3359154802
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtN0Ue3GtIGTdJxwBuxuFKv92x4JFbC3L5q0LAqAoSk=; b=Z0O1OwNTrMprzo
	kTyPk0mZQbV2nmdx0OPkQxhrRX/JQhUXEDv++E2ZjScHQmFaqlsz54nHhVXprUpOKY36xjY0rqRD9
	92mrAmm2cVBfH+jHfHFiPo44NeJxwgNa6fKBUOj1zhHJhEb0RLxMX1jekggO7Gr7y9t0c+8abNTiI
	+svlvD+Het3+mQoJ/sNjI6YSfnnKj84PkHJ9yNbnH0j94LCwyZdkdPeLC2RgnkZ73SvqNPEXGbWUY
	iCC7Mc7TcaH3yxk2hKUPy8KA2FR1ciZVhQlOBAz4yVuofPvgFAT/QpExn+qg8ycM0ROzGiMTv2Myz
	aovzM7eIR4LBhMQ2kyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj1o-00089f-SK; Thu, 06 Feb 2020 15:25:16 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0q-0007Ta-R5
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5li6/WwksEhWpqWuRoavSTtFhiK8LR1iGLCfbcE7WlMaTwvIC9O52UOqBfsiGXm7abtfTZld7UmqeHmkuK/I57UmL21Mie2s7iQZk+QZlmvdBndbxGaR5ZLrlNf7MPcAF9aOLE+izOR7KRX/TIN4Jp1Zvj50t9SE6gOQW22P7+b0MCAmWSUDGjVLAZDZEEr6Qrh8gKZYSP/L2XGAiMbCPdDd7vKjYhzzA3lvdk43/tuR2jro9DA+4F3WdYLlpZU73a+yx81O9HkyHkHE9eWUS1H1/XiN6pTKKeZ4TT0ZlINDyDhOMv7Pu7CKFlnIYM3bZqD37kNSvrnklGQDxiDWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=toZDouw/ofV3eZGQ1rB/FHy1riorfgb0UqXJmUf6LhA=;
 b=TJ1NjjaR2odUb8bPSxf6dyvIpBTKpCVmxJtJWNuZ9JGbrcUFbJbNiHtx/7FyAxrw0OJqKFzF2Nxo4VTDzfmk514cZgtiovivj7I9mLixKHiVSjcjNOKDUcHjZJ+Hm2iEnypLze3sR7ibc9iCxLBOz6gjPpnQiME+gUvGYrW6QugQmcPSkplHzuCJSIYB8Uu0e5vrYvejtKPBSrYoAcvG0kHccwvck9FvqEWN87Ih/pyrvfKDq2Z2cvmHNznFl4M2zH+We5NF8rUr6jfRoIU49x6osC5jmHfH3XkBxg1OCia/AZk9RKBUsLKYcMPuLUIQZt8GIDXwRx5a3FyAlBp/+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=toZDouw/ofV3eZGQ1rB/FHy1riorfgb0UqXJmUf6LhA=;
 b=kwHFPJh9cpcXN/tj6GqkA4fYohrFt0c70y5mzkmilVxHk296YQqbGiEhqq2BJJrYmpJP21peF53cxvwE8ZSebzoORtDNNdIOP6ZBCzCaQcEIfPb2WaIrRqhYKJqas01k6Em8+jGuGipJvw/lK5LERJr3ypm69JrO6EQHdpbH8QM=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:09 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:09 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0034.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:09 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH 3/5] arm64: dts: imx8qm: added sata node
Thread-Topic: [PATCH 3/5] arm64: dts: imx8qm: added sata node
Thread-Index: AQHV3QF6DWUgMDjwi0S3VULcsUehEQ==
Date: Thu, 6 Feb 2020 15:24:09 +0000
Message-ID: <20200206152222.31095-4-oliver.graute@kococonnector.com>
References: <20200206152222.31095-1-oliver.graute@kococonnector.com>
In-Reply-To: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0034.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::21) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e77b47a4-5b1e-4cdf-2d42-08d7ab189cc7
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1847D31AAC7E1977ABE743F1EB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39830400003)(346002)(376002)(136003)(366004)(199004)(189003)(508600001)(4326008)(64756008)(186003)(5660300002)(2906002)(6486002)(66446008)(6916009)(81166006)(81156014)(44832011)(16526019)(956004)(2616005)(26005)(66556008)(66946007)(66476007)(54906003)(7416002)(6496006)(8676002)(52116002)(86362001)(36756003)(8936002)(71200400001)(1076003)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1847;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Np/PsX60n0JhU895OcLcw52xUUYSVtZ17/NUTyRM5MQuxJ2gKgRVZP43fbMNxIJJ/3kSmMpHzm0qPkrqEQ1D81LkTiB6PCbvyJ3HcF+1DSiDuNo7SbBrrYHlajdoNu8gKoKNlqCNr5Mfk/jXNpMyT9JGzKJ7kGQKvUX0qiIYVGL+rn7o0mr5Hg0bai8IRiDAR3ryslDVFK4Prk2JXPqI2TfWb1O2XvlKLmIq/pahTfODluo4W/CehYjsMCSyptH4oCKsD/1LiyCNIcR7NFeGuLt9ZR8MA4QCdV5GWX+zt71UPykiHgS9/xaW5Aiy0yEfxrU8g8hDjz36NYXWEVFGlCoQRTMTSfztWUlT2sUvc+PKoNkMHT8Kg6YL7ZeEx+teuSqx7URF9j217VoPIsE2HfwRD4Yp8wzF2XtPP0IetaFV63wBd7MbYnQqCcJ+2m8X5lB8FOD1HNl4dIyUrsZZyZVrlh/s8PEuO0PXvc+LEB8=
x-ms-exchange-antispam-messagedata: 7eq2JA12m677xrIHsdXpytwSZtDeUIvgtIeA7FKlVxd6JG14RE82WZdIzQ2IcDLWYDmRkJgnUiHQon93d8tOacxie8E3CtPy79uiNz0/aa7EDX2N329QMqTWmy4h6EnE8TUKVsZuGzzzBxyM2aJhuA==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e77b47a4-5b1e-4cdf-2d42-08d7ab189cc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:09.5207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r2od5b4DMLr0ssHOK2tqNSQOH7bA/bNTEvE3YH0YSPsX06Qs/e6wqOXIqvssDzzeRoqcC7jnN3bqVj4jlCNMaS7xStcIbpWS7iypN595iLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072416_900806_9AFC2907 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.87 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index fa827ed04e09..5d96be5fec1b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -140,6 +140,29 @@
 		method = "smc";
 	};
 
+	sata: sata@5f020000 {
+		compatible = "fsl,imx8qm-ahci";
+		reg = <0x0 0x5f020000 0x0 0x10000>, /* Controller reg */
+			<0x0 0x5f1a0000 0x0 0x10000>; /* PHY reg */
+		reg-names = "ctl", "phy";
+		interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+/*
+		clocks = <&clk IMX8QM_HSIO_SATA_CLK>,
+			 <&clk IMX8QM_HSIO_PHY_X1_PCLK>,
+			 <&clk IMX8QM_HSIO_SATA_EPCS_TX_CLK>,
+			 <&clk IMX8QM_HSIO_SATA_EPCS_RX_CLK>,
+			 <&clk IMX8QM_HSIO_PHY_X2_PCLK_0>,
+			 <&clk IMX8QM_HSIO_PHY_X2_PCLK_1>,
+			 <&clk IMX8QM_HSIO_PHY_X1_APB_CLK>;
+		clock-names = "sata", "sata_ref", "epcs_tx", "epcs_rx",
+				"phy_pclk0", "phy_pclk1", "phy_apbclk";
+*/
+		hsio = <&hsio>;
+		//power-domains = <&pd_sata0>;
+		iommus = <&smmu 0x13 0x7f80>;
+		status = "disabled";
+	};
+
 	smmu: iommu@51400000 {
 		compatible = "arm,mmu-500";
 		interrupt-parent = <&gic>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
