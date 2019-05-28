Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC22BF8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0BWhHN8KDHz3MGPMnS567Lnz/lc4MMrMK7OQuS7fyNY=; b=INK1IH1449WoPj
	2jcO23NUT7oYTXo9rV3qALn3TOwpzEURnOTKRz1cFW9qIgHcQ3Atho/D4JfaQXUgs0txgeWJ//iiF
	OxfFG5ylyNSdHeH6t1S3Hl2KxVvbPSl8scpZuKwt2DhGoYNtM/xOxbLzW949zZIG0WY6M2kkp6Dar
	7qfxBwcGYNLM5eg4dAM6HYccje+sQTUXP0xhBxs3dhSueRmy7h20jGf8/3yHyn7IPQyzWX54b1mNh
	V2LdgGL17pTzVJ10rL8lNwM+UbirHWmr1Yn2EKozC6mXrXCuch+YTqqhGRYU8nvgSvsauOrJKID7S
	hcsrwsEweYzXcLrZ/Pcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVw6-0002cc-IY; Tue, 28 May 2019 06:50:14 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVvt-00026I-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSIMUbGAasKFx6LQ0iw1MGA3Rs2utlSGPk2XxF2GGk8=;
 b=al1wVnhwV+Vkh/JW5zvmQGRGKJsUP6oAbFZxs/ZXMJR1lw5Z+65Rx7+xG1fEqn+Fg10gP/YNbwpme/sEUzGnUs7AvwfKm6LUUuaLfvtKJ6vjxpCEep1fGlOVAksdM8Dxp9WqwaQnJrn5Eb9YhbYMnsC6ICQpPJ1Kxcarz9Dcp+Q=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB5495.eurprd04.prod.outlook.com (20.178.93.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 06:49:57 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:49:57 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv6 0/6] PCI: refactor Mobiveil driver and add PCIe Gen4 driver
 for NXP Layerscape SoCs
Thread-Topic: [PATCHv6 0/6] PCI: refactor Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Index: AQHVFSGPu5nAfglMjU69RH0Kn4DS/A==
Date: Tue, 28 May 2019 06:49:56 +0000
Message-ID: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0128.apcprd02.prod.outlook.com
 (2603:1096:202:16::12) To AM6PR04MB5781.eurprd04.prod.outlook.com
 (2603:10a6:20b:ad::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed6f9738-4ddf-4324-0e96-08d6e338b1fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB5495; 
x-ms-traffictypediagnostic: AM6PR04MB5495:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR04MB549593C9785CBFAB66812939841E0@AM6PR04MB5495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(6486002)(86362001)(6116002)(6436002)(66066001)(6306002)(6512007)(2201001)(386003)(2906002)(53936002)(25786009)(3846002)(7416002)(4326008)(71200400001)(71190400001)(66476007)(54906003)(81156014)(73956011)(64756008)(66556008)(966005)(50226002)(8676002)(316002)(5660300002)(81166006)(8936002)(110136005)(305945005)(102836004)(52116002)(186003)(26005)(36756003)(68736007)(6506007)(7736002)(256004)(478600001)(486006)(1076003)(99286004)(66946007)(66446008)(2616005)(476003)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5495;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m3TIdjqMZeBvk5fsm7Gt3xOZ0ShyZyq7nt8EiAVOO8raLjBBhibcOl8THUTKuBhzJkmLPKi9Hr11d4eoZUhmetBY27tOgCOlsLQiJ0rBQSKWF2oykzSFrn9kjTX+7kOaBTuPrl/Ef2w9QPS8suEQwOFsojMtvs6mRL5e3vgzSp+e6wz5AHujzhfrAzLHvd07mZ5Mpk3s+DIKDO474twL06fF6v3wyA+ztPXamaluHREuhUn/2HuYLXBqjOYT643Nn0xlfPtvM944Kr3xvhRT0nctSwq/GFlr1BCNQWX5RR425Ek3OwjY2k131UyTZB08hnaLB1o5FxYEmz1KHmH3GVSNAWOAhzco4r9n79Lk6qdWZ1gZw67nkgQY0Xd07K1GsQVCT0nvH9vMed4XEoHfbG8PhrTYA5LBXKF9473/R6A=
Content-ID: <F58DBE0F145D784D9B14E2DF418B7DB6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed6f9738-4ddf-4324-0e96-08d6e338b1fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:49:56.8999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235002_115902_A173970F 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.70 listed in list.dnswl.org]
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

This patch set is aim to refactor the Mobiveil driver and add
PCIe support for NXP Layerscape series SoCs integrated Mobiveil's
PCIe Gen4 controller.

This patch set depends on:
http://patchwork.ozlabs.org/project/linux-pci/list/?series=102378

Hou Zhiqiang (6):
  PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge IP driver
  PCI: mobiveil: Make mobiveil_host_init() can be used to re-init host
  dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
  PCI: mobiveil: Add PCIe Gen4 RC driver for NXP Layerscape SoCs
  arm64: dts: lx2160a: Add PCIe controller DT nodes
  arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4

 .../bindings/pci/layerscape-pcie-gen4.txt     |  52 ++
 MAINTAINERS                                   |  10 +-
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 +++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/pci/controller/Kconfig                |  11 +-
 drivers/pci/controller/Makefile               |   2 +-
 drivers/pci/controller/mobiveil/Kconfig       |  34 +
 drivers/pci/controller/mobiveil/Makefile      |   5 +
 .../mobiveil/pcie-layerscape-gen4.c           | 255 ++++++++
 .../pcie-mobiveil-host.c}                     | 608 +++---------------
 .../controller/mobiveil/pcie-mobiveil-plat.c  |  59 ++
 .../pci/controller/mobiveil/pcie-mobiveil.c   | 248 +++++++
 .../pci/controller/mobiveil/pcie-mobiveil.h   | 225 +++++++
 13 files changed, 1160 insertions(+), 513 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
 create mode 100644 drivers/pci/controller/mobiveil/Kconfig
 create mode 100644 drivers/pci/controller/mobiveil/Makefile
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (51%)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
