Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F201C8231
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/HuHiVsgmRm09Q3lSdpfjTaBnQ+qM7xrhLvfG5swnY=; b=BwaNIkgZ4rBTjw
	yTthVcPKtRtbEF5GmIUagRj+P0wtQpCSaUbdVqhMZnhCp35+tDT4qNekXKN+hdxC/aGje0B0M1xnn
	v67HCJ/QBAOuuYCd0IPIMEZC84+bCBPu4eQhzBur2uTM69iAOniUWEJO28sQ1rLFKhJdVhwhJZuaA
	fZEDsl5VFTElvHcY9UWTYy3C6S+Xe2zKcOM4HFZXMi1exBlPmbkp1SFt54FUOgdXuc8ft1qa38D7i
	IL2jBC26LOH7cMmJexFNl5fJk1UKJszYh8Ko6VyVG4ftJ+E+5ESRqvNVjZbDfKWJajH1USs5frTKE
	9F7BtxAJTjNXVe7kKqlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZia-00079e-8T; Thu, 07 May 2020 06:09:12 +0000
Received: from mail-eopbgr70079.outbound.protection.outlook.com ([40.107.7.79]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZfn-000552-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdOGD+mdOSfnLjmL9EBzX1bi7VAqc6lpJeIZEq2WhV1Dli22kcwFHhVF3Y0t54XGX5Uz4ThUbKgG2+hikwQmvkn18Yr7oUaeyU5g/n1l9eP/wO8BKL9ucA1wWcxbYbet+VP0rt75xOZZ7qO4MFS+Ljcs736p3RB6vdBE0WPYVbrPN4jNTIUtY64Paijfq6pd177JmnL4yoWUWsIiwZZTGvXGM/8PRzejuYjURKUP5wT9Zisjxt14hqVgmaUHbyhYQAx2TCdXr1Az4yNTKV+wlfBonntLMwwcNSoob5Lq9/ORR3zeyv0iholwKmmrUzliRh+ykixEMuWkS/cD8gTvtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0PeA7CnEVAsvJFEtxx2e5r/o7pa2Wjtu4F3u8fNXJY=;
 b=cGOsNKKDCJrG9KpxpB9lDu1zN3StbzpcGq/pU2pyOLHlrAPhQJ20BfbIbU/441/gzw8TTI6mtD2gTLoIES8m2AJzKruds748qTLEqHMmnB84vbE2WIXPZs7fn5U6btTxZx2ydWblV41NgXJRVTxsRDFp7S491yKqvHrveGhfmBWSsI4OEBdqO/mBnH5SPiOM/orJ5LRnMuz3erzIzfKrVmtbR4sS7yYcZAyRo1M733r3XKjFimcakBFOCbT8lElcTh1A0BoUtCAOMK/ZgcQQ7VKf55sn9goENlWw99dhF/VQtfLhfpt6aEKS4zOFAezWE4El2kuzJIiSqD1Bbud8Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0PeA7CnEVAsvJFEtxx2e5r/o7pa2Wjtu4F3u8fNXJY=;
 b=Fwwo+OK8mbXRokx78drZFlWCNaKZoORc7SLWo+TZ0OTy+huElQxLETLh3nSjJqRqSfLby0QDnzcFZvH13HnWM7vrSmui58ClnVYRvLIMn9g8ueyyJ5H5pzD2FACALoFQKYF3JUraP5DTFSo5XR62F4uEXgpbjwkY3prWQm7fohU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:06:15 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:06:15 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 09/10] clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M
 bus clk slice
