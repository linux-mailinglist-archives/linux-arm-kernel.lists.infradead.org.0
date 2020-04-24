Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD621B8189
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFaUL9x3eOj3BCUZJ1B+QzzvlIVGTgcDd3NwY5FCgxU=; b=dxPH+XyKKXZTB1
	ln0ONkVDanWK1wgjdhclLeXI/6DXAa7OK0umB/fBJJtVpzWSoBjI22iYBsZisMfP1L36D8sx0E7Np
	tGrWy9YM/XyeFmW+zjiWAmNoS1fv8nDcgxAbUi2+6+7lT48LrYwVy/up+GGADT46DBeGLIRNTX2WW
	p1O5hgZkP+vgYvMfXD5XpGjyCgoSQqRxhPrNUzi4iRhkFZEpl4fOHG1vRbN8CC7pKZtnEPHzwOtVn
	ZTGh1mLfE+hEKiB3oCPxjyId1k3DceZcgp0sHGYpY0fy0L6OwNX6jP7EJGjNIeVy9d4qbTtQtz9l5
	mvz/kqnY7T9O/lvbhGvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Y1-0001Dq-5F; Fri, 24 Apr 2020 21:07:45 +0000
Received: from mail-bn8nam12on2051.outbound.protection.outlook.com
 ([40.107.237.51] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PF-0006SQ-5p
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+x8yO0ZVSot6gec+/f0lMuazK2l16d0JuLB+s22excA03NzDReyoToMYPrmgPPfvdRhB+a+NMMFa5tJxZcCtWnFwFtE7s3MJNcJMVr2uhJefyDuln+p4JgwEEki4iR+C3oBulJnaBy3VovwSodizJ0SmKQDs8xg0fDXKaaC2A3dwsrcCy0LrOEdv36asdngljdZl3QUiEml1m1MFuO7Jkvk6NxGhk3DvHO7JimIjwunTLzXJI1miPjP8UIYSB9Y6TWEl1Xm1DWFgIPluG4d65QPJUIzq/m/7rfEpLTQelWFrjYchlpu9vXTw1COzyXrMtfXgVAvYENBIQ8ywgnXmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=An6sxhm+TBGl8GeXDnw/WHSzdO8zQFMnivsWUDsRNj8=;
 b=NC4dU+2op3nsShnQ4oBIlAkkQ1FBlpL/YdHe7BPDE9i60m9YOCW16+Dwx1P9ZSiKok0dLMRSM2suEUNHIwDIA8zbxsAnTxbUfrf7RbclwIAY/+D6fucr3rp40FVClAmsXP7/Q49prLTJfWJZtvF1j8mwNykfr8u+bNMJotkyE34aTgt73WhJ9pHdTYaly4IMR+ICvyLAEze/Tt0oMQ98LStWFSXIXTzx9wLG9n4p6fPTTZjCgPHjMn78pHD85czQInLrhAch81JVbffjcoGk80r7SmYmWxiGTGSRR2ltUoBpM/1UMIRuXJnE8usFx4Yr9fPrtVRSh70OWsj2yIocaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=An6sxhm+TBGl8GeXDnw/WHSzdO8zQFMnivsWUDsRNj8=;
 b=ccOgjvVD5PfO45DarW5rtbcS435nQ0igYTt0ugtjhtbM4xb2mfc8V3cRocBYEBOw/yu8+qlwBxduFOW+4pLqLhimDhKLk6Q8TgeuQi47z0Tlziw1D/ooJW9sbiUSmnvJploR+I0EvRBBFV9JZPZcKc8olFvtAAsQrSzA80Is6GA=
Received: from MN2PR05CA0062.namprd05.prod.outlook.com (2603:10b6:208:236::31)
 by DM5PR02MB3895.namprd02.prod.outlook.com (2603:10b6:4:b9::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from BL2NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:236:cafe::c8) by MN2PR05CA0062.outlook.office365.com
 (2603:10b6:208:236::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.7 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT033.mail.protection.outlook.com (10.152.77.163) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33433 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Dj-Kf; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-K2; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJue026327; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-LH; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 16/25] firmware: xilinx: Remove eemi ops for request_node
Date: Fri, 24 Apr 2020 13:57:58 -0700
Message-Id: <1587761887-4279-17-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
References: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(46966005)(478600001)(336012)(316002)(6636002)(82310400002)(7696005)(54906003)(7416002)(2616005)(4326008)(70586007)(70206006)(107886003)(44832011)(2906002)(5660300002)(356005)(8936002)(36756003)(9786002)(6666004)(26005)(8676002)(426003)(47076004)(81166007)(81156014)(186003)(82740400003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 089169e6-4254-425f-1ddc-08d7e8923fd4
X-MS-TrafficTypeDiagnostic: DM5PR02MB3895:
X-Microsoft-Antispam-PRVS: <DM5PR02MB38954010165E7B04E408A430B8D00@DM5PR02MB3895.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wQ6IWgl8+Bc8SJtUzfeUNhTHQxuAcTSX7/ckPITCp2PWes2UaoviuOjs9/mwy2qYh3fQpXzDLM0pJHD1UXU12pzWNmT6jCp4hlIq+42bqv/OMVQde4xY3QWmnPIPAym7OyT8EwSNy5bMA/liZFzXVJsD+OrFfU1z4zWFR2fV+B5PTkFL90hJBs2x8AR5W6vKVTpcoNzASQAe66wcyQh5jaU/xPbnq5Y9PNFLyfJ6L2syyCKQwGQQad/3cxllyi4AT5FnBzrIZzEvByFsaTyLySNRjZyM3rKsAIiUwjjsoiZFcEb2/0ug+1p5ycrToIx1e+RDL/lpk9tdJZajNf1Glk97o0eKZql4Xf8fLwVszXMie90NsE4u+dZCHnFH3Axa+S5DCIRvHK9K6/ENtRbNQDA1Yze7wHBS7mabJSHh/Dc4ZYQfxQFYiU5mcb+zP2MChcLA2+fta8UFt/g+fN0h/h5g3Nl1KxNmLfw/j0sd6TCayzDuE/1Hq0N++jfmTbOwX82xo/8fRY0bVmhOMsi4Ng==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.9789 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 089169e6-4254-425f-1ddc-08d7e8923fd4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135841_303248_1E6A4401 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.51 listed in list.dnswl.org]
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

Use direct function call instead of using eemi ops for request_node.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c       |  7 +++----
 drivers/soc/xilinx/zynqmp_pm_domains.c |  5 +----
 include/linux/firmware/xlnx-zynqmp.h   | 12 ++++++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index cc74165..e65ee76 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -742,13 +742,13 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_set_suspend_mode);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
