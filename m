Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06C91B7CF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pElp5AtlW10uFhjtgKrO91E/1IT+il3hj+6bGQNSNcY=; b=lXGlA/BpElbp1B
	1BsQuSQ/EtxZY68Q7UJ6MXfekdES/YuvAuBXJVaa768W+7FSNkHJY0/XWLVGZfU0Kwg4sOaie/nR9
	DvX17MDHBwOKfzRAFBT0wkOdPwPjDTmumpqsJly47YIhB4vH9lcig9xVIG+M7vspoXuu7+aiYqFLZ
	b/WZxIcjhKE0NbbGhCa0VtTOGwmb/DMB2aCAgtoA9iobjwH3hQgjgVKj70TqqRlnaz3gH9lLrnkVC
	NhDlhLOG+1fTLSQ8CO5TFYjvBYIlOi7bXaVfu2NipJZcQGzsCyuCEkH/191BW72zbUgS+wAb0kjct
	nMDr1kpxKxV6xs71nbXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2GS-0006T5-Uf; Fri, 24 Apr 2020 17:37:24 +0000
Received: from mail-bn8nam12on2065.outbound.protection.outlook.com
 ([40.107.237.65] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2FW-0005os-Hc
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBioZ57QyJpc5CODc62GB0NugZfYsscpp+QNn0UH32bNBBSs7O3J0ltbuu1wRexNlH3Pz5stkfctKZGsJAf10n38I6xfvhegIsfqffHhPdXC+Pf51MNOqivV2yCRyvAv1tW3JxOVk/duY61rZkLQi3xBQ5jFItRmPJ2AqiD1g25cyrtwA+A4uAlwCPGwxXND0oq29afcBrYb5Dhysll+G876cnBvXFjrsVxU4mp0S//+CoRUlxZ+GrRyhvf/a40IBjPfblikl7PFyNeOUpMoL+YBoxIdbYBHjwAhcq/UxZbJiq2ctBJYLs2DIOrNwL2tpC3NEBF/hrPkXYZqtstcpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h2uJTK7FZlizxilhrEMccVTJJywvg+fjRCT5ql8HyzY=;
 b=K5npfWFzPLjHCGc+ScllP4Q3YuRiwrMwqlJmuuQnzWwONh6FIKwu5IInJvPs8I6PGgy8bs0U+7EKKnCd42W8twDHnZgNjPmUuzABw0zoJ35uaL7ZN7aA3xefaKqn08k4Zage/5baU7WMd2UjapxoewgdD20dO1NMbQG1sw7ZfB30dx7MEB6Fipi/1cRfrRJp5VMe1MEZnyhjAkD7VPS82unElJe6OWf+65A/I3Yqo49AzpgGieQ+NHca/WykaX1Mdkq1Tx3zVTAi8ADS1x325g3MXPmAHqUh9QPGuEofLP6IMb8+1uoMuB+D2fhbLR7RqG2t3cvpWkPmllcnLFwdOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h2uJTK7FZlizxilhrEMccVTJJywvg+fjRCT5ql8HyzY=;
 b=XI2c6th4/NObskD/D1+s3Q66Ax3jHxRxST+D6zSWKHMV+sJkZJrCW3xIkODzb4WSOnlXXU3figaLWhokv8UAs2RB64PLmeQmhzHwDyuz99SCJOI2uZGx8FdnMXh8uF1GaTKGAYGm53nKITVdlekp6yD44VN5yB8wmWWF6d1hBZk=
Received: from SN4PR0201CA0040.namprd02.prod.outlook.com
 (2603:10b6:803:2e::26) by SN6PR02MB4383.namprd02.prod.outlook.com
 (2603:10b6:805:a6::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 17:36:22 +0000
Received: from SN1NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2e:cafe::c2) by SN4PR0201CA0040.outlook.office365.com
 (2603:10b6:803:2e::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT050.mail.protection.outlook.com (10.152.72.128) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41700 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BD-G6; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-1o; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaAww026364; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FG-0006h9-QV; Fri, 24 Apr 2020 10:36:10 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 1/5] firmware: xilinx: Add ZynqMP firmware ioctl enums for
 RPU configuration.
Date: Fri, 24 Apr 2020 10:36:06 -0700
Message-Id: <1587749770-15082-2-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(39860400002)(376002)(396003)(46966005)(26005)(70586007)(81156014)(44832011)(82310400002)(2616005)(81166007)(7696005)(426003)(336012)(4326008)(70206006)(8676002)(186003)(8936002)(356005)(2906002)(6666004)(82740400003)(5660300002)(9786002)(47076004)(36756003)(316002)(478600001);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68db3aa4-0c1e-429b-c8aa-08d7e8760165
X-MS-TrafficTypeDiagnostic: SN6PR02MB4383:
X-Microsoft-Antispam-PRVS: <SN6PR02MB43838F07165B784F11E8A2E7B5D00@SN6PR02MB4383.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w0FcwqGUgdPmywJvLKj01OE/FLyWkfGcDMf8947yjWou9ru2osIyOXLwiTzTGp/o6y040fnEAnTllCG8se/aIWV45l3SLU6bv3zJmzQiIPIOUFh3XTPADDYbqmxWu4oAJar+y0nOQU/YjiDSSO23b7d67pzLIfcrT3A8djZLS+7ue/j9MizE1hsuHVuKsRX2PwTzIrLsG36/zLSFoSpOs+0ezN4beumkZyDgWEPh1VPK12WV5W4XQFmsHsZI83EOlwqpg9WRyGkLa2c/t9wRTHi+4OPOpOyNbNyo7XeS3Wgb/2H1xGeSiLZiFj09JjfphC4YeThEZIOs478JYsSmjYCYMBMahw8wwoWxrPZ4kj4+E6fg7VCPMaHgh1Pd19VodCPyHa9bs+sgQfpIxc+doqtJdghPMgBbiinEgUF1jp6hQfQiku/R0TMcdsmXvFCTebod4FCO+P4O/Y00QnnRXF95vNH1r2TlewGW4ZbjZdN3PD7ag2+Rw4xarlIg/hYO3QOFbRHok9MkkaSJaKv0zQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.3267 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68db3aa4-0c1e-429b-c8aa-08d7e8760165
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103626_583463_5D1953C7 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ZynqMP firmware ioctl enums for RPU configuration.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
changes since v3:
- add default values for enums
---
 include/linux/firmware/xlnx-zynqmp.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 5968df8..bb347df 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -104,6 +104,10 @@ enum pm_ret_status {
 };
 
 enum pm_ioctl_id {
+	IOCTL_GET_RPU_OPER_MODE = 0,
+	IOCTL_SET_RPU_OPER_MODE = 1,
+	IOCTL_RPU_BOOT_ADDR_CONFIG = 2,
+	IOCTL_TCM_COMB_CONFIG = 3,
 	IOCTL_SD_DLL_RESET = 6,
 	IOCTL_SET_SD_TAPDELAY,
 	IOCTL_SET_PLL_FRAC_MODE,
@@ -129,6 +133,21 @@ enum pm_query_id {
 	PM_QID_CLOCK_GET_MAX_DIVISOR,
 };
 
+enum rpu_oper_mode {
+	PM_RPU_MODE_LOCKSTEP = 0,
+	PM_RPU_MODE_SPLIT = 1,
+};
+
+enum rpu_boot_mem {
+	PM_RPU_BOOTMEM_LOVEC = 0,
+	PM_RPU_BOOTMEM_HIVEC = 1,
+};
+
+enum rpu_tcm_comb {
+	PM_RPU_TCM_SPLIT = 0,
+	PM_RPU_TCM_COMB = 1,
+};
+
 enum zynqmp_pm_reset_action {
 	PM_RESET_ACTION_RELEASE,
 	PM_RESET_ACTION_ASSERT,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
