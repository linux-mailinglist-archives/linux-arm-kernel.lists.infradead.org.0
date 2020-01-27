Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C52F149E74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 04:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X0Xfq9sWiYYAMLHhBn6xlT6WqFSWOl+DrIyNGRQqVfc=; b=KBi0aC7AkPegcs
	piHt2LfXZz9tTMlgPhYEfz2IjZIy5P7ldnUbFN7ayGuCfkCZfXaKRo4+B5bcxhbTsXo61IDYpqyUm
	Ieil7XdWujNdLDj639mJ8gXoO8STz86hQTz0aQhZa8gk/VKPOJdnkeb31XUPPcm59kdlmjSd+zWGD
	fppit7g/ExKy8n6ThfxK5oy0Jmr4Kh9tHIGZFIvy1tGBvvDzasJvbCm0Hye90/uVmvbjLcT4WywkK
	mKCMk6ZDKIgRZGeedxXpy/j0edCa2OHnzrVJqHgXzjKa85iLgqi+5L+Rt+//N+/xBwqLLepypw4k6
	emUEvtHUQz03RfyIh8yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivvY5-0006N5-B1; Mon, 27 Jan 2020 03:58:53 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivvXu-0006Lr-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 03:58:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iDetR2aBvqvZotziqMPYSgd8tcm+yUFbCGiXgCz1QeX36B821E09akeL6rRIMHlgCnV4GZ+KGDdcCru3RaXK1FITTdmlqxjSyD9bGim5Ip5eLoZq12geSoxn+ylYMrmw8+XtrrFXH17YBySvRm6lw4H02byiCtF7Qtl9tD2kbMH8WtHgWpIYdSZTsIapzRhY3YjAiezxXORu4/iSN3W8e0HJ6IBb99uGgFvjdvT/kmqpDql3upqGtyyZuDT6yRYWcDAB6H1VDR52jIG9jJz3AQS5w7M5ENywjxCGEYpfIA1AHoC8DbOh3/oRNxRekDWcusF05lXqHsbVgbwDnKyCxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6srGNlTOr1MGrDea/RMImTjWkNd4HAnJevtwK8GqS8=;
 b=MO9u5E0uFMVn6C8IfT/P4wABHVMhb+scKz3E+LZgliJdoEO19y3+DDwG57NcmnKi7OCDmTFyt620/T/gXtxP5kmL6zvRB1PpZgvINp1qHulzZ3A2zR9AUhlj/5+JjBmvktEC3lAsbp+z/fNRuOh+0e7YMRjEZsNxSSh35za0F6SeTKt3t4zXpDFqhn99EWExVkk2LAI74M+P7pLpBQIkiDZBhid+IzsDVfInU7EGS8stg1bjhynRklwnID+ZJithNO2brsShbLqBRzP+wWW/8pyOUK1UKAtgmA9IQ3UGubNfB/zJEWJCpt3oRTzy5tCcCembmrAuNEc3XlIdNm8geQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6srGNlTOr1MGrDea/RMImTjWkNd4HAnJevtwK8GqS8=;
 b=DBGWuN0kNZJKHbbv21p5MG3k8jbF7jN+rda/c9P4YrK4olduTG1JDMzkMh+iJFsYBHhIYPNCSPvW8cM6gH+e+ODl94HSuqKNZvUaKEs7JgEOLWA39PlvY12rMbfFirmLFs2oUsIyr4/YUi7cl4vQBiasi0Ga0L/igDFkZIooIsM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4260.eurprd04.prod.outlook.com (52.134.124.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 03:58:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 03:58:37 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0009.apcprd04.prod.outlook.com (2603:1096:202:2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.20 via Frontend
 Transport; Mon, 27 Jan 2020 03:58:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH V2] dt-bindings: soc: imx: add binding doc for aips bus
Thread-Topic: [PATCH V2] dt-bindings: soc: imx: add binding doc for aips bus
Thread-Index: AQHV1MYNqsV5ejfpvUOhCfy0vYYg4g==
Date: Mon, 27 Jan 2020 03:58:37 +0000
Message-ID: <1580097227-4364-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0009.apcprd04.prod.outlook.com
 (2603:1096:202:2::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 40618552-b452-4767-721a-08d7a2dd3010
x-ms-traffictypediagnostic: AM0PR04MB4260:|AM0PR04MB4260:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB42606D66FF2519DEBEDDCA0B880B0@AM0PR04MB4260.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(199004)(189003)(52116002)(8936002)(478600001)(36756003)(8676002)(81156014)(81166006)(4326008)(2616005)(66446008)(6486002)(5660300002)(956004)(16526019)(44832011)(26005)(186003)(66946007)(66556008)(66476007)(64756008)(71200400001)(110136005)(54906003)(6506007)(69590400006)(316002)(86362001)(6512007)(966005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4260;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6UsbYdyYUq4PIAk5i5lRPwaoqIUIk985DpeUXxSTtwKKSB8v2ubZIajtvOVoiet9iTV9neRt29xAUr335Dfr5PEXchlvGbqmZ0JEJ05pEsVOhteu12zeiKx0eapFCZR/YVcg4nEEVPiKKkGN8DZ9mcOosh2vxqd+st1xC9m8Sf7MMBjhxbxhonvMDM6a7NTYSXCwvqVBMNaUQJKe2SH+Fd6za4T38UsgtY5mw7RMbbbzaGYqjw/B0FgJkjlxh0CJBGHCjNZ585UcbQdlfaLHX405uBY3H8Ptyz4f1b4lwR5gP2QwQWkP6AGdmo8WpeGarpt8r70IZBKn95OHr1PvXh6KU/edjxFnA0vjiH6gxMrneXvjQ5n7Ukdom3Xt/eyr7mQnGfU8Pv2fTEPuYEj5a77cFiDFoq+If29MJC822emKZi3FBd1cluX55TE/CCBXCU/4+j29pgfUe8yXj8NDEvVj97UPXWN8aC54j4M6pA/aqwgFvqkM52PwioQpOi305mMy/jiIACTsjCAxtUkb4l/i+L63Pk7SmZKBl1qxx5A=
x-ms-exchange-antispam-messagedata: wvy8GiAx4iK75dMM8w83YfjDgpOdDdoOmI9FxIr5klbDQuGhfJ2BsnxHhL2zZE6vcJnHu6Tmb0MvKwR8xnsiVzxoi0bT3CS9VnYU7T7kDg3NaReuj0c7mu11u+YBsfj0cBcM0OSbYBwX2bkEFkzBJg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40618552-b452-4767-721a-08d7a2dd3010
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 03:58:37.5842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7FmgMrwC24gRON7EBcZWXLhwSMOxmk/GY3z6f/SaFUaXLfgf1TahS5XXLDKc8z0LpssZsyDjcxGS3AncKggvkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_195842_887586_6638B752 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

V2:
 Add 'select' to pass dt_binding_check

 .../devicetree/bindings/soc/imx/fsl,aips-bus.yaml  | 47 ++++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
new file mode 100644
index 000000000000..3cbf2d28a188
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
@@ -0,0 +1,47 @@
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
+select:
+  properties:
+    compatible:
+      contains:
+        const: fsl,aips-bus
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: fsl,aips-bus
+      - const: simple-bus
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
