Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A000B15E72
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7HAYfuQNfM6sl029lG3scvDCpYz8oKmQoc/sp7wt9s=; b=rOGovVZiQsyP+X
	Yewl8WZuVWUbyNscNng2IanfIZbJLynm/3U7pm7Pc1jhE0XmZQdefl9cYQ2HpbFmGgtJQp4RdKwnK
	YGr10+TVpruSWWoy4F6hMzADF24W6rZ2a0ApHbd6JE3IBxd9QyNp2GSSb1pe3ZEignTD5steAB2yZ
	IcvK1nw2h4Ur3hIV+yDKkUe5XS0ksprJ2RBY3vSZHRXLwUVZZLomiEmZXXFohNUiqdBZGEkM/sPTf
	M5vPNeDnlNgrfXVLnsoxHLyUN5bH0FlcP826bWNIUQYuFD2tpdMxA3p4v+0xD2PWQtKoa8o50Cll4
	Sqn1J5jPVUIo5F8Wy4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNulS-0003QY-Lf; Tue, 07 May 2019 07:43:50 +0000
Received: from mail-ve1eur01on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::620]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNulL-0003PZ-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:43:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHU13rTKYTz+Va7OyPr6XsWt7s6RMld+hzaCtV3Thq0=;
 b=eZqj5Zu6V48sICxl0wzEeNUCahNAaIuazRLWHmSpbliSmrFc7n2/RYAgPW1pTirMQ7yFQ1l1KxJDm8aFNHdx5XPfE5a8ra5dZOzOW6pMz9fnDTuc33HT1WIX5LGR5xkW1LKlpYxtZJ24xsods2zU19xDYgpP1X3UTWhEWwoLmqQ=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2803.eurprd04.prod.outlook.com (10.175.45.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 07:43:37 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 07:43:37 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: ls1028a: Fix CPU idle fail.
Thread-Topic: [PATCH] arm64: dts: ls1028a: Fix CPU idle fail.
Thread-Index: AQHVBKiUKthuJMWQ50upa4TU1imk1w==
Date: Tue, 7 May 2019 07:43:37 +0000
Message-ID: <20190507074454.41589-1-ran.wang_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0198.apcprd02.prod.outlook.com
 (2603:1096:201:21::34) To AM5PR0402MB2865.eurprd04.prod.outlook.com
 (2603:10a6:203:9e::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f9ccb5e-9e18-4a3e-8072-08d6d2bfb73e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2803; 
x-ms-traffictypediagnostic: AM5PR0402MB2803:
x-microsoft-antispam-prvs: <AM5PR0402MB28035712D3C2E3B5F9C1893FF1310@AM5PR0402MB2803.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(110136005)(14454004)(68736007)(99286004)(36756003)(186003)(478600001)(54906003)(316002)(73956011)(6506007)(52116002)(102836004)(26005)(86362001)(6436002)(386003)(66066001)(6486002)(6116002)(7736002)(6512007)(53936002)(5660300002)(2906002)(1076003)(66446008)(64756008)(66556008)(66476007)(8676002)(66946007)(256004)(305945005)(81166006)(81156014)(2616005)(71200400001)(14444005)(476003)(486006)(50226002)(8936002)(71190400001)(25786009)(4326008)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2803;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IcKh9CFK2nALr2iZ9fUlpTvK/eqERFPuyov83VsVus4pOJzQdmzcd8J6EIuutuZKCtr3xpOVqcHJ4bBEvYd6rxPkIr0uBl1sunGu/MjRVFHuz/1eVglkG43QNAIO+JGfJ21KvHCM0UHnNkyxFy62Tob6Xoz43C1H9MUzw0CJlMFZ/r3ctZGpY6f7Ri01QNJ9fAXbT+KSfJh02O12MUurt2I+biWmYES7L9yAWVuHk/ZdINGnDjgby/CysJDKYBn141OH0CpU4w9rxsjXwSih/cr00VtGorEMvx878tRPLLPp3NvLE39Vs4GFBLcRURntd9Wq5qMJ/khD3SsRB7CBxae5RxuEmSoqJeVSnIbiBLnd6S0CfYl52uArZ39tspeDh+WgCCg3yolBmYCjyugz67hUCa5WTrMWTQ030V0lcSA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9ccb5e-9e18-4a3e-8072-08d6d2bfb73e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 07:43:37.7539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_004343_454110_66EAE73B 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:620 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Ran Wang <ran.wang_1@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PSCI spec define 1st parameter's bit 16 of function CPU_SUSPEND to
indicate CPU State Type: 0 for standby, 1 for power down. In this
case, we want to select standby for CPU idle feature. But current
setting wrongly select power down and cause CPU SUSPEND fail every
time. Need this fix.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index b045812..bf7f845 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -28,7 +28,7 @@
 			enable-method = "psci";
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
-			cpu-idle-states = <&CPU_PH20>;
+			cpu-idle-states = <&CPU_PW20>;
 		};
 
 		cpu1: cpu@1 {
@@ -38,7 +38,7 @@
 			enable-method = "psci";
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
-			cpu-idle-states = <&CPU_PH20>;
+			cpu-idle-states = <&CPU_PW20>;
 		};
 
 		l2: l2-cache {
@@ -53,13 +53,13 @@
 		 */
 		entry-method = "arm,psci";
 
-		CPU_PH20: cpu-ph20 {
-			compatible = "arm,idle-state";
-			idle-state-name = "PH20";
-			arm,psci-suspend-param = <0x00010000>;
-			entry-latency-us = <1000>;
-			exit-latency-us = <1000>;
-			min-residency-us = <3000>;
+		CPU_PW20: cpu-pw20 {
+			  compatible = "arm,idle-state";
+			  idle-state-name = "PW20";
+			  arm,psci-suspend-param = <0x0>;
+			  entry-latency-us = <2000>;
+			  exit-latency-us = <2000>;
+			  min-residency-us = <6000>;
 		};
 	};
 
-- 
1.7.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
