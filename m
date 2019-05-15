Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AFC1E68E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 03:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI06nt4e1xCN7tTa2m/kYoeWCQDYNeVFaAgwT4LIHe4=; b=JHuoh724iWyL67
	Hes8HxLjARU3klPWpuU5XAReSo891iSfFQQZ6pcqvmDZHBvKKwJrfLnRPGJM8sDwR7zHfW6JCuOTC
	TvbuKtsu//CGrKJV6t564dBbRXTTEnBapPZIp2c20qx9TvdGxr7EVOsQSz2a1tgZ++TwQGhepbC4b
	L201H3iDHkVKsnCjRb+xHJ2U9fNUXNNmDtpcdcKEnvSfxIl6yzKQhqSAOKPYf95E/qlq9wqiSWYev
	x01ssHEqonyenLWUvzwpUnXJzNOkaTUpH5uB1nKQFbAhxjmlJUKu40IMV50k87FytCYTyFJIR6WOH
	CRHbszVFNfXKZXFdrLcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQiQv-0007Eu-N6; Wed, 15 May 2019 01:10:13 +0000
Received: from mail-eopbgr40049.outbound.protection.outlook.com ([40.107.4.49]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQiQN-0006hf-OT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 01:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDo2EALzLk0qzQl8De2CrcCqcHkIlekQLcGjXP0zXxA=;
 b=Ez+f3KRbbRH3wkgS/S0q+34tWOfgKN6z4ucT/CM9st3sBbEJNMJRuq1cpl0SazAKcNzWpkNbHfeH8JEb09Mhl/nwvXVrH9BQdjKNVtDEwUSKZ/I66YcSHrg5F6kcUAEGDNiZEO8ppfeL6KfUxWPcO0OOsIkSm6UH432TI4hP+tw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 01:09:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 01:09:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH 3/3] arm64: dts: imx8mq: add clock for SNVS RTC node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mq: add clock for SNVS RTC node
Thread-Index: AQHVCrrcUP74CkLHLE+NNE1EMv+PBg==
Date: Wed, 15 May 2019 01:09:36 +0000
Message-ID: <1557882259-3353-3-git-send-email-Anson.Huang@nxp.com>
References: <1557882259-3353-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557882259-3353-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0022.apcprd06.prod.outlook.com
 (2603:1096:202:2e::34) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7a521db-3ab3-40fb-b13b-08d6d8d1ff21
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB367519B7915CFF60CE5F37B7F5090@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(136003)(366004)(199004)(189003)(76176011)(386003)(6506007)(26005)(7736002)(305945005)(68736007)(81166006)(99286004)(81156014)(73956011)(66946007)(8676002)(52116002)(186003)(4744005)(5660300002)(486006)(102836004)(36756003)(476003)(446003)(2616005)(11346002)(71200400001)(71190400001)(256004)(2906002)(66476007)(6116002)(6486002)(6436002)(316002)(3846002)(6512007)(478600001)(14454004)(66446008)(64756008)(66556008)(8936002)(50226002)(110136005)(2501003)(7416002)(53936002)(25786009)(86362001)(4326008)(66066001)(2201001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R7XDmxqh7qSF36QaAnjapMhwuUHoHfyfEHZCIMP/Emneyr/gbhuKr36WSk25Ltc0Qn2NeTfpRGvCj+f6BLdCYiu2n4e9vw6Y4lSPqZ7onwIKYJnENrPM2QauUhAQrs6LeYPuVn8LiFLXG82+v5usM2YHLpjHFHEq1vGgKsSX3Ya7dGXYHB/wvhLoi9iSk8wIqZwCGDbmZuyaTfikDschQo90W5yd3syaSHrYlI2ADexBPkV8ebq1wSAtSjvAy3C/hi7LcabpEJoqANlyI0T/U7YRm7BPjhZ8R0L0zCBoyAtqtjbKykt/laYZPss4XPRNU3/VXds10aid1IJKB/srATcKXRd2FJtGQb4S5n8z6d1vgVnvpiLRJN2aQ6NNFDe2tx0WDy4l58L5KBmqSlUZb72RAC2DucxLH45uwoR/39Y=
Content-ID: <851922EF67B41749A9F3AE2EB5ED1BCF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a521db-3ab3-40fb-b13b-08d6d8d1ff21
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 01:09:36.4159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_180940_328308_240E6D49 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

i.MX8MQ has clock gate for SNVS module, add clock info to SNVS
RTC node for clock management.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index e5f3133..b706de8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -438,6 +438,8 @@
 					offset = <0x34>;
 					interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
 						<GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clk IMX8MQ_CLK_SNVS_ROOT>;
+					clock-names = "snvs-rtc";
 				};
 			};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
