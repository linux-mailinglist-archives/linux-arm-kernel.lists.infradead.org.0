Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7FA103261
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8BPg8+xhDIXwMRgcjPemVlyXcz+QGwe/nZ8FV2uZ+uM=; b=IcEjiVB2rM4A2C
	JVsCMNii7JhKd3OhibDnTT2XjCc9HPzFSJDdf1rMmA/P1xSH+HTRTrKUbxlUibIOm2Lt2iHpdibsc
	hSHUHCdrmlCITT2XwWDAjk9mPuIchlxWw6uUxqZQbyzn+6JTSfEU64sS2sgtD5jm+R+EP9KVXnJH4
	CMZAxKqsjNy2yHM3Te6yFdN8T27FawFlzrvBBpDM6+nOactU4EzuzQtzvp8/0FOTQEHw5/zxoikdM
	nKUe4LlbAQR1Fcdk7KEW9WQ/KtVm1/ai929KSKMZiA648KfkPEBD35NPh4nP4VvR0GeqtTx1B4V75
	lev+vkoaCr+5Gh+prPhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXH9d-0005Vd-9W; Wed, 20 Nov 2019 03:59:45 +0000
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXH9S-0005Up-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:59:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bH5X8GBBaUKuYG4L8ADJhMaShgFj4KTqPH00hF2dvRqiBXDUs8QdQCBwWoOCHVYYydCj2FRQIrHNjZCWQmuyCmmCgDYV0oy7Mivh/7RoexaUb7tezhb7GVyMWeey/v8/Hcp6UmgtIziGXQVlAEnh73/078KERkqqzclwIpZgIRNTlKpdmFabZgcg5AJvrB0x1b3cha99mdAop0eDiTRv+H9MvQBzPuA7Zmak/PxSDa62kXdaUMjxN4DeRZaPbiSYTZ0zO1YJ/anJRgGsl6+CIQ4AAn/j/EE3sqre9PUMuf8Kva/GsY19iTxfNP8Y8BUhpDcfghP6mT6oq1lC0eaO+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxfxjL+9tJO1nriAKhZqhuIOHwq50HOSdd+rFy1EngE=;
 b=Eh83aJVXzewlZNZm5vDDds2IUGtKtW7QEhfQPcMqRUOLhqM6bDecTmX+OA4/f7tF1je5b7X4yXleVaRtNqByfvgA1tBZvN8zKuzYG2pLd9TQ/5JAVfmCusTmB2Y9rfgLx6IbVo0abuykBt6FDueiQwZSxeemcuouMfq1QmAM9fTfxEFHM/gjMvlVgowwApSsHlYwBHFdtxcsTJylUT0vYh63OAVA4AzVbfp604FgOI9A4nbnwQOKyXCakJE5QbgCAG9As1Ly0/FLm6KG4qma7jU6dPLscc0O4tvpBmu1xiHnHqPs58c+ge8UuYw+i4BzwI5w5e31K7Wa14UnA9JvwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxfxjL+9tJO1nriAKhZqhuIOHwq50HOSdd+rFy1EngE=;
 b=Fky1RXKT4OA2cHabj+3yMbYV5W4RifM/M7nCPwnLreMzDEUbJie19MtWVCg8C+zJZ9p8RVD5WEeWrzcQuoxebc+yu0DD+0xhcmVeIfASxP2gNvfK1k81KjC16X/CCyVbY0KM2iqpDYWzyeb/RnzSwKCqFSvlFc4bS5dzBjXFRpw=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:45:17 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:45:17 +0000
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
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>
Subject: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4 driver
 for NXP Layerscape SoCs
Thread-Topic: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Index: AQHVn1Tsfp+9ZVhNFU2th1+s/za9wQ==
Date: Wed, 20 Nov 2019 03:45:17 +0000
Message-ID: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4557d7ec-7fce-4afc-4fbd-08d76d6c0ed7
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5657F7029350437B37A9D024844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4mwWzxB45ziGvC1OAdR73Rv9zjOoSiqv9RRg3n/bLQYv8K6F9hvGA6rn9a01PiHaDQ1SKjrcfCW2/FJp5iwF58cpKRBbVJKaSuzabrvVMb2Cctn+0hViv5d1OdUtzr4yOD4aDdC55ybA6gyB2VVxpgFUsXSlR5hnrR2nQf7a08wy2Np7q6CcLJtuOI3CvdM3opYRQRck+Nvabw9QCMaYmZYS7VHQSLVa9A7cfU7QUVn+qB2w/ItDB09WRKErU0CPUyVWs6m7hEnlXE0w/Kdt1uywGWE2y43wHDL2xghl0QhHj9DHGMy971qWi82EWBkjwEW3PsvrSgsrWW+yWlxWAUTCpejPJEec0F+h2Kp0I7SOa/iFGlgW7H1b3vFylFyc+yL1VvmErUUjJ+4BPgTnDfJYWGOYlUBkQdycjCLJfuSRfOu/NrWPdk6BLVoo69iF
Content-ID: <815B273423C1F5439F7E8D28EB382DDA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4557d7ec-7fce-4afc-4fbd-08d76d6c0ed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:45:17.1950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3cDOUGDVrRLXPlx0TE6wYtvXGyTtjQwUM5bNBh6MSTLXn5JZmid+LHIvLXmyIUOnLrsUF9AjAHzSQ+wBHk4JyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_195934_311849_AECD9071 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

This patch set is to recode the Mobiveil driver and add
PCIe support for NXP Layerscape series SoCs integrated
Mobiveil's PCIe Gen4 controller.

Hou Zhiqiang (12):
  PCI: mobiveil: Re-abstract the private structure
  PCI: mobiveil: Move the host initialization into a routine
  PCI: mobiveil: Collect the interrupt related operations into a routine
  PCI: mobiveil: Modularize the Mobiveil PCIe Host Bridge IP driver
  PCI: mobiveil: Add callback function for interrupt initialization
  PCI: mobiveil: Add callback function for link up check
  PCI: mobiveil: Make mobiveil_host_init() can be used to re-init host
  PCI: mobiveil: Add 8-bit and 16-bit CSR register accessors
  dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
  PCI: mobiveil: Add PCIe Gen4 RC driver for NXP Layerscape SoCs
  arm64: dts: lx2160a: Add PCIe controller DT nodes
  arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4

 .../bindings/pci/layerscape-pcie-gen4.txt     |  52 ++
 MAINTAINERS                                   |  10 +-
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 ++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/pci/controller/Kconfig                |  11 +-
 drivers/pci/controller/Makefile               |   2 +-
 drivers/pci/controller/mobiveil/Kconfig       |  34 ++
 drivers/pci/controller/mobiveil/Makefile      |   5 +
 .../mobiveil/pcie-layerscape-gen4.c           | 274 +++++++++
 .../pcie-mobiveil-host.c}                     | 544 ++++--------------
 .../controller/mobiveil/pcie-mobiveil-plat.c  |  60 ++
 .../pci/controller/mobiveil/pcie-mobiveil.c   | 230 ++++++++
 .../pci/controller/mobiveil/pcie-mobiveil.h   | 226 ++++++++
 13 files changed, 1157 insertions(+), 455 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
 create mode 100644 drivers/pci/controller/mobiveil/Kconfig
 create mode 100644 drivers/pci/controller/mobiveil/Makefile
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (54%)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
