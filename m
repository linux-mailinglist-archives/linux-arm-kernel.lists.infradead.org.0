Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38148B638
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s6nZIfR/K/vXaOaDa7O5HB5YflssQOYJcF2Kj0l9MxA=; b=qpgGeDWkW8ChLz
	OJEeeeUSIlBpBoaQUidUNbhmd3AlGN5Nb9IYhbo9N7ljsfcDELzZ806DHmolzXQ3bSFSJ01rwToe0
	z/oUo9PV8fnrkaNkyhlZSo/WJVogGY6O/nakuJ+tX4zK2Iu6WKgcpD5cYA9pkexfvPss/Ocxr1Ri3
	rCSLfVQ0yUxj4AllWr5P8QSASzx5NPW0DrfVjN19/Z4wMzY+liTcrUHQ2sW6++ZbrqqSF9bBMPAlV
	IR82PyDfTwlSVVmPj18fC7Vrmft2zBNCZCy4yUla8AMDtsreVMW/5cEpXgY0ckgZKPvaQXlV410Pd
	ZmWpkGkiHg5IyU60xuvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUbI-0005fO-Ow; Tue, 13 Aug 2019 11:04:24 +0000
Received: from mail-eopbgr40047.outbound.protection.outlook.com ([40.107.4.47]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUap-0005Sy-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:03:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NiHZT9Havqbz6zSgAH4GYj4Dl1oALb0Bix95sQk9+ZDuQohFFrXMfEalRnCS0bgmFJybLSgW5Mnpg8sI7MrQMdwaSt5Lnz0V9ZBxbIt0VkYSCpJjBI2/nzLQhOuZrAsDw5I+sdXWgS/h4uRVJnKsh61+edokuXRwRTLh3PZlA7Xmrxv4/R84XGsXoO+UG7dhcErrEldRvX7RNrVRkUmjBqmGsBGjYSC8VQ8cyMPgo8JixCCZyfAjmi54+ATsCHSwvFlFKb3DuDL4vNvhsnlUzHhk16njEIXf1mutAfEaHQou3qsiJt8qStKcRoPTecP0Xv7gNi615AQQAcFCXUJtaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IGhzlyqr6MtqehMhjE1QfN0NB3hi1B4TkoBBqTFyADU=;
 b=mkCUOC4OhiiSyO5jSatlSstwZZYaYnSysVLPDbHmmlGMcHZXJNZwt5aSwgcBsu8LBpl3y1E9RX3o8Ryh3xsFMYQJVxgS03XQ0W6DmxJ5lCEzHlJ2uAW8jGMPeZcYaGIkBguAEbjrxl2WTVyOWCFjKDkbPYz9h0/29dfIQvEbmoKPFYD9Z7zDc3rxeySmgUdnUixjfvj1GLXTogtgATBC/uUFiRIXrfdQeT8bwvVNOwSSJ6scTU/hJ7tiZrjlD5Snj8ngtRavOg3fC6odbtUta5mfa/WdLjkD3gUB4QQSlnbUn34mOCqQodMbuKaBI9DZleTAU8wSKshCpPc49kiFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IGhzlyqr6MtqehMhjE1QfN0NB3hi1B4TkoBBqTFyADU=;
 b=q1RMRmhh7ZzZ462r1PJnqxCtU5/mp+yuf6/atYNTQzh+usARyfJvparOkGzKxHwa1WyD0PXVMxB4n948tbHMv4yKJr58wQjSIMsMB7EtmFFp+0JsII430o6QAPS+HI2E6i/xLXVMalZ6PKgAqzBHIX1hqsD06BFPlrrF+/EjcFk=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7035.eurprd04.prod.outlook.com (52.135.61.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 13 Aug 2019 11:03:50 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb%3]) with mapi id 15.20.2157.015; Tue, 13 Aug 2019
 11:03:50 +0000
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
Subject: [PATCHv8 0/7] PCI: refactor Mobiveil driver and add PCIe Gen4 driver
 for NXP Layerscape SoCs
