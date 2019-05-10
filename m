Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE3E19DBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alZVl2aVVeRkIlWFHAdtqoHC8TuNsVVI9SEm07ddT70=; b=GlmyNS3KUv+Yd9
	nmjyRW2z5WekQ/Y065QtIjCBOPUFr3+ytEAMzsv6keMFa2o/v3kXqR5C99qZ405FJwiu8wZ/yJJLD
	Ji8CYgsss3oZ3rb4xowLSuf4fKCKBpF19CO48xwNjd+X+EcdLlt98CaygdwAwMnOrue7dQ/UFSdAK
	+uFXpGESQuS03J32QjBcBTKqo0ZPmHoGUYMxfnIOXzkaQ/A6e19AtFKbTROb6MI9kWVYKbATILox2
	xadmq+INyYWnI26IkPeAxG894n9J5ATtCp2uz79DjBA16+zi3aEbdBlg6PtvVDGIIfRqIyZ3mFoFs
	KAl4y3keD7zaYvHK6O8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP59F-0007kA-AK; Fri, 10 May 2019 13:01:13 +0000
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP58X-0006YL-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qMh2dT54Zz2ZM1+k1fF92eeqE30jDoYTH6oIYeKXGlw=;
 b=VTuxrWAlfNosMlt/XXTpcHH9vDzAJMhUeZYwYVuc5mb5KVvwixOD2/rO2vVINF2t4XXRCs4BL+0faDtR7wnFe9EdiZk9EUFecKtyxA/GTZlHddu5KuNN4Ucpt7jyzk/iVIiU9gnT8t8x87yYsUCezf+P2uHK00J3MoAkjMYkZX0=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB6229.eurprd04.prod.outlook.com (20.179.7.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Fri, 10 May 2019 13:00:25 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda%6]) with mapi id 15.20.1856.016; Fri, 10 May 2019
 13:00:25 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 3/3] arm64: dts: nxp: frwy-ls1046a: add support for micron
 nor flash
Thread-Topic: [PATCH v2 3/3] arm64: dts: nxp: frwy-ls1046a: add support for
 micron nor flash
Thread-Index: AQHVBzBVDZ2P0laX5UKits2uWIUXBw==
Date: Fri, 10 May 2019 13:00:24 +0000
Message-ID: <20190510130207.14330-4-pramod.kumar_1@nxp.com>
References: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0183.apcprd04.prod.outlook.com
 (2603:1096:4:14::21) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8c28f58-9f8e-40e7-0352-08d6d547778f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6229; 
x-ms-traffictypediagnostic: AM6PR04MB6229:
x-microsoft-antispam-prvs: <AM6PR04MB622971173DCB80E74107AD4FF60C0@AM6PR04MB6229.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(346002)(39860400002)(366004)(199004)(189003)(11346002)(2501003)(476003)(446003)(73956011)(66556008)(2906002)(66946007)(66476007)(64756008)(25786009)(50226002)(2616005)(486006)(14454004)(8936002)(478600001)(68736007)(66446008)(186003)(52116002)(76176011)(99286004)(5660300002)(6636002)(26005)(102836004)(386003)(6506007)(6486002)(6436002)(4326008)(3846002)(6116002)(2201001)(305945005)(66066001)(256004)(6512007)(71190400001)(53936002)(71200400001)(110136005)(86362001)(54906003)(36756003)(7736002)(316002)(81156014)(8676002)(4744005)(81166006)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6229;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sg1OjkXiRV+9SsdayrXfyMaZq13Fkuj5SUQpEDBmM6K2pSOkysIquFcNfxbPzi0y0tF5WXh22LpOxh4JFid9iuSpLXu6tcTVzVG1XmGQNjqYNKJ3RGS1iNN4Mh5AlT4JWDMd/PjER6bOhpJB39j4YY3Lyl9LoYNHHy+aC97lC4rqM2EUiUwJoYmXZkxxjatWOTI8zaay1Iu/JojytFfgVwOYnhkdjjBB35mr5YvemUXhApq/Lz4ssAbC3kD4rk/KQGLoXFVQYFktcYhlBeGLEA1ZXxydYtFFcOcJHOk5C8YXNFynT/utk4hNHLzfdf2O4+wYyYhaI1dENXYB7I8xuzPFmNhPvPIUq/My9XdxdBXLdLazONdtCoMBeyW4nOw+U/RkShLNZij6qTjBb2jVjFW7IOo2N9IumJQsIc8S9mQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c28f58-9f8e-40e7-0352-08d6d547778f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 13:00:24.8832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060030_050414_18469F6E 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.45 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ashish Kumar <ashish.kumar@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add micron nor flash support for ls1046a frwy board.

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
---
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts     | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
index de0d19c02944..890f07122dd0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
@@ -113,6 +113,23 @@
 
 };
 
+
+&qspi {
+	num-cs = <1>;
+	bus-num = <0>;
+	status = "okay";
+
+	qflash0: flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+	};
+};
+
 #include "fsl-ls1046-post.dtsi"
 
 &fman0 {
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
