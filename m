Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E428B64E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nm0d1dwqXC2Xqn9wjM8+2Dl0sITCMRlkAhlrKwoh3I4=; b=pd05OeHuN1RXL3
	GyYEJlpFGPBjtUXp6hUL/L9kP94/UeqVB2Cg4pDiUjLuYLS9ykepFMP/PIz1ueEwCM1OIpHacxHjG
	Ui8Rxkzex2f+0rLZg24IpJBu8T91qmwMplEyL7ZzQpYBYk0hyAQ2cquInVDjW0IZn0DJtxUcsriXN
	XmJbN3ddqC9tjKPE1XjHMV5vXze5rgMCEBgq62XtjLjqaLgo7YOuHU+8U/xxcgoPov7CrpxhqJWnC
	sOEftChNFOLgDLkqOcgE1PChQRKa8RRlt3m9/ytHDE8v0/w53GfnB2R3CnbSmZnu1DxrVUwDXhkMT
	yJ2RobZxQsvInJTbkaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUcu-0008Gw-NT; Tue, 13 Aug 2019 11:06:04 +0000
Received: from mail-eopbgr40051.outbound.protection.outlook.com ([40.107.4.51]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUbF-0005rM-AM
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:04:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMYi0m4+CtbtFUf1lUrcBGVF1wlq3h5C771o9XlDA2syatyshUs9WXJR42+cIp/+oEjsCzh4fisyfw86ul63nD4cDg9eG2p2k8nC7aAWMz9b/O8kWvocHFT0DPt4P5SLcLhVnLafqGD4kJ4orJCIOilvhECEAgQxRo/SLvvxHSt8PvbqzjM5lIaF+5xJATWgGrxa8zniG4WxfmtrCDW/Cli8cagfyxIltWDLone36/w6F2lMQbCufiZJO6+1WkN5GLZENhRnk/7E+6GEkTMX8ZCYGOCwEVpbB1feW5fB4TRncuJZERb+h2QMcuLfTCvO15FXLamoIY0HCnHXn0zQkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jol1E7KOqzc/U5cuxjEFszwb1aOPgrqFc1ajgyjjImw=;
 b=VhsrB+103GbFMnBZ6+X4FY7uqBC3aXFQYvUHvKbSFe6XGZ5qFiA81cFCALE0Smg0WpQOYeYKsHW3/yP8XDRS/fxnrlM8SflLkRGhGJCKrBuZqfXsh+TGe+ScOymcQD7JfHjxnXRbvagZHlIe2iD/s+tN2/I9gIMcnAsAPUTQC2QB4jWfoBx2lFL1Tnq8vlwMzypVtxm9hXYYi82tfOwDY6KqMlB+vY9FKCLNOjZElhBr84CfqKZNw6t9vvF5sHf/Ixie8/WE6hriq7jxBy0wmsDAA3vKSbRz4eqZqFnyx7OXjkRzcgin9VE1KUlKlie7bB6AXGL/LeRxpcKrjB/P4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jol1E7KOqzc/U5cuxjEFszwb1aOPgrqFc1ajgyjjImw=;
 b=ETYpYBcAs0a7GwjR7lu+cclNPQCTuEcMaukM9d4MfHBs7UEqHAIjnlcOXK3zRbRMJvmYfEM56tSB6kOmLhrvSTzKQhe2wxJ0pUeAM2ot6CAKByflZwc3jSqL8OtSQm9WWoWSYgvPElS41BDjPgpkRw9VNHtToOEOI6DAZuizEqE=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7035.eurprd04.prod.outlook.com (52.135.61.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 13 Aug 2019 11:04:19 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb%3]) with mapi id 15.20.2157.015; Tue, 13 Aug 2019
 11:04:19 +0000
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
Subject: [PATCHv8 4/7] PCI: mobiveil: Add 8-bit and 16-bit CSR register
 accessors
Thread-Topic: [PATCHv8 4/7] PCI: mobiveil: Add 8-bit and 16-bit CSR register
 accessors
Thread-Index: AQHVUcbapMTELi7mmkCtO+KxOqPukQ==
Date: Tue, 13 Aug 2019 11:04:18 +0000
Message-ID: <20190813110557.45643-5-Zhiqiang.Hou@nxp.com>
References: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: c604e4b9-de21-48a6-0f38-08d71fddfce0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7035; 
x-ms-traffictypediagnostic: DB8PR04MB7035:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB7035E8970A3CD8B4E52BAC8E84D20@DB8PR04MB7035.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(189003)(199004)(256004)(66066001)(50226002)(316002)(4326008)(66556008)(66946007)(1076003)(186003)(64756008)(66476007)(386003)(71190400001)(6486002)(6506007)(26005)(7736002)(71200400001)(110136005)(486006)(305945005)(2501003)(53936002)(54906003)(52116002)(81166006)(6116002)(7416002)(3846002)(25786009)(478600001)(102836004)(36756003)(66446008)(76176011)(5660300002)(14454004)(6512007)(81156014)(446003)(99286004)(11346002)(8936002)(86362001)(2906002)(6436002)(2616005)(2201001)(8676002)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7035;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V/hy++24RXOgj3RwY7nuafUQ8k/sN5LvAviD/7/DNnw9lfat8r7wm8ob1UnjKFri1272J5g2xy44i942SbUDbjw14gnaPC5cTcAkxKdILbKSySTbQGiks4l7oT6nweCjxKEtjlX5CzaDarewH5miHcHFf9DJ0Vb/Kh8xGgoT9hYZz6o9LUBWq0Cp82Wt6ebT9Nagdyz1EtD3YmorIhiSxrOk7ugyBbG5qPcTTllRb3fatu6l1paSvo0V4HNDPF/x7zUgdgFJ1F4pJLHJu+68A8yT4Yyr8jdfwbfA4yBUDOVAqwfGJznYxP2JiJSQABpbt5kpRZdHbvJ89VS+UUaRQlRGen5iFrHGVY0GwchO6ZjvyfvtycCR02ejxPwpcCp6tDJ+9nQHj3QxsY4x4Y9I5n0Gx4b8WgHkQlCKBFHFq20=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c604e4b9-de21-48a6-0f38-08d71fddfce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 11:04:18.9229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3eLMKT0/3RQspOpfy3/w+l1WO5c15RLrGD2bJszINt1mngNOvDEAJ0CF8I/UWLNGrmGG47jvcrSaMM+YHR39FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040421_493601_CC2CE903 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.51 listed in list.dnswl.org]
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

There are some 8-bit and 16-bit registers in PCIe configuration
space, so add these accessors accordingly.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V8:
 - No change.

 .../pci/controller/mobiveil/pcie-mobiveil.h   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index 4f17a9837fe9..8c07f69e0330 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -182,9 +182,29 @@ static inline u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
 	return csr_read(pcie, off, 0x4);
 }
 
+static inline u32 csr_readw(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x2);
+}
+
+static inline u32 csr_readb(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x1);
+}
+
 static inline void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
 {
 	csr_write(pcie, val, off, 0x4);
 }
 
+static inline void csr_writew(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x2);
+}
+
+static inline void csr_writeb(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x1);
+}
+
 #endif /* _PCIE_MOBIVEIL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
