Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5B017C932
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InojvRuux+8/ZE+RwnAoQ6pcTOkTmQbxS84jUP92EbM=; b=tLrppUli0Tm0y0
	W3DnIib3dbW6Mg6PRoR5aTNHXfAUqvKGL1ReFtJgFqnd3gft0Cw/MDSoyhUbIzapRV4awoK2eBa0C
	gqVp2nS1+PKEFbEIAz47zh0UcnsFfnS10bpI4TAySltMoRtWHixh8q4CWp345WSWiHAz8aEbZHYcb
	9JlPF0b9asz/W4ohY4tR4KLQ/EkLic5s5tVzjSKk46fZA/AgJh5LVSw4CnXpRuLaemViSgZxQBTl1
	2XuTB+WE++hetZrwDKredtvTMQQ/k8dZJBbohSTWepmg6YuKqEPeSkwK11orgyRAKVrBtjl5qf0EJ
	eZA+MKVKrX7EfHDv+Lww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMnp-00047C-Bz; Fri, 06 Mar 2020 23:54:49 +0000
Received: from mail-dm6nam11on20602.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::602]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhK-00065y-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xa3LSPBeDx+qmhaSmQEypbcsrQ8tVseih/rdT4gSQX861mjl7ESq6gilA8TORegHGTAu1N5hyYYkauJyDsojuZVqpU5q7Xyv67HtsNvR2OH/Z+72mhlCkJsBj/0ie5IWyOSf3c2PHX1qlWwafCzW+iiaa6bhRvo8wsfsJw0xoPmJu2olakuYv9094fJXxVWCpxeY7Ax//KOkAkksGdu52mlAf43ol5p+99aAehyiPWMKhZQd/e+G4eA9LeHu04OY/1y5G3WffB4Es6S1oC+9Dxfv2vfuxVe3dLAsPXs7IVmmHUROdAMBsV7x0VQk9XiFob3QLQlBavqJkRcUGZcIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAPsQqe+QHBLr1+vx2Hjc5o4AgJtvdzJaHm7GufGCZc=;
 b=agz+NuR5RGRIxF8IskfidloCDWt7NCrSxWHuR7t3BNumGpDjthqN6jHOz9T2nFsqv/Tp+uG7WxFGo5ygxsMMf3lkw1FPOYQuuUM2G/W8/Jfo93jpGg2g6EqGuH4vf9ofLvaIaezDuSP34Sv7flWczEhUakwKf6D3qlvDwGFA3IlFdccRslzjC4q3c7emintaNCLK+Z4Ew1tB1R5xwhzLmN55NZdmrCBOxG8cyb/D1JM71ynjLG0zs5aFj47VO8lkC7rjUuIhT++Oq2vFzn0myKTtgwWHfxpNQYc3dXyfnU1y+k8Xhwf//pXXjoPIR3tNDke9uxfOwfGrJwQsHJzb3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAPsQqe+QHBLr1+vx2Hjc5o4AgJtvdzJaHm7GufGCZc=;
 b=XAt64xgVWEEnXE/wjDvRUsX2qo7L+v2BzN8bEHbPVUwc4ok5jSGRenTfnWbK8gztPF4UpOz4bAb5jxAMqPGqj7+WaM8WUQJCKNVaSoP/E446wloDiGVa0MmSP7mOBradbPv/qPdsUc9MInIueo4Z9Dq4V8r4j3BiTfD9neUKRB0=
Received: from SN2PR01CA0002.prod.exchangelabs.com (2603:10b6:804:2::12) by
 BYAPR02MB4407.namprd02.prod.outlook.com (2603:10b6:a03:55::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Fri, 6 Mar 2020 23:47:59 +0000
Received: from SN1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:804:2:cafe::4b) by SN2PR01CA0002.outlook.office365.com
 (2603:10b6:804:2::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT057.mail.protection.outlook.com (10.152.73.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QG-G4; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-Cy; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NlkqE002394; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMgz-0002eg-UN; Fri, 06 Mar 2020 15:47:45 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 05/24] firmware: xilinx: Remove eemi ops for clock_disable
Date: Fri,  6 Mar 2020 15:47:13 -0800
Message-Id: <1583538452-1992-6-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(199004)(189003)(2906002)(81156014)(8676002)(81166006)(44832011)(356004)(336012)(6666004)(426003)(7416002)(9786002)(54906003)(8936002)(7696005)(26005)(4326008)(36756003)(186003)(478600001)(107886003)(70206006)(6636002)(316002)(70586007)(2616005)(5660300002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4407; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6b63a9f-5352-4964-9448-08d7c228cd08
X-MS-TrafficTypeDiagnostic: BYAPR02MB4407:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4407F91D8C0C01FD51C7C0D1B8E30@BYAPR02MB4407.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:107;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4yGF9QoH0afoCaPIbiQSCVsILbgsR63pr3z8hsqk1WWx0y1luXiwNxunYMC3rEH1nST+SVPhKMlaJdHNDTQlbczFdks+iedy8fdGgTeenwTbl1hfFT9LC4ZT8ercNlkD98NJspwTQhwJNG8QU6lNFP9wxq6i960ny/pQ3ESvEeFLFVzj0W/V2ppb4ojpStva2HuYE34jlYALu56j8HnLMdY+nM32SMVIC2Gkwmf7yDKwV5YrrNyz8Q6q4r/ZtuI5Ehikn2PIl8LFhcGAJbRzNqOFCPIdi8MnUlAlT1IVn6G4yHvxJXisaJEamhlSAwH7DtNREcR+dX1YNFoTLQbhxrhtPUNFZC7KNYfM/z1jmO2fxxekRqxYVm8qLbj8uIgT5PA6NBk0dTSuXCsKh05LF0TToLvlTsc3Eoha0M0QUDJcLR4axuF2vok/8aoNa4BN3VanvjBbCdsfclk49ZTVCvppf5J+5I+TObrphy+Evw1u4GxXZDKBmUNBczZphTEx
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.9115 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b63a9f-5352-4964-9448-08d7c228cd08
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154806_909388_AE374E13 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Use direct function call for clock_disable instead using of eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 4 +---
 drivers/clk/zynqmp/pll.c             | 3 +--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 437b921..11f1b97 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -37,7 +37,6 @@ static int zynqmp_clk_gate_enable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	ret = zynqmp_pm_clock_enable(clk_id);
 
@@ -58,9 +57,8 @@ static void zynqmp_clk_gate_disable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_disable(clk_id);
+	ret = zynqmp_pm_clock_disable(clk_id);
 
 	if (ret)
 		pr_warn_once("%s() clock disable failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 153aa67..38b8dbc 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -268,12 +268,11 @@ static void zynqmp_pll_disable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = clk->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	if (!zynqmp_pll_is_enabled(hw))
 		return;
 
-	ret = eemi_ops->clock_disable(clk_id);
+	ret = zynqmp_pm_clock_disable(clk_id);
 	if (ret)
 		pr_warn_once("%s() clock disable failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index dd98214..00cdaaf 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -366,10 +366,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_enable);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_disable(u32 clock_id)
+int zynqmp_pm_clock_disable(u32 clock_id)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_DISABLE, clock_id, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_disable);
 
 /**
  * zynqmp_pm_clock_getstate() - Get the clock state for given id
@@ -712,7 +713,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_disable = zynqmp_pm_clock_disable,
 	.clock_getstate = zynqmp_pm_clock_getstate,
 	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 7dc72d3..d2f5677 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_disable)(u32 clock_id);
 	int (*clock_getstate)(u32 clock_id, u32 *state);
 	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
@@ -317,6 +316,7 @@ int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
+int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
