Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D7113D427
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NvSXXNUlR741YXmPxgheGZJzu7/SnAbgHFiAFU+f4C0=; b=s/1A3Kytzrc/oJ
	25JNcaHyqbCne8UjxQYSzd9GKWkz0VdqFCLhQPD8cI4PvS1g6NvkrTunN68E3VRqTvMzlLYF1zWMh
	2dGTV8msp/uJHCNApfVNExuz0bc6pZkU9kwghmx5W5JKksCaj5j1waDTTvDJpnMFLLWYKYbe9bMqs
	XPtzsVa/jAEwX6Ch8MAlNLYEAdI9AT4a6pK/NenjuLXdv22hoggR7M03Rns05lTVe5/SgrqJZsS3o
	LZ97cc34quCtBOaWWBgRGBL/DYcSqqCRwDx4A3LxGba6vnCezLZ1d97BtAe9FPjWvqEaBsszetbDq
	S3J3MmtJPDrab+E3x20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iryOI-0002hf-Di; Thu, 16 Jan 2020 06:12:26 +0000
Received: from mail-vi1eur05on2041.outbound.protection.outlook.com
 ([40.107.21.41] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryO7-0002gs-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:12:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcxusYsRAN1PDo/+TuoOXFueOLDQW7jmnC787cramEudJ2qt3HhOdD01eDPorKIudWZYCMXkBMCq2ArAdAiLwyXUkjposdJJ7IACU2cSCWvOQa/FqXWwESrS1MPt9ZtXU9WhtiYSlkHwkz4W159GG4KjDjyTIb2wBk/AH4/9FvesyYppvKVVi4VKcXD0C2kQl/Zr5YRL3hjDTgVO4XMovzVyqfFZfY3yulpTupnJCG3j9FGdYTNJ718rwFlCD/dMwAwAYF64VuCGvygSJn5WCC+RgoOwsRY0hba5QJ/G5V1wIrZ3vTlJoiyowqJ7ha6Yp2tzREr7giRU1WPjHB0c7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZlp0hn5anwYHIFLGRSoB3cLtm5DuSiKODBoQcHQi3k=;
 b=LC7IrrEBNhO2UgUGsH23+o6wheKflkgrWHfNOwqRsosvYeKB+8jUvQDqQFNM+gXW43Xj4Zcuq5B3kjGnZyXdbOAmS22coT8pTA9Skbgyik17hbveBV/3XIxGoM9yf5roQiSxr7On1CpsGW2+RH8Ual6pzbEm8ez1Nu1gexg5LfvHSfZjzpWZ/El9CO1hbimhB2nuK2vap5ClJDe39ZygQcBcMvSe2KYaZWEsN/DUPSK91Nep/pYy0m6IESJYbSfQHz74JzTSlouSo5k/Nwdu3luulp0fHjSoHkhzc/vlVSr9cwaiRbdp1WoH1oDmLVTqaFp4AJi1uC7TbE6kRFyEmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZlp0hn5anwYHIFLGRSoB3cLtm5DuSiKODBoQcHQi3k=;
 b=VBfaiAUgH9czQ7LI+8ZLfdvIguHNTz9h2XD3wsTtePtoV6LB4svO52DDDU3vzeYTuCuD+QzuU0PGdNezzvLK/OuZtNjqKlERQyvZzz/RqTlWjNSfLgoi7Gh7FCXZiQXv7DoYbGR6hafrgNIBGX1DZJJBR8kaaQml1VVdR13CQcU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5108.eurprd04.prod.outlook.com (20.176.214.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 06:12:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 06:12:13 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0117.apcprd03.prod.outlook.com (2603:1096:203:b0::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 06:12:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] dt-bindings: soc: imx: add binding doc for aips bus
Thread-Topic: [PATCH] dt-bindings: soc: imx: add binding doc for aips bus
Thread-Index: AQHVzDPkXhRChugwfUOXOWtxuk1SeA==
Date: Thu, 16 Jan 2020 06:12:12 +0000
Message-ID: <1579154877-13210-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:203:b0::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b13c75f0-d8fc-4049-72a9-08d79a4b0702
x-ms-traffictypediagnostic: AM0PR04MB5108:|AM0PR04MB5108:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB51085722F26664CFB4C9BDEA88360@AM0PR04MB5108.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(396003)(39860400002)(376002)(189003)(199004)(66556008)(8936002)(71200400001)(86362001)(81166006)(2906002)(81156014)(8676002)(36756003)(44832011)(5660300002)(66476007)(186003)(26005)(66946007)(66446008)(478600001)(64756008)(16526019)(69590400006)(316002)(54906003)(6506007)(6486002)(6512007)(2616005)(6666004)(966005)(956004)(110136005)(4326008)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5108;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RhZIswzk02VpnWTg7hvuDaE6xUGNl6wTJAwdM3hntt+pKy43TgKEaUnI/Io4DxZ2q8p2HxSB8V36LEIk0uOS4EUKVmNfakwMVRq3/5y/tNv3/mTI/ZEbg8+2ZlRjHFfk+878asTkIC+RZNHrpgj1Sq7DuGjsEQTszDawfZpyiXNuxvLfVVSD9TvroCbF323tGFv46JxviKFxbFFMTNLOpeH29Qui2EyVE424NL7zQ1gJlJSc1JrkugFSSfk1EC1E2x2SoDvtTjRgf4DPqaGMKOYoPBXkklXsg/+2+Xz7fcfRE7m5aD1PeSZozUnyworx930/jL+ftH9S6PeIoaOWpoXVO3jhU7HV6QcV5kRC8DetlYK8nGZSK8islS+i4NPETRDrMS37JXkYk1qKp6uWROEMEPpovngL/7e0KbRQJNk7M3+Nez0Ms9JPkijdE5+qjZrP2CgJqLbTVSPzGbRMe+pG9mSYaTAF/jyL/K/GDjS1H+DUdpgzqeSsQCKsAkk29XPobyeHthnN2N3zRkoHW45VQTT2CP+QmtaI4VlYSdc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b13c75f0-d8fc-4049-72a9-08d79a4b0702
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 06:12:13.0038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4kTMtZ0p4IKcpsgXWJyntYdMeU3tkCO1COaollfvejAQuJe2h1qKZwtg+UUp/mIzFWYML4PKhCU4VitsC04cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_221216_056023_58A83EBA 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add binding doc for fsl,aips-bus

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 .../devicetree/bindings/soc/imx/fsl,aips-bus.yaml  | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
new file mode 100644
index 000000000000..73ce1b7fc306
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,aips-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX AHB to IP Bridge
+
+maintainers:
+  - Peng Fan <peng.fan@nxp.com>
+
+description: |
+  This particular peripheral is designed as the bridge between
+  AHB bus and peripherals with the lower bandwidth IP Slave (IPS)
+  buses.
+
+properties:
+  compatible:
+    oneOf:
+      - const: fsl,aips-bus
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    bus@30000000 {
+      compatible = "fsl,aips-bus", "simple-bus";
+      reg = <0x30000000 0x400000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+    };
+...
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
