Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A6217EF6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGe3XHMGyXBe/QBSMA43dKLFVyaJXGeS0zelzStqOPo=; b=B0EbXYLaZ3XJHk
	aOAlibBKISXH5bjMaaDvI67qnZyOh0d9v1FCheoa+uWlQvzixQ9oTUdHazcTAH8kVpojVpTrQ6ss3
	T5R0K7wr4e+GUHalBQS4zrt0UmfJ6jOBdZviFiHS5N8KwoGEYoXdBRVDc1//w4jMFXey9hb4FGqKa
	vVnvmqPrd/BLL2N5TXbNkLSilTrlY8evbFQ3iKnIDBUq1/VlkHpMUtgN/DVWdBFcbsvJerhI5s6BE
	ceELyagPhklQBJ/Zp0htMYkKCL7eGsc0kkflisBKq6EurafglwcQnMbCg6Nnd/FpPWnUZuY1wwKlP
	029k7DddMbUBznmtlsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVrW-0002WG-QT; Tue, 10 Mar 2020 03:47:22 +0000
Received: from mail-eopbgr20079.outbound.protection.outlook.com ([40.107.2.79]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVrN-0002VJ-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:47:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ufmi290bOGaRPoiCPcPQO1llL3IkNdvjRb2z6oFnCw079ck5PS3F/39sUz4ODLXmhFoVDvdmHVmwtcHMbACUXALlaRgtyBPuT8Ri3eEM7fhCO0b5Clf8Blfg6cpiJebMC9ALiIVmPzcZhbNjlHhNTubt8lkprM9aTzZGDZopAj0NkNbT6indIBhtezY+AsXCZtHC2L3qypYzyNXTy4t7OejFOa5/BZlhVmKT8gLKeRf6ZC6a8BQQjlW4Y/7AiNiFtsU7Ms7FVxg7lkhnvVLC1FExpy/aLwEHsr4/iw9R9Cnes1LJv5vxlVOkEWLlDef8D9hlf9ziPtCPJKyDkReTBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtHwOWVKr+tF/BpZ375KUACKDJMyu7/lKcyrf/MiY1o=;
 b=gzQHgV/euRHbcHRB5P/4xuc3Y0WgdBbLN7IxEELaiuIxmFd9hP9XKoslqmaPnjWKM8ZXh++g5kFj/bpTbB2z85FdSCKIOyryVjvi9ZxBMB/m7TwfvdtiWpNb8IW+shpPbojQZ+5HtBtYegBRATmvmX9HTBYqD0tgC1u7PsIJVBeOggoBHO04ORf8FEc3wRqdsYIUna07pM+7A35MGULiy5T5HY6tOYhjoNaiH7LMSIE0KuGS7lxNnTSqJdXMGHbWTGbHSXSn87ynRbgbwUx6xQUCeLppNVO2v0pJtS9TUmqyVyf5qBmD2hPu86mCONN8mVR1Q8VsmuZdplAaB2SbaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtHwOWVKr+tF/BpZ375KUACKDJMyu7/lKcyrf/MiY1o=;
 b=TxNwpr2Vry2hmyiU7OnKjOnUYJWAdH0ZcsOMy9UMLh6Va7O8qkPz8nGpTS2EISlH0MZXuTLWdo+N+C4heKye2kiiCn9FSSF6UCrB/XCdR5M+nfR8Y348migx9U/Fqzztbvn30gcdzzT9toRuDvY8d+Me4Hk3LIpbRBtSdppobMU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6511.eurprd04.prod.outlook.com (20.179.233.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:47 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:47 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6  12/13] dmaengine: imx-sdma: add uart rom script
Date: Tue, 10 Mar 2020 19:32:01 +0800
Message-Id: <1583839922-22699-13-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:41 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 755e070a-4554-4469-1b8c-08d7c4a38fce
X-MS-TrafficTypeDiagnostic: VE1PR04MB6511:|VE1PR04MB6511:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB651126DEAE618D9C2C28845C89FF0@VE1PR04MB6511.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(189003)(199004)(4326008)(5660300002)(6506007)(52116002)(66476007)(66946007)(66556008)(316002)(6486002)(6512007)(6666004)(36756003)(2906002)(966005)(86362001)(186003)(478600001)(956004)(2616005)(81156014)(8936002)(8676002)(81166006)(7416002)(26005)(16526019)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6511;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iEuHjAEMlRUh9ptGcQh/Gvmx6j4wGXqV0ZcxAyLewKfNQcpIbg7/ptDHRWAhW+ZzEjpWYrhsJQnQ+XzMfwtfnlVKPWl/uBwiwn+0PXjNyhsdmiO654ZsUki87CHbhn/Gsxo9hYLfhGCSLkDm5dTGZJVsCiGoBdf+1EuiSobGjb0xOH0qO+YoPAJuRk0JvEqhGJnaOFhlPt/bDWVpNiNx2v6sWf9DSLRtmYfi3p7HRl760VB7fcjHYYdrezZ4EUieKr60ROr5daF5iU8p7EEhfGVQPf3MsH4vcsqKQe3kCa0ELsGEYXjGjjxwFZhL0/g1TcsBYYTQv5yTAAwezxopbF99/GqtgxPtkQ2WiZYlHjvGAtDDfWvhYl47AKLmvd7JJU/HKK73Hg4a4aDYvdFsxSv7wpYn7KIe6vv7n3d+gQt01rpBrASdrjrm+jZ/neZgm5R3vlYsqa8EFYBwzFFCNwY3lTTZlQomPG/65TRcid+T5QjLoUkECxGugJSen7L4wyo7DVoHx+oirls8ud5Yfon3+4d4bh3R+98/xmuAxg5cxixKPpw9GoFYwiLMfbSC256O/VWCev4cdhzgfyepXg==
X-MS-Exchange-AntiSpam-MessageData: UNNx0kTjk2BPBBAZ6Hl/Gi1hb7is+TyU0H+crSMyas73yguUx3Z33zoIYwTEGhKajgsGsNmWJHR4WvVBNCsj2iTQecF5lKXAfRHqy8qnqptcartZXsA3H1iCmzz917OG+u8ZHmdKGg5BRXTgPHlXcQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 755e070a-4554-4469-1b8c-08d7c4a38fce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:47.0005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN2VSCHiiWt24m7azs9Oz79PF/qJ13/rx1EjqE86b1FdVcvS+9S9Z3pp8mbWL6K3J/aS62IoAlrhAy0AvD1AlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_204713_978538_875FA196 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 4a6256e..042cfbf 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1741,8 +1741,8 @@ static void sdma_issue_pending(struct dma_chan *chan)
 
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
