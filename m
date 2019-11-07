Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9779FF29EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3MewLPb6tbaNGca+NvHg8c1H41sWJbPRbhwhVTOcOL0=; b=P7qnDa09ZWPcHP
	lKGY8WB3SYIM05mLP9jLWIJF13otvyOBOD5LOq3QJX8jacHl+XlkusZNx7ZWnSW09RlGuOwEQq7xR
	yDD5bS/YBn6i4EtRheGWUeasOh7A6B9+HiXaEsSwGUh2j4afZ0et4eo2gEMkGp7ynJOAvcBDzeT3h
	MmUkKkyt6UU+GVBJgGbmcQwEGEZLzYhMLHyiy/jy9P4tTLbHBBObgKafM3hppHH9a0HFl0yz8bC1t
	JjGo+rBWNE1h8/eMrk4HBD7f9vilzFMfX+V9ZXvPRgFs6z97uFg+wvJtBj1ZCx7KOTAQWkrcHroe9
	v5KtPLHwgiGsNVB/MstA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdd2-00005k-Is; Thu, 07 Nov 2019 08:58:56 +0000
Received: from mail-eopbgr720071.outbound.protection.outlook.com
 ([40.107.72.71] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdcu-00005C-OT
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:58:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqAIeSSeNBjS/jMAS/W+Km5Ehdtd9AtQqNEYti/ta2p6hAQ6zfBRHby1wjKLjd4pS67GFTl9D434YSsKTWEO4uSE8U7+1fEYrJzs40dpOsjAzxF2vYfiLv6BZtyFEWIAhevYEX/ExntIYpqGDdYW08KuDny1YnClq5+rX/U6qnFzKUBkmqYBYLtppGDjJUCP7fNzhVUIw0XlykkFZMqfTxr3RF0KeBGN3mrKLAGrjgTVmwKMxSU5kwrDbMZj96y83J/0OoAlCz6PB4tmdM/Od/Ef+xa7wpxZawrfD7LA+uar44cneoiSq5LZcr9uWpcFAi6fe0Z7RbuJLLXcZC9L1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qeJlU1SfstTAnPQfTut9mMmGHlltbRqZ05yRrUD+2ko=;
 b=UjSBPuEpoqCelQbh4ITQkeVviOzHJmlXI4yLDqC2uH3ncSl5n7tCZX7G3Bfq5M1wdRL0UgsNDtC94WKywS8oyTYrTLatMWzH6r2/puAxVVOKm7lDeBkzaZGBJAqiDz/JK8L+4ex32hLAWauuWseevaKCCPRgMsNu/BvrwPAxVrwdDq9e0r0a6JASmtgrlwDiQuk3iLyAtcCK/iUv1x5hrlWXpo64LxRZHewUNAWg3pS1JoDzpe34KJ/+LKv0bQkArFhKk0XcI9xFvX1fNBaQL80DsYuPq/gI4IEVaXQ2vqcHJ6a7buEMM0cEl+ffMfIrtkRIMC35V9GTOF5QyX34gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qeJlU1SfstTAnPQfTut9mMmGHlltbRqZ05yRrUD+2ko=;
 b=f0l7+Bb1ifUZxdVn+sjy2t13XAuVofMj26v8wDR/84XdZ5rL5GPeIIMt35uD98J+cdvqEKAuPmH79yYBxVlkica/k0fTv0BbvHo3vvTQ6vQWsqZnoleLOvBSM5pdY6Jl3yiNYhZ9GezOT0R+dKPezAE6DTuQZtJyGqrocH91Ld8=
Received: from SN4PR0201CA0054.namprd02.prod.outlook.com
 (2603:10b6:803:20::16) by DM6PR02MB4810.namprd02.prod.outlook.com
 (2603:10b6:5:fb::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Thu, 7 Nov
 2019 08:58:46 +0000
Received: from BL2NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by SN4PR0201CA0054.outlook.office365.com
 (2603:10b6:803:20::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 08:58:46 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT007.mail.protection.outlook.com (10.152.77.46) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 08:58:46 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdcr-00012z-Ol; Thu, 07 Nov 2019 00:58:45 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdcm-0006z0-Lz; Thu, 07 Nov 2019 00:58:40 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA78wclp020738; 
 Thu, 7 Nov 2019 00:58:38 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdck-0006yw-HU; Thu, 07 Nov 2019 00:58:38 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de,
 dan.carpenter@oracle.com, gustavo@embeddedor.com
Subject: [PATCH] clk: zynqmp: Add support for custom type flags
Date: Thu,  7 Nov 2019 00:58:06 -0800
Message-Id: <1573117086-7405-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(6666004)(36386004)(305945005)(107886003)(8676002)(4326008)(5660300002)(8936002)(36756003)(81166006)(47776003)(356004)(16586007)(44832011)(316002)(70586007)(70206006)(106002)(336012)(186003)(2616005)(48376002)(486006)(81156014)(126002)(476003)(9786002)(2906002)(426003)(7696005)(26005)(478600001)(51416003)(50226002)(50466002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4810; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4646fde7-1dc0-4785-0af2-08d76360b2dd
X-MS-TrafficTypeDiagnostic: DM6PR02MB4810:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4810AF29B4D95161C16DCB0CB7780@DM6PR02MB4810.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:186;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9pvF6ekIRnGJ2p1g0KzzP0c9UdJqfU8Uup84b64n/vmwhAQxzcYshiDNeLdIEc0eARBjnJKsE0oPFnsljKNDEW0s5LlLfgB8kvwy0sCVHekdlH8LUXp/INE70TkfLMOIlNE+udZfqaYIA1ZbKeuo2YeHLf2Kl5mN8UbM7wGBmLXQTBiI55jBdPB+2Fk67XXGYuxc/Jn+fHlDRfJb2+zGfn+kob9/VIU2vwkbItyQgk8TsDYGs6gKahGUx3g3ytC3VUjDpq/yaEIpBKLX8RyDMaj4ldsVZHiNQRIsgFYxqbYhklp5BP4R67rO4M28Lcg2++Lq1rDFS2bghnBF6YbbpmiIEXSUSBuIkqMzNtg1j+QE/lUtRDvCmXjOrLwNOetcyehiqncSc9VIJheLwToPGzuVPMFhz1kX2YScZeU6RQ961mx3p56SXwrokzJqvPiU
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 08:58:46.3314 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4646fde7-1dc0-4785-0af2-08d76360b2dd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005848_801525_F09F2538 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Store extra custom type flags received from firmware.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c    | 8 +++++++-
 drivers/clk/zynqmp/divider.c | 4 ++--
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index a11f93e..0dea55e 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -2,7 +2,7 @@
 /*
  * Zynq UltraScale+ MPSoC clock controller
  *
- *  Copyright (C) 2016-2018 Xilinx
+ *  Copyright (C) 2016-2019 Xilinx
  *
  * Based on drivers/clk/zynq/clkc.c
  */
@@ -86,6 +86,8 @@ struct topology_resp {
 #define CLK_TOPOLOGY_TYPE		GENMASK(3, 0)
 #define CLK_TOPOLOGY_FLAGS		GENMASK(23, 8)
 #define CLK_TOPOLOGY_TYPE_FLAGS		GENMASK(31, 24)
+#define CLK_TOPOLOGY_TYPE_FLAG2		GENMASK(7, 4)
+#define CLK_TOPOLOGY_TYPE_FLAG_BITS	8
 	u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
 };
 
@@ -396,6 +398,10 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
 		topology[*nnodes].type_flag =
 				FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
 					  response->topology[i]);
+		topology[*nnodes].type_flag |=
+			FIELD_GET(CLK_TOPOLOGY_TYPE_FLAG2,
+				  response->topology[i]) <<
+			CLK_TOPOLOGY_TYPE_FLAG_BITS;
 		(*nnodes)++;
 	}
 
diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index d8f5b70d..d376529 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -2,7 +2,7 @@
 /*
  * Zynq UltraScale+ MPSoC Divider support
  *
- *  Copyright (C) 2016-2018 Xilinx
+ *  Copyright (C) 2016-2019 Xilinx
  *
  * Adjustable divider clock implementation
  */
@@ -37,7 +37,7 @@
  */
 struct zynqmp_clk_divider {
 	struct clk_hw hw;
-	u8 flags;
+	u16 flags;
 	bool is_frac;
 	u32 clk_id;
 	u32 div_type;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
