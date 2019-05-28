Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFD22BFB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lf/hRev4U3Kt5jrBBBMLoFGcmQv8rHn+bXdAQkUO8H4=; b=Sexsv4Gcts/6Ib
	P2NbU/R7Fq6m7Z6tktvPpecL0K7VCWexiXoUfy0PMbktCRcejDD3uO+yO+gbVCME0xrpxqUGP55Ze
	0kXps9RjL/oqko2/2Vs9UjVRCfI5V12hwtXiaP7ZkT1szhOVs9qTDeWGdNHmgIQroGug4btkR+czh
	1Rr/cploff5zkIlrClGW1NlF+LZyXbm9p+B3JGXBd+1imzbBZKc9PiBLDUCKkf/gQDrNJrtuXnXD1
	ZX4bUPlslK0/JjzBVE+lJyWat4Pa3HArvlFjvle+rtcFQZZ35RxYqoBAPCYC8GB8nqqFPVxyKMziU
	FU2FiBPZ6zOEY3zR3yvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVxj-0004wu-VM; Tue, 28 May 2019 06:51:55 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVx7-0004bV-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XS5icHrVv/qGYgpDLm4H+9mtPX0kSqaAKfEM+M5Ym0c=;
 b=qjkM5jMxCoB1PO07w/gkZV/rYqbPgtwp+TmsFiOHy9Nh2clIOxfAZTTnIUhnYQIBneX1VUeyEDtjADW3Ysqi5/kyM7jwu15/S8em+RBvH86bKDcaNssu7Of76AH4R5L/MsZNauPQ6wcXyMKo2AUKRl2fsDvwYjVxQAR1iV6nq/Q=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB5495.eurprd04.prod.outlook.com (20.178.93.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 06:50:39 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:50:39 +0000
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
Subject: [PATCHv6 6/6] arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Topic: [PATCHv6 6/6] arm64: defconfig: Enable
 CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Index: AQHVFSGp2QR6dzWWkESm0e713eBNIw==
Date: Tue, 28 May 2019 06:50:39 +0000
Message-ID: <20190528065129.8769-7-Zhiqiang.Hou@nxp.com>
References: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: e829d709-5a04-4b82-0206-08d6e338cb78
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB5495; 
x-ms-traffictypediagnostic: AM6PR04MB5495:
x-microsoft-antispam-prvs: <AM6PR04MB549532C638A2BF77B395A454841E0@AM6PR04MB5495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(6486002)(86362001)(6116002)(6436002)(66066001)(6512007)(2201001)(386003)(2906002)(53936002)(25786009)(3846002)(7416002)(4326008)(71200400001)(71190400001)(66476007)(54906003)(11346002)(81156014)(73956011)(64756008)(66556008)(50226002)(8676002)(316002)(5660300002)(81166006)(8936002)(110136005)(305945005)(76176011)(102836004)(52116002)(186003)(26005)(36756003)(68736007)(6506007)(7736002)(256004)(446003)(478600001)(486006)(1076003)(99286004)(66946007)(4744005)(66446008)(2616005)(476003)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5495;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XYWZvjG8dHgiNqZXqyzB4S+TVSC3jAHBRixq4Dgd1wyofo2aXwZUZzEK5BriKyVYAAfW9YwwtAukMdvStnfhm/VbYTb8XJwV1DGhgiTZieBnGD9Z2hJQWF4qssFiTo8ESC/dTZMXj4+YT/fX5L4H035ANxbYaPJt0UPtFLJFO3WkaJ15+iIJc5ekSpjBF25EM26j02M5BtxEeN6EVhbFmw8Oq1BfOcV98RxwwmriVo/pNiCQkRoCp5rw82x1wYUnKEk6ZDiXEqD0auqeOjDBnL24x6zaIutaTLLN9ZnGSavZuFb6BRXHCRngNI/BqmRdpDJcHMo8mnA4XSG6y10qmNcNoHKbQWc+c0VD+dvOSd1c7NQkFN/qOGUpbj4hncbXWpJy+aDuE3zAVj+saQq3F3+EF7CLW3NLR6FAnWAAFzU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e829d709-5a04-4b82-0206-08d6e338cb78
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:50:39.6354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235117_595673_DE41ED75 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
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

Enable the PCIe Gen4 controller driver for Layerscape SoCs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V6:
 - Change the macro name to CONFIG_PCIE_LAYERSCAPE_GEN4.

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e1a84db2bd7b..6821452a15f9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -191,6 +191,7 @@ CONFIG_PCI_HOST_THUNDER_PEM=y
 CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
