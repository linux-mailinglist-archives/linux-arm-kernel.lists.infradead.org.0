Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937501B817F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT7F+Em+q3dgenw+5eRycrijX6bSpnVxk+178s95lpA=; b=rhsIFi12CUlNSj
	DynX7+EqoSRjamcefIWGBQLL+23o82EbkhNEodFg4YymfVaqSSEVmm2HwQZ8B/TAktynJfgs+2zOg
	6elMoQL/OsLT334FJVStUCMUUi86B7NyTSuA2jNSZQJM3u5JqHV5/Y4W61HhDL9+jQRpY3VaXckRw
	ElfiaUUc0cvLHJhmQDj+y6gMlZUJrYdVBXlWuDOJGMMUFU/2JeWlj7Vv1oSAzX1oESQbAqqaaEDH6
	qBOpYn1b9rsiyTNr7U4boSC2evFqx6ezQHQHpFRnXFDbUh1La4Y8SrnfjgPJmNDDUo+ugeNo5e1dC
	XjaTTwbn5VKGjXIybnPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Vk-0005Yv-6c; Fri, 24 Apr 2020 21:05:24 +0000
Received: from mail-dm6nam10on2049.outbound.protection.outlook.com
 ([40.107.93.49] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PB-0006U3-1V
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ep2fDbaovIlfayfsWtvDmzs8eia03O++lRWYd3wXeR3X0wkd6gpiPtG+D0861teM1Pv2lkC5gCJHVquZ1IzimNbKpx+kOvBnK/1RTehXJZOzd2L9yvrnsvykgptBsl5PAdp2HVfQ1hoWenK5hYqLy446t2KuaXC0EqQcBtMJgaolPH9rr4oifNGkwV9CfmswwPv4BDzTTDXPSx3eN5QM6E6olR2IFatc3TVp2q5BSgmIbrCCijzwJxS+56oSK0dOQp3f70o8NxDn9qEVX3TgBd1kt+bngVGX9CThS5T/7p1XzYrpJ7a/7971XpMHp5PQXjpRoSxmFJhJV9+Wl7TZYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS8FwPDarqj06h6I7+4l8DbmQvhTNtRxErn/anQkua8=;
 b=Xph9bcCLTU9HeVYE2FdU408M+ce/mtQNKGmmB3WPD9CePZ4xOV7O8T1r9S203UVXzN/RXj0ljNR1Iyws1R6Zo3xAtqCs/QnjXoHbx5ARykmCLhAQzVXJ9OWkNtVl3YFf8mgMtkFRfWRzRzPYbwbOi4d1d9UFVNC1v84ggER1BuHfQf8lj6kGbArlWluvt2gkbaDH+ELDEwTlKx87u1yBQ4hy9K3SVNuGtrHdVOwnlbef4mmL6Gi6Ye+eNjFJMaHZP0IXa8sLc0LxE6InkerFVuANua6qsG+/tpyXmBBFnVX7cArHZn7/hSdANlYHcyyKa5AeDu6gaWATwtjjs43grQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS8FwPDarqj06h6I7+4l8DbmQvhTNtRxErn/anQkua8=;
 b=Wv4tX+k+H0LTHix7/w4+HObH+SISz+OC1LtCHAolUPsOyvdBFK4THX0+Bd0HHMnlmikiBPWT6HVJjktDZnY3isIKJ9iPEdSyOWfI9a5LGLufa4R9MElRY7Yt9LU8lQRaJYVNr7a1GPYx573Bv02g+JUs3OJGK5rf7J/7i9xjOWI=
Received: from BL0PR0102CA0018.prod.exchangelabs.com (2603:10b6:207:18::31) by
 BY5PR02MB6452.namprd02.prod.outlook.com (2603:10b6:a03:1b6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:18:cafe::40) by BL0PR0102CA0018.outlook.office365.com
 (2603:10b6:207:18::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33410 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002DW-9z; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-9N; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwKJ3030403; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ou-0007Lo-46; Fri, 24 Apr 2020 13:58:20 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 23/25] firmware: xilinx: Add system shutdown API interface
Date: Fri, 24 Apr 2020 13:58:05 -0700
Message-Id: <1587761887-4279-24-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(376002)(136003)(39860400002)(346002)(396003)(46966005)(81166007)(356005)(47076004)(82310400002)(4326008)(36756003)(82740400003)(8936002)(26005)(2906002)(8676002)(7416002)(9786002)(81156014)(6666004)(478600001)(44832011)(6636002)(186003)(54906003)(2616005)(70586007)(7696005)(426003)(5660300002)(107886003)(316002)(70206006)(336012);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5bba921-f839-456a-5189-08d7e8923fa2
X-MS-TrafficTypeDiagnostic: BY5PR02MB6452:
X-Microsoft-Antispam-PRVS: <BY5PR02MB64524671B6BEE2AF6DF6BD36B8D00@BY5PR02MB6452.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SZ8xU4Curd+TFwdZSNT3s2qfDL7VWfbfxaxJNuBMV6uWWSpGAUJirujFrYa2Nz0ciXxMMId8hCGzCllJ3axg9eBvjySn0S/9kZTBU5fSqNXAfOMTmQUuajFN8JeBpVgAbuvYQS5ybtY3CNCerQQNsnvkTghwLaBqQCCBmS1AKWQNLPszoj6FjPAsqL5eYivdiGKFy8SgHHVuHL27gdPedRC4PEWSZ2iTO98XQ2PuicU9C15nCAmYgj6N5aqPWX+Rdt3iYg5quUhVH++kMCowhdcCvzYbFSg4qo/zpK7rQe7Q4aJv1KbuOp3PMNR66pRtutC6hcsIp8GO8H1Vt2FuWnE2AdibYqKmNg0CHkfyFYKbGODRvDnEA0Sz0qIEU1OOYp2TKDFHs4i4cOxHxoJLKnvnsLIts9C8Cw99TTuomjnsD7mtYJDtT8zQCa1lhXyMwlOItqnLQDo/rOnAQ4EdHu3G12xlM1Kf63jH23l8Ka0oV/kVvmhR0O15B6EqPtckJRmAk3o5cpmC8gHch7zPvg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.6476 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e5bba921-f839-456a-5189-08d7e8923fa2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135837_120056_A346CB90 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.49 listed in wl.mailspike.net]
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

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 13 +++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 2fe4f57..9ba376c 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -875,6 +875,19 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
+/**
+ * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
+ * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
+ * @subtype:	Specifies which system should be restarted or shut down
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
+{
+	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
+				   0, 0, NULL);
+}
+
 static ssize_t ggs_show(struct device *device,
 			struct device_attribute *attr,
 			char *buf,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index c1356e9..2254c7c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -64,6 +64,7 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_SYSTEM_SHUTDOWN = 12,
 	PM_REQUEST_NODE = 13,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
@@ -340,6 +341,7 @@ int zynqmp_pm_write_ggs(u32 index, u32 value);
 int zynqmp_pm_read_ggs(u32 index, u32 *value);
 int zynqmp_pm_write_pggs(u32 index, u32 value);
 int zynqmp_pm_read_pggs(u32 index, u32 *value);
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -482,6 +484,10 @@ static inline int zynqmp_pm_read_pggs(u32 index, u32 *value)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
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
