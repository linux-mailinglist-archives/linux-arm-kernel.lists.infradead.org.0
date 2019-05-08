Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF96171E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 08:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Om9fFg7SF3t6EdHryq6D6qXzk/+qE34OzlG5WdPOSRA=; b=mklWaTabBiKvPH
	vHxp94B69fgrshNI1X167Vc2rBFgt5hdxrSDEVsFLjOvfIamj3+zTkQDSO6v0RSzUXtGjQXx3jJz4
	bODq481AFsCeuj34Mf2hocNKu1H/QEWcXM5x11hn3FxBEkGigP2cBQSrnqpAxCJWTKNOBYZvuB7Xc
	MatzaU5e+uY53e4nUeogbgTjNSf2JJBhKwLCfNW+p+LqJeWPtb5OO/A4rgu3hwnHmOirygnxBPFDo
	/yHIruSHRQQ6cBoZsjb0c5izZSyBhr46TnLpy2yRWRHJMejldu879WHD6PwB0CWp0By0SLcyvpGgV
	bsTbgLKeCe8FHqqLEOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGLq-0007gc-Cy; Wed, 08 May 2019 06:46:50 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGLi-0007fU-Jb
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 06:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+cVPJcI2IgvX2PoXud+kBc5+l8GJkxzTteT26e1rjc8=;
 b=qupj+JSfIz0kDf3jmazSwkzXRYI++Sau6epxDbo+z3S8CNdZR1ZVda7h06e5S84bOqWNTV2/zQjK2uxYWqKBF8aM1+WV1grIC/qHh7Q87YsjUgRFErmpUb0VuNBD5tXSOkERmWXHUu4y0WENwllMwBtEAsihq78PFwVvvTqfgfc=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2900.eurprd04.prod.outlook.com (10.175.40.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Wed, 8 May 2019 06:46:38 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 06:46:38 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v3] arm64: dts: ls1028a: Add USB dt nodes
Thread-Topic: [PATCH v3] arm64: dts: ls1028a: Add USB dt nodes
Thread-Index: AQHVBWnJ2RizrGxsQECLN0zEf7YLpQ==
Date: Wed, 8 May 2019 06:46:37 +0000
Message-ID: <20190508064814.14223-1-ran.wang_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR03CA0059.apcprd03.prod.outlook.com
 (2603:1096:202:17::29) To AM5PR0402MB2865.eurprd04.prod.outlook.com
 (2603:10a6:203:9e::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b45e70ce-f88a-40f9-1c82-08d6d380eb51
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2900; 
x-ms-traffictypediagnostic: AM5PR0402MB2900:
x-microsoft-antispam-prvs: <AM5PR0402MB29005C3E2DBE026C446D6A1DF1320@AM5PR0402MB2900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(346002)(136003)(376002)(189003)(199004)(66066001)(476003)(2906002)(99286004)(256004)(305945005)(71200400001)(71190400001)(81156014)(81166006)(386003)(54906003)(36756003)(26005)(52116002)(14454004)(8676002)(478600001)(25786009)(1076003)(102836004)(4326008)(6506007)(2616005)(7736002)(316002)(73956011)(66446008)(66476007)(66556008)(64756008)(66946007)(6916009)(186003)(86362001)(53936002)(6512007)(6116002)(3846002)(8936002)(486006)(50226002)(5660300002)(6486002)(6436002)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2900;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9WKGI0FGiCGeha4Qf1sgmNz23pOJcJQnhL6MO0g91v63KJ76V9biR3ETitJgtq2fZNsr7QT+zhsHLbpIe5jz5+bWpe7ioeV/MLNDcicsyhpReAkUGV1uoquVT5wrMoCt/eSc0PDpjznqQqH7Fv6j6gvysw3+KYA4dskrVsygtm+skjaX28HneOsV9VwYpDAH+FvUCmVmdjLrBQY9KA0HV+3u/YoKuSAiO9MvZMsrzz+J+qLMwTOzEiUdvqPJttDNgLg3PiMgVh8lK3VaWNX0ChbBOG9cNwW/GAZU8mDAg5kDrODOsg0SUhnA41fW96SKIVh9H539ToDjtRNJUe7n2EIudOd1uxB5F+7NVJ4wzwD4PARcEY0s+Vau4f8mlqSfxUVPXPhksBAqb0pbVOjIwlzyhrurnYz2C0rZovZPOvA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b45e70ce-f88a-40f9-1c82-08d6d380eb51
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 06:46:38.0473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_234642_644127_B73A94F4 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Ran Wang <ran.wang_1@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds USB dt nodes for LS1028A.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
Changes in v3:
  - Add space between label and node name.
  - Add spcae with properties and '='.
  - Add SoC specific compatible.

Changes in v2:
  - Rename node from usb3@... to usb@... to meet DTSpec

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8dd3501..19519df 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -144,6 +144,26 @@
 			clocks = <&sysclk>;
 		};
 
+		usb0: usb@3100000 {
+			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
+			reg = <0x0 0x3100000 0x0 0x10000>;
+			interrupts = <0 80 0x4>;
+			dr_mode = "host";
+			snps,dis_rxdet_inp3_quirk;
+			snps,quirk-frame-length-adjustment = <0x20>;
+			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+		};
+
+		usb1: usb@3110000 {
+			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
+			reg = <0x0 0x3110000 0x0 0x10000>;
+			interrupts = <0 81 0x4>;
+			dr_mode = "host";
+			snps,dis_rxdet_inp3_quirk;
+			snps,quirk-frame-length-adjustment = <0x20>;
+			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+		};
+
 		i2c0: i2c@2000000 {
 			compatible = "fsl,vf610-i2c";
 			#address-cells = <1>;
-- 
1.7.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
