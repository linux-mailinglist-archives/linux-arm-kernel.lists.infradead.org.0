Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F7E14AF1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfVDkdjo9vEmf6df5oj5pKoULnXK/Bdhwllz0wuGyTw=; b=UkByIW40lbcaLk
	OH4U09kPKMgglCjLHW3+o5rLIuEzep+zagN3nsynzSv1H8lAktIEYrpds5KRvVgLNeLebedRBgega
	96cPfD9naIBZS+1hEIsgedgsdFIxmZHEW09Rx3rhdiXXM9QkaDjNVVsATabMLoRy3dEDp1BY0PTmc
	vCDKlKyNWjDDlDxlW73VeixFnlaT+lv+FoIGQkuof4Y025+UXu9nbJsmaaCLvprG0IPs4w2hfNvbM
	evE/O7UtC0OAuIkBvnYTEOZCmQPHdY8Gaf5mFuvph3BlxxcTZmvSFUMDlYbrt3HX+QqEznMD7Pltm
	jkdP86F/fUWS7/2k2H0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJS9-0002ps-Cu; Tue, 28 Jan 2020 05:30:21 +0000
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com
 ([40.107.21.73] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJQj-0001wd-M0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:28:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3NxCU/RxLvqZT6LU4YLjvy7gTFM+LZFpdAguZzbzxX4t/iG9SJxKo5BkRGRYCIhWDL/ypsHNOoRjHXEwDqAP7/NYIF51x9vOfrKGagLSRLDTvPcV824zCOl534zyRKTdRrZ2+xyUOpQuE5X/+3yKpip6FPkuahY5dxiAXss1z2YL05wgg3hXExIqKiirDz5rjQS2LdUNw0m9Rdeb0jJiFdmcsGUnkQ0Zt1pcDHAh5e9A/g/zP1Vgnx1xT5+PdCZfz0PJgzBJnRK8kRLB0Nrwq9lEMwkfUIHMdep+UuSYs+34cyw6fErWA+LfsSekaUuRuBmoaJMNq4ihR8P5PQoyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aluJRYr7+ESBukTl+gMtMBFWXCBmGgbPL1P+N5fQws=;
 b=B2yjThC006Qzscl4wHDFjUZvWOGvXODuit6L81kNghbRihSfqbNZKBecldK1QosbXC5VOOd1cBfkrl3N2+WJEHtyRS8j00uHvjZDmhhpxG0N4gHOx0HPDaiB9MkVAWUq2lJMpjRB9Rm5914K9RnTMIHWJY2aNOzeMWzbnp84Ha0rYPgfeFqL3dMTJsElz8MqKAbT7lpseXpx3XG/uPbOrO6kVhHWMOcxfiLVVkBu6vSsCpSCFPPlXw8mxgHpZ33+4s7hVh3uPpD5YqFhjZp2ekbqJeA92fe/AB5Vsaz+pSxO5evfd+pMNLtxy15Wy8w2f9+lF0oIlAiCJmHmTWRe0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aluJRYr7+ESBukTl+gMtMBFWXCBmGgbPL1P+N5fQws=;
 b=MwBto7jVexEQmknf/RUtGR3xfqmpkovl4vJD9s0g1t3F/sj1Y/7sJULW2uf+7j9CFj5G0LwJN3K/utgXtwOiV4YS9iBTPsM95rc/fkLBdWbw/T+d1uxE247Ita2fYXi4oPxI07Y0EKOuoxhhiqX3HFaMgG4VSKGrQRVTAPCt/SI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5939.eurprd04.prod.outlook.com (20.178.112.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 05:28:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 05:28:50 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0113.apcprd03.prod.outlook.com (2603:1096:203:b0::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.22 via Frontend Transport; Tue, 28 Jan 2020 05:28:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V4 4/4] clk: imx: imx8mn: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V4 4/4] clk: imx: imx8mn: use imx8m_clk_hw_composite_core
Thread-Index: AQHV1ZvSbRtVno6oAk6bZpxHDhFKdg==
Date: Tue, 28 Jan 2020 05:28:50 +0000
Message-ID: <1580189015-5744-5-git-send-email-peng.fan@nxp.com>
References: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:203:b0::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 10d818be-f5f0-44b0-7b77-08d7a3b2f509
x-ms-traffictypediagnostic: AM0PR04MB5939:|AM0PR04MB5939:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB59396CB0E53CCB3B17AC06E8880A0@AM0PR04MB5939.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(366004)(376002)(189003)(199004)(2616005)(956004)(6666004)(110136005)(54906003)(44832011)(5660300002)(316002)(186003)(16526019)(71200400001)(69590400006)(26005)(478600001)(81156014)(81166006)(6486002)(52116002)(6506007)(6636002)(2906002)(8676002)(4326008)(8936002)(6512007)(86362001)(66946007)(36756003)(66476007)(66556008)(66446008)(64756008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5939;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C9F+Yy/Krm2IMh+9OxhWcdEJeKWca4k1fsUkqfx/AsFrKWwWAsVD5JOVWtzsku0cb4Gic+ANYoe7N0jrHdBcelztloubVDzBu5YQvAzsUaTUcohCNK0kv6vBUtZkWFuMH4NI7mlXlzGcEuxgI4XSCoSUOnPfyXGnbpUaxux4lZbrbf+pwdmernrgV3mSxGpWiIULJz4/EGspBvRQR4u/Q3YbpMMb1rx/WL5QOdtWJXIP221TFQrScvJBT5hxy+ghvzIOaeQ14yWxP1hThQydjmfS1umIHTPpzNElF3h2BgR6NSnGupNiskRhUJu+1ghhfU4ErygwY6dQ8HuoF9S8EU5DLSR5jJ0XZpeA3Ri7P+BSktFsbw1D1T85Znm0D/OGBkAcL/Wp/gWX/7kzM1yyznGWWbgYDH3KMKLxrJ6MNTZzFfUatQ9snOEG12raS0Tbj8LtPZoOTv2mGSL7TORfDLudUU5sgiSSRcZrF/gbcGlmpRSBjJTtogWKpnk8vpMplfZTNS8/GbeJwHz/pRgRSQseWy5GhA+Bdq6VTFZLX8g44Zr+iZ+qodMENTC+Q+EZ
x-ms-exchange-antispam-messagedata: VRLr3z8ybOFTotqW4WnaHw/AFSb4ped4+l4jD4n0upAeC/f3YMPX8JUzOjXSusbmOiIo0MGFN43P+FwOI/UrxYN6V3hSUM8FtaF1+MvyQv7VBm0wIpmQtB2mAi24FobMPwZOsJFSeElsuKzLl9G/5Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d818be-f5f0-44b0-7b77-08d7a3b2f509
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 05:28:50.8302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOcCT5SY36494rAT+6ns/A9lYri0TABCszG9l2m8f0/OKgDwccptaTaoyxtnYl5KOeY3jz/9H/7OO1eYJpktGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_212853_772521_F8DFAFD4 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_composite_core to simplify code.

Add new definitions, and X_SRC/CG/DIV will be alias to the new
definitions for backwards compatibility

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c             | 19 +++++++++++--------
 include/dt-bindings/clock/imx8mn-clock.h |  5 ++++-
 2 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index c5e7316b4c66..e892302f93aa 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -413,15 +413,18 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	/* CORE */
 	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
-	hws[IMX8MN_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mn_gpu_core_sels, ARRAY_SIZE(imx8mn_gpu_core_sels));
-	hws[IMX8MN_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mn_gpu_shader_sels,  ARRAY_SIZE(imx8mn_gpu_shader_sels));
 	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MN_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
-	hws[IMX8MN_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
-
 	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MN_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
-	hws[IMX8MN_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MN_CLK_GPU_CORE] = imx8m_clk_hw_composite_core("gpu_core", imx8mn_gpu_core_sels, base + 0x8180);
+	hws[IMX8MN_CLK_GPU_SHADER] = imx8m_clk_hw_composite_core("gpu_shader", imx8mn_gpu_shader_sels, base + 0x8200);
+
+	hws[IMX8MN_CLK_GPU_CORE_SRC] = hws[IMX8MN_CLK_GPU_CORE];
+	hws[IMX8MN_CLK_GPU_CORE_CG] = hws[IMX8MN_CLK_GPU_CORE];
+	hws[IMX8MN_CLK_GPU_CORE_DIV] = hws[IMX8MN_CLK_GPU_CORE];
+	hws[IMX8MN_CLK_GPU_SHADER_SRC] = hws[IMX8MN_CLK_GPU_SHADER];
+	hws[IMX8MN_CLK_GPU_SHADER_CG] = hws[IMX8MN_CLK_GPU_SHADER];
+	hws[IMX8MN_CLK_GPU_SHADER_DIV] = hws[IMX8MN_CLK_GPU_SHADER];
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
@@ -528,7 +531,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MN_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
 	hws[IMX8MN_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
 	hws[IMX8MN_CLK_USB1_CTRL_ROOT] = imx_clk_hw_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
-	hws[IMX8MN_CLK_GPU_CORE_ROOT] = imx_clk_hw_gate4("gpu_core_root_clk", "gpu_core_div", base + 0x44f0, 0);
+	hws[IMX8MN_CLK_GPU_CORE_ROOT] = imx_clk_hw_gate4("gpu_core_root_clk", "gpu_core", base + 0x44f0, 0);
 	hws[IMX8MN_CLK_USDHC1_ROOT] = imx_clk_hw_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
 	hws[IMX8MN_CLK_USDHC2_ROOT] = imx_clk_hw_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
 	hws[IMX8MN_CLK_WDOG1_ROOT] = imx_clk_hw_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
index 0f2b8423ce1d..95acfbe52665 100644
--- a/include/dt-bindings/clock/imx8mn-clock.h
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -228,6 +228,9 @@
 #define IMX8MN_SYS_PLL2_333M_CG			209
 #define IMX8MN_SYS_PLL2_500M_CG			210
 
-#define IMX8MN_CLK_END				211
+#define IMX8MN_CLK_GPU_CORE			211
+#define IMX8MN_CLK_GPU_SHADER			212
+
+#define IMX8MN_CLK_END				213
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
