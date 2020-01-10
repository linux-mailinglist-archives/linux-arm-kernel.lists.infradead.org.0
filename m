Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66661136833
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1rJ2zXgXx1kSzIrWa5CWG0bjH7sadug6VkxUxvj/p0=; b=XV50yE1CCAgGA+
	UODBUKGUkyRFFNem9/1y76On6e+OrdOc3Ywr+XWhc5530FAf6/I3+SU0mTc5vRv263KfxbuO0uPKB
	+hMURaQElo+luQ4d5F3IeupFAaXJS8j9SAXuhIBGgktkxa5OiH0noMV+57FvNhMjkQXfVX7aB7FkN
	m08NsqPmoaOw/I1rruEVa8NqbLegirROhZ25d4EiGO+iKcEhmFg8JLz2Wdi9QcYQ3DnIaCl7nkqT/
	YzuZFuHb4Pebp3zh+GdQYn4N6/ATDzJEMYM4e+HpX366yrED7WNLdJJQhrrJ/BWV8IwyA6lOnyhDk
	C12EloUoVPIVKcaAN4mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoZF-0005Gw-W3; Fri, 10 Jan 2020 07:18:50 +0000
Received: from mail-eopbgr130070.outbound.protection.outlook.com
 ([40.107.13.70] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoYW-0004hq-84
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:18:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9rYht/VkfRka3nKAVFF49rIHOaNGsNavEd8GeDuWcNtX9waf6UfK7piIDxZxiwdQpwSXwKSMF8FcQRTvPUbLV/r+SjeuxcnREDQrCe35z2xdNqVNeH/H0WaEeqSTbZCF0YetNol/WQHELewPpJWaKXPTIlid6dmBTOgGXFalBBcMAxv3ZMwGSC2d680IoUZ6ziGsX4ZeyvZTsJF20NwoKhUWT3qxy+H+KJzpgx2RdkeMNOo/OEqxlRi3OcTLbjjFrhM/af/59DQX4Cnh9ib3Od6vbwMEv2Kj04Q7JUmH9gOBtnxUWfyL8cVcVOcJOzGXP2osl0D97LM5B4nrnuzIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNQA4pBlWfvS3JwJ/HKUKXzz2K1IdLwTO++PCDTph6A=;
 b=j5pNf+v8mi5zRmmAtfKyfybVLA+2I0OxmiKZqwnMwjoBlPTXGcC53gSdMoN/u7ntyVUXVUjpbiLkArg08FMxavDNynLi9rG3Hu787DpOhSUkXiIkLJ2QXA1yTzBipFAAAOWPpDcyslAB5F/5yo6Ops9VaYp2Q6OPoz3ylnosq0q2xNgz0mmg5f9hXYJmXFjU0cjXLpkQy268FSvIHUsSmolFRYylL3gltiY9gWx9pyjr5JUasvscppcU+v7WiG+3xsaHO8EAvKnvZW/Lq5pAsYv7w+M9Hbf14zXf7jTlEtqor+9E6UIdgNFHW3mpC2ZwGb64P6fahB2yb+6lZ3J04g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNQA4pBlWfvS3JwJ/HKUKXzz2K1IdLwTO++PCDTph6A=;
 b=AYCJSxITgegcA5KNW8boVsXUpc27fktU6CgJuZh1XokXP/uYpKU0qZnzeeWSGat7dnsGJ2i5DwEYKCcbTq13Sa/yZBDyAmqNzOY0O4o9j4eyDr9K/6oF9cdUl2vz89e77or9gd4goWlUJBY5B+t37/wBOuEbh251DA9cUh0Zit4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7172.eurprd04.prod.outlook.com (10.186.128.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 07:18:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 07:18:01 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0006.apcprd06.prod.outlook.com (2603:1096:202:2e::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.10 via Frontend Transport; Fri, 10 Jan 2020 07:17:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V2 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Index: AQHVx4YXMxTL9tvflUGSFPY8FST0Gg==
Date: Fri, 10 Jan 2020 07:18:01 +0000
Message-ID: <1578640411-16991-4-git-send-email-peng.fan@nxp.com>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0006.apcprd06.prod.outlook.com
 (2603:1096:202:2e::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d95df21f-3d07-40bb-1737-08d7959d39d5
x-ms-traffictypediagnostic: AM0PR04MB7172:|AM0PR04MB7172:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB717238452FB249E91BE0BC1688380@AM0PR04MB7172.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(189003)(199004)(2906002)(478600001)(81156014)(81166006)(69590400006)(956004)(8936002)(4326008)(2616005)(44832011)(71200400001)(8676002)(6666004)(86362001)(6512007)(5660300002)(6486002)(186003)(16526019)(66476007)(66446008)(36756003)(66556008)(64756008)(66946007)(26005)(6506007)(6636002)(54906003)(316002)(52116002)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7172;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ilf3yK6WbfyaotCONMB5cXQ3pHNxKQVAiSkcbljKjmWB8m9jvJEAMATUi6+fdjL6Xs+nCMsKYL6FDlekrXuWfTt+3WOq1/5F9lCXj2Avc/KPK33TMUEvTmmozZ79mBFzirRDQ+2X6WGdj0rHYHCP1Wj6B/c4nyH6RKhFyjetQqwWGyHerhqDeV/RUWPKYSkI5blfTpKcJl1+7UfhJEzoY9t/fW85Xq/PU41MGzyjQnurZMVnvxB/Op+fdsJrcj24Q8mMbkqVB2kUeGJftlRXwNxjUTVMQcNlwXsYBwb/VUytGiwyy7J2inC+xHhrFK7eM2+Ie18EJrPNCNwEBJ5dmdxweRKa8xogmRBYTgssxX0L1X3A5qwgZbDqpV5GZu+u17xm3yguHusS4qXvAlcxWmiDviFDOz48AviOujyhaDlMU1QAbZeJmpm/Js3sRH723ldpjEOI0N8vzQuYnvd+pwy/vkuXOPTqbW/EvwWOZIplNma1Um8po6gX/WdF3Ur++szE3mOj3t1v8ud8Qlzi2w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d95df21f-3d07-40bb-1737-08d7959d39d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 07:18:01.1533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGRPau8gKp6atl+PtkwXsQbFSBjVrkdyFHA644za3kyMwUrX4eqJ++lGl8iSOOd22Nykn+Dx7mzndnDMxGymvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231804_308247_97D8D08A 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_composite_core to simplify code.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2ed93fc25087..197ba2cdab7d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -414,20 +414,13 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	/* Core Slice */
 	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
-	hws[IMX8MM_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mm_m4_sels, ARRAY_SIZE(imx8mm_m4_sels));
-	hws[IMX8MM_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mm_vpu_sels, ARRAY_SIZE(imx8mm_vpu_sels));
-	hws[IMX8MM_CLK_GPU3D_SRC] = imx_clk_hw_mux2("gpu3d_src", base + 0x8180, 24, 3,  imx8mm_gpu3d_sels, ARRAY_SIZE(imx8mm_gpu3d_sels));
-	hws[IMX8MM_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src", base + 0x8200, 24, 3, imx8mm_gpu2d_sels,  ARRAY_SIZE(imx8mm_gpu2d_sels));
 	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MM_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	hws[IMX8MM_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	hws[IMX8MM_CLK_GPU3D_CG] = imx_clk_hw_gate3("gpu3d_cg", "gpu3d_src", base + 0x8180, 28);
-	hws[IMX8MM_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg", "gpu2d_src", base + 0x8200, 28);
 	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MM_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	hws[IMX8MM_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	hws[IMX8MM_CLK_GPU3D_DIV] = imx_clk_hw_divider2("gpu3d_div", "gpu3d_cg", base + 0x8180, 0, 3);
-	hws[IMX8MM_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div", "gpu2d_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MM_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mm_m4_sels, base + 0x8080);
+	hws[IMX8MM_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mm_vpu_sels, base + 0x8100);
+	hws[IMX8MM_CLK_GPU3D_DIV] = imx8m_clk_hw_composite_core("gpu3d_div", imx8mm_gpu3d_sels, base + 0x8180);
+	hws[IMX8MM_CLK_GPU2D_DIV] = imx8m_clk_hw_composite_core("gpu2d_div", imx8mm_gpu2d_sels, base + 0x8200);
 
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