Date: Thu,  7 May 2020 13:56:18 +0800
Message-Id: <1588830979-11586-10-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:06:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 519e455b-10b1-4b64-d327-08d7f24cc043
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27103EE179B2E4CA88035B4588A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:454;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qwpuf/5BSys/+4+lEZcUbdc9Rq1Oeq9nFV+PAUXua1+8VuqE6w7t0IxyfK4dh8Y9DL8FgRiZsRw0rcZz8C6FWzHEQgg/JZxTFPi9BBSsEkt3Czkb6NIvfS2XXYeYHRHZl3KZIxZfzN6CIhJB5HqPEgJodfH9mXaqVYblJfcegIaLZ8ibQ579B0YQDUHid1Cymm8iuUnaesMthYwuuz/uCcLwU+/edT1xLEEggCNv140FmBcEZj1J1Vcng4oI5e7wFDQOw+FgbYZhQHN8icd7HWzhq3cWV8JnmGNy+6M/m5pnQjZG6MIpqMB6XCdWvqZzvnVJhXFl02H2TsP41mDyYIB5UitkjfoG4N/1i4W58rbc6WfUJmfI79KAnF71AfHWMxBPq9cwD1Kj/GjitJGhAN3BfNRyaq9DmJ9IupSt0GW22+eVJFCkSKLF8s12lwQLkMK/aTiewKRRK5l9OaF39o+9ya0m9ZqlrbYwdUm7IGT3hco4ZivWwg8TXXgoQkDLB0PZzMzZPPtcgwZbL0JYPotLgEf62i2oyh5kX+a0dAM0VxisRuIH0faXEimSf0+j
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(69590400007)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(30864003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 2X1zdib2m3qvyNa7tlyfyLLfYC2kJFrEe4uR0hhzjLtU6ASUBFSpSBENiJsvcxT2O/Itu0b28QTP33YKNE+XoJNVXvDOfE60Ja4JQy8c2TmIj5Olel+hYV2efwJHtDnxwWzaLyj3lzt1hWBdf1GqcqLhW4gmq+3JHWQCbUnkJQ3DFrifaenPq056GfzbVLb8ddC9tfFX+jIuxcSvtlEDZ7fLvAgzzJVMAf4t7vn0b1XVfxZh3FCdipxFSeVry9KZfbc18e7mkG1LjMue45MXSvlmKOYDTmvlPrXKpYTuYVa21KK5Wpn/IRqwas7JV7ynB6AQ1DvE69ptort4HJOwgX1fQv5db9zaHEK6IRyfuRWbV2tx1W0mBisG612HxdaXV1mX4C12u7sKG2oPeev4oKCnfpL8O2nQiD0tjyuf0H3vd42Hqz50osgXp3vE2FtqpflOSR82JDqAa+jxVJgdZatxukOlHApw62yKV+Y9ga6HQpYVJiyWnRFjWoHPsmzcPgYo5R6gAIzxWUu8UaZGc2vqNsI0XM7/PHMAQQ4gRE+iq+tOdnBXkgMmNhi9hP5upzl5V3Ora8toiPG2HgqplOosRZI/uCmkqsqGsozglW+gHQrOmIHAzEPqpQbua2UhamHMcRuqyhL4op9iiKqOhLPgaMuvdf4WUQNSgb/1xKRJkjR5696wUxcCAhWvDPcbzViYiY4I95zxYR0zJ7gnPzYWcV9F1zJBvjsKWHeMxPCC86UMhxpmbd74BSLIblXd55xGc6/4uwVMT6jq+VvW/wtvJ5H8N1w8IpR5XYlAOl4=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 519e455b-10b1-4b64-d327-08d7f24cc043
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:06:15.7069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN9wX4bV9oHG/JH6ExZZHNnEQmPkh4Eau6w300BNXxYTUIEbhlAeyMrlVfajuVNdxnUeOepcDUeFom2nt9nKPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230619_710955_40E2EA98 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.79 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the bus clk use imx8m_clk_hw_composite_bus, then
we could avoid possible issue when setting mux of the clk.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 18 +++++++++---------
 drivers/clk/imx/clk-imx8mn.c | 16 ++++++++--------
 drivers/clk/imx/clk-imx8mp.c | 24 ++++++++++++------------
 drivers/clk/imx/clk-imx8mq.c | 20 ++++++++++----------
 4 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 12443e06f329..b793264c21c6 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -444,21 +444,21 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
-	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
+	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
 	hws[IMX8MM_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mm_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MM_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
-	hws[IMX8MM_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MM_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
-	hws[IMX8MM_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MM_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MM_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MM_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
+	hws[IMX8MM_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MM_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_hw_composite_bus("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
+	hws[IMX8MM_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MM_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MM_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MM_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mm_noc_sels, base + 0x8d00);
 	hws[IMX8MM_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mm_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
 	hws[IMX8MM_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mm_ahb_sels, base + 0x9000);
-	hws[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
 	hws[IMX8MM_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index bd3759b4afd0..213cc37b3173 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -432,17 +432,17 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
-	hws[IMX8MN_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mn_enet_axi_sels, base + 0x8880);
-	hws[IMX8MN_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mn_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MN_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mn_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MN_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mn_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MN_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mn_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MN_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mn_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MN_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mn_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MN_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mn_enet_axi_sels, base + 0x8880);
+	hws[IMX8MN_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_bus("nand_usdhc_bus", imx8mn_nand_usdhc_sels, base + 0x8900);
+	hws[IMX8MN_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mn_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MN_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mn_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MN_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mn_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MN_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mn_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MN_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mn_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MN_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mn_noc_sels, base + 0x8d00);
 
 	hws[IMX8MN_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
-	hws[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
 	hws[IMX8MN_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	hws[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 	hws[IMX8MN_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 998e9e63f831..b4d9db9d5bf1 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -563,23 +563,23 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core", ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels));
 
 	hws[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mp_main_axi_sels, ccm_base + 0x8800);
-	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
+	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
 	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
-	hws[IMX8MP_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mp_vpu_bus_sels, ccm_base + 0x8980);
-	hws[IMX8MP_CLK_MEDIA_AXI] = imx8m_clk_hw_composite("media_axi", imx8mp_media_axi_sels, ccm_base + 0x8a00);
-	hws[IMX8MP_CLK_MEDIA_APB] = imx8m_clk_hw_composite("media_apb", imx8mp_media_apb_sels, ccm_base + 0x8a80);
-	hws[IMX8MP_CLK_HDMI_APB] = imx8m_clk_hw_composite("hdmi_apb", imx8mp_media_apb_sels, ccm_base + 0x8b00);
-	hws[IMX8MP_CLK_HDMI_AXI] = imx8m_clk_hw_composite("hdmi_axi", imx8mp_media_axi_sels, ccm_base + 0x8b80);
-	hws[IMX8MP_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mp_gpu_axi_sels, ccm_base + 0x8c00);
-	hws[IMX8MP_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mp_gpu_ahb_sels, ccm_base + 0x8c80);
+	hws[IMX8MP_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mp_vpu_bus_sels, ccm_base + 0x8980);
+	hws[IMX8MP_CLK_MEDIA_AXI] = imx8m_clk_hw_composite_bus("media_axi", imx8mp_media_axi_sels, ccm_base + 0x8a00);
+	hws[IMX8MP_CLK_MEDIA_APB] = imx8m_clk_hw_composite_bus("media_apb", imx8mp_media_apb_sels, ccm_base + 0x8a80);
+	hws[IMX8MP_CLK_HDMI_APB] = imx8m_clk_hw_composite_bus("hdmi_apb", imx8mp_media_apb_sels, ccm_base + 0x8b00);
+	hws[IMX8MP_CLK_HDMI_AXI] = imx8m_clk_hw_composite_bus("hdmi_axi", imx8mp_media_axi_sels, ccm_base + 0x8b80);
+	hws[IMX8MP_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mp_gpu_axi_sels, ccm_base + 0x8c00);
+	hws[IMX8MP_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mp_gpu_ahb_sels, ccm_base + 0x8c80);
 	hws[IMX8MP_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mp_noc_sels, ccm_base + 0x8d00);
 	hws[IMX8MP_CLK_NOC_IO] = imx8m_clk_hw_composite_critical("noc_io", imx8mp_noc_io_sels, ccm_base + 0x8d80);
-	hws[IMX8MP_CLK_ML_AXI] = imx8m_clk_hw_composite("ml_axi", imx8mp_ml_axi_sels, ccm_base + 0x8e00);
-	hws[IMX8MP_CLK_ML_AHB] = imx8m_clk_hw_composite("ml_ahb", imx8mp_ml_ahb_sels, ccm_base + 0x8e80);
+	hws[IMX8MP_CLK_ML_AXI] = imx8m_clk_hw_composite_bus("ml_axi", imx8mp_ml_axi_sels, ccm_base + 0x8e00);
+	hws[IMX8MP_CLK_ML_AHB] = imx8m_clk_hw_composite_bus("ml_ahb", imx8mp_ml_ahb_sels, ccm_base + 0x8e80);
 
 	hws[IMX8MP_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb_root", imx8mp_ahb_sels, ccm_base + 0x9000);
-	hws[IMX8MP_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mp_audio_ahb_sels, ccm_base + 0x9100);
-	hws[IMX8MP_CLK_MIPI_DSI_ESC_RX] = imx8m_clk_hw_composite("mipi_dsi_esc_rx", imx8mp_mipi_dsi_esc_rx_sels, ccm_base + 0x9200);
+	hws[IMX8MP_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mp_audio_ahb_sels, ccm_base + 0x9100);
+	hws[IMX8MP_CLK_MIPI_DSI_ESC_RX] = imx8m_clk_hw_composite_bus("mipi_dsi_esc_rx", imx8mp_mipi_dsi_esc_rx_sels, ccm_base + 0x9200);
 
 	hws[IMX8MP_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb_root", ccm_base + 0x9080, 0, 1);
 	hws[IMX8MP_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", ccm_base + 0x9180, 0, 1);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 91309ff65441..a64aace213c2 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -432,22 +432,22 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
-	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
-	hws[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
-	hws[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MQ_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
-	hws[IMX8MQ_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
+	hws[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_bus("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
+	hws[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
+	hws[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MQ_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_hw_composite_bus("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
+	hws[IMX8MQ_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MQ_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mq_noc_sels, base + 0x8d00);
 	hws[IMX8MQ_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
 	/* AHB clock is used by the AHB bus therefore marked as critical */
 	hws[IMX8MQ_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
-	hws[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
 	hws[IMX8MQ_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
