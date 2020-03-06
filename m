Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14FF17C928
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nW5NIYWfRzwkpgI5H3atM2RPbs+7HeiImdlKXeTBQ0=; b=qRWEAt9WnTTrzL
	DZqI8VOr1CvtUXjG11Gcf58TsGuXNdyH7kO+JmN3SpqQQedhuzPiXRanTOA9HQc1EATCLAimmNkmA
	aQrejemT0ShETaMhmuuouS6tSyKiWcYloKiQekQ70NSnE/rzaxwikKhimd5fqMclPPkAt/CBQsmLJ
	/KjxKhH294kEimyIKIAFi4bCVCplrSuJVdPxxUo1tfD0rDilHyaAW2nY7agH3Pfxi51R9sL8CVlQW
	QsRDXQahTvp4WNWTsfz+ExLMIQVgIvkmInarkUBB9MSnwAiK0ZnXTnJwGULBOrTAWQv7LA8vBGKtS
	rP4cWAntxsnc6VqCcsnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMmF-0002gk-Hw; Fri, 06 Mar 2020 23:53:11 +0000
Received: from mail-bn8nam12on2047.outbound.protection.outlook.com
 ([40.107.237.47] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-0005zP-2Y
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxwWxFJlvU+GgmzVFTPIi9fkL8bPg0PdY8gcWfQGjKMo5h9JEJrYN/OdlDcHFzwbZH3i6I/Q7F82DXf4saH0oL1rGRv9xjuACQfXwG76jW/51o7dhMygOg+h+qegG3Eusz1DMrXNz+sCV5s+26nMA+M++IUZAtj1UEMit8UGtYIzlhLeNax0AxliQcwEy1MWl+WfdePgS20Hqr3iX17pvT2e7+jXoi6qpj+OUdRGivVMkE0PtSAQvRrZoS8t9UL1uxERO2ZNGK4DTOfB9CN9HVssmEDTmiKuA8v0hJo9biddCieYGJVc+BHEptZH6/rAyefZPK4DZhlE2CcWE1UrPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lb9mtDBS0jL8olwwCdBfXpkLlihfOb4pQZauF4cCXFE=;
 b=JDQs0/pSujS6OKPGY1jO87FrjWIRr25XPWUljeFyH/vSY/cXLN0L3Z3PgAUDeav6dnoMv9bk4lMP5JM5RNYEhS9Q51QYS99yF0OR1Wss5K6vs84/6BeWqaAqluMA89Yo71Cmj55OBaF/FAuwFlMn2hd+tYbKc4CyuuLz4DFHFuUOyw2sIwFNL+heljVNp9oI4FEnpcIcRtwhOqcEUc/PAihLaDbfDm7EiQwE/+JynYYcBsSJLPApzC/5MOlnzfjralr29oDPa+CuDODcQJCik/dny8DbG3m2FgTav34/K9aJcCHqpPxFgKzzZjfxgD7t7A03dXQulRf9gOPodllxaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lb9mtDBS0jL8olwwCdBfXpkLlihfOb4pQZauF4cCXFE=;
 b=hJgB1J5k046Z31CCBGyF2YBzpvG86Kmn0rR0QKlk8SRx2cAkHGGy6W+F9UkYBhTpGVS2FsHNLEGiKD+4XnEnFBE7spWtuYhcTdHrsGWEMhWvxsDxch0lskYKk41gJlNAZ4j+rnaXgJqCR0w5tkzxGViyTH807c2Fdhs37W4Fcuc=
Received: from MN2PR16CA0061.namprd16.prod.outlook.com (2603:10b6:208:234::30)
 by MWHPR02MB2526.namprd02.prod.outlook.com (2603:10b6:300:44::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 6 Mar
 2020 23:47:58 +0000
Received: from BL2NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:234::4) by MN2PR16CA0061.outlook.office365.com
 (2603:10b6:208:234::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT023.mail.protection.outlook.com (10.152.77.72) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q1-1t; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh5-0002g8-Ur; Fri, 06 Mar 2020 15:47:51 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlk5g002404; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-Dr; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 14/24] firmware: xilinx: Remove eemi ops for init_finalize
Date: Fri,  6 Mar 2020 15:47:22 -0800
Message-Id: <1583538452-1992-15-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(189003)(199004)(2906002)(8676002)(81156014)(81166006)(44832011)(336012)(356004)(426003)(9786002)(6666004)(7416002)(54906003)(8936002)(7696005)(478600001)(4326008)(26005)(36756003)(186003)(107886003)(70206006)(6636002)(70586007)(2616005)(5660300002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2526; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae9b961f-05f0-4d1d-1ebc-08d7c228cc57
X-MS-TrafficTypeDiagnostic: MWHPR02MB2526:
X-Microsoft-Antispam-PRVS: <MWHPR02MB252680207DEFC71B22975219B8E30@MWHPR02MB2526.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:252;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G1blLZcR7rn68dX9BlYjcBk4uhWpQaJ77yi/fRcm8Xh0rxlt9nss/Z6I8et/RplQrma5l3krjDLj7AS9Q+mEyCIIfaxsUs9850C0NPL/rKuoL+/unhaZ91qjf5mdRi3gNZqlqKYAdLmrfLetC8u/h/Gp1orF3WajNJ61++1sVqevjPEJ2B61BlNdh6Dz7uhzm4n0KHJxZYwfTUM3V35jDlNn/G3yyHDvpzxXdg3+3i86Yf03G+Iy7ovMFJ4+bJT40ldJqy6/H3z2C0EkuHcEJ6iP4WcoJeM+U8DMVsxhRd9NbVS2f5/sBWPZjqhJPzwoo0JuvtRLydcY+ir5jU97/zNncnsogB4dAT7sW9XqCHyqTeVIbAM7aqKesnsaTwm7YucJ6h/t26fkyrYKhnR3yUrzPgxUItb3LGNwWXQyMrrBy+ZOiT8B/T3kwxa3dXF5
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:57.6564 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae9b961f-05f0-4d1d-1ebc-08d7c228cc57
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_139657_089D618A 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.47 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for init_finalize.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 drivers/soc/xilinx/zynqmp_power.c    | 9 +--------
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index f5c5d41..61eb11a 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -693,10 +693,11 @@ static int zynqmp_pm_fpga_get_status(u32 *value)
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_init_finalize(void)
+int zynqmp_pm_init_finalize(void)
 {
 	return zynqmp_pm_invoke_fn(PM_PM_INIT_FINALIZE, 0, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_init_finalize);
 
 /**
  * zynqmp_pm_set_suspend_mode()	- Set system suspend mode
@@ -767,7 +768,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.init_finalize = zynqmp_pm_init_finalize,
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
 	.release_node = zynqmp_pm_release_node,
diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index d327d9e..f4a9371 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -182,14 +182,7 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
 	u32 pm_api_version;
 	struct mbox_client *client;
 
-	eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(eemi_ops))
-		return PTR_ERR(eemi_ops);
-
-	if (!eemi_ops->init_finalize)
-		return -ENXIO;
-
-	eemi_ops->init_finalize();
+	zynqmp_pm_init_finalize();
 	zynqmp_pm_get_api_version(&pm_api_version);
 
 	/* Check PM API version number */
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index ce7b545..6c42eff 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*init_finalize)(void);
 	int (*set_suspend_mode)(u32 mode);
 	int (*request_node)(const u32 node,
 			    const u32 capabilities,
@@ -321,6 +320,7 @@ int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 			   const enum zynqmp_pm_reset_action assert_flag);
 int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
+int zynqmp_pm_init_finalize(void);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
