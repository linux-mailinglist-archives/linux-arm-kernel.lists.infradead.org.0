Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199101B8187
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoxF4PvnORCAcHYp4Y74vinbphQ5qOPpdhfnIwEuLpI=; b=IzBFdqGtTreUEb
	CkOdBzhjvfGrWZuptAFHl2OAc2ztiItvBT9qpcu0pI0hZMO2WfDxnTkWxXBdt2qU0hIs8qzd6lYXD
	RKd78L/eKV3LIhvUh0aXp7SMNK+H4MbKtGzCg8qXhrDzwFypQuoC9jXsBUNBbUO5L8Ih3yhh9WmT9
	l9L6bXVfIOFRn5SgG+fb6g03siVGbKqmiVcDqfmfq6UYk4imTmvOKUV/9Qc6LYJ4LxTsL4YqxmBKO
	5EsP9W5PUQfRqZCHAtUL9m2/oVJIVBN/64MAH8SUgbdu53kKmUGttsPFb+A5vIGY32nkjpKGffjDQ
	Itz+CsGzetDKUIVEL9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5XL-0000ig-ER; Fri, 24 Apr 2020 21:07:03 +0000
Received: from mail-dm6nam12on2041.outbound.protection.outlook.com
 ([40.107.243.41] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PB-0006Uo-Pb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STq2SWMfX9l6HnkLXt5FLfiGOgrRsxrCEsjOaP6Irei7jgmd6pMk4zW/IMNczRCt4UINpx5DxrsFJi+cPSdyBclQXlOlR1W6StSvbGPHVNo1cEGM1eWvvHGmbScB5N7d5oeTLtLuBHVew0sV5f2srsY+mE+AbfuwiJv/H50ladcmJu5bI9e8AByegmL3VoWNOWzYS4j040E6yjPqa3S7tN4ErjjbTLthJYlRCqOo9gJQa3vHNQAnElXQqJYVYrMxzsdm58xQBcE+r6MBa7zQgl5DLQB0Sa4Kw5FokGMLrcg2/rpcrEv1tZkZjFQPUxQIIhiVms24se6FV86Zh54A4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXDpwfmUqNZ3tgxJZ1ZwTJgsq8EuORoJLksCgzjN2JA=;
 b=CdAy3hvLuGhXVHxDX0X+K6SkgY8XrKNs+S+37Qx6KwCNNKhmaN59nt1WS4XHGehh5lLfsxKEngCsPjga/9HoJHDDKIxSgNj4/iPAiG+iotWa9uaZXWX4ygkTlOp1ZpJZpZFnCHYA/mMKetftvB+pjnfks+4hoxW0dvtEYz2JzV8ULofGNH8t8hogVG8vcj72VNIuFmuJFYtf/v0Y+BHVwJm6N7Des2pdw9WlgH5VtcaFfXK7G9OEyB313lCn0/FKjqkq3uQDerKqUJzwa+jM985JjcBLq+KJvOfGiNMGTjsPy6J0xef1tpGS9jtq4GZROhRp6QO39cCdLWGC64qIFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXDpwfmUqNZ3tgxJZ1ZwTJgsq8EuORoJLksCgzjN2JA=;
 b=mm4VKM1n4Wdzx5Xijb6mstQ9+xrTumF1FhIydfY+9chuUb4dgjanmZfzQNkRB1NY9EQUA5tBVgao8o2igdEox569QrSHSo3HGRO4KHa4xIuVcc1HBqNH9WhobOBpA7JYcNIR0+2alQxfesX0ShkNU4w7J/nCwjW8TYIPveO3eMw=
Received: from MN2PR05CA0065.namprd05.prod.outlook.com (2603:10b6:208:236::34)
 by BN8PR02MB5713.namprd02.prod.outlook.com (2603:10b6:408:b4::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.30; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from BL2NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:236:cafe::c4) by MN2PR05CA0065.outlook.office365.com
 (2603:10b6:208:236::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.10 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT055.mail.protection.outlook.com (10.152.77.126) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:33
 +0000
Received: from [149.199.38.66] (port=33437 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Dl-MA; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-LX; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJT9030389; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-Ex; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 13/25] firmware: xilinx: Remove eemi ops for
 reset_get_status
Date: Fri, 24 Apr 2020 13:57:55 -0700
Message-Id: <1587761887-4279-14-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(376002)(346002)(39860400002)(136003)(46966005)(82310400002)(36756003)(5660300002)(6636002)(426003)(2906002)(478600001)(4326008)(8936002)(7416002)(9786002)(107886003)(81156014)(8676002)(2616005)(70206006)(186003)(26005)(356005)(82740400003)(6666004)(44832011)(47076004)(336012)(54906003)(81166007)(70586007)(316002)(7696005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e295c455-1dc8-4804-bc0a-08d7e8923fe7
X-MS-TrafficTypeDiagnostic: BN8PR02MB5713:
X-Microsoft-Antispam-PRVS: <BN8PR02MB57134A23220EF1CBA1E2603FB8D00@BN8PR02MB5713.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1360;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gW4S1P6NbnHaNgXK3lQ0+4FWW+ucC2TdHP6PQ5/v6l8NtxQyc57vZXCYCckZcB3RcGPThmRHUT91Oirh3u39n2UWU4Y6kJqzCTJJipvCVws4NJ++ZWohGDk6C42E1296u478G0sU70wMQsA0hszkPh9Kd9joGDixVAZp8Nk7c4P8zP2behfKmjoAMcLEmtYgVS7mytLjHHWH8Jve1JEjUpScgv2w09xUlVC6csrwF5LeoDaNoaiK8PJlHQDGjux27G5Jj1Q3SlPbY6AHYJbLrh6034oE03H6I54lhe+2epW75yYgn0SLpycSC8fXLKRtjSy8wcxxYCmI/45Nb7C7Whz0JFa+zprE5ehaJhLPgVBLLMA22JPdmwdmBN7ko3cbonpeh8Sp76/PT4JRDNR9Z1+pvE0w7zX6MWIbd2owEiY3Yo56J63WeeyLXG9e0oJxRf3baRUB+eKQer42cugryTwJg+ibKbuWd0JBDAPjo4CrBx+fA9jZ35HNKOH+gXqlF6NCAV58sEfRS+yNWPZH4Q==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:33.0870 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e295c455-1dc8-4804-bc0a-08d7e8923fe7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5713
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135837_849542_151473BC 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.41 listed in list.dnswl.org]
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

Use direct function call instead of using eemi ops for
reset_get_status.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 5 ++---
 drivers/reset/reset-zynqmp.c         | 8 +-------
 include/linux/firmware/xlnx-zynqmp.h | 7 ++++++-
 3 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 2a79091..4380853 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -642,8 +642,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_reset_assert);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
-				      u32 *status)
+int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -657,6 +656,7 @@ static int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_reset_get_status);
 
 /**
  * zynqmp_pm_fpga_load - Perform the fpga load
@@ -808,7 +808,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.reset_get_status = zynqmp_pm_reset_get_status,
 	.init_finalize = zynqmp_pm_init_finalize,
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
diff --git a/drivers/reset/reset-zynqmp.c b/drivers/reset/reset-zynqmp.c
index 4a01b7e..373ea8d4 100644
--- a/drivers/reset/reset-zynqmp.c
+++ b/drivers/reset/reset-zynqmp.c
@@ -15,7 +15,6 @@
 
 struct zynqmp_reset_data {
 	struct reset_controller_dev rcdev;
-	const struct zynqmp_eemi_ops *eemi_ops;
 };
 
 static inline struct zynqmp_reset_data *
@@ -41,10 +40,9 @@ static int zynqmp_reset_deassert(struct reset_controller_dev *rcdev,
 static int zynqmp_reset_status(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
-	struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);
 	int val, err;
 
-	err = priv->eemi_ops->reset_get_status(ZYNQMP_RESET_ID + id, &val);
+	err = zynqmp_pm_reset_get_status(ZYNQMP_RESET_ID + id, &val);
 	if (err)
 		return err;
 
@@ -73,10 +71,6 @@ static int zynqmp_reset_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	priv->eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(priv->eemi_ops))
-		return PTR_ERR(priv->eemi_ops);
-
 	platform_set_drvdata(pdev, priv);
 
 	priv->rcdev.ops = &zynqmp_reset_ops;
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 22b2bbe..200f9e0 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*reset_get_status)(const enum zynqmp_pm_reset reset, u32 *status);
 	int (*init_finalize)(void);
 	int (*set_suspend_mode)(u32 mode);
 	int (*request_node)(const u32 node,
@@ -336,6 +335,7 @@ int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
 int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 			   const enum zynqmp_pm_reset_action assert_flag);
+int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -419,6 +419,11 @@ static inline int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
+					     u32 *status)
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
