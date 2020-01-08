Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A02135023
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 00:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nx8Y8BvZ3YdZUd6Bk50ws/JUt+JmqaUjDVqcvEjZAQ8=; b=hYGeXuCNl4INrG
	SJTJqI4Cz3+8tUIVfhi6cKS/m5hSD6C3KH/DwZmnEWapHC8vxT6/oL9Rk41zRbiqjr7h+r9cuNqFC
	/dcNu60jTuOlPNH5gamB6JCfb0gvsO+XZ513yxBCpaACaLEg+bWGmWrU3Yypg0a5NDbZtHKGKRR1m
	WS1KP1vUGseo+kHb+zAB+vojUIN5uGndMWxHuxD2rxXXAw9KTmC2Ock2zLZJ/PN4beGWlgQZ5ybwS
	onNPDAGQHCAnk5ZUGVA2e0FCAiRiyFn0NjmuBWl9R2y4YyaleBdgq4lZ7Gjt7GSAZ0dfzQiWHlfTe
	k3Uc880Ri2SnsChb8YwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLAS-0000zl-22; Wed, 08 Jan 2020 23:55:16 +0000
Received: from mail-eopbgr760080.outbound.protection.outlook.com
 ([40.107.76.80] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLA4-0000cp-Hr
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 23:54:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyzF0As19f+5T0qlXfcUZwxYrNE2FG78eoZDQt+gDloinV9efBoyUMEx1a+iKGVjxig2/LXk1aKTJIdCIArJPRxDe43bGE3gtO9+BZD1fe1SCNbJlT5rxqJtIC6bKz1jJl2kreEpUL4hx71C/PwD/CisJPvezg3OqPD9uENwRyDYZL61LLe2p2aNBxEdu2pv0Yhzrbx9vJfN3lgPwBxV2+Qp1rLPB3gEdlnN/9DXLnahW3Fg6M5EYAj7HIOUDCtNhWmdGrhjOlFFWqwJvwGXkMwmMmGEUVCrlWzCDL3pD3kSoiAc/y22mjqW7act7OCsDaIfHzGJFu4MTXcNP1VKKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJ1oMz9Yd1FhsQB2SzC6dQsxsGM6koBg2IizX+ZpOJI=;
 b=Q/l9qgX7dHuxvnPhQQaRbMct0pMMkNGczUIdr1bIZ49UZkUUqZ5iThd53y0e6d2B1lvnnnGONXX7EHC/Raksa6qpeTQ2kh286el7qLi2mPz16hLlP9V1JrDRRrgvL2FbdDFMyJNTOGhgJT75gWgPMdYfceS7IAuUwIkz52xm59Lpp30Dt7SQAuVM6T+tcC2j6M6Z20lLhHy0EDVO6yaF3Z2PAwlgSPP0LtbE5DBlG1x7sd8F+do+3qXEt/kAe6CStY+Omd1mVxkoIT7kKJaeIzJbkRH+MeH07BYHtWAvljCJJsAv8+VFUA/ikeVBLgjb+OZpVGVbCG4tbcj5jEIEBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJ1oMz9Yd1FhsQB2SzC6dQsxsGM6koBg2IizX+ZpOJI=;
 b=LN/AKvLgtBtIp/BfVLSha29l9mYlghXowSJawhi0CUD3AriuTGOPmxXcNuOl+DnINKSnnPZrzvyPE+JTB4psjU95BI3sluMOFIl6ZCW1aNzN81HGowL1Dpu4r/Ka4wV3hrku4bsj+Px3Wq1qzqcJd5eg3pb8MMZjAwWao3EAj38=
Received: from BN7PR02CA0020.namprd02.prod.outlook.com (2603:10b6:408:20::33)
 by DM5PR02MB2489.namprd02.prod.outlook.com (2603:10b6:3:47::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 8 Jan
 2020 23:54:47 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by BN7PR02CA0020.outlook.office365.com
 (2603:10b6:408:20::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Wed, 8 Jan 2020 23:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Wed, 8 Jan 2020 23:54:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9z-0003pu-03; Wed, 08 Jan 2020 15:54:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9t-0002BN-SE; Wed, 08 Jan 2020 15:54:41 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9l-0002A4-L4; Wed, 08 Jan 2020 15:54:33 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v2 2/4] firmware: xilinx: Add system shutdown API interface
Date: Wed,  8 Jan 2020 15:54:21 -0800
Message-Id: <1578527663-10243-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(426003)(356004)(336012)(44832011)(36756003)(186003)(81156014)(26005)(7416002)(6666004)(54906003)(7696005)(2616005)(316002)(5660300002)(107886003)(8936002)(8676002)(4326008)(6636002)(81166006)(9786002)(70586007)(70206006)(2906002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2489; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5035743-d7a5-4d62-be93-08d794962485
X-MS-TrafficTypeDiagnostic: DM5PR02MB2489:
X-Microsoft-Antispam-PRVS: <DM5PR02MB24890B76E1F53C64A750D72CB83E0@DM5PR02MB2489.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-Forefront-PRVS: 02760F0D1C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: av4E1OozbFgyZmkWgzmzLNkhknZbzNgCJn3K7bLrWT4hDMrFiAy3Ax+M3DiTxkHAkk5zfaSjaEIqD1rahND6WJBSFlKH+ZyFipkJY/3iNS4ccseZ1KL3gOcxOikSlL6L8XMiN0KoadVCGhIuqjwDJ+7uo1xPt6dHRw1kyKnsfD3z+dg/7q624av7cibFkMGOYIYtsmFyWHf96Y7lV1hlMNVNDR34Yn8Uh0qH3L4Ywn08NvsLzHiz103k7jxfGQZoapOoA0w7ir0IOyqWla92GM8NySgezl/RKExDwkoz7lvJ+UeDE9YMjo4qdyHuUjU1+6VTThCb7qQobhByelmgMDv/bovG+t2fSICPiDpgkmzeEUiNdemR+yoT7OrarNwAFsgaMOrT0hHa1ksen8NOi64/rcsCcPRdzCWJrBnmmuyIuNWZGx8k46sWwpt0WERX
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 23:54:47.3833 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f5035743-d7a5-4d62-be93-08d794962485
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_155452_591319_F0C01C8A 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jolly Shah <jollys@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add system shutdown API interface which asks firmware to
perform system shutdown/restart.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
---
Changes in v2:
 - Updated Signed-off-by sequence.
---
 drivers/firmware/xilinx/zynqmp.c     | 14 ++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  4 +++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 4c1117d..0f90793 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -668,6 +668,19 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 				   qos, ack, NULL);
 }
 
+/**
+ * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
+ * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
+ * @subtype:	Specifies which system should be restarted or shut down
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+static int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
+{
+	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
+				   0, 0, NULL);
+}
+
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.get_api_version = zynqmp_pm_get_api_version,
 	.get_chipid = zynqmp_pm_get_chipid,
@@ -691,6 +704,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
+	.system_shutdown = zynqmp_pm_system_shutdown,
 };
 
 /**
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 534814e..1fd246c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -62,7 +62,8 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
-	PM_REQUEST_NODE = 13,
+	PM_SYSTEM_SHUTDOWN = 12,
+	PM_REQUEST_NODE,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
 	PM_RESET_ASSERT = 17,
@@ -314,6 +315,7 @@ struct zynqmp_eemi_ops {
 			       const u32 capabilities,
 			       const u32 qos,
 			       const enum zynqmp_pm_request_ack ack);
+	int (*system_shutdown)(const u32 type, const u32 subtype);
 };
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
