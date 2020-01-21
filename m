Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF75143AD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIS/dPQzmJ8z8Bw3FForwGiNH/ztZoGIqWKttC61RZI=; b=FVExZkTbXjmS/z
	jbW0maHb3mXkuuESWdCTzeFK4i0dNQyuzFsn8XqaU37H/2zuzl5MbInwfzgVidFT7SvkvvRc0f+6P
	h3FDdzxyiMPfTJ8KB86lLpztdm/1RHCSuM51LVnScW+FXsm5uPXq5o8ytj8dke+x2Lfq4N/cYiql8
	dm2TpclJQUqgYhifxuSNb87THwadAILA1ztcfVi49diGmlm/sDGKafm+8c81pa0YuefzN+UZ0wTLH
	2fjyusy10zUHiVI9uOfiYV6puxWX8qVEZ0LYC7O5J4D2WpQlL9s6dIw2xeSJZolP9zzVRp58DGksL
	AbnTaCZ6eISh6QnPE1xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqgM-0001qy-Pr; Tue, 21 Jan 2020 10:22:50 +0000
Received: from mail-dm6nam11on2049.outbound.protection.outlook.com
 ([40.107.223.49] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqfU-0001NN-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:22:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hj1kiikUC0VIuU6gVfW39P86ZbNtYBYLr/e0zfakL899MYqgbckCyPnpNY+WXe3+vgyY1li8LAROHrTgRwdzlORPjqDfpwronela2DTNv1o4llFgUapokV1aKvyq7tRdhgE/on3YYF4NQ0luXVyrxxWyyaj0QSSN9M+pP9lpC5/RPPGwTwOAEOpjF/0+mhj0brkjAGmmjO0jDG6FG3dekfQq3HMbu7oxeb3EanuS3u1zF/sw+CwEgZi2HAIVSOC7mZjQL93lBT/w1sY9St5Fskrzw2RH0JnvB6h4HSf9z+aENEBe6phuG2jFu2vtZtPqAbiYPE9LqglvlHhOtqJybA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KbwY3cqfAxRai/Dnhxkz3oxoBveEgWgChfQmAB3UH/k=;
 b=Zqk83Ri59Ox9h1IL8OqWmGotVeOSTyeNYqFQ5XUBUhwpnQAzD00jCfsVWNjir7SMrDoqe7zbvLUhD2Fltd6Hk/5GCUVj7JhQjpsveSGc7WB5gzVqw6vXhouvngOPpvIL3kdBwL80ytoWxrulExxKJ+VO0zBM1xJL0wXBTj5PS5Frn6hYJbs7S5ceKR4fVR49LXAE+KLtG5TYoZO2dpIFVuqQa0bEskGQHbY3Q699ExmEGOWhrIMzoKm9P52troNljs4C/sqUH/ojCTD8pd8UyXo82CMG/pZC+05i5wHXPJczk3vVOL55gMhDkDJZhn7/ceNneJ6/xF5QZMsxZ66zfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KbwY3cqfAxRai/Dnhxkz3oxoBveEgWgChfQmAB3UH/k=;
 b=TRE9Oz/XDwm8IFbLecujUItNZxHWXoYudFWmZ7THQXQnn40lowiw7efjIW7PlqpCVvI7HnH+dHTNhh/X7vODcex/8Nr6GdTCN1VDGeR0eCrmnH4kgk3U/KoxSFdQRaknTXzyUou6IVwBxT1mNFSdtbkynaXu1ybleDXjINK6DEM=
Received: from CY4PR02CA0044.namprd02.prod.outlook.com (2603:10b6:903:117::30)
 by DM6PR02MB4377.namprd02.prod.outlook.com (2603:10b6:5:22::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23; Tue, 21 Jan
 2020 10:21:53 +0000
Received: from CY1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by CY4PR02CA0044.outlook.office365.com
 (2603:10b6:903:117::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend
 Transport; Tue, 21 Jan 2020 10:21:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT009.mail.protection.outlook.com (10.152.75.12) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Tue, 21 Jan 2020 10:21:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfQ-0000zD-6u; Tue, 21 Jan 2020 02:21:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfL-0003Rc-30; Tue, 21 Jan 2020 02:21:47 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00LALgCD001401; 
 Tue, 21 Jan 2020 02:21:42 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1itqfF-0003Pp-SH; Tue, 21 Jan 2020 02:21:42 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 18BA3122162; Tue, 21 Jan 2020 15:51:41 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: michal.simek@xilinx.com, adrian.hunter@intel.com, ulf.hansson@linaro.org, 
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 manish.narani@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH 4/4] sdhci: arasan: Remove quirk for broken base clock
Date: Tue, 21 Jan 2020 15:51:35 +0530
Message-Id: <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(189003)(199004)(5660300002)(426003)(8936002)(6636002)(336012)(2616005)(70586007)(478600001)(26005)(316002)(42186006)(2906002)(6666004)(186003)(356004)(81166006)(4326008)(6266002)(81156014)(8676002)(44832011)(36756003)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4377; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a607ba13-4729-41cc-bfb1-08d79e5bbbe2
X-MS-TrafficTypeDiagnostic: DM6PR02MB4377:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4377ADCB3580FB4D032F6D8FC10D0@DM6PR02MB4377.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-Forefront-PRVS: 0289B6431E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1voyOdRGH+ntvKWeyvt0AflNJL8umalmu1CfCx/LhKBPnk9Wwely8QJ7AHIKHSsWuGKHyuCsoHSz7I+Z8eUh+hpAWGX4poh1Ro/Q67LVNplW1ySqJ+4PqZZ1TO5bUoBm2lIVwMbdifJ/XgWjYsDgtFIKFBG4o7J1oB1ONaiVoqAb1XY3H1MV1rbEWqrnfuX0nWE7kG6W/oto8tncz4N5vARp3OocF4qFY8xBQMHfgrVo+C9Rpl+KZVqLxRdFVWp348Tb+RcUWOKU5of2qW3zOyu0HZwUtE7+8Cu96E2fFicM4u6nSAVQpTLkFO0JYxsHtiL5M4vAWtgnK5kxbxs5s+lIHlKiOSlQobdyJ7g5nJ6D2nanimcYQz+84y5GAzrnE4vbAkFGtjVuBeDQ8j0lhG9NWrlUqWcriBrj/xkxcdhFVbbRr2UZ9yOhr8WIzqdQ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2020 10:21:52.6335 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a607ba13-4729-41cc-bfb1-08d79e5bbbe2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022156_783496_2D88AF19 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.49 listed in wl.mailspike.net]
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch removes quirk which indicates a broken base clock. This was
making the kernel report wrong base clock of ~187MHz instead of 200MHz
even as the measurement on the hardware was showing 200MHz.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
State: pending
---
 drivers/mmc/host/sdhci-of-arasan.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 39176ab5ca1f..0146d7dd315b 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -358,6 +358,17 @@ static struct sdhci_arasan_of_data sdhci_arasan_data = {
 	.pdata = &sdhci_arasan_pdata,
 };
 
+static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
+	.ops = &sdhci_arasan_ops,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+			SDHCI_QUIRK2_STOP_WITH_TC,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
+	.pdata = &sdhci_arasan_zynqmp_pdata,
+};
+
 static u32 sdhci_arasan_cqhci_irq(struct sdhci_host *host, u32 intmask)
 {
 	int cmd_error = 0;
@@ -553,7 +564,7 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 	},
 	{
 		.compatible = "xlnx,zynqmp-8.9a",
-		.data = &sdhci_arasan_data,
+		.data = &sdhci_arasan_zynqmp_data,
 	},
 	{ /* sentinel */ }
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
