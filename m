Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED891A3A5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvtr5fUvo5ElN2wHYAi+cs5R5XtZmTJ/DsDWLvgPRYc=; b=gBPcOjNsCqrYqs
	6mmpxbLiLOt3ApTUfLf7EFFR8uLJ3zeQxiKUuS05qDXsMrWnjUjLWCclzCik+H96ZAAvy+Z9FD9tT
	tmWOiiviWHj3qTe5V8Ap/4xiRK3hbgXeg3/rwxF5flpiwDKXXO3z6uKHcL4RG3qvFjFYZtWbSJCMO
	Jpv93jvQlo9+Jz6y0mbfNtQzRALdvODFodAqpMr+Dd7p2V3iE5BDdwUCNcvkRVAN+qGByC7FmwfX7
	GPPgjqYHZbdVPIKEjjJGSGFvLvVxpAxl8nyZDyUlXkEclK1CDl4MlDw3+WqZIF0n20dv4EmTEJOtE
	yb5F/fE482gBME6X4ToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMceR-0003ew-CU; Thu, 09 Apr 2020 19:15:47 +0000
Received: from mail-co1nam11on2074.outbound.protection.outlook.com
 ([40.107.220.74] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007KZ-Je
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpGIwtgKXb12K7t4AqAL/VDnXickp2O52RJwXtbY2dD8QiOs8o+ekL3FdpciATUdtuEd9HE+hMFuztqDpBwE7sYJycN3XKGbd1+ueU0TQdSxmd/xdWWn3177dXtZ8xQEGczh+BeWUcYfejHw9wdIIrgMRtvd93ONbknD9evtSXi6pXIOlfl4eGhEgpIU73Q8RrRpNQgmLobZX11/VhH5SSa6GlcFd1iISErKI0152XoCD33fUTmCxYd67l9v+XD28uN6IhUV+jsVkwWW7DLWHkT5m7F2b91SljJXUWdc+S6TlhHB1qFRAgMzGoLV0XwWWbt2quzCKG6sf0eaThQlZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bn20Bgf8031F7WYMDm9Eh8wV5OFcCQOeIMHqUmdb76M=;
 b=inzqiLpwsJfFlFjEDbTXRNGF6kzIdGzZhKxczaVZ6VeSWszXY5wc6MBu4RzpBxNtmkezrVeVLdj/eZlsINaT9mdAktbsScGn4y2AtnD/FEhYCB7bXpzRDq2u5RWnXya2qgaLYe+h/pSLFPkccVhL79WneptNEDg74OS3FuRZu0VFR6Qf/qf09kArqaqs4+KVjEtvm1KcAQDzo/+lbqiAzUGHXUHUnY8GXrXJrjm4EI6VFSQst2ZnNB8WIwRxWt9SXycAsHgc544b8UWVPb0wxW3R5oZxyhffN11oAyT7fL3vW+etOMGttx6995eQo0WGvU6r9kUfM8HRzsGEFbrtaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bn20Bgf8031F7WYMDm9Eh8wV5OFcCQOeIMHqUmdb76M=;
 b=a33ExcLkkxFCN1IMGYcO2BvOyQANQQFmTmItQh7zDfaD+XGMu9dIT+s084h4dygcotSws4JgrMzRQmVtqnXQSZCdrKihdf1huiO9OkZcGcqQbpU8V+zeWom3F8At+AqR5CM8oX0a/SDK4T4RLZSIkpdMN4LhIwkKYUPYpQLiVg0=
Received: from SN6PR08CA0026.namprd08.prod.outlook.com (2603:10b6:805:66::39)
 by SN6PR02MB4078.namprd02.prod.outlook.com (2603:10b6:805:37::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.22; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from SN1NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:66:cafe::af) by SN6PR08CA0026.outlook.office365.com
 (2603:10b6:805:66::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.22 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT016.mail.protection.outlook.com (10.152.72.113) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44291 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-000607-6z; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-Lf; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbR-0007La-Pm; Thu, 09 Apr 2020 12:12:41 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 02/25] firmware: xilinx: Remove eemi ops for get_chipid
Date: Thu,  9 Apr 2020 12:11:51 -0700
Message-Id: <1586459534-8997-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
References: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(46966005)(6636002)(8676002)(82740400003)(426003)(2616005)(9786002)(26005)(81166007)(7696005)(316002)(186003)(7416002)(47076004)(54906003)(44832011)(8936002)(356004)(336012)(4326008)(81156014)(70206006)(6666004)(107886003)(70586007)(5660300002)(2906002)(478600001)(36756003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 14c6b1a7-5d5c-4a0b-1039-08d7dcb9feea
X-MS-TrafficTypeDiagnostic: SN6PR02MB4078:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4078CFC111BDF917C743C3EBB8C10@SN6PR02MB4078.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:205;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eqakjREeMaMx2otOn/mESn6UGZbDbnUCH52SjCX7Buc2XPwf/8eImoeklge/u+hDwq2/t28+9WZNjytpHfV8+qlkzQDOcUf6O5nM1p9UsUOvemHIi9L3DuV7nb9iHhW274n00rVqO6pUxNdafvc9rL2d0VSB0DbHTkMts2QLiM72J6Kzo6/mVwdogx4aix2OkGPubANFm3zgnzMe7RFK76ecfq0VWXrP3pAVjYgXKEkDfls7iYZwyKS/lG9eBhX3CLipum5g+iNrGEyC+hPC+lvhTyTKcQfGBndiuu4YMtOTvoQ/dI3IrpI82IEaYil0IeKfc5R7AnuzISFl0wyT/F4qCiNyfhQkL8P3E6ciTw7t0DGqCppl3EXt2+hTFztn42dqsiSHmx7wjNNbx6WqlCjDdHpzYM3X2d1NJxCHBNdYyRigvQzEzMeXZ8A+jwdZv0vJGga4lvs9oRI++dwLBP/zVxNlQ4dTSgn+J4s/y5o388O4A2m182g2SlBSMhHtwo0raWilUZkrM0KcQg2TdA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.9877 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14c6b1a7-5d5c-4a0b-1039-08d7dcb9feea
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_644610_07EB9EB1 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.74 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of eemi ops for get_chipid.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     |  4 ++--
 drivers/nvmem/zynqmp_nvmem.c         | 11 +----------
 include/linux/firmware/xlnx-zynqmp.h |  6 +++++-
 3 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 36dab68..36ab9ac 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -247,7 +247,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_get_api_version);
  * Return:      Returns the status of the operation and the idcode and version
  *              registers in @idcode and @version.
  */
-static int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
+int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -261,6 +261,7 @@ static int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_chipid);
 
 /**
  * zynqmp_pm_get_trustzone_version() - Get secure trustzone firmware version
@@ -735,7 +736,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.get_chipid = zynqmp_pm_get_chipid,
 	.query_data = zynqmp_pm_query_data,
 	.clock_enable = zynqmp_pm_clock_enable,
 	.clock_disable = zynqmp_pm_clock_disable,
diff --git a/drivers/nvmem/zynqmp_nvmem.c b/drivers/nvmem/zynqmp_nvmem.c
index 5893543..e28d7b1 100644
--- a/drivers/nvmem/zynqmp_nvmem.c
+++ b/drivers/nvmem/zynqmp_nvmem.c
@@ -16,8 +16,6 @@ struct zynqmp_nvmem_data {
 	struct nvmem_device *nvmem;
 };
 
-static const struct zynqmp_eemi_ops *eemi_ops;
-
 static int zynqmp_nvmem_read(void *context, unsigned int offset,
 			     void *val, size_t bytes)
 {
@@ -25,10 +23,7 @@ static int zynqmp_nvmem_read(void *context, unsigned int offset,
 	int idcode, version;
 	struct zynqmp_nvmem_data *priv = context;
 
-	if (!eemi_ops->get_chipid)
-		return -ENXIO;
-
-	ret = eemi_ops->get_chipid(&idcode, &version);
+	ret = zynqmp_pm_get_chipid(&idcode, &version);
 	if (ret < 0)
 		return ret;
 
@@ -61,10 +56,6 @@ static int zynqmp_nvmem_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(eemi_ops))
-		return PTR_ERR(eemi_ops);
-
 	priv->dev = dev;
 	econfig.dev = dev;
 	econfig.reg_read = zynqmp_nvmem_read;
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index a21abcd..89f6a53 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -294,7 +294,6 @@ struct zynqmp_pm_query_data {
 };
 
 struct zynqmp_eemi_ops {
-	int (*get_chipid)(u32 *idcode, u32 *version);
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
 	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
@@ -331,6 +330,7 @@ int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 #if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 int zynqmp_pm_get_api_version(u32 *version);
+int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -340,6 +340,10 @@ static inline int zynqmp_pm_get_api_version(u32 *version)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
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
