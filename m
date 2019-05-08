Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DB817616
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=06uwmRikRZEkL4jhy4RLQ8DHKVdfi+NZLlRFPAmYuv4=; b=QZGdyWDU+t7OBL
	hVp86HvkAzk29iIcADOiFnV0JaMZ7mQoTMNqUz5OCgdI5X2SuTjj3PVpLod/LDMGidqyF/7qkW8JH
	gMQfpUF8u0uQks9fMWL2sNK93+hVKWMyEipS3RNGijpeDTOk/tDDKMH2y+/qCEBmLE5d8j1EaPz/p
	N/+nis6hYzj8a1yv8KxCYOZ16kbie5JePDeqBTyjjRHdqITHgaE6jCpi1aGVeYe3g2sOx7DttqrmI
	zQ86SpYTG2ALEmukCBN3hAgiTg5CGmXbKrrNOYU9doQ2EawY+z0ZMMEw2Z0Tmxi8G71w3BG7hS621
	PZtQg+Bi4fayaTzdIbUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJvE-0000xW-6Y; Wed, 08 May 2019 10:35:36 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJv6-0000wu-3d
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zuyGBdsvb1ZSS+ut8oGSo82qb7LY29W3sX+054MBzfY=;
 b=ODb/aVkOUgriQE+UD1H5MRcQQ29SijjVXMXGk52Dn+g8Qy8ogatw7Wy3NaTYdQHwcoVudvn5/kMe4j6WZaapf/HeebGI/Rqi4Glli8Ll4/7GDWwrlwakSIxpCmsyqMlUNWqSuo0lWXIzA+odw/3ZKvwHNdpmGARaHblbL1NN/BA=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4962.eurprd04.prod.outlook.com (20.177.41.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 10:35:25 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:35:25 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A HDP-TX PHY.
Thread-Topic: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A
 HDP-TX PHY.
Thread-Index: AQHVBYm/GjgqdY4+pUuRDaU4fFYL0Q==
Date: Wed, 8 May 2019 10:35:25 +0000
Message-ID: <20190508103703.40885-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0037.apcprd03.prod.outlook.com
 (2603:1096:203:2f::25) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 911ccc03-accb-4ffd-c8cf-08d6d3a0e148
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4962; 
x-ms-traffictypediagnostic: AM0PR04MB4962:
x-microsoft-antispam-prvs: <AM0PR04MB49628E074373A37AF7D53BB7E2320@AM0PR04MB4962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(478600001)(14444005)(66946007)(186003)(2616005)(476003)(53936002)(66556008)(99286004)(4326008)(66066001)(73956011)(1076003)(66446008)(36756003)(64756008)(305945005)(316002)(7736002)(54906003)(2501003)(110136005)(52116002)(6506007)(386003)(256004)(2201001)(102836004)(86362001)(66476007)(5660300002)(26005)(6116002)(3846002)(14454004)(2906002)(6512007)(8936002)(71190400001)(71200400001)(486006)(50226002)(6486002)(6436002)(68736007)(25786009)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4962;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XSzdo0y2m/pSCRaGq6hkDofDKsRmTh3kWiliwEWtoXNkCLXhwvI7s0dxEBnSaUbHFWTwprkWDN6OGtWPLUdExcTLzDaArBt7CgR9Kwi1Ksle4+7n91GilnOOyF3Y6HB6SOkKpwXXjkJO/PgiEZdKXveCL1tb5BGOwt6Lc8Oy1MwNE91YTYxgU0bZDCzXSAEI7UyMDo5ESRHT17hYEzxCEOkVfKx9rVHWN5is7iTUA02d/cgtL0E0JdkmfrmEVXjybcoUf/LvFPRF61g0YHm5S9yfNrTQaXUj8wkBE6zfomSaetOQY5xqQSjmwNiBdSUCzc9etYztA/AVf0nnuX0pSn8ZsDurJQRi8ZfqIatWIxpBj4dFHbSF+d6vCBngmD7iekV6KJCL73xhRaDIcvp0saYW+qAA5oe7a1CPRIt39ts=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 911ccc03-accb-4ffd-c8cf-08d6d3a0e148
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:35:25.1443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_033528_146707_08389D3A 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
