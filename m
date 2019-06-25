Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77095527A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nU4k7/iKsSWpb4SQkXzYB8V7zsLZNy1VoKqWTK3ocNc=; b=fLqTn6mn+USvP0
	UgLjrnEPMc1fHdj4C+m4IaTLyT7jBTChUeO08JYCD72Hf7B1No2e08ao8EflDvVEw+u9cBk7f7Zcu
	YiuKnuFDQyxdmRDzkkPCixD4sex8ULaaFtSLQ+LHbBG+8pvCNxxVRG7ZbwVt2W3821f4jyX+7gc9n
	3U3Uzi54UgBJpZvuhJ8tXStpOTXq2+Tp6LYrf4Vsx0y/C9BV/KGyeXn0UZ+fRhfExkmwm4T/oYJAT
	4q3J57+TWQ8nB6L30cQcO3IFKLhmOOulfrG3q6yiqlWFZAfH/Le9TF1SuA6PZbwheE4OlIzrlmFxq
	ir8+X/jjYY9D2l/D7+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhT2-0006d4-45; Tue, 25 Jun 2019 09:10:20 +0000
Received: from mail-eopbgr30077.outbound.protection.outlook.com ([40.107.3.77]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhRp-0006HL-QR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wlLVxgr8QxhhZ8nKTKQ05I9xcg95k4yjkZX5MSXXDwM=;
 b=cAP0W/kh424i+FTruRWNb1AXR1hiURvOruKbgwuwfHGeZF9kj7BrG3A180J2RpFcuhocmfkvP4u3AcAAti3HVFIHqbK0/y/YrUjgnXMcn5eurNy7uD6ieAmRtzopF7AABypSl9PcygP5Xw0pVaHqDwzN9rkAwP4sPRKyALMlkdQ=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6746.eurprd04.prod.outlook.com (20.179.251.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 09:09:00 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0%6]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 09:09:00 +0000
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
Subject: [PATCHv7 0/7] PCI: refactor Mobiveil driver and add PCIe Gen4 driver
 for NXP Layerscape SoCs
Thread-Topic: [PATCHv7 0/7] PCI: refactor Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Index: AQHVKzWgSC0Msk8kWUykwlf/hqMpwA==
Date: Tue, 25 Jun 2019 09:09:00 +0000
Message-ID: <20190625091039.18933-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:203:b0::32) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f259297-b51a-48e3-3b8a-08d6f94cc268
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6746; 
x-ms-traffictypediagnostic: DB8PR04MB6746:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB8PR04MB67463EADF78C80B036DC35DC84E30@DB8PR04MB6746.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(376002)(136003)(39860400002)(396003)(366004)(346002)(189003)(199004)(4326008)(386003)(26005)(102836004)(3846002)(478600001)(71190400001)(186003)(71200400001)(7416002)(6116002)(25786009)(66946007)(50226002)(110136005)(8936002)(54906003)(81166006)(8676002)(305945005)(81156014)(316002)(2201001)(5660300002)(66556008)(7736002)(66476007)(66446008)(64756008)(1076003)(66066001)(486006)(2616005)(2501003)(6306002)(73956011)(68736007)(6436002)(6486002)(256004)(6512007)(86362001)(6506007)(53936002)(36756003)(14454004)(966005)(99286004)(2906002)(52116002)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6746;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YVjenagjo4zMI1Qo/OvYw5J9pRQInrkRinAnKJRh02FtUub9LvvksS3p0hHbZjXom6YTI5FU28oACaKEF8kwCda2dBSCfO2uWSa8qh49h3HvpgRu7A/oe+O1sIhdY4R5WCQY4E1dAFuFeyyeXFyYZqg8pSAapH0KLtS9wueABD9DqC3Bj3UfGEhW8mWzUlyoBX2RxspLeOcLEXF/laTvFgqPsAtFLcSIrkJChmLF5SeIlzL7f2z1laJJyWeGhuFZnQonqN4vbOLbXRW2GHIly7YM/Dvh48E6l2H+xGBla0Ocb4RSwv5Jv17Hfwb+1JT9uYMv92AVC2/cQXtiQKXaroqzGCAtmQ5H5RCzYsJbF5+AOJxwosVttn8F7MoqiI02HzM8p6YBBbtEtluvZ9fi0tBN5Ud3sM9m1Z9PPC93v08=
Content-ID: <36761CBE2B24B547B457C5081DEB949C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f259297-b51a-48e3-3b8a-08d6f94cc268
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 09:09:00.6558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_020905_855092_4D5424AF 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hou Zhiqiang (7):
  PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge IP driver
  PCI: mobiveil: Make mobiveil_host_init() can be used to re-init host
  dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
  PCI: mobiveil: Add 8-bit and 16-bit CSR register accessors
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
 .../pcie-mobiveil-host.c}                     | 588 ++++--------------
 .../controller/mobiveil/pcie-mobiveil-plat.c  |  59 ++
 .../pci/controller/mobiveil/pcie-mobiveil.c   | 248 ++++++++
 .../pci/controller/mobiveil/pcie-mobiveil.h   | 225 +++++++
 13 files changed, 1160 insertions(+), 493 deletions(-)
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
