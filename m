Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EA5101F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3uQcCMiH3OFnCpK0m3kz+NrEQTBHXkP9iIEUNfT32I=; b=kebf0LDl+LutzU
	uiLAee/RLPz4KMNFxF+9/wEKTS8xwR54yawcZFM/76vs6ggnl9sSzDx67n4w5SskF5rfFj0Ey516f
	KGdqoh/ii0faqabFt//hvHBhhkG3F50+Usv5Rsd7N8HtSA98QRkfB3s8aO9JwpxazPqunUwUYXNDs
	CO85jKwIvWapgBOHePiq9zQiu6ozYoEenXvJX86mAD7jxpbpu/Xp0Ee1EdImVBd++EZBp9LG/sG1I
	Ji4jrur3o1Wu9Vy4kTJDhYPGRQwNuPryQqEbaPiLYpSdsAR0u5X01btcUhs3mN7oqbe9GpgE1NoVF
	bawrt4zjZcByIUVi58+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaUf-0003EE-0Y; Tue, 30 Apr 2019 21:40:53 +0000
Received: from mail-ve1eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::613]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaUD-0002rI-90
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4gjdGtFWbSQUmTwcnKEg3LEyx1m2hVKOntlI4wlFfI=;
 b=AavYKpOIqISmvld7KnF9MQjfuqSbCkOwgDTznW9VXktCAuriW5UedfSTXZFzUjRkw80sNOxpEFTSl1/RfB175Cqm818O3EMf9SLve0eJB6t/t/mEAQsrhdV3RTGlxQTn+hGisTWdCDuw8gV/RVft3INCzndsWqG1CuhAPtTDbCo=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6303.eurprd04.prod.outlook.com (20.179.28.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Tue, 30 Apr 2019 21:40:18 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 21:40:18 +0000
From: Frank Li <frank.li@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V10 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V10 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHU/51NYD7VmA6ZDE+d03NCfNooCg==
Date: Tue, 30 Apr 2019 21:40:17 +0000
Message-ID: <1556660398-25450-3-git-send-email-Frank.Li@nxp.com>
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0153.namprd05.prod.outlook.com
 (2603:10b6:803:2c::31) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a25a50b-77a4-4026-e681-08d6cdb46ff9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6303; 
x-ms-traffictypediagnostic: VI1PR04MB6303:
x-microsoft-antispam-prvs: <VI1PR04MB6303676698A1B02455FF52BF883A0@VI1PR04MB6303.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(2501003)(476003)(6116002)(7736002)(36756003)(316002)(50226002)(53936002)(2616005)(66066001)(14454004)(68736007)(6436002)(8936002)(4744005)(6486002)(5660300002)(486006)(3846002)(7416002)(8676002)(25786009)(52116002)(11346002)(99286004)(76176011)(2201001)(81156014)(305945005)(478600001)(81166006)(26005)(4326008)(446003)(71200400001)(102836004)(256004)(386003)(6506007)(86362001)(66556008)(66476007)(2906002)(64756008)(186003)(66446008)(71190400001)(110136005)(66946007)(6512007)(73956011)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6303;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I91lGrgZwXIsdQ64OifDvPvW+r9J2ZMlx0l3DqNCJyboXMgSKC7/NWsUpqu3lGly5cqHKU9RL5S4t+rTsTvLU0UifnV+gLJSDJ5h8Vp2y1VAZzbSiAi2JxgRucTXV7r01Rmfwo/OCsjiJTCfBobZVxxsNAKHxFOHx4ammuaRrriY+AcHFcH8ka881JVGE2uxvOecW1OvaK86+CmE7oPPIFJKMkGpTRpw4roywulptf7woaY/eh0fH5SJ2zC+h8pekJC0eajTjve0Rz+fMi9/c0ClLGzOVB3HuZiR2vRuUjEuLcXsi/ORZ0qyNRw3RHQTE4RlSAGY4YYMhD0TbCfc8fhmFw4+4DOebC+fCRHLWNBvDVAR26RLbdZ85WYh+pzO4JpimOdV1YivixbH87xUwPl7jOFKYXcvkX4UzUCgvl0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a25a50b-77a4-4026-e681-08d6cdb46ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:40:17.9832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_144025_690809_7F48E849 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:613 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
No change from v9 to v10

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
