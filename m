Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F212B417
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0wF6KveELPWiSYRh7q8c83obcPEnUNBNT7f70ecB9o=; b=jhPtDgOKN+uM2/
	Yn7Gi/A9hdHPCgYkKNX6wPbQuwi3IH25bQ8E7rhEe3oRitsnnrUS2J4t1EhAJy9n3gramBMSyFdW3
	LfB8EvhEOsplC7UoW39O825w3vjIbXEVX7oco5vkn1t95W2+kfdioqx6FvLQseRqTczOrPFmsufAS
	xdfLx7pmoUbjOMJd6oOwGZAhteY9LE/grUb0Y91RE6Oo00fmA5AIqO5xIsVSO7dRUd7qyHawYb6Sn
	NBptPcpjQggR1J3gQelqSxP0rJ+zYj1E6yGLbvJno5lt5XS1K2ouBrABP/qE6pjZkQ/4EoYhcVXHg
	EUU4LTjkpJyWRS0D/hbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEMg-0005wz-9r; Mon, 27 May 2019 12:04:30 +0000
Received: from mail-eopbgr130048.outbound.protection.outlook.com
 ([40.107.13.48] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEMZ-0005vg-82
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wRumjJQB3ouNn4eLIeBn/rikleqowhhNTpCqONcaoQ=;
 b=NahhbJgB6q3zYaggGD9tAHV0brDxkT32eQBASqSUzKpqFaIr0pDH9FQ2ofMXfm3lxCy/Dy6vyikEutZcIeXIHLCYUs3VJV/IgAzcid6MpsvNRYnEMf9PXXrc3mljx8duqUGjsUfkvM1eR35KGlb+1WDzEU/rUH/raOIMbJDSLeo=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB5064.eurprd04.prod.outlook.com (20.177.33.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 12:04:18 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:04:18 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 0/3] arm64: dts: nxp: add ls1046a frwy board support 
Thread-Topic: [PATCH v3 0/3] arm64: dts: nxp: add ls1046a frwy board support 
Thread-Index: AQHVFIRP3J0s0G2/YU6PMd2cA4zVZg==
Date: Mon, 27 May 2019 12:04:17 +0000
Message-ID: <20190527120619.30546-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: BMXPR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::26) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1eca1db8-16e9-4174-0a4b-08d6e29b71aa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5064; 
x-ms-traffictypediagnostic: AM6PR04MB5064:
x-microsoft-antispam-prvs: <AM6PR04MB5064F4F359AC9F27A7A8F3B1F61D0@AM6PR04MB5064.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(189003)(199004)(66066001)(14454004)(99286004)(2906002)(486006)(2501003)(52116002)(186003)(110136005)(54906003)(26005)(25786009)(53936002)(4744005)(36756003)(5660300002)(4326008)(256004)(478600001)(2616005)(476003)(6116002)(3846002)(71190400001)(71200400001)(1076003)(81166006)(81156014)(68736007)(6512007)(50226002)(6436002)(66446008)(66556008)(64756008)(73956011)(66946007)(66476007)(316002)(7736002)(305945005)(6486002)(86362001)(386003)(6506007)(2201001)(102836004)(8676002)(8936002)(6636002)(4743002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5064;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5M0zGM0KdYhNn6/jsd1SZUE4YEv1ANEZX96hsrSpN26NvFOZkoIZ36wfKMY/18PZQ8BdRXmedBbSt4028nYGw/xcB7I+4tCmRyjOFPa9K5qodQ3Q3FddfkfHZIELiRXuIhtNCgZSpbSZ27om8GFzzl5dRdXDmhNy09iyetOXhnWbp9CRbnZIRRMVr8ac9hnknKwXKuCQ5tjeuboBI5OBOIymajrMwgItq1zEDvXHLUEoq39koC9Meb6C2uQqmAjloWB/OwlNHPNaPTdra3FPcxKTOO/GAAdDe54IcTr3h3on/AHEBwR7QD9+zBYdPiyifj4OesbEVp5P9c2xrVxmy9P92f+k3sIRdifvFQ1BM0T6RnhqIYDW/vzCB7/vEc9gUnzHXJ/qsi7G4BfFf9oSIbjZnVF20oGNLpHI892xtxw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eca1db8-16e9-4174-0a4b-08d6e29b71aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:04:18.0787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050423_347845_32CF0C1F 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes for v3:
- Remove undocumented propert i2c-mux-never-disable
- Sort nodes at i2c mux in unit-address
- Remove Unnecessary newline

Changes for v2:
- Modified comit message
- Add dts entry for qspi nor flash

Pramod Kumar (3):
  dt-bindings: arm: nxp: Add device tree binding for ls1046a-frwy board
  arm64: dts: nxp: add ls1046a-frwy board support
  arm64: dts: frwy-ls1046a: add support for micron nor flash

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts   | 172 ++++++++++++++++++
 3 files changed, 174 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
