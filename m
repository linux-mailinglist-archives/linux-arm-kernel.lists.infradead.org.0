Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF7316AE1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I74E4LewlIfgmWWP+NKeG22r2zQ8Masv+eC/bR20YW8=; b=ey1LTBmXsNS1GX
	3sx4xvyByF4yiQr0dK569xVHXfuqmRFSIFFOA8E5hARiy/Eb+ydYEQOdGUlgDEVyQZ4NfA4k2axMX
	zFCzFiiqsjtdPxQ5ViKdk37qYOyubNpA9U6X1o080wMPAJiUYDsTETNgKLVMFVeKUUj2Ojh/ZRq++
	ttsGbuCv2k9AR3K3KtbpJq+d2nVI+vmpDosIkxosTlPtHVVZXC7r+1IDlYZbU/Hr3Q6rTH4ZO0Q/A
	KBxcn2wvBTZgqjboXameaQvnfc36nzO4qC1qSL5gLuw9dUlEGBAVN1cbo/jW+Y8x75rCbPZiZetLj
	JHOn0YycPzT++S5dlV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Huc-00085H-FD; Mon, 24 Feb 2020 17:52:58 +0000
Received: from mail-bn7nam10on2059.outbound.protection.outlook.com
 ([40.107.92.59] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HuO-00083U-Il
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:52:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXbXzo6hToWz32seZn+8nsKwirXIb7AU7j3xUYTDOGc1RiXm31F2ThXVR+iX75y6pwERzR/JRwskt3LBQReNoeGjUO9gAWHJ8614zNlfFu+DeTOxjC6gZ3D3yps6NPj9XugjaL9s43WcwFGshsrv1WN1WFoOJdtI+S3dENaBtQpzwgfcKYHuaBbdcdYAfV+eAjHns2Hpnur6I3An6sco1+ZHab/2Et7rPsJdn60qO5JNOlvghvmsopv0f4/C82JHmrkpPCH7TBc2V1TARvDhW9s92XofWa+W+qEvc6cLyPXgc/3nW2ylrGkCxJENTlu5XqtA73nb8NtK7/MVW5Fkog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=11XDYm6UWIwtSXXZurQJReOgCig6+1VQ+tT/cbFAWzU=;
 b=COA80ukOakGQVNIuThHVKKgd062lel5Vgnai4R+Gop/KiSwNjw7LUcJWIGpPZMaeoPLUOD7WuOYJEbZoKOKKPHKCqrMSvtKeAtCoUM8AvRixVzQO2YLvdCRz3VJLcd02rDFPFl7uNdc9B5rpFZQPmnHBs1obTa0Exft0ixPiNWT1DQObgwsL29GmmQQMxaUzT9TMdLK3GtWikRhqzHgWuenTv85HFConq/wHQZnw0EDxNLqp/W2aGkFcV+KqrpvRIyb/SRs7mQDcJ5tDiyc2ZAX59aYxTfzaXsGz5lNixAaF9fqqyVvo9XRuv3VKj6iYnij1vUpkUILZRxjF/InJdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=11XDYm6UWIwtSXXZurQJReOgCig6+1VQ+tT/cbFAWzU=;
 b=Gck8h7+BRi1qsVC0IMdP6YVs4S3N3M0gP/GJAt1bS74mrbKRkvojmLUTPPgfsYVcFOwPeir6Neg1cwqrds7Dsqs0Lm2tWEmu7YyC2a0wD34UfJNrOR3UCxpFVMC/0EM7jRn+eo8kv8A2eRRpi+lfTo+pKB/ssCTPd8G561xfFc4=
Received: from BYAPR02CA0054.namprd02.prod.outlook.com (2603:10b6:a03:54::31)
 by BYAPR02MB5655.namprd02.prod.outlook.com (2603:10b6:a03:a0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.22; Mon, 24 Feb
 2020 17:52:41 +0000
Received: from BL2NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BYAPR02CA0054.outlook.office365.com
 (2603:10b6:a03:54::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21 via Frontend
 Transport; Mon, 24 Feb 2020 17:52:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT020.mail.protection.outlook.com (10.152.77.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 17:52:41 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuK-0006VD-Kd; Mon, 24 Feb 2020 09:52:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuF-0007aa-Hq; Mon, 24 Feb 2020 09:52:35 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OHqVfZ015188; 
 Mon, 24 Feb 2020 09:52:31 -0800
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuB-0007aE-Ko; Mon, 24 Feb 2020 09:52:31 -0800
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 2/5] firmware: xilinx: Add shutdown/wakeup APIs
Date: Mon, 24 Feb 2020 09:52:28 -0800
Message-Id: <1582566751-13118-3-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39850400004)(346002)(396003)(199004)(189003)(26005)(4326008)(5660300002)(336012)(186003)(426003)(36756003)(478600001)(70206006)(7696005)(70586007)(8676002)(8936002)(316002)(2906002)(356004)(6666004)(9786002)(44832011)(81156014)(81166006)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5655; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 180d51a3-8b9e-47ab-5189-08d7b952582a
X-MS-TrafficTypeDiagnostic: BYAPR02MB5655:
X-Microsoft-Antispam-PRVS: <BYAPR02MB565518D45F0DA59B19CA088DB5EC0@BYAPR02MB5655.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rp0MjG951sRbhwv+Mz1QbAe4Img8tkYZoBjB2++tU6eDiE6yhiDp7OyPy6QWRyd2xyAvp8XGSrd89WInUdnqZf9IYVjdu3DDCxl1obkho0g3EYTrZxslp4Jj5uPefAuR4oCcN2MO3WgVPJALmxgsRa6fhPCnvaTonq5YFq79T7+LCuARI9Ff5BnX8Q9gVQr3FIVJ365pWEaKZEGA8jkid6ojstCGbx/uHg8lN8+tlU+bAvaIeeGOd3LaMkJQ6ilTB+eANTR67Rx1YbapXHSIP8jn/xdJyMW/0ecsDcJrUImkZBvkZ5Y40HyjLnvBPUlRU0vMI5MY5RTqoKkrUSzhJj1M7u9lxy19lYVxqD6T2yE4xzfk1iK9xmO8W76ONy5ufmF49nGoXerAJqevOd/sMbvqotcmZtQtSHqfzRXIfBnsKzFQi89ocr+Y2zIu6BsU
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:52:41.1447 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 180d51a3-8b9e-47ab-5189-08d7b952582a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5655
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_095244_622276_DE47D24F 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.59 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add shutdown/wakeup a resource eemi operations to shutdown
or bringup a resource.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 35 +++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  8 ++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 20e4574..486dcb1 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -692,6 +692,39 @@ static int zynqmp_pm_release_node(const u32 node)
 }
 
 /**
+ * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
+ *             be powered down forcefully
+ * @target:    Node ID of the targeted PU or subsystem
+ * @ack:   Flag to specify whether acknowledge is requested
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_force_powerdown(const u32 target,
+				   const enum zynqmp_pm_request_ack ack)
+{
+	return zynqmp_pm_invoke_fn(PM_FORCE_POWERDOWN, target, ack, 0, 0, NULL);
+}
+
+/**
+ * zynqmp_pm_request_wakeup - PM call to wake up selected master or subsystem
+ * @node:  Node ID of the master or subsystem
+ * @set_addr:  Specifies whether the address argument is relevant
+ * @address:   Address from which to resume when woken up
+ * @ack:   Flag to specify whether acknowledge requested
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_request_wakeup(const u32 node,
+				   const bool set_addr,
+				   const u64 address,
+				   const enum zynqmp_pm_request_ack ack)
+{
+	/* set_addr flag is encoded into 1st bit of address */
+	return zynqmp_pm_invoke_fn(PM_REQUEST_WAKEUP, node, address | set_addr,
+					address >> 32, ack, NULL);
+}
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
@@ -731,6 +764,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
 	.release_node = zynqmp_pm_release_node,
+	.force_powerdown = zynqmp_pm_force_powerdown,
+	.request_wakeup = zynqmp_pm_request_wakeup,
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index b8ca118..0a68849 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -82,6 +82,8 @@ enum pm_api_id {
 	PM_CLOCK_GETRATE,
 	PM_CLOCK_SETPARENT,
 	PM_CLOCK_GETPARENT,
+	PM_FORCE_POWERDOWN = 8,
+	PM_REQUEST_WAKEUP = 10,
 	PM_FEATURE_CHECK = 63,
 	PM_API_MAX,
 };
@@ -330,6 +332,12 @@ struct zynqmp_eemi_ops {
 			    const u32 qos,
 			    const enum zynqmp_pm_request_ack ack);
 	int (*release_node)(const u32 node);
+	int (*force_powerdown)(const u32 target,
+				const enum zynqmp_pm_request_ack ack);
+	int (*request_wakeup)(const u32 node,
+				const bool set_addr,
+				const u64 address,
+				const enum zynqmp_pm_request_ack ack);
 	int (*set_requirement)(const u32 node,
 			       const u32 capabilities,
 			       const u32 qos,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
