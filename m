Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA9517C929
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kts+pTj4ZP8HYJqyU3Vm6BcIneqPHfqycZBJE+hoCDA=; b=rHvd1Fj1KThQuc
	ZWq80aVPszWLKt/yZQ9YshCTrCqd4QCbgr5A5qV/g0l03a+zcCBXep2VBZcOXEpSAJVg+Cw7Jp1/2
	MW34T7EBB0JcfgrqQTFd5uPgtQjr+KM2KNLq/VKJFpvxeQgYWx5zEP5OHH1Nj4qG8BICTleJPxc9d
	C8pAW67yNTwVyUsmebLo9cXfVbkK5RCuB1UpLxiXPrZUKhY+lc24AdRvTvb/C0NMe35VgPPZlR4qB
	bcyWGtOgd8xOSPc5eP+mCPlcY6gBpTXxm6jycL0nDwEKL3HCG78/J0KTOi9GKWN52tT4rFi6DTHs4
	4Ye227P+EIaPsH6WUOeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMmV-0002v7-VT; Fri, 06 Mar 2020 23:53:27 +0000
Received: from mail-dm6nam10on2072.outbound.protection.outlook.com
 ([40.107.93.72] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-000617-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFaO2wHPYsgJQjEVpVdRu38wnU0m01YEvNPFobolip+tnpv6yF4aCcmZEdI68+iz+/MQs7kn+E55k/01xF81lPCoPiEoXTTqRlH/7ubjiONNmZbjMC5LFYAURuUkSIX0UkGBk6hRWjyBa21a2f7KWT7A+SBdohD6ftE4iN1Jt7RXe6ulC5wPnzujVmHYL1Yv2uaf2iqeoJi953USw6vLVQxy3ZD8rMo5nLblt8ATwSKsMCUCaDr14noJAzMC/kj+SA7nk1w5gtDzocuR8SWWLUXXaGPv5fDGbKAoUysqK3SVrY+Rxe1nbu4Jgibyg2IfZyOVvseGTDsZDMxC8SNd7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CjRXhE0atPmSLiXGLG2qD1ILJp6rIJZ1GY+/iq+AYog=;
 b=jU8ky4kH6J5Rihr9K5pazXCEAocbE8YchsySGkqroqA2+CJABE5CEZV2zDRo7ghdEsnzidO644+yCsqRiXmYvhmcGknP6Vv2nmEOmAHVxL2CCq20udKcnspLpa9xpLi3GglfSgcRzpKIfL28yjH2sXeQ87KR/jBQOExirGUrEvGEBZrMjiVfACucQnWCp0ncwElfXz+8QGmvFQjgToib/zufuOHZRDHSsOKLEbFHSZQOaN7ZXBSTgysXm4ijNzc1ikYhJmI8dVI8oKsG2qSLXNIfyfCzWjeIUr8l4Cmo6gK4P2Rc3PyKQ6OMUzHlVih/8Z18xvdlOQK7hzxB9YizEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CjRXhE0atPmSLiXGLG2qD1ILJp6rIJZ1GY+/iq+AYog=;
 b=jd4BuzHKPuXxeE+i9eHGd6t/c0SxVR0Au4ObV6rHKDumo4CtTpzD5Nfq7GiU4ryqDY7EhwV9vMh76r8OrbtJR7ZbQW42zH6Dkuhv2x9fQJvyPiJ0I30316afLUSkwvKZMlQVOk0liXoFz3x/qnWV3EQKICUHKvY4IYdsuZUx/ak=
Received: from MN2PR05CA0004.namprd05.prod.outlook.com (2603:10b6:208:c0::17)
 by BY5PR02MB6993.namprd02.prod.outlook.com (2603:10b6:a03:23f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:c0:cafe::78) by MN2PR05CA0004.outlook.office365.com
 (2603:10b6:208:c0::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.9 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT061.mail.protection.outlook.com (10.152.77.7) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QB-0l; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-Tw; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NlkFq002408; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-Fr; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 15/24] firmware: xilinx: Remove eemi ops for
 set_suspend_mode
Date: Fri,  6 Mar 2020 15:47:23 -0800
Message-Id: <1583538452-1992-16-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(396003)(346002)(189003)(199004)(478600001)(44832011)(2906002)(6666004)(336012)(426003)(26005)(7416002)(186003)(356004)(2616005)(54906003)(4326008)(8676002)(316002)(70586007)(81166006)(36756003)(81156014)(70206006)(5660300002)(8936002)(7696005)(6636002)(107886003)(9786002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6993; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8efff120-dbc9-45ff-6b49-08d7c228cce2
X-MS-TrafficTypeDiagnostic: BY5PR02MB6993:
X-Microsoft-Antispam-PRVS: <BY5PR02MB699390D90CF1FC21D730DF75B8E30@BY5PR02MB6993.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RjO4YxYA1T1+oi8q23V6OsU/3pkqlzApbkwViEoP2lIL5IuWLZzUb5iMBijaYXPToEXGNHRZcvwBH8D2ADrSAaA0PZLVaOSpRKnN26Ugm4zi8+qxsBQiGtcFMprF5JOIn8/+VSdKE2SijvHd+VNeQmb5ZUvplNKW5uvXje9ls2M8KkpfpeRu872RGkE6q/aaSyzDW1WT13/rCeodcznJNgnjReceb/MJ6r3Yq/x5iZ2QakEVF117hfNczRkZUngOcdXvSTqVrtQ3m4S1Xcgw6e+i/W+KOynS7mYPYKSoDIQxI5Cti/uQC2/EsK8vw/VdrkZ2IrU4ISsdGWkw+7M6VxMpSbFOg1z9dyUi/CDPAmu1gd4dtLEHFyl8SH6CE65cI9dIXscg1H/kODqrbEdHmnGO/6cl4z4z88g35dpW2xfI0/sSxqqV6fQ3IVv3LqzI7y6blWJJG7odqf3iOLh6YFOl5dnivFzmXBVYdQs2QVdbuYBTlh49JucedncWLFPa
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.5693 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8efff120-dbc9-45ff-6b49-08d7c228cce2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_554137_C00692D1 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.72 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of eemi ops for set_suspend_mode.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 drivers/soc/xilinx/zynqmp_power.c    | 6 +-----
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 61eb11a..334d16d 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -707,10 +707,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_init_finalize);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_set_suspend_mode(u32 mode)
+int zynqmp_pm_set_suspend_mode(u32 mode)
 {
 	return zynqmp_pm_invoke_fn(PM_SET_SUSPEND_MODE, mode, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_suspend_mode);
 
 /**
  * zynqmp_pm_request_node() - Request a node with specific capabilities
@@ -768,7 +769,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
 	.release_node = zynqmp_pm_release_node,
 	.set_requirement = zynqmp_pm_set_requirement,
diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index f4a9371..31ff49f 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -30,7 +30,6 @@ struct zynqmp_pm_work_struct {
 
 static struct zynqmp_pm_work_struct *zynqmp_pm_init_suspend_work;
 static struct mbox_chan *rx_chan;
-static const struct zynqmp_eemi_ops *eemi_ops;
 
 enum pm_suspend_mode {
 	PM_SUSPEND_MODE_FIRST = 0,
@@ -155,9 +154,6 @@ static ssize_t suspend_mode_store(struct device *dev,
 {
 	int md, ret = -EINVAL;
 
-	if (!eemi_ops->set_suspend_mode)
-		return ret;
-
 	for (md = PM_SUSPEND_MODE_FIRST; md < ARRAY_SIZE(suspend_modes); md++)
 		if (suspend_modes[md] &&
 		    sysfs_streq(suspend_modes[md], buf)) {
@@ -166,7 +162,7 @@ static ssize_t suspend_mode_store(struct device *dev,
 		}
 
 	if (!ret && md != suspend_mode) {
-		ret = eemi_ops->set_suspend_mode(md);
+		ret = zynqmp_pm_set_suspend_mode(md);
 		if (likely(!ret))
 			suspend_mode = md;
 	}
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 6c42eff..dc60802 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*set_suspend_mode)(u32 mode);
 	int (*request_node)(const u32 node,
 			    const u32 capabilities,
 			    const u32 qos,
@@ -321,6 +320,7 @@ int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 			   const enum zynqmp_pm_reset_action assert_flag);
 int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
 int zynqmp_pm_init_finalize(void);
+int zynqmp_pm_set_suspend_mode(u32 mode);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