Thread-Topic: [PATCHv8 0/7] PCI: refactor Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Index: AQHVUcbJ5capTJ/u1EuWlo1+5KWo6Q==
Date: Tue, 13 Aug 2019 11:03:50 +0000
Message-ID: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: 5be5874f-95b4-4438-a5ec-08d71fddebec
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7035; 
x-ms-traffictypediagnostic: DB8PR04MB7035:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB70352E2CF50437F70DF9584784D20@DB8PR04MB7035.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(189003)(199004)(14454004)(36756003)(66446008)(5660300002)(81156014)(966005)(6512007)(6306002)(3846002)(7416002)(25786009)(6116002)(81166006)(102836004)(478600001)(6436002)(2201001)(2616005)(476003)(8676002)(8936002)(99286004)(2906002)(86362001)(66946007)(66556008)(186003)(64756008)(1076003)(66066001)(50226002)(256004)(4326008)(316002)(53936002)(486006)(2501003)(305945005)(52116002)(54906003)(26005)(6486002)(71190400001)(386003)(6506007)(110136005)(66476007)(7736002)(71200400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7035;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y8Igjs1xLxL/1RnX0P1XWm9myP37uuP9/INYux6n30H+aD7eFNl1Jt9aDZZIZLV0a0BlB9wBHtM6bJ1Gh9/JqROqsTog2df0GZH0bapRJjZYO+akCGHVrbccJty/GStyzhtSUGgDw/FZFDrw/bZPf7j6NZGy2+ZNW2vLiz/uW2WlKGD8eZNonVCFg+CJQogYKMT0SOoP/CeISyWDYlDBKl1Pcw02YYZpdXELxZEY9jQB6JtnVmwrr/BukLls14ATMDAzV4orQNuNDc6IGns1ReIGww/+Pzw6OLLJlXsyAhSxUxLGfNjUCsAwLO1KdjqQxlMweV3QJ8FOqjIQKVFL/9wiZHNd65MZuaR6ci6Xsn3dQHop9qux10kcqli3UHavX6wBuvCUIUTJ3MfuQmeiI0Yw3qeUq8fHzB6Vv0QulAQ=
Content-ID: <FE2EEE528A575247960F28F6A8D1026A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5be5874f-95b4-4438-a5ec-08d71fddebec
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 11:03:50.4361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cyvllMcwW08KqYheiCkxn1MCWEnmR9RItGo5HSx8Yk8nftZYAYrnufE9tXf00RcCjgHWgdfTPnOt/N8TvwiYEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040355_274150_49CF479E 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
http://patchwork.ozlabs.org/patch/1131624/

Hou Zhiqiang (7):
  PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge IP driver
  PCI: mobiveil: Make mobiveil_host_init() can be used to re-init host
  dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
  PCI: mobiveil: Add 8-bit and 16-bit CSR register accessors
  PCI: mobiveil: Add PCIe Gen4 RC driver for NXP Layerscape SoCs
  arm64: dts: lx2160a: Add PCIe controller DT nodes
  arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4

 MAINTAINERS                                   |  10 +-
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 +++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/pci/controller/Kconfig                |  11 +-
 drivers/pci/controller/Makefile               |   2 +-
 drivers/pci/controller/mobiveil/Kconfig       |  34 ++
 drivers/pci/controller/mobiveil/Makefile      |   5 +
 .../mobiveil/pcie-layerscape-gen4.c           | 274 +++++++++
 .../pcie-mobiveil-host.c}                     | 566 ++++--------------
 .../controller/mobiveil/pcie-mobiveil-plat.c  |  59 ++
 .../pci/controller/mobiveil/pcie-mobiveil.c   | 227 +++++++
 .../pci/controller/mobiveil/pcie-mobiveil.h   | 222 +++++++
 12 files changed, 1103 insertions(+), 471 deletions(-)
 create mode 100644 drivers/pci/controller/mobiveil/Kconfig
 create mode 100644 drivers/pci/controller/mobiveil/Makefile
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (52%)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
