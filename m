Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AC0113839
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AErdK9lM/qqst2WmKM2f1yDGK+A5O7GLIiVygeJh7rE=; b=j8fr8okN7ggIcj
	Z7/1OCJ4i5a9DXyDBCSJ3i/QDzhXPBoSBBgJQZ7BqVe+aSgI5y3bVfqNnqWFj6ZymOJVdz3D53YB2
	L3fJ+c5FJHnha8tPMkvahDBbGzUDlkDFjSW7U0ANiR1Dyd/M/ZZxJtPKADQSeoNoE90CFCG56cIAu
	K8kTn36mCNfBFmgkWZxH8VM90jc/epF8Jt6K6HmwkOPmMwBBwb/Yb0rGr5XjW5iAmdWGSIAKsMkHt
	gidElZtS9duP0iin1PKg1XejUBOC6GTDGgJ/begPU3QkMac0uDipYTC6LFhsP+fQ0bhXaWlthz6R9
	bKd6SfEQYIY+WvnpzuHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice5t-0000QZ-2p; Wed, 04 Dec 2019 23:30:05 +0000
Received: from mail-eopbgr690069.outbound.protection.outlook.com
 ([40.107.69.69] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5V-0000DY-Ld
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6pn1kCD8W2Ajt/yPDz8tWdbmz973yEvfoq9GpydAbcwUG6L4GLXd/d9wska0IoWo5ocHKoNVvUWfC/zrm/jCZvuqeXBS3saxYU6UBUh3sKl7xI3cNNGMN86yJRQqqj4zENyJamauK8RCoRRoQYt9+jj9cjV5Y5gjtueBOXM+WeBIwr3u19PHy8KTmOf1Dfb2t2EjOOsZ842Hd2pdagzUSKmeyGvF4qmA6Df2/Yxf/u16E8248TnEbulfhpM5XQpiNBmFCwjmqvHFjEFcw6fwY33CtPU6zuUDgjlmTBsli7YE6g2VWAdD9ijSRueqebtz4kSD5v3vl/PlDi1UoZZnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PS1iBmLZ6KRIKxIxwTNBJnyVuN9IEZnmnGOV+WnukGc=;
 b=FnvOQUErkvOJef/1/Vvp9RHZbpaw4zvAIBi7hi9AWdNZAr5YLxJG8RiV0Fo8gHUqAI1KrIhTmbBW2Ac4PukVwwAXTeSjr230/5+DHyXbjJrG4MXUyi9tmZtcSRrtmO/GRdGqaazYribahu3Vytmkb3cGmPoQi/PR9tX79Boz43VwymA4IGOpmKGmy+jYCZG+nHbwJ1x/FiyYF0uLo3nNYWaVi1TEkAMgEUskC+ET4WHGoWCr5UsUWox327OmFI5NzZeJB0noET74SSv1brtvDS2ek/kD1KVegOuaS+OMcSOfE5NHDgXpFbgdd6s2fmqyvHuPGGxPobJ0/DbFTm5giw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PS1iBmLZ6KRIKxIxwTNBJnyVuN9IEZnmnGOV+WnukGc=;
 b=YpiG2PrP9N6z76CwVbx0YD5vxe6noWUzFSob6uL6VPA4uHeP5GV+8w8Fgw6mZ/L5Nw1kytcpWkzIYLN56hzyG39JY1/90hMPA+9/vUfXA6SulHlLCVHpLgRjjDBkcDFetXprjfd6vyHH+sE/utn2bskYc1dw396rCg+1k6YvK3Q=
Received: from BYAPR02CA0004.namprd02.prod.outlook.com (2603:10b6:a02:ee::17)
 by MWHPR02MB2495.namprd02.prod.outlook.com (2603:10b6:300:42::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.21; Wed, 4 Dec
 2019 23:29:37 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BYAPR02CA0004.outlook.office365.com
 (2603:10b6:a02:ee::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5O-0005aE-V7; Wed, 04 Dec 2019 15:29:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5J-00080R-Rp; Wed, 04 Dec 2019 15:29:29 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTRV6024869; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-Ig; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 3/5] firmware: xilinx: Add system shutdown API interface
Date: Wed,  4 Dec 2019 15:29:17 -0800
Message-Id: <1575502159-11327-4-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(199004)(189003)(8936002)(9786002)(6636002)(316002)(186003)(44832011)(50226002)(36756003)(14444005)(2616005)(54906003)(81166006)(8676002)(81156014)(2906002)(11346002)(426003)(26005)(5660300002)(7696005)(76176011)(4326008)(478600001)(51416003)(36386004)(356004)(305945005)(6666004)(107886003)(48376002)(336012)(50466002)(7416002)(70206006)(16586007)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2495; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c35cdc5-b898-4751-36ca-08d77911d388
X-MS-TrafficTypeDiagnostic: MWHPR02MB2495:
X-Microsoft-Antispam-PRVS: <MWHPR02MB24955785C377EF5FFFA5606FB85D0@MWHPR02MB2495.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IBkHnWl3G32cxnNKaASdx2/THmVzKXat5BZhQt+DBwhs0A2zPRV9ANQElvZqkOI+boFPRAc8lMmeI4Z2C77fVRaqm+L6QSCG7w8JUdjWZF09Z4tl16CPKfAgXTPh9owgQ6OF8Zp8QjyhzxQynhi9bph10/MxMYVnxgd/8up7nfD+bBOjhxAVXe++nm7GKCSar8+kV5bEDI4nDEp2uR9AotHrPUvjbo3YH3cvaEwo5V1IsVMUmmOn+qbdgDg8G39FAMXWq9vDneygU2dEobpSKlp6zGrlAz2BAVsPCcQez4UEirgUKZrOh7aVrHcsmW778oRGU/Ij/d5YGDpVscsUQ1CPPAiUMMiBFCMSLJcmpru5LLbbbxwDDy1r9ihGZYOITwo80S4FQBAxIeaPTVtL+xVFF3+PeBaBEBk98wxhpax1DoPZxJcNp/52VoXmiH2k
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:35.5700 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c35cdc5-b898-4751-36ca-08d77911d388
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152941_707399_79D38221 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.69 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add system shutdown API interface which asks firmware to
perform system shutdown/restart.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 14 ++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  4 +++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 9836174..8dcf5a4 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -690,6 +690,19 @@ static int zynqmp_pm_config_reg_access(u32 register_access_id, u32 address,
 				   address, mask, value, out);
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
@@ -714,6 +727,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
 	.register_access = zynqmp_pm_config_reg_access,
+	.system_shutdown = zynqmp_pm_system_shutdown,
 };
 
 /**
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index bf6e9db..b96ea5d 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -61,7 +61,8 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
-	PM_REQUEST_NODE = 13,
+	PM_SYSTEM_SHUTDOWN = 12,
+	PM_REQUEST_NODE,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
 	PM_RESET_ASSERT = 17,
@@ -322,6 +323,7 @@ struct zynqmp_eemi_ops {
 			       const enum zynqmp_pm_request_ack ack);
 	int (*register_access)(u32 register_access_id, u32 address,
 			       u32 mask, u32 value, u32 *out);
+	int (*system_shutdown)(const u32 type, const u32 subtype);
 };
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
