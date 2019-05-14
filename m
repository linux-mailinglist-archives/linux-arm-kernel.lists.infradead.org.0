Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF451C2D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwT5jy8+6DZCQlnWrUvYwxMU9YKDok7QagsAIYyg3gQ=; b=afnadNfsWambCb
	J6xTJoogTgfE3kxBM3V+QtcBO2nbOXsGFLYMd0hVrsGAPo7WZ6Y4aEFqmi+nKBPGnlDc1Bzdbw6fY
	8k8ODejLHv9MHQPzmjCeENgBKNyN8h9zx9XvC/kH/Bsq+8XldVIV3n8XhI1jFQPzh46FC8ecSb3c5
	bfhtB1qZjNL54vqbf5m5raamqUXSQ6A0E8UeG0dTMFElszkttemGsGVS9eReJccvT8eReNrHusp55
	6SYY/nd9YB3TyIhL15fYXTUyoaYL9koM5s0Fs/HbkgpiyDZbK75Ma6cKeju4JTjX6F1smxobnaNOQ
	vTBY6xgqRWkk6nOCBY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQcD-0005PN-J7; Tue, 14 May 2019 06:08:41 +0000
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQc6-0005P1-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 06:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTiyz7oOoBnGCYjmw0SOe1q6ZRigsgPAgF6dcT8cwZQ=;
 b=BaA/vS70LAxYBPFEI9hKS4/HQpEkjfUjTBgwQsO6yncLrPvMFqzgHIENUOGku+w1GLMNw77B3RkX43Gcbg6Grf1hhVRGV1nNwl23ainszLMVuAPHOENPMvJiLeSby+x9YCotXUwyps5hV6QmVz2k9bAHxgFS2O70B9ilXbQOXo8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Tue, 14 May 2019 06:08:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Tue, 14 May 2019
 06:08:29 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "ccaione@baylibre.com"
 <ccaione@baylibre.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: imx8mq: Remove unnecessary blank lines
Thread-Topic: [PATCH] arm64: dts: imx8mq: Remove unnecessary blank lines
Thread-Index: AQHVChtz7Wi0Kxez2EK8fnK8F+Cmog==
Date: Tue, 14 May 2019 06:08:29 +0000
Message-ID: <1557813807-3919-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0007.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::19) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c12eae6-5a6e-4ff5-39a1-08d6d8329569
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB36751B1668481B36EF2CE2A0F5080@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(14444005)(256004)(6116002)(2201001)(26005)(7416002)(3846002)(2906002)(8936002)(66476007)(5660300002)(66556008)(64756008)(66446008)(102836004)(4744005)(66946007)(73956011)(6512007)(86362001)(71200400001)(6506007)(386003)(71190400001)(99286004)(476003)(2616005)(486006)(186003)(52116002)(110136005)(25786009)(4326008)(305945005)(478600001)(6436002)(14454004)(2501003)(6486002)(7736002)(53936002)(36756003)(68736007)(316002)(50226002)(8676002)(66066001)(81156014)(81166006)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZD2NTU+t/4FgzYsceJzdPLlWZ5opnZIzLc67PeNXndR1dfZR0+iimqAuZA422KnpuQpnr6kda7JRPRpbvfMG8rc+xiQJLDUZoI2+2tLW9cUtpvKMfNrN8YgYszVNjK8D7HemPvfbAhRyCgoQayZ1gL0J2R9g58d+AjzZt+FAUYlKQMdMw4WI86PC6urbgjeCie0CnTaxoKKDTeTaUvmWRGHiMTsz2qStLHSqa/AlLZyte6UHg1Q/1udWEnfFq+JPHzvdJ+G46rpckeLr30gOCFubladv9QPC8U8ZfkBNt4y32gEC+05cBarVaFczBVraxKbFUmPmqqn1pPEP/K+3ZUzlv5QYpwwH5mUNFiVbOx4a6zWcRSK1Mwd2M7lqlYkzaNveMW6W4huRPi1IEbfYMsackaN1L0BTc3jMTXayhdY=
Content-ID: <1A0B0733A7F8DB418C08491CEEC218DE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c12eae6-5a6e-4ff5-39a1-08d6d8329569
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 06:08:29.3064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_230834_692134_2FBF2EF5 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unnecessary blank lines do NOT help readability, so remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index df33672..e5f3133 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -439,7 +439,6 @@
 					interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
 						<GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 				};
-
 			};
 
 			clk: clock-controller@30380000 {
@@ -908,7 +907,6 @@
 			status = "disabled";
 		};
 
-
 		pcie0: pcie@33800000 {
 			compatible = "fsl,imx8mq-pcie";
 			reg = <0x33800000 0x400000>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
