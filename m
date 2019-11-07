Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB02F2A17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gNjHdkB93IEiXrbO5DWam54cxGEhmWZ8p5BN+IJ/nDo=; b=DXfKmX6PgD2Sqk
	yjg9l/lG8eN3Pq2m7xm8OnPTMKNzhvWEBWnLYxc72A+JYoZ5sxXo+z+nS+cIHXQQywvLJAEKg9fT8
	EJOiKWyc39aikf/RoHhC1rtgc5ybFPD4MQmuYP/L/ZZ3m+IhS1PNhzu5VfT9ApeILa3CL1z76uC2A
	wUc3k1HV1iA34JCoKTN602E8KkM/lEmPiYjMzPrK+yYpJB0VJab3DbtvbRLrW6HQ5PJXQA5NQggl9
	Z53NNwUbQBU/m7KLa0OM5wOEGFEZePvm63/IO4AeHVdAb4OLiiyuX8khT0q6ofqZT1DC6fcwjr9Dh
	61JX/dZn02znGh7t/0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdiR-0003Ib-J5; Thu, 07 Nov 2019 09:04:31 +0000
Received: from mail-eopbgr750088.outbound.protection.outlook.com
 ([40.107.75.88] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdiK-0003I0-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:04:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VYizInECLV3LqEMdD2T2lTMTJKRpF75O4IO7OjGM97J6a5c87A7Xome/C7Gdzzn4Q94akbt6sGUk7HmUdVxjIYXySdbS+3wcv92fJSM7Hyz7l2VyLfDTV19YcSrZAH9Es1LmecT5+FPxUOvHgqSXSfnd2fDTNEvcImp/lQlj4i72tL9uF+s/CkRyODTnNaJ3Mw+4sHPW8QkA76tpX9pKQIdgIBapzvYWL35HPu3HFB+nqbQh30IfqNv8T/H/39s6RQbDZN/rPZ2ffXMX5tWa+X2IIOhzdNT6aw2Gb+5EEGLtfpaub3WqP5UaNtrd9D/nu+2RTnJiLY4vwKnjTObOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gw4237nyp6fQxJJpCC/ruHnRC4ZONUAsQqlmaf6f9Oc=;
 b=j3Pd5/XEIVozp0lgm24vzDt/QStPsYMyPdB9pCyFQgQvsTPzwFMr6clIJvuIlhCyjWSK5lX/tplLhzGL8R8H9kodjXS4bXnEebJVIaF5ZhzPPIxSAaKDDwttonDvd9V3DfXFx0qiQkwvMlbF/BmTEt6/WyUlXGTIJ1hNyxpUUcQ3bu0AFF4lcCJjBFuOptaD6D10p4xC9Rlcpb1Jmm898+muVDUj50T6PFVoEsEBXlLyY9ewgsqbqg5pKc57937SYyLbITMo22lHjVDMuRAtPypyV8bE+oLHKXJn7KoqhfpfAZbBZbdNOGtFXmfbjN0Fp5xg6+ur4tN0C1zrphZNsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gw4237nyp6fQxJJpCC/ruHnRC4ZONUAsQqlmaf6f9Oc=;
 b=Xs+Wn37xyK5/I7U6DSaAkiHLXRg61CRpU15LjZGVtK4fd2ce9KUzx60eu8yIrw/kzBVcw3U/UiZVTjZap9Z0LFBWIgFjyt8xcttgO3INjHwiiSh2dJP0wPbQyc6PfmSihPN/vlydWRWMfhZX7vBSZ3+TfCdv6LzHzOI2DN/0szg=
Received: from DM6PR02CA0121.namprd02.prod.outlook.com (2603:10b6:5:1b4::23)
 by BL0PR02MB3745.namprd02.prod.outlook.com (2603:10b6:207:43::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 7 Nov
 2019 09:04:21 +0000
Received: from CY1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by DM6PR02CA0121.outlook.office365.com
 (2603:10b6:5:1b4::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Thu, 7 Nov 2019 09:04:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT063.mail.protection.outlook.com (10.152.75.161) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Thu, 7 Nov 2019 09:04:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdiF-0001FU-VP; Thu, 07 Nov 2019 01:04:19 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdiA-0001Tz-SD; Thu, 07 Nov 2019 01:04:14 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdi7-0001Tr-HJ; Thu, 07 Nov 2019 01:04:11 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com
Subject: [PATCH] clk: zynqmp: Extend driver for versal
Date: Thu,  7 Nov 2019 01:03:49 -0800
Message-Id: <1573117429-9175-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(106002)(305945005)(316002)(44832011)(36386004)(478600001)(107886003)(16586007)(126002)(50226002)(426003)(9786002)(2616005)(356004)(486006)(8676002)(8936002)(6666004)(476003)(81156014)(81166006)(336012)(36756003)(4744005)(48376002)(70586007)(26005)(50466002)(186003)(14444005)(4326008)(5660300002)(2906002)(51416003)(47776003)(7696005)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3745; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5662f35-9c7c-4628-6643-08d763617a04
X-MS-TrafficTypeDiagnostic: BL0PR02MB3745:
X-Microsoft-Antispam-PRVS: <BL0PR02MB3745B6D39307E79BD86649BBB7780@BL0PR02MB3745.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:446;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kG46knZY61nOjGnJNEcF4BZbSlN28D5pwu1IuvjcQo7zovaq5hjO7r2EWa+2hOb/GYX/iQCfyjkC6KMYRcNC8B1tYUG0wnnVXCrFFI2+BFFD49TmiTrrca5NX+QPI6n14uh+Vgwiy16WVa1qKGUjdbCFMSrM0N6+yGAi3GYa5tR/5jEP5xDHgGm+WeoIU7vlsV6tjxPryva6NoTYu48LoFLxSZwk6PdW/20p1Wzq+X5iLoHDGsz6gKL+zZeXcSEzn0p5l1EPAgYFA1Y3Xmrk7bdKddiVfgyfF0PWtKZ86i/aN2bpjdDjNJXRzUNChc1n0UWU15BFApKG1BLJ5Fw9BAd9XoMsahScvcJOTArtFQW7THXenmoM70ENIw9mzq0YMKPe2gB5iyjncRh8mo4wuZk/o8nsPDvAXzDyJnmM8d/H2cdnvaJ+EgWWnbGhNt1H
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:04:20.4879 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5662f35-9c7c-4628-6643-08d763617a04
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3745
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010424_537403_92B4E6D8 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.88 listed in list.dnswl.org]
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

Add Versal compatible string to support Versal
binding.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index a11f93e..10e89f2 100644
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
@@ -749,6 +749,7 @@ static int zynqmp_clock_probe(struct platform_device *pdev)
 
 static const struct of_device_id zynqmp_clock_of_match[] = {
 	{.compatible = "xlnx,zynqmp-clk"},
+	{.compatible = "xlnx,versal-clk"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, zynqmp_clock_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
