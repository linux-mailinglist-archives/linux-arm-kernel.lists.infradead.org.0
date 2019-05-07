Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DB1157DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7mZyOV7HjbVNDOF1J7vptT6MWUMykGUbh6Vx+pVB2Y=; b=CJ2eQFeGHK+DoQ
	GV0uU/oWcdjsUdcYqBdl1NSBVTqQZdGdlZtnB1My54Qm94nUA4dtwWaCM9afQfiynrQ91SF5n6xTd
	RuVxCNjQQnbpHZ56eHy/ZZXxIDR6QilQXb1ourlY2oJFVWNykAWLbuMzlsmsX4wc1HvnOqArCulKU
	OasVCCWwi/BoL9cL/3GV6UHyXNUVGkeBCotm1hYvAysDDgwrFg4EOy0AA2Qp5VyclQh2+vE/O8Nx5
	x/Hk5I3VKK804Ys8yuqXEPecI651tfbPn5z1iLeQpr5Dks8cW1WdyDdAgqZoVPEfprropta0qM7EU
	61RVEYlNFf2zpcjmxmvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNqNf-0005Ta-9a; Tue, 07 May 2019 03:02:59 +0000
Received: from mail-eopbgr10082.outbound.protection.outlook.com ([40.107.1.82]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNqNW-0005SV-Ny
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=saxqos/nQDJQsNSHnss4DxFfxmLYJwOdkuVt9kRLtKI=;
 b=RBTacOCkkDIBwkZMccViSTq8vS2sSBUDdxM+JhI2X2j7Gg0xyNNDt3+LoNbyiKlQKDmCW/BTprFm25RO4/t3cFhj7HNwlrmpw4ZpdOu6eCJx8ahi73ZBy7F1VmZonb1fkyJDya+oLl1C9XYMxXCX6mbnVWvSVU35B9H7NfL16i0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3754.eurprd04.prod.outlook.com (52.134.67.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 03:02:45 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 03:02:45 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: dts: imx6ul: add clock-frequency to CPU node
Thread-Topic: [PATCH] ARM: dts: imx6ul: add clock-frequency to CPU node
Thread-Index: AQHVBIFYqIWZIuwvrU2KnaxGQFBgOQ==
Date: Tue, 7 May 2019 03:02:45 +0000
Message-ID: <1557197868-6963-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0040.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::28) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c20c8842-c5ee-4aef-245e-08d6d2987a77
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3754; 
x-ms-traffictypediagnostic: DB3PR0402MB3754:
x-microsoft-antispam-prvs: <DB3PR0402MB3754CDDA57C6E4FC697AB798F5310@DB3PR0402MB3754.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(346002)(366004)(39860400002)(199004)(189003)(2906002)(102836004)(478600001)(386003)(6506007)(99286004)(5660300002)(66066001)(486006)(2501003)(305945005)(86362001)(52116002)(2201001)(3846002)(6116002)(4744005)(68736007)(14454004)(6436002)(8936002)(53936002)(7736002)(25786009)(6486002)(66476007)(73956011)(66946007)(66556008)(64756008)(66446008)(4326008)(186003)(316002)(50226002)(256004)(26005)(36756003)(476003)(2616005)(6512007)(14444005)(71190400001)(110136005)(71200400001)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3754;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q58S0t6lLK8acWWH0KWoR8NWY3ZFrWOpZKRsULrvWK+FYCgV0eegaR5cm5tAGS+5lWfW1Qt5YjAKeg9Pc5FFVTp1pWA3P2+4S2Qd7iG68Z5uyF4jQGMiwxTZUo2vOHMJElBg6vI6vSB2EyjbKqs/Sgj6VihFibdyZ9l0d6sNwG5keAlhyDI0D6nf6je7jlu840bc44qSFmmtHN8zvf1eISruR6jFDj75BMGuC0mzKCA1olmPug4FSVhlWSbX6qvhh5WWA23fe4jzZMLDaLMMvcCh/mDWrtMObbc4c9p4iqye8jYJ9T+QNPGJp/hmFvOvslLJ3uatlG3+c27/Rs4IOUUfLMyfsved7tbXBCpfThEFKfBgTMad9o3hN7ahSAaQChHkJWzzJlhcovcNF9CFLtM2FmGlIw/n1z3rotqeagQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20c8842-c5ee-4aef-245e-08d6d2987a77
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 03:02:45.6328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_200250_858551_08CBD445 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.82 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock-frequency property to CPU node. Avoids warnings like
"/cpus/cpu@0 missing clock-frequency property" for "arm,cortex-a7".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6ul.dtsi  | 1 +
 arch/arm/boot/dts/imx6ull.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index bbf010c..fc388b8 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -59,6 +59,7 @@
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			reg = <0>;
+			clock-frequency = <696000000>;
 			clock-latency = <61036>; /* two CLK32 periods */
 			#cooling-cells = <2>;
 			operating-points = <
diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
index 22e4a30..727b92f 100644
--- a/arch/arm/boot/dts/imx6ull.dtsi
+++ b/arch/arm/boot/dts/imx6ull.dtsi
@@ -12,6 +12,7 @@
 /delete-node/ &crypto;
 
 &cpu0 {
+	clock-frequency = <900000000>;
 	operating-points = <
 		/* kHz	uV */
 		900000	1275000
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