-				  const u32 qos,
-				  const enum zynqmp_pm_request_ack ack)
+int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
+			   const u32 qos, const enum zynqmp_pm_request_ack ack)
 {
 	return zynqmp_pm_invoke_fn(PM_REQUEST_NODE, node, capabilities,
 				   qos, ack, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_request_node);
 
 /**
  * zynqmp_pm_release_node() - Release a node
@@ -810,7 +810,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.request_node = zynqmp_pm_request_node,
 	.release_node = zynqmp_pm_release_node,
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
diff --git a/drivers/soc/xilinx/zynqmp_pm_domains.c b/drivers/soc/xilinx/zynqmp_pm_domains.c
index 23d90cb..cf4eed0 100644
--- a/drivers/soc/xilinx/zynqmp_pm_domains.c
+++ b/drivers/soc/xilinx/zynqmp_pm_domains.c
@@ -163,16 +163,13 @@ static int zynqmp_gpd_attach_dev(struct generic_pm_domain *domain,
 	int ret;
 	struct zynqmp_pm_domain *pd;
 
-	if (!eemi_ops->request_node)
-		return -ENXIO;
-
 	pd = container_of(domain, struct zynqmp_pm_domain, gpd);
 
 	/* If this is not the first device to attach there is nothing to do */
 	if (domain->device_count)
 		return 0;
 
-	ret = eemi_ops->request_node(pd->node_id, 0, 0,
+	ret = zynqmp_pm_request_node(pd->node_id, 0, 0,
 				     ZYNQMP_PM_REQUEST_ACK_BLOCKING);
 	/* If requesting a node fails print and return the error */
 	if (ret) {
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 761caed..fb7e5c9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,10 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*request_node)(const u32 node,
-			    const u32 capabilities,
-			    const u32 qos,
-			    const enum zynqmp_pm_request_ack ack);
 	int (*release_node)(const u32 node);
 	int (*set_requirement)(const u32 node,
 			       const u32 capabilities,
@@ -336,6 +332,8 @@ int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
 int zynqmp_pm_init_finalize(void);
 int zynqmp_pm_set_suspend_mode(u32 mode);
+int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
+			   const u32 qos, const enum zynqmp_pm_request_ack ack);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -432,6 +430,12 @@ static inline int zynqmp_pm_set_suspend_mode(u32 mode)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
+					 const u32 qos,
+					 const enum zynqmp_pm_request_ack ack)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
