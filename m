Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D04F1EF95B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suA8j/eqL/Yzs3kNC0rR6hnsqU7Rimuup3l5lq7dE84=; b=Tkz7YvCxL7Z+1T
	kcC55Vxo04A2A+W+svGvW63Eub+4IGt1EldCRKOUXEEmG6JEysrFAi42CNOEIgLCI6Nkcy9NisaNo
	cif9XrH4GeoxFWIc8LI6u2iPf1wmIj1WVWzMJyxLxBWCM3Br+y8fN2JCsJwj2a38cN0LfsBO2Vely
	vB1YxHob3/3Dhk1NkjcnGDj0w9sEAVl9RY0mawrrAOMjMk3KPqzQ8GUphYPCnm+7nc6z1ry8jH8Vg
	ceO1kWHSnVXW+dfrxQG9NpOLDt6WJiKhiF35mLv1SWS0Ewx0aWcrMqWq/y1q/0RzId42HKqhZ9fyZ
	s80IRlkd+ruywQcmSCAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCVT-0008Fm-Bv; Fri, 05 Jun 2020 13:35:35 +0000
Received: from mail-vi1eur05on2075.outbound.protection.outlook.com
 ([40.107.21.75] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCTr-0004oA-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:33:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nekYxzWirQdF9ghER9K6ZKorXR8QWK5z/TUI9nvBi8rTEvJawHwfW+yFG4HYrmU658MboKYz53bI2yKlfkAdzdsJCfF9BCVyLN7irIJ/zH8BIpQ1POfB/KpIjKsZn6GPfiq3oofCs1xNjlVu/8EvHSAXfJt7Txl10ExRYExY51iQ4a2t6FBTaU2BrcAWiTtJQwk2Di0D/ZeyzvSzeQTLR0nsvFSItXCInPnWAkpsys8paL4q0QCNdenGmAwKhebhj1FZYMZVBCkk5c4ussHripFU8HxMHOcauolXdvDowWvQf6r6pRyqXZ4KEcgtuTh8KPPD8KxqgZJpE5v9p2If2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PVa9IWELyHni7gn3nuBup0HmNm+xItFbTKwgykt4ySE=;
 b=dhZuvC0nIaukyVNOt6GQawY+J1NQ6FCSBsUxyC41hcKDjbIOQekcWeZcMULITgXWsVVpb/Cnekj3utq7FS/H4yr7khv/1RalTXI6YCAA9laBXH8gWS6fo8ueWLByX30Aq7bv6guigowbJpCLF42DIt4O+NGNGc80rDIlAzhN7b1dq8OmJjfzI+I3R9sh9oSbVsvAb3HNX+8btDMTOi5bxDL3r0bVsQ/Kw5W7WNwN28WIIO644Q7C3fQXc9iFXqanaMSELDcLH9R8xEkLkpFlJ/bOHPTRkYPRSdlJoGpliAzH9b7RMHErlYG6SpJPea4Bea7H3VS16VMp1k1Koc1XtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PVa9IWELyHni7gn3nuBup0HmNm+xItFbTKwgykt4ySE=;
 b=qOAYA6aebOTk15WeTFxs5DIds4XOvKuWIF6gFO6zVH/tUMIO0Z6ULXtlzZXSiPJNXguo2COHOk8D87RuxBYuXob/ynTuxz/hah0+QVsQ1GRI5GioE3h1x5lH66obglDSjvUEwUvg1vsTUal7fipOH26R0Pf79quMZDvkR30u24w=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6720.eurprd04.prod.outlook.com (2603:10a6:803:123::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 13:33:49 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:49 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 14/14] dmaengine: imx-sdma: add uart rom script
Date: Sat,  6 Jun 2020 05:32:35 +0800
Message-Id: <1591392755-19136-15-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7d331578-3d07-42cc-e3a5-08d80955141f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB672008A94BB0AF38A529AA0A89860@VE1PR04MB6720.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Eo7bVKCU/jXGjvw7V4qiOgN7U1vKgft3Xp++G3pVuzaQp6KyItQgQ+5+6eV1+lP0mYITaXi+EdNHmd3rdUCqup/gVG7ghzwMF4o7xAHlqdUIr17Bm0MSeE3Q2H3VsaJaKrIBsUY6bKD6eXLbK4rcucDWyUiQZ82fTSoCTwDqLqeLUtjlOtZI0ZqSzy91Fxu7R906Ir3UxOwfInLVF6mEhS7y8fV6pXjgSqIbrIC/jzGukIEgcCcSh2IQabtYzqkX3iD5F/eqU0r69iWsM66C/O21jhpiKAPlfQLlrCYVHjADMMMiWfCdziykio0/i+wPLoVThY4sL5dDMjaYGX/+zWaeCQNWmaMVDogU5h+F9YKGT6MwudYXGBcn2GQ/ZHkD7GPw0jQi6HgqTwPn3cu5csZkFJD0hyGdA1/xsOfiPVEmB7eVmsbY/jnveZfS6o4FdzLR1cKBsPBhn6r67LoATA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(83380400001)(6486002)(4326008)(16526019)(26005)(2906002)(2616005)(956004)(186003)(8936002)(6506007)(52116002)(8676002)(36756003)(66476007)(66946007)(5660300002)(66556008)(7416002)(6666004)(966005)(316002)(478600001)(6512007)(86362001)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: VYIb/gsymBHULJwBKBPSWJHt+IobXcjM3fvdi/vTXxQSMWEB1M9Q9nWuv3vsQdD9DaAV3faREOA0HOQKfkZ5Q6E2XwunIHdOLXGZcLirPKkjSN/KgRsYhiOicHlrxeUWKdknw9HVLwIi/bpFdu+RV8P5tv8neYlv1OQBtpIVTw7+419i3EJ8qemMsgylg300vxxinD/pagYN2b8egOkwYba3/w1q7XLxTogUrHbn6WC5ttdTLjxfTo8BLU9yBskEmhEFZewbDFjL2znmTQrgkLzi36c0cajLRcAsVAZxnzCb9omNwU52wM7Z2+AVYyZrQXeAXQo/tpkpBstbjNnQJek9mIQkwKS5Uqa7Xh6glG2B5OKAwuMWoFoxxtOiEGrWYnWUsq8H3xm5jHbqcMVRtzGkT6xLN2y22/tresWsIt2+nkwIfvWi9iqMjqHlATUwcNhkJ+XDO955neWmqtJn6RRMCXBhKGEAWC+sFqXZcxo=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d331578-3d07-42cc-e3a5-08d80955141f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:48.9768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1UYa1VRpOR6kKVMl8aYn3/3UYgTJ8KI7ApaoOipXnoVP33dOUQKT5vXmCia+/bTnZNHBOfphA+wvFlUx7O9pDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063355_805314_0D49B1D7 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.75 listed in wl.mailspike.net]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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
index 320104f..2ca7935 100644
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
