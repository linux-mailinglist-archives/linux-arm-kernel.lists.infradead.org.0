Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE40181372
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0DRSWqJ/OAzK20KQw7n7LDBdIx52vjoQ9dsAZBVnxc=; b=dgW+xffOp93Z+C
	k2XLHyrcg6+QBrr5JjWKSiokX6ZLBhtgt2ihy8y0XErH9bCDTcxy2tvMYtBlt+gTuDqYtMLgjNT09
	vl86F7QFHqU+DgxFp036R+W448M0xtObi0jDePTJdrURS0QfyLXM/NvvKoNOkh/QkOqPkZWgyICsm
	yz+4InpGRuDpWuXTAZfQonPfjAzOM1+jrJA/yzM7rK5MMONG7MsvIWS3JKiwjQ8lJ2r8FoYNJsGQy
	8lSYgGBgC5X2R6yZ7xeenNjiJQPBLRGdq+BkzdaEFg84NK7AFOxd6U1OZEPOmXj9oQHhC33lz8/pI
	xiY43zhJb1E3uthPh/OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwuG-0007qh-Rj; Wed, 11 Mar 2020 08:40:00 +0000
Received: from mail-eopbgr30059.outbound.protection.outlook.com ([40.107.3.59]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqv-0004pL-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:36:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LS3Nap5szBbOWWDTplPJ6LN2uxI3Hu5MXpDDWrExOYjrXTt865SlV8eF9MAdk66Y2ZlxMcG95Jp4jQ4CMRjm4HrHl3cpTRwPDzLG9oq3vZydoQE2Wm+mezodGK9sVzELOI+tiHaiCDj+Ds230P17Je4FuzA7gJ5NH4Yrvo5WCyi28vPJ81OPsLCEQy7ZI345/1EeBPBlkucBnt2uB2WlkmyUe+Af5kInhUdAd7qTsT4MJzskJzSi9VWlznGCFqhBhwSDl82p+wzgM3H96osql6FwNsRuotqpIec3Nlgg/I3ec5VPHfhb0kWuq4a/XUEXpyHZmURXGxM8P05ujg2Ddw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WEoEhyBGFSr+T0WmOOJnN6+RjSQtavc5N5PmyRlXha4=;
 b=aGYReKMuaFUAz4Br6EqrUadobmZ2LX+yWE0Q3BPwe4PSpezLVAh/FnTCogQey+XNS5kcYFVIJAXHCiXIXpeUNbxz/iZWlzpxYIOJZ2fOBI6e3ZhdkBthUz22DwQ1OqcxNjTSzM/IMxaDRAHGfNKGp+fHCCkbGctsk0CrvYfArjCUfyEb5XZiPTk0djedPDkq9lD69kwJkYeXY9ZsHCckb3GhSTQxSJFWDQqpf+FoQQrLfaHsoZzXjqxGTiZzaKw1syrK+rVX3AcKNvhocaLjj4GvTDD83tLHaUtFOfgV4wFCiiZbVTM1DCFCN5zHx1toVPoyTl5/qzfQtCmWGvepWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WEoEhyBGFSr+T0WmOOJnN6+RjSQtavc5N5PmyRlXha4=;
 b=TChfvu36NAVavV0pY+KGIhR/cbqldWO4K6kk2o/lU4xy5UNV97vGkbxMfN06OI2tq2jmk9LDYZSjN4Bk98yVw0zvfcd9prXX/Wh8OgGwMv/LGYgRMCAybkxAjICNOBOMxH6ls+LpRgosf/uCfw+UCGl1tS77B3V4ZijUyDADR6w=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6462.eurprd04.prod.outlook.com (20.179.232.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Wed, 11 Mar 2020 08:36:30 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:36:30 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 13/13] dmaengine: imx-sdma: add uart rom script
Date: Thu, 12 Mar 2020 00:36:36 +0800
Message-Id: <1583944596-23410-14-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:36:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bf9208a5-7ba0-4abf-0d88-08d7c5974c1f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6462:|VE1PR04MB6462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB646290CBE057361D19880D0389FC0@VE1PR04MB6462.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(52116002)(7416002)(36756003)(5660300002)(6506007)(8936002)(966005)(478600001)(66556008)(66476007)(66946007)(6666004)(316002)(2906002)(86362001)(2616005)(956004)(6486002)(81166006)(16526019)(186003)(81156014)(8676002)(6512007)(26005)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6462;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: txh/e2uH6tqtFuTnhC3yrq3IVzhmMW7/rRJI5sGX4iJL0aUs7cv7VO8NcvWCuXiAquNcG4MRd9DCm2BbpAF02xBdr1OrQ/IHKoMq+pVR8CUnVrde6muVqHp+7xz6j3VjK7hdTWCtwLbpovziUBLb3ZV5Tz34+RjbxmJVE6+H0q3mjcuhZVcyjJpUO3B21a+4eHX8/jkR2RLjs9iZd7V8eBkn2/4Hstyytx9Y8ypmQ4OjL/I58wOHwitBWRjJo6CzoY9lxGRJfowZT3YTuXTaV1rDviiKnOCcfHCMBP/0IKwgkQVTkeBRceVwn2AeFtHPzW3xgtZ+3VFIbprnichFYkfitSWlAaR69KUFJndOojryOBsa0WDuSww4wr8mGYUx/5AALkexGgnzwW+a7IwFjuw/K+O/bMkBDkfeX47f4bPAf8TAD1Xj+UeD5xwiCtYqhQWyni2DBy/2XhTi9ktyqr2ReHY6+w7su+9zksLfcdIqlOgaobtCvULHqpIzpcc7h94Jo2oAB0bBbFhNYABgvX5iF5i4xvtJ8Dp56vjUFlwpyeCy8A6fCl5jgXM3xnYmwyU7kkBWZG2PJ/Ky/Hz9BQ==
X-MS-Exchange-AntiSpam-MessageData: BaLbwh/7TZc7vJX958bxr4Z2mQlzh5ffh+LLv2+Q1Jo2pdYniTyTdROqAYYlhwe4AcIZ40eMw9vWRU4zq7E+AhBLYrRMU+3Vb7lwa7WVy8UJ7TKpY5l+lmP5QxW+Pm4WUIi94bIDppuOR1RmjcEihA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf9208a5-7ba0-4abf-0d88-08d7c5974c1f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:36:30.5880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eviAbhssZLkjgpGF5l/FMEfAfp4haUdAEH1Yl+9lghiW9+Z/RRt/5SGET7D7tx4VybzZMWYHifwwClKB7Sp9gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013634_019793_BB52A744 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.59 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For the compatibility of NXP internal legacy kernel before 4.19 which
is based on uart ram script and upstreaming kernel based on uart rom
script, add both uart ram/rom script in latest sdma firmware. By default
uart rom script used.
Besides, add two multi-fifo scripts for SAI/PDM on i.mx8m/8mm and add
back qspi script miss for v4(i.mx7d/8m/8mm family, but v3 is for i.mx6).

rom script:
        uart_2_mcu_addr
	uartsh_2_mcu_addr /* through spba bus */
am script:
	uart_2_mcu_ram_addr
	uartsh_2_mcu_ram_addr /* through spba bus */

Please get latest sdma firmware from the below and put them into the path
(/lib/firmware/imx/sdma/):
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
/tree/imx/sdma

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c                     | 4 ++--
 include/linux/platform_data/dma-imx-sdma.h | 8 ++++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9d49aaf..01422e7 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1718,8 +1718,8 @@ static void sdma_issue_pending(struct dma_chan *chan)
 
 #define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1	34
 #define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2	38
-#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3	41
-#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4	42
+#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3	45
+#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4	46
 
 static void sdma_add_scripts(struct sdma_engine *sdma,
 		const struct sdma_script_start_addrs *addr)
diff --git a/include/linux/platform_data/dma-imx-sdma.h b/include/linux/platform_data/dma-imx-sdma.h
index 30e676b..e12d2e8 100644
--- a/include/linux/platform_data/dma-imx-sdma.h
+++ b/include/linux/platform_data/dma-imx-sdma.h
@@ -20,12 +20,12 @@ struct sdma_script_start_addrs {
 	s32 per_2_firi_addr;
 	s32 mcu_2_firi_addr;
 	s32 uart_2_per_addr;
-	s32 uart_2_mcu_addr;
+	s32 uart_2_mcu_ram_addr;
 	s32 per_2_app_addr;
 	s32 mcu_2_app_addr;
 	s32 per_2_per_addr;
 	s32 uartsh_2_per_addr;
-	s32 uartsh_2_mcu_addr;
+	s32 uartsh_2_mcu_ram_addr;
 	s32 per_2_shp_addr;
 	s32 mcu_2_shp_addr;
 	s32 ata_2_mcu_addr;
@@ -52,6 +52,10 @@ struct sdma_script_start_addrs {
 	s32 zcanfd_2_mcu_addr;
 	s32 zqspi_2_mcu_addr;
 	s32 mcu_2_ecspi_addr;
+	s32 mcu_2_sai_addr;
+	s32 sai_2_mcu_addr;
+	s32 uart_2_mcu_addr;
+	s32 uartsh_2_mcu_addr;
 	/* End of v3 array */
 	s32 mcu_2_zqspi_addr;
 	/* End of v4 array */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
