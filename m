Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18541AB92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcEMuZfiZb2NcFL+cc6rP+zLxtnw8SbGNqTGPxev2NI=; b=AndP/+F/GdLcek
	Bj+jViK2IXqVqpKq+/ZUMc1AA9PEbQE/JRpt8if1R8nJHRIoIq76afuNqVkDPPy04zc/tozf+0UrK
	RU/DU7VRJ+zhEG5wgz/0q/iYFN/8gmO5nA97slHDFgGiDCd0ZutaZnN8quc2HZ4Qe/gxQdKJbTaun
	pJk2HX0jRQVGXlRizLGsp+xex9Znvj8eMO0Cxo6MOLDugRQ8tz72Meuzglca9189wVUw4BnVb+0vC
	lv8ThnYooY75uk1WkmLQjFDNCVsKTr6VpFlxiI/UpwexrWAamZzgL9ccBhIGgujYm+80JEomCRybG
	jLvR29ErPrd7X4tNb9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlJF-0006Cs-1f; Sun, 12 May 2019 10:02:21 +0000
Received: from mail-eopbgr150073.outbound.protection.outlook.com
 ([40.107.15.73] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlJ7-0006CG-TP
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipfCwv9ZGrRQAbgGfA1LX7k0pr41jHpEk8sRywnNoGA=;
 b=gdgN2Jw22gf9kO7GfDtQWGXroV5KzyVz0/JYGDTWfNwG4L8O4fINEycaDrpua8wJzjl0jeantYmYSJGCuelJapsBKudvqFIB+uX+1saBuXqA1UstAwp3qd7GO9MkzgGg3NiPB2AhW3jy6p+HZaK2JWx7qb7gaC7Oj0MOjuiJ3wc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:02:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:02:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 1/2] ARM: dts: imx6sl: Assign corresponding clocks
 instead of dummy clock
Thread-Topic: [PATCH RESEND 1/2] ARM: dts: imx6sl: Assign corresponding clocks
 instead of dummy clock
Thread-Index: AQHVCKnDFE3KnTXK60CX+PynU37z9A==
Date: Sun, 12 May 2019 10:02:10 +0000
Message-ID: <1557655028-12654-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0036.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 175e90f2-5db5-4a68-4cb0-08d6d6c0e5ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB391367FBC92089E74517DC09F50E0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:334;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(376002)(39860400002)(136003)(189003)(199004)(36756003)(81156014)(52116002)(50226002)(81166006)(99286004)(4326008)(8936002)(25786009)(2906002)(486006)(110136005)(305945005)(7736002)(5660300002)(68736007)(316002)(6506007)(2201001)(14454004)(386003)(6116002)(73956011)(66066001)(256004)(6512007)(66556008)(14444005)(66476007)(3846002)(66946007)(66446008)(2616005)(64756008)(476003)(71190400001)(6486002)(53936002)(478600001)(186003)(71200400001)(8676002)(26005)(2501003)(86362001)(102836004)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: voMw4XGAKroXiTZ+OYNfX8OHKmmW6YFnQED5ET0vjuL32lKHKA3x8amDPbKjsTLCoaaWVIrZy6gWNvTxi8OE/XJpZP22WvGquymSTnjW4pKInKPrcoRAnGu+IG/wHUDKHnoIwHfhbwVhXvewjbEMEvti8C9EJQfgkMH8cZLAuwWQrjmFKiRUVEVC6Dzai8N9yygvEtkBYzPT/hTFnNuOC2fvpna0m+doPRj1A5db0QqZcZTOt33oFounGCFU+KGbpSKTrCcSLx4cr4KRHFkjmejz4Hd6CfRSesY/DnhVRxCON9hZXJ4D3Ru2yjKcul107HqCAiyLT796fSKrEuABcEqEYuQn4r9QsLKcHxg2zsby+Ce2j07BqHkbogXtPnQ/OnJlvDuxDgKfFwUgTyIEd+zF991iJcmXsnQEtwlzd+E=
Content-ID: <CD1BEFEE427A5F45AF85F55BD5282B8B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 175e90f2-5db5-4a68-4cb0-08d6d6c0e5ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:02:10.0984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_030213_950816_EE471438 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

i.MX6SL's KPP and WDOG use IMX6SL_CLK_IPG as clock root,
assign IMX6SL_CLK_IPG to them instead of IMX6SL_CLK_DUMMY.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No code change, just resend patch with correct encoding.
---
 arch/arm/boot/dts/imx6sl.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 9ddbeea..9393f03 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -495,7 +495,7 @@
 				compatible = "fsl,imx6sl-kpp", "fsl,imx21-kpp";
 				reg = <0x020b8000 0x4000>;
 				interrupts = <0 82 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 				status = "disabled";
 			};
 
@@ -503,14 +503,14 @@
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 			};
 
 			wdog2: wdog@20c0000 {
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6SL_CLK_DUMMY>;
+				clocks = <&clks IMX6SL_CLK_IPG>;
 				status = "disabled";
 			};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
