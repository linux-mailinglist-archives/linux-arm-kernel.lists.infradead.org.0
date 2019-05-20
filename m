Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0B522A40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 05:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H9BNNHXK1NakpzSS2YPOC5RGtPcYY4dEK0t3r31gTC4=; b=H+RDH+Cr6pmrCi
	3GC0u78kMenvWtuNJqAKJPVxq/TkEO6Vaq80jviSnNWpS2T6YNYuY7zKOvIjewt51qErw4fqAFoKg
	d6IsStS2sWQqTqsAbpMUqlGsrB1FkDgBsNLGodK4UFzuBaPSUUVxlvtKLAe7ORFdkKZdhEJjr3YQf
	QXnqlvD2qT1X+0bvUpA8RPXKuGkh7mae9WxfWl+DR9ii2IGRJaUVoMGDIJazLf80tcPN/Bx0+ohPB
	Hxff3jnGO/h4NfGSmpYmd+wUQZGgd0LwxyKzV3cgt+OCezwK/RXNVz+gxXG8RU3GHxkuZIUAbd4jn
	OSqyH38WsqIogGqBh0FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYdS-0001BY-LW; Mon, 20 May 2019 03:06:46 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYdK-0001Af-L2
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 03:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhXOXypipUiDEKr/DnRIQvGKXNk+ZjIhFTsB5iUJHf4=;
 b=Ngkd+/ysnFQQ4530T9IEPS7ZFtfmi35ZG/khLhFg+HxQ1fmaIAs46Hnu4bwRDPpJ+FgULp09V/2B6gHgREcugQVpwY9Zcy4lBKz1vGc8o+RAqTjAHn8W1mGtcw/R6muGUGaGnl/wtgPCEj8EzvVbcQW5e08Qs3rKTtAsfgSz4yI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6611.eurprd04.prod.outlook.com (20.179.255.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 03:06:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 03:06:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Topic: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Index: AQHVDrkIcB6j+hDf/kC51b4HJvSviA==
Date: Mon, 20 May 2019 03:06:35 +0000
Message-ID: <20190520032020.7920-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR03CA0055.apcprd03.prod.outlook.com
 (2603:1096:203:52::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a61d514-2f7a-40b8-bdaa-08d6dcd02acf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6611; 
x-ms-traffictypediagnostic: AM0PR04MB6611:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB661101DD4745AB44AA2DD09988060@AM0PR04MB6611.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(39860400002)(396003)(189003)(199004)(66556008)(66946007)(66476007)(64756008)(5660300002)(99286004)(73956011)(6116002)(3846002)(66446008)(53936002)(6486002)(7416002)(1076003)(71190400001)(6436002)(36756003)(6512007)(6306002)(71200400001)(2201001)(68736007)(86362001)(305945005)(81156014)(81166006)(8936002)(50226002)(25786009)(2906002)(8676002)(478600001)(4326008)(14454004)(7736002)(966005)(2501003)(486006)(316002)(256004)(102836004)(110136005)(14444005)(52116002)(476003)(2616005)(66066001)(186003)(54906003)(386003)(26005)(44832011)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6611;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a5zYB9UrfL6DpFUzobCRwZv+HZZgqA7+PwgsVyJ8lFT47UPTcUOLOxaxQKHBBfUGoVHZOu2JWMnvUdIaPVD4wgbOz7/qB6dfv3FxduCV/xbXRPFVpsPrL7ob2NHwjMICVRGNWsGGx/xmT9jeEiBtEJLGnCR+rSBYBkHKaDk6ASOwmzxVuDBvDhBwpnUhTULhxUakLEgnLgo8/FKZ6QcSyFXRRSL2X/9qJutMY8Kdru36Ngo8bPXYjnzqpRts550n4oV+cLgV3R/+jWD24lagmjPEc+bbDnMeR/Y3fj/hEQxRI1zdEEZelkUDIA7GaATMNKzyVX9n4Kj9a2H9fj55nQOrjfsNz+ktgK57hYtIQ8qZjmnWle707ih3yR4RKgIbUg5SqoO6Ob6bddpar3yMC0AdNE2s225IxXZMkXjSRa0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a61d514-2f7a-40b8-bdaa-08d6dcd02acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 03:06:35.1558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_200638_766356_FD5666AD 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce fusable-node property for i.MX OCOTP driver.
The property will only be used by Firmware(eg. U-Boot) to
runtime disable the nodes.

Take i.MX6ULL for example, there are several parts that only
have limited modules enabled controlled by OCOTP fuse. It is
not flexible to provide several dts for the serval parts, instead
we could provide one device tree and let Firmware to runtime disable
the device tree nodes for those modules that are disable(fused).

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

Currently NXP vendor use U-Boot to set status to disabled for devices
that could not function,
https://source.codeaurora.org/external/imx/uboot-imx/tree/arch/arm/mach-imx/mx6/module_fuse.c?h=imx_v2018.03_4.14.98_2.0.0_ga#n149
But this approach is will not work if kernel dts node path changed.

There are two approaches to resolve:

1. This patch is to add a fusable-node property, and Firmware will parse
   the property and read fuse to decide whether to disable or keeep enable
   the nodes.

2. There is another approach is that add nvmem-cells for all nodes that
   could be disabled(fused). Then in each linux driver to use nvmem
   api to detect fused or not, or in linux driver common code to check
   device functionable or not with nvmem API.


To make it easy to work, we choose [1] here. Please advise whether
it is acceptable, because the property is not used by linux driver in
approach [1]. Or you prefer [2] or please advise if any better solution.

Thanks.

 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
index 7a999a135e56..e9a998588dbd 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
@@ -21,6 +21,8 @@ Required properties:
 
 Optional properties:
 - read-only: disable write access
+- fusable-node: array of phandles with reg base and bit offset, this
+		property is used by Firmware to runtime disable nodes.
 
 Optional Child nodes:
 
@@ -42,4 +44,7 @@ Example:
 		tempmon_temp_grade: temp-grade@20 {
 			reg = <0x20 4>;
 		};
+
+		fusable-node = <&usdhc1 0x10 4
+				&usdhc2 0x10 5>;
 	};
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
