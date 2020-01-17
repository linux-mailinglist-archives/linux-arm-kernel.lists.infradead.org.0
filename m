Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E221403D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 07:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qoRFPb9VYqTwZ2p/i+xiTkQDpWU+p5de3ie3eSLFMA=; b=edXoEHPFYV4XiE
	OpQIhsrN58SFx8y/6uC52NRiOnuJMr8eV/0SHy0jMtA9NWM9WTM+9Eo8t7u/QVm4GcflSWk871pHP
	jmHHzW64b1bIj/kZagHlSLInfpEaG6gKkNaBdpax2Pe90L1YF8OBoU8n0/uSGUpH5m8e9O08dAhVo
	ZuZ2zJkQJvFyRqOl7vbpKfbF6an5MyG36oA0rnOvT5S+CcY7T/oPA3JQzMohX0DPf7AReiXMf9S9J
	nzetEF6feryF9OnOlkOuz6SV8W7aqzTw1dPGbhVAIQj+XwNvoj7q1nQh04TJPfOkCMi4d/C/Qa01l
	mqG4jSK1zrrfd6QmV7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKqB-0004Ip-Je; Fri, 17 Jan 2020 06:10:43 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKpd-0002sc-24
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 06:10:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9YZ7SeaL4IxwnHjXnBo8bomj/DR8BdPrNf25e97mGkfBeFwSDlflCHChjMjdmfjR+bW48Db8DazU49HX1Py9ywhAfpXAzwfVpcyJvrMvXB+Dnc6pVDKCLH3KFYgizxBub27gCUEj9V6P3+myiDoVCqquqDWX0eF9Sb+ls7MIjnasBtITAESJwzKb/bGmHkxnD7XRAAb5faxWUJXprZ1Gk0WaXe0IQnuHdav89RuJ3eZG6p4I2sipT8MN0wrFYXz8KgT6Tuhh4JDL2PSAsv3nH8+47HLCGTkOsIdm/LArAuuKB9zCcp5SmbMd1m42eE82W8AZh+LjA/Jp4bI6tYNRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLRB06ggZXV3N0THnwaLutwxurMVJ4C9ZnZsx13BUJg=;
 b=j5tPiy8nlqVFCVVxuo8tUAnygw5PSmAHnvzSUzVpSm4F8MkY/mInW4450RI//O/LdaP4wOsqzBRPr2RW6y1ldT3ioiSA/8PD0uUGwSYQ+OpqP6BmDKpPmgW1B8h3wzs4oHXnSgZfTy2/T4fvf+5dU3e8MMbmMiA03x8lUpkn6Lus5qTTHepNS8FHHDLr2UFoDmduG4fI/j6kPL6d3FQD1ZJ7gDboL4tIFob5Pch/BocHt1VO5zngAjUk9ep0xP9eO31UOODj+jJKDTdmiKoEZDp4/Vy8UIzOrkBFTJIe8sn8+jaYU3FTtk93Vtsm1OjJR6R/Y1eSE6/Lt4qHQfhlhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLRB06ggZXV3N0THnwaLutwxurMVJ4C9ZnZsx13BUJg=;
 b=iK/BYypu3qe6RXpwYDUfVVRcbMlbBpGSb/U3I+wbroRCtyk4P3fps+Xapaj84Xov5mIj2ZzoPcjVOGaW3xiLtFw4hy0t9nYcJaKcTrm+GybBbAUq13/s0+D/X8k8Na4D2xqqtjzvsnusfPiVwF8jXIKBDJcfg+1YPjcOxRReGlA=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4841.eurprd04.prod.outlook.com (20.176.232.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 06:10:05 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 06:10:05 +0000
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR01CA0102.apcprd01.prod.exchangelabs.com (2603:1096:3:15::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 06:10:01 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "maz@kernel.org" <maz@kernel.org>, "jason@lakedaemon.net"
 <jason@lakedaemon.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "robh@kernel.org"
 <robh@kernel.org>
Subject: [PATCH V6 1/2] dt-bindings/irq: add binding for NXP INTMUX interrupt
 multiplexer
Thread-Topic: [PATCH V6 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Index: AQHVzPzD99CH/S91r02y83rc7QJYcQ==
Date: Fri, 17 Jan 2020 06:10:05 +0000
Message-ID: <20200117060653.27485-2-qiangqing.zhang@nxp.com>
References: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0102.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::28) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5158b9fa-c515-4f2b-5bff-08d79b13e561
x-ms-traffictypediagnostic: DB7PR04MB4841:|DB7PR04MB4841:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB48418F949A6B900C80A61CF5E6310@DB7PR04MB4841.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(199004)(189003)(1076003)(5660300002)(66446008)(6506007)(8676002)(478600001)(81156014)(81166006)(6512007)(966005)(16526019)(186003)(2906002)(36756003)(86362001)(26005)(316002)(110136005)(54906003)(8936002)(6486002)(66946007)(71200400001)(64756008)(4326008)(7416002)(66556008)(66476007)(69590400006)(2616005)(956004)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4841;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MQr5bEwFkc4B7Jjzy8ZfJukHnNfAXjrVwn045KGphG5/THkJG+ietC/RPL5JT2sjzWtbqCJcfsZGoXeDhVE5hbjBmSvEckt/m5p+TqooFk8rIV6qEDTsRfVcqNoJxpQhUScEBqCgPeTI6QFlorzhPsAPfP505OBl91I6Q10AtMx/ZNT/GtyymuKWF4nac7Q3X85x4AtKK9xYMlLmzxi2x6ylwQj5DTmpJZpLdFiRJpQLn58CewhtB/r7GskyYZgRE5DLP8EhQ6v+RXZa3iPnMizp7O6bhN5fFEdGZ3YSkKmnTPCaVvk8t4Qo1yTL4wfTz42d5N5SsERHTSgSki2IZ9N0XeTHCWlkQtt+cH0u5SXF6gmGr83ZxzhzsBk8EK1l5BuD+a49dQwjSav70c8YbOc0vAgS2ziwkzjsaucAdPYt7n5+nZM7k4DWLlGaV9caz5Z0rvjc3Dmj4eSlcXUsCbpxvdSccJjHfakfnOgWZWX1DEoVMacLy+IH1KJAaq/MqRUbpa4Nx07ofORQ3mKmhFFpPm5pYXeoefJBAeIyXFA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5158b9fa-c515-4f2b-5bff-08d79b13e561
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 06:10:05.3380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XijxD+fG8PinChnXsRuaFdWCQEphYiaPvPzIgAQXBBLFb6khj++zP21BwGB0+uH+wNw1F2X2GrB5isWAAu8eDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_221009_111762_3336ECBD 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
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
 Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
for i.MX8 family SoCs.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 .../interrupt-controller/fsl,intmux.yaml      | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
new file mode 100644
index 000000000000..43c6effbb5bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/fsl,intmux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale INTMUX interrupt multiplexer
+
+maintainers:
+  - Joakim Zhang <qiangqing.zhang@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx-intmux
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 8
+    description: |
+      Should contain the parent interrupt lines (up to 8) used to multiplex
+      the input interrupts.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+    description: |
+      The 1st cell is hw interrupt number, the 2nd cell is channel index.
+
+  clocks:
+    description: ipg clock.
+
+  clock-names:
+    const: ipg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@37400000 {
+        compatible = "fsl,imx-intmux";
+        reg = <0x37400000 0x1000>;
+        interrupts = <0 16 4>,
+                     <0 17 4>,
+                     <0 18 4>,
+                     <0 19 4>,
+                     <0 20 4>,
+                     <0 21 4>,
+                     <0 22 4>,
+                     <0 23 4>;
+        interrupt-controller;
+        interrupt-parent = <&gic>;
+        #interrupt-cells = <2>;
+        clocks = <&clk>;
+        clock-names = "ipg";
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
