Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14DA1B816E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvtr5fUvo5ElN2wHYAi+cs5R5XtZmTJ/DsDWLvgPRYc=; b=XyZa9pEMUvVFec
	C2ujdw+2rCCZtzWLxtSw3abUauQghKZy7D8vwAOvk+lwbi14aqzC45NDWK36fqCRqhEfR2mNRLTee
	Kq2bl/R7bI0O4lZFN1dXx+IvhbkHHXZmPgtowtn8jMW1TIbErtveI/Q5DiGX6hbFoh/e6r9oL1wKP
	zkViPm7+WZAtm3X2t6DpypMgZfMXQV2dgeWZsqy/lW/hAw1L3mRmz+Aq9fzWqckL3Nqoh4todFgnt
	5BwZZMoR5ULkM565m6olTcqqOLPHMOT/XabJVlDcUsd4JToVxntCW1mH9FrXlvLklea+3gsTdB0b3
	p86GaYdGKm1UnxPZWBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5SG-0002RR-SJ; Fri, 24 Apr 2020 21:01:48 +0000
Received: from mail-bn8nam11on2086.outbound.protection.outlook.com
 ([40.107.236.86] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oz-0006JF-E7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d27OrPEKQ/OHqoEqjn0NnbLU6GvLKnps4RfIZVsfYWKC4fa5lZk5rTAmTIak4AkhNZFiil/rPZUt1CklCogemcdGfq1fAXIrcalUMaZPkq+vQvz7TGuInW9xzDkByZUgWog54cxUqEzD5Hgx5KAAgA6XmD7anyVH6YUuAQBHKgneHWVLFLeNksR6bsOvMFqTi/U2UKcQ9InGA8sqGH7rF7oU5wiB5FJ4AnupnqPjBL0cDOlRFFNnZwT/4CZ9q5VXRDuhE0KnXOaosB+KF2lL4lzks6RYNw+K8hsjHDTU9qyFOTjfCf4vVhlUvg8xut0VUHbEKH0fth0ihriO2c57lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bn20Bgf8031F7WYMDm9Eh8wV5OFcCQOeIMHqUmdb76M=;
 b=OmlUGUjxFO/mPtDjSAWFNiTAtdQHDBg1TAjvC/+A5f/+0i91zWy+ZE5KOFp+zoodz+cbiFSvSx9MRmGudZFGPVtFpdB/9E98RpI8mmUJaemsdkcleamCTOCxJPjjMFUn234TX2sfmc8FjC2rN8XXWvJ601qlI7o5OxQEwMY9IhEhEZO6LvLt0kyB9wejZWP+FMoD8tJOBfz316ZrpS22lhRUS31bXze+c8LLWahR10FgQM/2vi07KJz6vGtplOoiVXAMBQWSokCO6QwIsmiJaaHN7EyvqI/S5csdJGVL/u385Lrh3JJVexHNwPdh1gYS0RAo1W7x++eTtrJtXtkRng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bn20Bgf8031F7WYMDm9Eh8wV5OFcCQOeIMHqUmdb76M=;
 b=BUG1v2oPYTuYGEiU4xqAzhvFcWWaNphHFgJ+3TBUHfoirp9PXTzrJ+kGklkOFSZKelLCwuvz1pjNVhJx4cf975UDw6EhPLGr6jTUtj93Nh80MqhtDytAuRtgq8sbf78bb5XE0CL8OehXZ6+tLSuIAmFO0YFrKhabO25NHK3s4ZY=
Received: from CY4PR19CA0030.namprd19.prod.outlook.com (2603:10b6:903:103::16)
 by BL0PR02MB5411.namprd02.prod.outlook.com (2603:10b6:208:83::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 20:58:22 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:103:cafe::8d) by CY4PR19CA0030.outlook.office365.com
 (2603:10b6:903:103::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33298 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002D3-Kl; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-K2; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwIFv026309; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Os-0007Lo-Oe; Fri, 24 Apr 2020 13:58:18 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 02/25] firmware: xilinx: Remove eemi ops for get_chipid
Date: Fri, 24 Apr 2020 13:57:44 -0700
Message-Id: <1587761887-4279-3-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(396003)(46966005)(356005)(54906003)(44832011)(478600001)(2616005)(26005)(8676002)(6666004)(186003)(70206006)(70586007)(7696005)(5660300002)(336012)(426003)(36756003)(9786002)(107886003)(6636002)(47076004)(82310400002)(4326008)(81166007)(2906002)(316002)(8936002)(81156014)(82740400003)(7416002)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4ad4e66-f11e-454f-ffcf-08d7e8923945
X-MS-TrafficTypeDiagnostic: BL0PR02MB5411:
X-Microsoft-Antispam-PRVS: <BL0PR02MB5411B89F421CAB3172E6FB94B8D00@BL0PR02MB5411.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:205;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FOMwdE5999YP7jnfl6ttCbHMnH7k7nkfFqmjkbJ3ELr6KRUVmodiQuTHx139GS3PxlbI30mCXaztigAXVSX3JFoTAAc1iJ3BU76bUsQbfdBO4m56db2YEmdqtLs9JvjmAY7Z7TFUvYd1V20x+uXWzgKRplUDNG1LWOhKMStqnR7vCJhY0UWTK+ke5gp3wPxVkthekPwNrvGZOz6Axmoj+pORuq7ep15ITNcw06rE65sshLJEhpyQlLHSopesTNHRJ9UfUsKXeKabZb18bBs5f5WEteuS7iKovOFpArcykl+W0NpNxyYe4X7AbPJ3MgCsYqM4qQYJ3nOPQDFVuUp1JFYnEBVOspTsTdsy9oN0R9c5+iwpH3RApxIzU76lx3fMjM+1aTCWrM8sZl8JlziqDIMhRXuxvjUEoSX+B8VN1Sgf8KXkRJryn209dnGtoUZ0LQhTHZ0oK+Wvm/Q8Jvl+wYlSljgYQQUosewq6QkXpoNzzQprh+LmOEUKBOF1Lkxl66jD5r6Fno1BOfUrgi7+hUoY0x3NfnfJ3BPz1DdwICY=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.9832 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ad4e66-f11e-454f-ffcf-08d7e8923945
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5411
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135825_472504_656EFF06 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.86 listed in wl.mailspike.net]
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
