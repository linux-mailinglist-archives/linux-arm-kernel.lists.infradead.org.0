Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57746F2A03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDO/gbRtBeCKdvB9WdIcN2JyYmMHCnOkBXk7rd2Wa4M=; b=fWR1RW8Vj4LdAo
	m9yv3qO+kI263Pv40FAHQRbiQT+4qkioeNWOIuJOEo6maeZqr6FD3ZHHFmagek4ghvLaK8tM5bNvW
	WNZbC7FmJabriwnQW+4oNTQxStqE1yRvib3kAC0LAJnxqRxvXSHDR2689CVQUaoXOiowL0QkvHw6h
	A8kArJWNwc8S9I/PSntaKouLbb9iZ1p0dz4gRYxithPCtFy8xtl/7i/VBoyph5HSqijWD1lLqmZyf
	MF78aOZlkdfWPFoRtF1gAszQ4KIc4auxmTXX+b3QOC/FQBmixDroyzgdwsiK+5qp1aHE7KqPDMRw7
	2TvYs4WqacdpJOhTCoFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdgF-0002dT-V6; Thu, 07 Nov 2019 09:02:15 +0000
Received: from mail-eopbgr820083.outbound.protection.outlook.com
 ([40.107.82.83] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdg6-0002cU-9J
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:02:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzsr89JmmvHEVvtXlqnpiBq5tSZqFkwabjYAkZ6AERHq1EnLcXZkwqmnMdDYHS+mBIk1zlWh9+P/7kwrqCq0yIMLEICp7JsDoB3mqE0Gek0nY+x3pPaLCLucUUi5IvLs38RikxbmQZ67bv05RhaXwATq6oNh3atGhxiuXkHzrswWKMnHxTK9jXLONDmziD4dE6LFA3Y5vwW5JuAZmhWUlfacCjLsNtmzr2XJPo39dN/5uAjlzKgCclQhFGpM6L+ziMMOC2Om3hximYcbp8I71WxkUWIDdBxU/HzdBM2+4dbzZ/c0xl5TW8QchREM+a8/OcLHdgOnKw+OypgNJ4hLhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QjaJUJAOtY7/1fdlyMNFXTCcnzu2Ke/RYTQVTqjaflM=;
 b=eTL/E8bmqCfmNpvepnHnNdU+H0zM5ILQbMUSLZLS+56dhBarM5G7w8zmtnUgCXYooLmgQ60bxW1D/Z2XNqHOUx+ttnCK5fEzUlbOch9L6A6Yn2hekEycU1fi4vHSCxcoyNEGG0J0CbrVzVMG49a1IbDY/2hWgzWDai0vzkzXTGQAf/ee7EtqgKHm/CwlY1UytmJM9zB5+qr7J1ORl+lhIEWJykCB05tfzmwVCXWtSS+fEwwfInF8lY8c/WQve6Oq164ucOOkbooKNpjxLiTBlHXvcXansz/xAaMR1Ah3geiBOa6abnOxaeVrW96rFcC+A+P4BIe7poJvq4Y6tZEWlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QjaJUJAOtY7/1fdlyMNFXTCcnzu2Ke/RYTQVTqjaflM=;
 b=g+6ymRACzt4QxJICKagviasTPixqQwwunU/f4l4kdbGVWnjn+KuycCIBBJvd9T8lxBtwG4lJW8ds/1q+VxKPDPN24jPx1gXWmkqJdyi+ARu5cAKWBJZ+0coRbyMtGj4o16G7sAtcijxmf77SMnDeTUgqMWIt+i0SPJs/2ezLPsQ=
Received: from DM6PR02CA0062.namprd02.prod.outlook.com (2603:10b6:5:177::39)
 by SN6PR02MB4512.namprd02.prod.outlook.com (2603:10b6:805:af::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Thu, 7 Nov
 2019 09:02:00 +0000
Received: from BL2NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by DM6PR02CA0062.outlook.office365.com
 (2603:10b6:5:177::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 09:02:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT014.mail.protection.outlook.com (10.152.76.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:02:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdfz-0001Ej-H6; Thu, 07 Nov 2019 01:01:59 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdfu-00017a-Dy; Thu, 07 Nov 2019 01:01:54 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdfo-00016I-TX; Thu, 07 Nov 2019 01:01:48 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jollys@xilinx.com
Subject: [PATCH] clk: zynqmp: Correct bit index for divider flag
Date: Thu,  7 Nov 2019 01:01:30 -0800
Message-Id: <1573117290-7990-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39850400004)(136003)(376002)(199004)(189003)(2906002)(106002)(50226002)(51416003)(336012)(7696005)(6666004)(48376002)(356004)(36756003)(107886003)(4326008)(54906003)(16586007)(316002)(36386004)(6636002)(47776003)(478600001)(8676002)(70206006)(186003)(70586007)(4744005)(9786002)(5660300002)(26005)(44832011)(426003)(14444005)(305945005)(2616005)(50466002)(81156014)(81166006)(8936002)(476003)(486006)(126002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4512; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f3ac441-4b97-49d3-72ca-08d76361265c
X-MS-TrafficTypeDiagnostic: SN6PR02MB4512:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4512930F159A01FED6EF4514B7780@SN6PR02MB4512.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uUikHUmcmBxb4VlCd2UmU+Dp7CEEy9WZpZs3DNWNddA69ugekMbKwAdhJamDtm7nt33fwmV7NFg0pXVsSREbFTMaWwUa5K96hNcg1A1NodQUHWCgcoAPzKnsZEY8ls2xxwHhUhHNeQv0C3j2aluv113cMI/afFgapv+0eWsh961NBQaLAkptyLPYPHkiO3VlrhL/ulyHQGJrV8BPXQ9UoPrsdyRUNxCI3KzNf25Z2OjbxO+2BzUF08RacvJIjgoZGbR49hHVIMms8fcRN753BypgTUc8xekER2NKaNVHKqdBBuyuneY9TshRFwZwdPA14zl2ab9LEEZ3ijQNxqpLUMgu4xMrYHvCBzGfjkfQo/tgt7a3PgjugqxAZFj9F2hu4vT2KzBz6fkSSAUneFiCAffUlube3R7+BQteA7OGjcU8Pll+o9E+YBm2eCu74m3e
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:02:00.1053 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3ac441-4b97-49d3-72ca-08d76361265c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010206_329362_61D98817 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.83 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update divider flag bit index to match with firmware.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index d8f5b70d..9e60834 100644
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
@@ -25,7 +25,7 @@
 #define to_zynqmp_clk_divider(_hw)		\
 	container_of(_hw, struct zynqmp_clk_divider, hw)
 
-#define CLK_FRAC	BIT(13) /* has a fractional parent */
+#define CLK_FRAC	BIT(8) /* has a fractional parent */
 
 /**
  * struct zynqmp_clk_divider - adjustable divider clock
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
