Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4012141D3C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 11:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2rvoCMC5lj4p9QcGbQwBo7wpCA7aw6+H/tNU6mr8y1c=; b=D9xeU51JcM+fsP
	7yrFJVNbG74eKuv7Ersh6a9HBtU0Vh5xNhzo843Ii6cQOPV9prUFnArVLc7PTloG7ehR6V4S3aeYv
	hj8mcPwJI3g4VBYuazsUHNnR0cebYAKmxgXUqpj7h/NRUR5KEmRLIgzk2kUHTnJlYUamaCxP9jC3i
	7YADF1KL1G+3yBEd0yzuI5IiLaKs4VrdhTjF78GBYbwu01Qc4nCni1eRcYhovr6I3xyM2bVcoc4HZ
	j1++Q5r9QspX+s00pfDzi6HwlDJJRfI/DJU/7yZ82CdhzFsv9Fb1JKQ9G7T5xWwBSjmRE1gjRd0S8
	Hn6u1kpiQFCiTj2aMRXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it7Wj-0003r7-W7; Sun, 19 Jan 2020 10:09:53 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it7WY-0003qV-GH
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 10:09:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzdG63imz2bXdjGnXZV2ftk8HAlOvuylDtCQzt7xvYQd110oXl9pRRD6rVe+rb+I/MODM8JajhuDERs2WXA7iMZnv/GFjIWJ+25X5LB13c5O58GLzKo9m40p4xc5SXV3OUYBdMVj3BpXqMpIW67UNnXq/MFphDGxB0OtDAzuJIH/6bk7isYnDxBV7KXMdkGJ8fkOropCp/g6Xtn9aoWzY21vGFIvPGRuMRzvr6X9+WkKfTJSNwOmPGXU6iki70KERsq29a+jBX7j4WpIWfkAYrNNpEmPu3DnyvNVXweIV2E8cYZcmao6KZP+nMclWzUz5Ti2/pl7ctv1Z9f9ReEQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hH+In5rm+vCrS6zUAsPJ3cnduHN36hOXa/I0eoQuQcc=;
 b=CSnhGROgzodlJ+s6+VUnJIP7tUq36mrfYLTObLFauigpNE7jp+J2sswHKSWhfhG0QpVhG7/DF1SfQwNxGcdPvLZIKzQejzgsgPYlEcz3HFDY78GZsQqzVvZyu/dC4d95rpGKt0uqkanKqs7UPpUXgC4e6bQWpZxTUq38cie2B6oVoDeP4HzsUCvnIbf22oPg1y2q1b8mjfEnmEmdvJwrrT6fQ7hsbL9SB6zvDcvPAEfGhRzYGyI7GtOZxaZCVTQi3FZgg5Eptc3b2dgS5+/ZzpZP3zpk9R0D5oFij3Wdv4z+13+9JOLm1VcCYc63HU0nrdOaawGNo5ZQrQ27BBtDMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hH+In5rm+vCrS6zUAsPJ3cnduHN36hOXa/I0eoQuQcc=;
 b=mfpEtwtXOxO166sd0bd3kIOvZvpTGaDgHoYMDsjCxUKuWlCg0oZPvhiGWJ+6g5G0b/q8ATL/AT/jrjaHtCWRcuZmXOo3cSH150hR8jrOxRkezA4tNpnB+KHQZM8B0axvesJDrC2qV9su2RptCalqYofIp+JPh9TM+uo/pVLEVQE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0SPR01MB0058.eurprd04.prod.outlook.com (20.179.37.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Sun, 19 Jan 2020 10:09:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2644.024; Sun, 19 Jan 2020
 10:09:32 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR01CA0061.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2644.20 via Frontend
 Transport; Sun, 19 Jan 2020 10:09:28 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx7d: fix opp-supported-hw
Thread-Topic: [PATCH] ARM: dts: imx7d: fix opp-supported-hw
Thread-Index: AQHVzrCLycfX70mEmUSmYDkdjG+jQg==
Date: Sun, 19 Jan 2020 10:09:32 +0000
Message-ID: <1579428300-9894-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0061.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6d497e00-52e9-4f34-6a64-08d79cc7ad9c
x-ms-traffictypediagnostic: AM0SPR01MB0058:|AM0SPR01MB0058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0SPR01MB00580CD501E3121D7C5CFBB488330@AM0SPR01MB0058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:568;
x-forefront-prvs: 0287BBA78D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(66556008)(66476007)(66446008)(64756008)(2906002)(16526019)(186003)(6512007)(36756003)(478600001)(44832011)(26005)(66946007)(6486002)(4326008)(956004)(2616005)(8936002)(81166006)(81156014)(6506007)(52116002)(6666004)(86362001)(5660300002)(316002)(8676002)(110136005)(54906003)(71200400001)(69590400006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0SPR01MB0058;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JhZdFVpVGc38B1z0nDrcmqxR5H9u8s236tnndjX9N5sSBVHlM8nRCaKpB4joVsXkUr6CFZ74ElOD+7p8t5rPAPqDXWrewTB+2QEACoWpEOavTre6SdpM21u3X2mOb8yVWcCv8UO5nWqogJh2hUNNNkrbCvYxcpoZSXmufYcTE2faeh12b96we/SHbsyzrL7Of/x1zHbjnlc/ikxSVucXqSc5yuAJX9yGeg9z3BucI0jurIMNmizI90Cyl7zY7Wky63FiECKSTbzTdfTakDg5lPjaug5074hfcNzIH5gk3v5wvuuQoDMjLAiDzci8JUUb8o+ehUDh9vIFpEVyiAr0rXCAsvw6YDL/JV+BiuuHVJ/E2p16tpjhvXfBWrqC2thB3d0SGv7XjJuHuvEuevHsCMcTxNKjn8PbIwkUuZd9Sfg4ri+Yf9eRfyVD083IWZY7vQkuVeXT93wm/ud69mfU//jgy+brS2Kntkf9Ipc7YrkHNb4YNX7BMtLM3cezN1kV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d497e00-52e9-4f34-6a64-08d79cc7ad9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2020 10:09:32.3877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UsZrJrclLRXXlwsqLI4RuSPgIW9Sf5nndpeJHWLQ0Et5VDBDQAapdz6LnpG2nH6k4WV7X9/P7nipEbvUkLvZKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB0058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_020942_725412_C042FA50 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per i.MX7D Document Number: IMX7DCEC Rev. 6, 03/2019,
there are only consumer/industrial parts, and 1.2GHz
is only support in consumer parts.

So exclude automotive from 792/996MHz/1.2GHz and exclude
industrial from 1.2GHz.

Fixes: d7bfba7296ca ("ARM: dts: imx7d: Update cpufreq OPP table")
Cc: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 92f6d0c2a74f..4c22828df55f 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -44,7 +44,7 @@
 			opp-hz = /bits/ 64 <792000000>;
 			opp-microvolt = <1000000>;
 			clock-latency-ns = <150000>;
-			opp-supported-hw = <0xd>, <0xf>;
+			opp-supported-hw = <0xd>, <0x7>;
 			opp-suspend;
 		};
 
@@ -52,7 +52,7 @@
 			opp-hz = /bits/ 64 <996000000>;
 			opp-microvolt = <1100000>;
 			clock-latency-ns = <150000>;
-			opp-supported-hw = <0xc>, <0xf>;
+			opp-supported-hw = <0xc>, <0x7>;
 			opp-suspend;
 		};
 
@@ -60,7 +60,7 @@
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <1225000>;
 			clock-latency-ns = <150000>;
-			opp-supported-hw = <0x8>, <0xf>;
+			opp-supported-hw = <0x8>, <0x3>;
 			opp-suspend;
 		};
 	};
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
