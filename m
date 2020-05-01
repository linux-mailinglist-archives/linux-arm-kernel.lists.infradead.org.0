Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2921C2152
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yb0hbCY02+bXIy23r3sS/OpmAZgtY4jMOTqaB4CMT2Y=; b=YgRsKLjXToHDcy
	sJw0uhNq6XMnbqKUk+0xtkOERKnGBv7MKLU2SY09hg0khMjPkvpzZwxLO3vvsjMBz6Z88owz9fc27
	wJAEDyk4RA2en5q25DVZy36HHPr7UtcIpJMFaPhatMnQrRqjVYcVMFEcjEhfESGVjKrMpoVbvHIPc
	HOsdA/yCgIVxO6MnRRFbqq3K1p8vFZBwEJap4KpXgazzLxFt7P2+h9oCr0qHhJjvsu8evHau3qC5f
	dUkHtGVdahevzv+kLPuVcZ8fc+1ESvUjvbakeVJGEA4L8nRJ0N7a8afFmZZfHT61clBUrk2ELX3jD
	a+bNQCXBdcnXCiu2I+vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfKf-0000ID-2o; Fri, 01 May 2020 23:44:37 +0000
Received: from mail-dm6nam12on2077.outbound.protection.outlook.com
 ([40.107.243.77] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfJy-0008Cx-Ev
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:43:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1Gg8DFOUEQFCP+EQHAuaghFdNFYZTev+xJtWA/eTLu8MKSg4L2MgyCVZgx106wgBt45g92QzG99AanBy5wFRAFJIxar1uHMCUZYOgT/QQk0i/P6VH6gb3eQ3dtMdLHBqzfT0cxb9dlSxv1x4P9uu7k7DuxYRFm1/Aljaea4SFxMjsvHh6VcTb9IKUjjjDf5fKirVLO1U2dHQXNkGcpyt0jA11vYwXfCsL/CYKQNnzYjzKD1R3jrZ/kX1aUDIensHJ8oObmuSIlHyvq8uZojIJ2ek2O1BvKViBfQ8/CxFAbrmgMvRfOC9WhztG9duD/5WxjuZCWsVxV5tL5pnDoEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PC7PliTX3bo/m9tPyJRBqcDTrRdVemB+XWNYr9hFhQ=;
 b=iIb+tE9HVtJBFvXmzi/ON4ysbYJEo5xt7/lJCAamlopPu4TeK+Lp+yi5KwcvQAgJMwozZ84t5O3kidOjdrFGZpmRxRomfMorWPr63jThdW1RDRBFWP+H2TlapmR6tiktsLj1J1HaIA8Nzv4VV/kLUA8DmOyxrtCnai/OiTWRrs6EwTZMTN9ogrzqg+4bCOuIxmT3dqvuv8DIpzbLI9PFysq7RneIwOvq5mnBb1FKdhUNP9i8QQ5vkVgxx4JMKRiTIUeFClC1bXsrJjtvk6o8yEVt5AkHdrsQJFvQfdGdRJh1PO9RsQbrVqj6rqwAtAg5bEtMWTMx8orrtaJyKr2a0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PC7PliTX3bo/m9tPyJRBqcDTrRdVemB+XWNYr9hFhQ=;
 b=qQ+CjxG4tD6lPr3COb6DdfCQ8ykqvmUpq5uB+mHx4ZxVR9Px3sSh1NtrUOughNjsguDdHRqZRi5J2loeZU1f0zHKEMbz7VPYTSQZqo+c8EY8dP8dsNERwY0lfujj3AXPIS5VV/181f3Tgu+sIDdPVvbunTXJGTOv8ajjBDMBdEg=
Received: from CY4PR18CA0036.namprd18.prod.outlook.com (2603:10b6:903:9a::22)
 by BYAPR02MB4775.namprd02.prod.outlook.com (2603:10b6:a03:41::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 1 May
 2020 23:43:48 +0000
Received: from CY1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:9a:cafe::c8) by CY4PR18CA0036.outlook.office365.com
 (2603:10b6:903:9a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Fri, 1 May 2020 23:43:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT011.mail.protection.outlook.com (10.152.75.156) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Fri, 1 May 2020 23:43:48
 +0000
Received: from [149.199.38.66] (port=36394 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJp-0005UO-Jy; Fri, 01 May 2020 16:43:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJr-0001S2-Rj; Fri, 01 May 2020 16:43:47 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJn-0001RY-3j; Fri, 01 May 2020 16:43:43 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@codeaurora.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock
 check from custom type flags
Date: Fri,  1 May 2020 16:43:30 -0700
Message-Id: <1588376610-253693-3-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588376610-253693-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588376610-253693-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(396003)(46966005)(47076004)(2616005)(5660300002)(8936002)(9786002)(426003)(336012)(7696005)(82740400003)(81166007)(26005)(107886003)(478600001)(316002)(2906002)(54906003)(8676002)(82310400002)(186003)(15650500001)(356005)(70586007)(6666004)(36756003)(4326008)(70206006);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aadf1de7-c10a-46a7-f122-08d7ee297e9b
X-MS-TrafficTypeDiagnostic: BYAPR02MB4775:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4775ADFD905C98C4B840A7BCA7AB0@BYAPR02MB4775.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0390DB4BDA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PKD3A2g2pbzrMtqO3xLOFJIbypjMpg1yB9IGR1LFs/Ilx1iArjMxbH/PNKw9B+YkuYqnR5g7duTpMDzI89svmveFOjiwGcEw/zaR4lBRTTipGsTUk8pv5I7QmivVdZGIm/oIptXCKpA9nJjbAQgyb81uMn+qUu0roEI3Ual0V6E8wTczsvpciAE+mquXtmwchO3F3WUJHUkj56J3uVmRJYIUlAutF4gnmgopNDeyZA+u4TXlIqrRA6farZIbSzc6Ir2p7Pq3h3c90hn16TVMSHBx/HmABrZBrvO3jsVcin/Lg1xI1e38xFUJhTBUTkU2cxV+MMm54UjrI9zBmrawnOG6iukwAID/I81/3vsd9cJgZUPogSwVU8LiVEU9QjsUKcMDFWo2rt5VMp6YJBefFEhTkWYYiMKaFFxfgSf2lm1G0GP67n4aEThW/cq/U47tL2PcOaXCePz63sSZM0DnFjOBGeMD2mGhZ1P/217o3onmBT/YGi/XW/yQtTF7XoKiz6jjGPRg2W7C9Ovt1tX8tQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:43:48.1333 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aadf1de7-c10a-46a7-f122-08d7ee297e9b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4775
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_164354_534862_33DB6E40 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.77 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.77 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 jollys@xilinx.com, rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Older firmware version sets BIT(13) in clkflag to mark a
divider as fractional divider. Updated firmware version sets BIT(4)
in type flags to mark a divider as fractional divider since
BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
framework flags.

To support both old and new firmware version, consider BIT(13) from
clkflag and BIT(4) from type_flag to check if divider is fractional
or not.

To maintain compatibility BIT(13) of clkflag in firmware will not be
used in future for any purpose and will be marked as unused.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc7..d43c9dd 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -25,7 +25,8 @@
 #define to_zynqmp_clk_divider(_hw)             \
        container_of(_hw, struct zynqmp_clk_divider, hw)

-#define CLK_FRAC       BIT(13) /* has a fractional parent */
+#define CLK_FRAC               BIT(13) /* has a fractional parent */
+#define CUSTOM_FLAG_CLK_FRAC   BIT(0) /* has a fractional parent in custom type flag */

 /**
  * struct zynqmp_clk_divider - adjustable divider clock
@@ -311,7 +312,8 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
        init.num_parents = 1;

        /* struct clk_divider assignments */
-       div->is_frac = !!(nodes->flag & CLK_FRAC);
+       div->is_frac = !!((nodes->flag & CLK_FRAC) |
+                         (nodes->custom_type_flag & CUSTOM_FLAG_CLK_FRAC));
        div->flags = nodes->type_flag;
        div->hw.init = &init;
        div->clk_id = clk_id;
--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
