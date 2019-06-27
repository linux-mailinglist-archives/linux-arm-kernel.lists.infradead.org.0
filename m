Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4BB57E04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8J64oYz2aXXryTkkND/Ed8m2DqNVnXWTUD8kaFY8CU=; b=bkNzUoRfZPXTEd
	o4/Zj9NTszZGL1caAgXBkwJLJoUx6PO83pEuYgdnGxMHRi4RJttIg5geliCMMP443vYka1kJQBSpt
	r2xMgdKKVxCs3/3BA7AHznJJwJVAAG1rZ0nxiVyoO9CF/ruEoTBbcjZEuiR3HPABiRQXJCTwBqfTB
	wut2xtYoF7sAkgw6NHlVvdVlIAUfNw+1AT6Sa0DuiBahFwz6vD4xhewEFtRfZIvizHvBW7bPzbq+S
	hPlCDqhIbNlvg7hI8Cj45p7V5X8i6b1qfqU8zuuAcEgU0yySxa6mrJrNcymD+w3sr2J0onTnjUVe2
	9XzGZtyzPBYeR5Munhww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPXO-0004kM-1M; Thu, 27 Jun 2019 08:13:46 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPW7-0003xj-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsdPYxCU7srWVhLq1BGY9FbUyssnUN5o9xuGkke+PCw=;
 b=pZt1dlzCRiWkRS30GslqPfucc/vO1TQMsZjPHxyE6Kswkx0Ob8U7TDi8HSedaa20ElFjTq9vZvBir/CIfn9gZMQSErsiyNBMjrhcippdn7kWU+oEiBXiwXdHaEqK/o+vLbTEFaxHMfldr5iLM0eMBRJtU4p9Ay3HbBNCcvuYkVs=
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com (20.177.35.159) by
 AM6PR04MB4453.eurprd04.prod.outlook.com (20.176.242.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 08:12:21 +0000
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a]) by AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 08:12:21 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: [PATCH v2 2/2] dt-bindings: dsp: fsl: Add DSP IPC binding support
Thread-Topic: [PATCH v2 2/2] dt-bindings: dsp: fsl: Add DSP IPC binding support
Thread-Index: AQHVLMALhzY9Df127E6IyTklCWRQSg==
Date: Thu, 27 Jun 2019 08:12:20 +0000
Message-ID: <20190627081205.22065-3-daniel.baluta@nxp.com>
References: <20190627081205.22065-1-daniel.baluta@nxp.com>
In-Reply-To: <20190627081205.22065-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To AM6PR04MB5207.eurprd04.prod.outlook.com
 (2603:10a6:20b:e::31)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef5f7e60-15ff-412d-ed94-08d6fad72d5e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4453; 
x-ms-traffictypediagnostic: AM6PR04MB4453:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM6PR04MB445331A82319DC284FEC1699F9FD0@AM6PR04MB4453.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(966005)(2501003)(81156014)(25786009)(68736007)(256004)(186003)(14454004)(26005)(66066001)(476003)(99286004)(50226002)(6506007)(4326008)(8936002)(8676002)(81166006)(386003)(44832011)(102836004)(52116002)(305945005)(486006)(76176011)(446003)(3846002)(71190400001)(54906003)(53376002)(6306002)(71200400001)(7736002)(11346002)(6436002)(2616005)(478600001)(86362001)(316002)(53936002)(36756003)(5660300002)(1076003)(110136005)(66556008)(66476007)(64756008)(66946007)(73956011)(6486002)(2906002)(6116002)(66446008)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4453;
 H:AM6PR04MB5207.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3tbO6/wDWf0lvpKRVEuDkUAi13vGSihk6hvcbmDCRVpgO+RUMuRfZvUK6JNAAqVgAa7x6j6NA+xjZRL7127JPnlNSpiE2mhUA/swZuSnQWZWf8FaEVNSygITVlS/CLALcuHeoj40eDln4LprBRUWI1vpXgQA+iUeh2ik4oH0K/oPQTUidpSvbldCV3wgnVNkDd2deQ+w9+EalEI8apw99MDdlhll4MQZo9+6SPma/7FFLJIPst+yQiMLyNBckHzSzD4PFBU54/xE2OxSBgt2C5RaKLQhr/zlQDhIkXUqdZovn2DFwBd/YLhcEKZymarfqL7u9UOG8xYwBs/oNRIZ2I116hrZGviO6/s62NlmbXXfM/Z/2g5D8vPsWF+MvdR5RyvuDiDi5riu/Gq+wM9isTAWjLx7TwaVnvK6i1/O2/o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef5f7e60-15ff-412d-ed94-08d6fad72d5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 08:12:21.0739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011227_987878_ACD31B73 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DSP IPC is the layer that allows the Host CPU to communicate
with DSP firmware.
DSP is part of some i.MX8 boards (e.g i.MX8QM, i.MX8QXP)

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 .../devicetree/bindings/dsp/fsl,dsp_ipc.yaml  | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp_ipc.yaml

diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp_ipc.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp_ipc.yaml
new file mode 100644
index 000000000000..1cbf5d25b258
--- /dev/null
+++ b/Documentation/devicetree/bindings/dsp/fsl,dsp_ipc.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8 IPC DSP interface
+
+maintainers:
+  - Daniel Baluta <daniel.baluta@nxp.com>
+
+description: |
+  IPC communication layer between Host CPU and DSP on NXP i.MX8 platforms
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8qxp-dsp
+
+  mboxes:
+    description:
+      List of <&phandle type channel> - 2 channels for TXDB, 2 channels for RXDB
+      (see mailbox/fsl,mu.txt)
+    maxItems: 4
+
+  mbox-names:
+    items:
+      - const: txdb0
+      - const: txdb1
+      - const: rxdb0
+      - const: rxdb1
+
+required:
+  - compatible
+  - mboxes
+  - mbox-names
+
+examples:
+  - |
+    dsp_ipc {
+      compatbile = "fsl,imx8qxp-dsp";
+      mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
+      mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;
+    };
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
