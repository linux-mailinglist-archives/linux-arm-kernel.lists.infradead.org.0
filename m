Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0BE1758C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=06uwmRikRZEkL4jhy4RLQ8DHKVdfi+NZLlRFPAmYuv4=; b=gL/K/C7DMzK7z5
	Ee6tSQxTv4kadgQoqKVkIUQWg6lIm6CQE6RxpuCiGQeSBfx027I/KeIp3/iMGj+4StVbgZZpaeR2l
	MQG5Vjd8SGFjMgUQMaMPurK5Fa7xEoaQxXsuYdeu+bkaIRyjF/Kvc/pL7m0Qv0cAEgSFSE7fXfO2A
	HUqZLOC5LHbO2nrQi8KI3bad5+qDKPcHBfVyiI8rsFi8guXT8DwulKIVeO+XI+tPjSjpfFMluK+xD
	RBSWL4PmiKIufp/bU8alMlSWdu2leWJMIuwvWGpNSCI8W1F/HJDxNNuUUkRb/MD3nb99ETWIsUCPn
	OvhrNUxN4iO2lfEBiCLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJNG-00048Q-G8; Wed, 08 May 2019 10:00:30 +0000
Received: from mail-ve1eur03on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::609]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJN9-0003vl-21
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zuyGBdsvb1ZSS+ut8oGSo82qb7LY29W3sX+054MBzfY=;
 b=kDsPDxEfQwnS8mRzufWBPldwgaHOWafZYgzRxoGk6QLxilVT02C0sxH4xT/tUDVFwugGnNth3Ca6K/t98m2o9r1ViEinXXr47vGv6Y1i/3J6f5Nn10g3SjyEMs9nUiK/runqUbEqdddTHovLiy8C9/zBmqh3Pki7sSxGPd4Sd/I=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6083.eurprd04.prod.outlook.com (20.179.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:00:11 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:11 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A HDP-TX PHY.
Thread-Topic: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A
 HDP-TX PHY.
Thread-Index: AQHVBYTTSfT/ttgrPkqRu69OGY9k8w==
Date: Wed, 8 May 2019 10:00:11 +0000
Message-ID: <20190508100136.7009-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0043.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::31) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92b5c72a-581c-4e5c-eabb-08d6d39bf585
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6083; 
x-ms-traffictypediagnostic: AM0PR04MB6083:
x-microsoft-antispam-prvs: <AM0PR04MB60839490159B6DB4B91717FEE2320@AM0PR04MB6083.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(476003)(14454004)(316002)(2201001)(256004)(86362001)(14444005)(4326008)(478600001)(305945005)(8936002)(25786009)(102836004)(2906002)(66446008)(66476007)(73956011)(66556008)(64756008)(66946007)(6486002)(71200400001)(81156014)(36756003)(81166006)(66066001)(8676002)(71190400001)(53936002)(6506007)(386003)(5660300002)(54906003)(3846002)(99286004)(6116002)(52116002)(486006)(110136005)(6436002)(2616005)(68736007)(7736002)(2501003)(50226002)(1076003)(186003)(26005)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6083;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cVyPtA4MdK222TgXRGlD6wa4U/akQ/4EFhDxVZ6BBEMH+8XuH591YPLyhsLoFAmxxhGLRiQjZHqBBH6Bc4UAimSyGnjBrC3/xTheqg4Xg28M1ZJ4nBhsyx1X+CG2Hv4URKP+5aODZOG5bxaCwnSRSUojtmI5Dz205xDz9eVAXZuyx+0YEixSGraZEjsOPWogUVf+Pu7zou+D0VW6w1tiNMzVCMXseYZxLSNPnzsHliOJ5+ZWG7zcXHEJ4eRFW/W/sDaZDqDRtgQzVDKqGUJQVswNLZBVHn/3F43bT52ocxQadAJi9zkWolsvfU4fGIPV+CerVbUS8dvrjtVtSBBObfQ3BS0Ffjh4UnoshVmQ/MlaXDScYUwideRviR+x8VG/1NSiBY0B5WA71uJ2nXk7iiBtdCEn6Msz/eBlM3G5p4Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b5c72a-581c-4e5c-eabb-08d6d39bf585
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:11.4848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_030023_176922_839F3BCB 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:609 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wen He <wen.he_1@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bindings documentmation for the HDP-TX PHY controller. The describes
which could be found on NXP Layerscape ls1028a platform.

Signed-off-by: Wen He <wen.he_1@nxp.com>
---
 .../devicetree/bindings/display/fsl,hdp.txt   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/fsl,hdp.txt

diff --git a/Documentation/devicetree/bindings/display/fsl,hdp.txt b/Documentation/devicetree/bindings/display/fsl,hdp.txt
new file mode 100644
index 000000000000..36b5687a1261
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/fsl,hdp.txt
@@ -0,0 +1,56 @@
+NXP Layerscpae ls1028a HDP-TX PHY Controller
+============================================
+
+The following bindings describe the Cadence HDP TX PHY on ls1028a that
+offer multi-protocol support of standars such as eDP and Displayport,
+supports for 25-600MHz pixel clock and up to 4k2k at 60MHz resolution.
+The HDP transmitter is a Cadence HDP TX controller IP with a companion
+PHY IP.
+
+Required properties:
+  - compatible:   Should be "fsl,ls1028a-dp" for ls1028a.
+  - reg:          Physical base address and size of the block of registers used
+  by the processor.
+  - interrupts:   HDP hotplug in/out detect interrupt number
+  - clocks:       A list of phandle + clock-specifier pairs, one for each entry
+  in 'clock-names'
+  - clock-names:  A list of clock names. It should contain:
+      - "clk_ipg": inter-Integrated circuit clock
+      - "clk_core": for the Main Display TX controller clock
+      - "clk_pxl": for the pixel clock feeding the output PLL of the processor
+      - "clk_pxl_mux": for the high PerfPLL bypass clock
+      - "clk_pxl_link": for the link rate pixel clock
+      - "clk_apb": for the APB interface clock
+      - "clk_vif": for the Video pixel clock
+
+Required sub-nodes:
+  - port: The HDP connection to an encoder output port. The connection
+    is modelled using the OF graph bindings specified in
+    Documentation/devicetree/bindings/graph.txt
+
+
+Example:
+
+/ {
+        ...
+
+	hdp: display@f200000 {
+                compatible = "fsl,ls1028a-dp";
+		reg = <0x0 0xf1f0000 0x0 0xffff>,
+		    <0x0 0xf200000 0x0 0xfffff>;
+                interrupts = <0 221 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sysclk>, <&hdpclk>, <&dpclk>,
+                         <&dpclk>, <&dpclk>, <&pclk>, <&dpclk>;
+		clock-names = "clk_ipg", "clk_core", "clk_pxl",
+                              "clk_pxl_mux", "clk_pxl_link", "clk_apb",
+                              "clk_vif";
+
+		port {
+			dp1_output: endpoint {
+				remote-endpoint = <&dp0_input>;
+			};
+		};
+        };
+
+        ...
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
