Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDBD6D8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 05:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AUtK2VZwSbL3bS+zeAhuBBPjYcV2Rg2qdG2PaQ1NH+s=; b=ry1C4M3ylWVSo4
	mM+1kaM7fWu8HrRHw0xiDoTQefsAuXBmD+XbGHGR/l3SUhk55+qF3r5VYKcLHLezsZxuNlZQEmhas
	6+MLhnmn/ARZ/3TYaE5mLr1T9qph4QhoyQkI4XtFzuQByAfqlTyk/F8Ow05Z2JRiSE8Ijat92ne3F
	/IdL3BnxNX36Snxc5d8EEI5YlCsLQZ0a+0iVq0JVBpfltNJs3LH6Hn9Ml0lJej/5JmAjeVT6x+vM2
	SQKIPLomXwqDidPyNDODoNC36ASqrQivOPQ2DeU7vJXb+SAwPYGJnbU8SoCREWNd6wGrqJXjw1lIu
	3PAnwKEG88Y5gchMYelA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDL7-0001zn-5F; Tue, 15 Oct 2019 03:17:37 +0000
Received: from mail-eopbgr60059.outbound.protection.outlook.com ([40.107.6.59]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDKy-0001zL-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 03:17:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NG2mh9M0R6N98gPGK4/Rix/wadrspB64aF+RGrUoO8D93MYip4FfQHAZmRm7KqYUj/cMZOiXPkk+H7lLkyU0+gN9tAKqf4pqPz83OF0jAdGzrxwqEnKK6sy8Vjon08mZedbsexzzhWsJADK4Ye0zp4BouLft9j1iH7CtkTkPL2gLt9rpY3OvJllXQhwtemv4T6frvKWpj2+DSaAk8a8vFUCLpRpURtS1E9tLrpGrzQkMdRt9kZMrXGgs/tb+IE1kasCuMImzXFV6qBrwwOG4odPE7tA+XcvMou7fT52Ufaw04WIFpuYU2tQMF4ts2s3Hi10ZfmVO7xaaZGGMr3cq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3u+P9CUuutKWCr8RCJl3AMLDlv+eO47P9CwMwk8VnNw=;
 b=Mu61mQ3eushC+l0GeMQBYeDx5Q1ypvBNg8FVBXsXqZuT9iTzvvgqLx+Qcb30rcSyfnJYvAFi73wSIHiNGdkz/l3g0BjFK6zEuOTesIfP0DRyVhEOdbnF3ay8akdlxvnrUad7NX3aMWQwUdS8QeYlactNN4RAsVPRZbepUI07FOvNe2wLmeA4VFLEWQRdkwwcbaTsq2Z7i176oSX4yGisiyb+4Y/fuKtTkYQYt73V+eYlZ2QYs+WXFFMciERR9Uzdg8ko/2d7p94Q31xMrpkX0KSrlx3Tv1zfdcjKvW2M/TKaFPGB1hYJEC06Ws4yED++VanmPfK0aAaQhbKcSl4YcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3u+P9CUuutKWCr8RCJl3AMLDlv+eO47P9CwMwk8VnNw=;
 b=qJ2Q9gg8tS5Q1RCcDQozGsxJVv63MH8AAzT+SsCWLIEZyD+l6f12JTyY8wuiwR0m07HrH/kavv/10AnWCTWBbCWLhNI4Jzl3b05SioVAflyt5KZZ4y2RixdozelpmaN54gnqEm9Nvftthg26UMih8+48Ov8j+qEMY9PYArk+QDU=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB5414.eurprd04.prod.outlook.com (20.178.95.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 03:17:23 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::79b4:252:8bba:c88c]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::79b4:252:8bba:c88c%6]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 03:17:23 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL clock
Thread-Topic: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Index: AQHVgwcPc0jqN29IB0OYPLGVX+dhGA==
Date: Tue, 15 Oct 2019 03:17:23 +0000
Message-ID: <20191015031501.2703-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK2PR03CA0060.apcprd03.prod.outlook.com
 (2603:1096:202:17::30) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b50d3614-cc04-4487-6512-08d7511e3263
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM6PR04MB5414:|AM6PR04MB5414:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB54149713D8037006822C07AFF3930@AM6PR04MB5414.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(396003)(39860400002)(346002)(189003)(199004)(54534003)(99286004)(54906003)(26005)(7736002)(186003)(8936002)(52116002)(25786009)(6486002)(6512007)(386003)(6506007)(2906002)(2501003)(81166006)(50226002)(6436002)(1076003)(102836004)(256004)(8676002)(71190400001)(71200400001)(478600001)(81156014)(86362001)(4326008)(36756003)(305945005)(110136005)(2616005)(66556008)(64756008)(66446008)(66066001)(316002)(66946007)(66476007)(476003)(14454004)(5660300002)(486006)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5414;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ftyLwbBo/4E9niyrfVEN44Zq4Ek32Nc7uXy1rf4JBeiOZLscDJmGoKSYHUdenAc2ZIoiS29x7wSwRIR1Gzj0bND5s93gWrbu5xWGozw2v0pIexkcM/AYtv2UkH7eegZ5X44urPmHz3OVzd/Ltue2YYY4nTUMb5bB0nVAmjhq70udvHFoEx3/8wZ0XERec1EE3mZ8PqR+TM1LfTyHed/w2Rdj9ZVMrMKWvIPO+jzcoA4Wq05MPh4KsCMrQL33FYoMTzc5pQpT62zbql0fOm+yduaPPsW1VaWbACK+qacU7KYSQDZ9T0ji9PB57l6bW8VjFmixsPWMVORm8dEpl+v1mQ1cE7kCBXh8kbPqd6UCzJ3gW2r1xXpjlRq2pPJ16igE72PjHlmykhnZ+s2iQlJkj6xTtCdAX6QrYOLKgd0yg4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b50d3614-cc04-4487-6512-08d7511e3263
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 03:17:23.5456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WF9dOQn2o+cZRmkXv2gmNKcyFiAZL4L7kltw577Lv8V2DKECrOuxku1hKbCXO7ec2qoEe6UYRbVTH7Q4+AdPWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_201728_262293_2CAD548F 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mipi pll clock comes from the MIPI PHY PLL output, so
it should not be a fixed clock.

MIPI PHY PLL is in the MIPI DSI space, and it is used as
the bit clock for transferring the pixel data out and its
output clock is configured according to the display mode.

So it should be used only for MIPI DSI and not be exported
out for other usages.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
ChangeLog v2->v3:
 * Keep 'IMX7ULP_CLK_MIPI_PLL' macro definition.

ChangeLog v1->v2:
 * Keep other clock indexes unchanged as Shawn suggested.

 Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
 drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
index a4f8cd478f92..93d89adb7afe 100644
--- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
+++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
@@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
 		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
 		 <&scg1 IMX7ULP_CLK_UPLL>,
 		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
 		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
 		 <&scg1 IMX7ULP_CLK_ROSC>,
 		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 2022d9bead91..459b120b71d5 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -28,7 +28,7 @@ static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dumm
 static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
 static const char * const nic_sels[]		= { "firc", "ddr_clk", };
 static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
-static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
+static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
 static const char * const arm_sels[]		= { "divcore", "dummy", "dummy", "hsrun_divcore", };
 
 /* used by sosc/sirc/firc/ddr/spll/apll dividers */
@@ -75,7 +75,6 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
 	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
 	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
-	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np, "mpll");
 	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
 
 	/* SCG1 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
