Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C22109EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hugkZC8kME2GkFc8DMbPhl32uNVnGFmW1DOTI7LZhPg=; b=nMcO0LpySHiUQ3
	+juOqIqmCsjOVlfvD4ahqdMy25rq9v02aqA1bEIR9W5cp0ed9ch/+QQTbMBc5nNFKpQNWQCTHTDwV
	vAyodGaGc5NhY/e1ImhxbrYoWhs+e2F6ovstin45hRkrhmspMaSSqS4PxuYkJ8pf4a0Ih5Cpe3oUJ
	W3uUD5FPkA4dIB1Y+rK30tGwfKKEpHGmpDSEDDrsv+v7GNnQF+1S3gZkMQQYT1JSgtrovwgOGmUz5
	Kq9DAMfEmi91zqFH7BNdpwUNZIMUWjWHTan+kgEhbYxBPo5vWNgWf0yjqK4vRzH61tsMP5Uos/Q1h
	sMo0unCLg8hBGtCjKFaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLr39-0000Ti-FY; Wed, 01 May 2019 15:21:35 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLr2i-0008Uo-NU
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1k81Au6NHZOSPxU5vdWMbjZpKb0B96nblGADGM9cTI=;
 b=DK2lANYT9BAsCZJFWicFiuG5o2dOzvZ9BMlW2WgQRndILFJZ8kX0DmoZz2UYJ2DSuW3K4vdfC2RMPgM9vryPwWkYo4jZn+PTi5RxZyZzAiBHnT2Ccsm+hFX1+YbK3Q9G+UcwPzYl23YtGo94We+pvkRKQre9R9jpIprxDwM8d9M=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6045.eurprd04.prod.outlook.com (20.179.24.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 15:21:03 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:21:03 +0000
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
Subject: [PATCH V11 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V11 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHVADF9JlgXnFCsHUe1blU7ekSpRw==
Date: Wed, 1 May 2019 15:21:02 +0000
Message-ID: <1556724043-3961-3-git-send-email-Frank.Li@nxp.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0010.namprd05.prod.outlook.com
 (2603:10b6:803:40::23) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6acb05e9-89a4-489f-3b10-08d6ce489f58
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6045; 
x-ms-traffictypediagnostic: VI1PR04MB6045:
x-microsoft-antispam-prvs: <VI1PR04MB60458332875FB6A1B1E6D4E7883B0@VI1PR04MB6045.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(39860400002)(136003)(189003)(199004)(81156014)(478600001)(5660300002)(6512007)(6116002)(2501003)(7416002)(25786009)(316002)(305945005)(99286004)(256004)(110136005)(14454004)(3846002)(4326008)(7736002)(53936002)(446003)(386003)(476003)(102836004)(71190400001)(66446008)(50226002)(73956011)(64756008)(11346002)(6486002)(26005)(52116002)(2906002)(4744005)(76176011)(36756003)(2201001)(66066001)(6436002)(71200400001)(8676002)(68736007)(86362001)(8936002)(486006)(81166006)(66946007)(186003)(6506007)(2616005)(66556008)(66476007)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6045;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bhNUnkuacMusuzi866VAy18POcz2st5N7Pgd72/yttiU9FNGOc87sIEcYIRk/PdLHXOCicEsFmIcyq2fDLjm+5bSrsqexHsgbV8ftSQ7XHm4ENw+UIUgwrlinpg4ZApFNBdKcPN9UcdQkhPXenYGhl39TQv5qk2uVe7rszAZgtvvoq2HLQblHnUYRM6lUUvmOcTTM7DyLmjgu/6QoheufBcAD5/Ai4dsHzypvZ76Ubi0FZjv+G5E9cLWPxtRv12Khm8FxlA6DkOReHLg+xsyS/dP+tCTYSJUx2ViLLDVp/Jcca0bMDPOTUgLIXQevPyRUNtJMh05zPEGNgYl4awPcLJ3L9Y40iVNHhmcY4R2PCriN4ZtuVjqxT2F55n2ZZScdTrpAEUxXYQjyMN3bcbgrkQW3rcYIfgQRdVN1g5PdcY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acb05e9-89a4-489f-3b10-08d6ce489f58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:21:02.9203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_082108_875664_16434EE7 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
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
    No change from v9 to v11
    
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
