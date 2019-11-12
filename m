Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE994F906F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7j42OOF8x0XLU/5sL1g5XJ41zp1L7Z29XM2tbGKstk=; b=sXyrgua7PpfQXZ
	qp3biygTGAKWxBhz0Spm8M3BBZl007btlrNQ25kt0NTgq9dHw2oWvOW7bsLByqpIoffQ9fsvJ7DBQ
	vqye82svSe7khUl8eqW+oq9E9G4lvWHR7sUM6TQvEdVmH/dYw3FQY1K4WBznmGG2tfrrzH2B8BEKL
	pMCbrReCissdyh5GaU//xbbQcV8pgejnUS5t1hSC2ti9X3XbyplovkM7TOFa87uWvEtle6y6lalP/
	MVZ3bSvn9Z4FMmICgSZp44tpW28knP/lV55w2pP9a8G3vL2Ynk25NzMOsSoIuSyeeCmwZW1fkysA7
	Il4jAUMkrj7han/qG4NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW4u-0008TX-Ve; Tue, 12 Nov 2019 13:19:28 +0000
Received: from mail-eopbgr750058.outbound.protection.outlook.com
 ([40.107.75.58] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW2t-0006ly-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:17:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuNqMuNRF8MTjq5kX6gqUr7RRiLQzsYbm+e1bGPxQ5jzd+uIAxkx7nU47SGCWmWbdINJqYdNj8X7kPujt0oxzZQ0p57J0GAlLxY2nm0lmnCwnJlDp34We0aSWEwP2It1PoKiq2IgYP5k27+oxshy8Jfib/+Za8jWDyZreKdqSOWkS3xUGBCwIgL+BBiatNa1JW5ZBcUlwFubQ3fwDiMDs9RIuEW9ndeFQdCvUSSB3EtoXAGXY8mQpbpYp5RWnp4Fis7BG7IqGX7EfREzLd+80xnBQvxYKOvm9vl4VLEgCkKBPgnWfKDlNvJg7PQDoFadw2nhmoy7a9gGob7VAFQ08g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y0REmxpnpKp22WD6nXTe52Q4Jsfe8pXDkZTPk1CgtJI=;
 b=ZlT+eWvemw0qlYvKNPUWwSG7+WehHHaQtftKSgzVCs579zaY7G9GzOtG2MgigfTWEW0UsXU2nmHZTVbnqJ0TG9KsJbbWmlj3lFCfgOocZDxSBP4leFrXRTtTxYNm5eZ3WSQ47LqvmR9LUip1sk4hVgzBPcoyaSKpOx9/1XcdwIEF9wYWGKn8kMmdqWpxxWL90Cq9WqvK08JV1GZoc6y2Z3lXOUZqwfexEU5/QcGEfq54e5Nelwzo9RkpujiUzowgLK/LbQNlah/Mpxlppbxd5TIS9dtmgnMPL2fzHBcm80LMY4s2pwG2LyJ1BDQBq0k68zcThLIg54bc36N3ysQxMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y0REmxpnpKp22WD6nXTe52Q4Jsfe8pXDkZTPk1CgtJI=;
 b=Dj/Ragp0fyWRCLmqIKv3LKnwGdfLVhpjyTOww0VmFNZc1qB+2fNM/AEs5VhIGEGZlY+UreaBPKHELg8oocrgWjU9p6Y6bFGFortxxKXStTIVHOwLRZOKfJVBDiLNjGf1ExrpbkkNnj8fbwYsBY8xusIuD+4GvKQS+ORbm8LHmrI=
Received: from CH2PR02CA0001.namprd02.prod.outlook.com (2603:10b6:610:4e::11)
 by DM6PR02MB4889.namprd02.prod.outlook.com (2603:10b6:5:fb::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.23; Tue, 12 Nov
 2019 13:17:20 +0000
Received: from SN1NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by CH2PR02CA0001.outlook.office365.com
 (2603:10b6:610:4e::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Tue, 12 Nov 2019 13:17:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT016.mail.protection.outlook.com (10.152.72.113) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 13:17:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2p-0003tA-La; Tue, 12 Nov 2019 05:17:19 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2k-0004J3-Hz; Tue, 12 Nov 2019 05:17:14 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDH8HI011332; 
 Tue, 12 Nov 2019 05:17:08 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2e-0004Ds-13; Tue, 12 Nov 2019 05:17:08 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jolly.shah@xilinx.com,
 dan.carpenter@oracle.com, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, ravi.patel@xilinx.com
Subject: [PATCH 7/7] clk: zynqmp: Fix fractional clock check
Date: Tue, 12 Nov 2019 05:16:20 -0800
Message-Id: <1573564580-9006-8-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(189003)(199004)(107886003)(16586007)(50226002)(316002)(6636002)(106002)(4326008)(305945005)(6666004)(356004)(478600001)(486006)(81166006)(81156014)(26005)(8936002)(36756003)(8676002)(7416002)(44832011)(2906002)(9786002)(336012)(446003)(426003)(36386004)(2616005)(476003)(70206006)(51416003)(5660300002)(76176011)(7696005)(70586007)(11346002)(186003)(50466002)(47776003)(126002)(48376002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4889; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 879e0f80-5ab5-4ce7-9494-08d76772a5da
X-MS-TrafficTypeDiagnostic: DM6PR02MB4889:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4889849BDAC058450548805BB7770@DM6PR02MB4889.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3eFeADfoKhjBWHHdV9cN2J7FOPK39AxOP7vJTPtGxOlwVLGeQGDjN88KTFrQLKvDlgs6DnfB6k99M32hEaThbIB2pkwybP3eKiAUC0qGlz4cCUd91ayYiprk6OtWaeZwjNI31RmvsgHc6u5bHPmGejWY+FE4MaCdmCjIdleb0KZlNuzNS0nBQL7AUp8Q9P0LuMMFhUBOhJRVFkQWWc8MHloiI6Jw3BXL1ElISIJxzohKzLfw+OMaGwF7vCuPCd1Dp7nXyE4MhhKNgjJrQC+8DHmN33ymx/WtfLX5pMJLj0AKqzEzxMeZ1CJvd8Y7BoVSKgbvgJgUP/zlAST710PdN84aDE4B+RCG1v1v+YGsATE7J5MvFZ37tjV1ejgLoKp1qAW0QB/8BAhw9UxB8LhVS/qWBuTRyV/T8ap8w17Xqb8bd8NnQPEDYpz4Xh+l3eQ+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:17:20.1161 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 879e0f80-5ab5-4ce7-9494-08d76772a5da
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4889
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051724_026508_1D8599DD 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Firmware driver sets BIT(4) to BIT(7) as custom type flags. To make
divider as fractional divider firmware sets BIT(4). So add support
for custom type flag and use BIT(4) of custom type flag as CLOCK_FRAC
bit.

Add a new field to the clock_topology to store custom type flags.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clk/zynqmp/clk-zynqmp.h | 1 +
 drivers/clk/zynqmp/clkc.c       | 4 ++++
 drivers/clk/zynqmp/divider.c    | 7 +++----
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-zynqmp.h b/drivers/clk/zynqmp/clk-zynqmp.h
index fec9a15..5beeb41 100644
--- a/drivers/clk/zynqmp/clk-zynqmp.h
+++ b/drivers/clk/zynqmp/clk-zynqmp.h
@@ -30,6 +30,7 @@ struct clock_topology {
 	u32 type;
 	u32 flag;
 	u32 type_flag;
+	u8 custom_type_flag;
 };
 
 struct clk_hw *zynqmp_clk_register_pll(const char *name, u32 clk_id,
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 10e89f2..4dd8413 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -84,6 +84,7 @@ struct name_resp {
 
 struct topology_resp {
 #define CLK_TOPOLOGY_TYPE		GENMASK(3, 0)
+#define CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS	GENMASK(7, 4)
 #define CLK_TOPOLOGY_FLAGS		GENMASK(23, 8)
 #define CLK_TOPOLOGY_TYPE_FLAGS		GENMASK(31, 24)
 	u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
@@ -396,6 +397,9 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
 		topology[*nnodes].type_flag =
 				FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
 					  response->topology[i]);
+		topology[*nnodes].custom_type_flag =
+			FIELD_GET(CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS,
+				  response->topology[i]);
 		(*nnodes)++;
 	}
 
diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 67aa88c..e700504 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -25,7 +25,7 @@
 #define to_zynqmp_clk_divider(_hw)		\
 	container_of(_hw, struct zynqmp_clk_divider, hw)
 
-#define CLK_FRAC	BIT(13) /* has a fractional parent */
+#define CLK_FRAC	BIT(4) /* has a fractional parent */
 
 /**
  * struct zynqmp_clk_divider - adjustable divider clock
@@ -279,13 +279,12 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
 
 	init.name = name;
 	init.ops = &zynqmp_clk_divider_ops;
-	/* CLK_FRAC is not defined in the common clk framework */
-	init.flags = nodes->flag & ~CLK_FRAC;
+	init.flags = nodes->flag;
 	init.parent_names = parents;
 	init.num_parents = 1;
 
 	/* struct clk_divider assignments */
-	div->is_frac = !!(nodes->flag & CLK_FRAC);
+	div->is_frac = !!(nodes->custom_type_flag & CLK_FRAC);
 	div->flags = nodes->type_flag;
 	div->hw.init = &init;
 	div->clk_id = clk_id;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
