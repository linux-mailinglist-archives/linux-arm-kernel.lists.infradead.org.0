Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B6717C92B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEd3bSyTpO5NUsMkikYxp3S8o4RO5YnqtVq88/l+xQY=; b=ere90bbxhdyLX/
	zb9PeobjehQpnK9XfOXYfZdyXcYqOtExUemC9/eeJFu/nl4xwPBii+PMZIHlWSfW0Ii47bJfZ8pWq
	hbqJ7lSvz5CeXqYLjRAHKddBGUgG2dkeGRkVgdkpMPdEPHP9l+umMXI89x0qGRGg4oKy0oe/R3fDa
	Op+ETBwOrR3dptWknSCAWXStJ/bNc25L0Ei0UHxfJumpk5Jmh8WSCX5cle9/de0wgyGzsa94G/uvF
	q7Z4fWQQQq7ut1Xd9erkWbQqoQ64wNwtd316+GpACDjR24q7Mv9vhQpazIbKhEk0riV0eQcuJCcnO
	rOFL87SKG+TK7xf3vWFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMn7-0003PU-9W; Fri, 06 Mar 2020 23:54:05 +0000
Received: from mail-dm6nam12on2046.outbound.protection.outlook.com
 ([40.107.243.46] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-00061l-RZ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6BcWPifLgT1i7nG0TByZGQWIWIRVu1zbKB1m431HVEineC0RpKDtoX0iMqu0EW6DFD/iexYnjYxYauN8LVsD3tHDhM9HZ/WMO7uOJ67Nweh3uOq+9UytqUlwPO0jB+f2mAejFepxDvHl3kY5sun2bGXVniYgQjYfXtJHbEUj16ndFyXf4odRYgTSJ1X9wvOb1ztcbD1oviBL9p8mJsMR43nqVaxWuj0h+euXdZCUxCU0vuz9mg1QKeCur0udu/OMxfaOaGvdEM9nzFnio74D81rPqz5LL+xvGeUiYlMSVN/5W5n3gFdDvVQ+tAATgAuxKrAfNMlPrUdQ8VOGgvSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q78TUi1I7yY694ZpbTu1IzJ0EoCIxoaSBKFVA4dgLRM=;
 b=Lhyu0kCjTFHvEV9kXQ3m4vhfqxLPWSmf/xGxJ2DVUpqhzBE9f8pLZjTFBexpa2gfUVo56jIukftLg+qrr1zPZv9CIOxSWwABe1H+MZPkSkNu7wb6UnnEyORI1kc/th/I3JGOqTnXtS/ABUYoup6fD4/fcvRFlmgUmWqcil5JULdcow5vHcDimCzFoM6nEQbFDdFbzHN+QkGrFoA9ahBzMQ9Fh3XoAYwpVCAoJ2n0KYyUFtEP/OwIqCLKTcUX+J/2sQqYXagqXOyG2gyhV91BPNlWpULLM+L69QI4oTF1WMG35LioUi5HJh8S2lxYpdvSkICXWVkWbd2lqimah1UzFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q78TUi1I7yY694ZpbTu1IzJ0EoCIxoaSBKFVA4dgLRM=;
 b=ibfQtlhPiBwaLNm9zKnbmGz0rbr7t+Kxck2yPg2av/mHsNRy5pGCcyYz5tarpzzPrdebA2WmvlmvOg9kd2puecWLj2Hr8To70sgsZkYg1NAcSEbhroAXsGr1fIpmVl+1MwTatkj5/08tEcqvv391+K7MTRz5ZvcxnGYse5HVuH8=
Received: from SN4PR0201CA0003.namprd02.prod.outlook.com
 (2603:10b6:803:2b::13) by BL0PR02MB6498.namprd02.prod.outlook.com
 (2603:10b6:208:1cb::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from SN1NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2b:cafe::c8) by SN4PR0201CA0003.outlook.office365.com
 (2603:10b6:803:2b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT015.mail.protection.outlook.com (10.152.72.109) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QJ-Kn; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-HP; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NljFI002389; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMgz-0002eg-OD; Fri, 06 Mar 2020 15:47:45 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 02/24] firmware: xilinx: Remove eemi ops for get_chipid
Date: Fri,  6 Mar 2020 15:47:10 -0800
Message-Id: <1583538452-1992-3-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(189003)(199004)(9786002)(81166006)(81156014)(8676002)(7416002)(36756003)(8936002)(478600001)(70206006)(6666004)(70586007)(356004)(5660300002)(7696005)(54906003)(316002)(2906002)(186003)(426003)(26005)(4326008)(336012)(107886003)(2616005)(44832011)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB6498; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cf55b9d-df59-4178-1bc5-08d7c228cd18
X-MS-TrafficTypeDiagnostic: BL0PR02MB6498:
X-Microsoft-Antispam-PRVS: <BL0PR02MB6498984A5165F7BC7D337E24B8E30@BL0PR02MB6498.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:205;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vVm2xo8/gUzCGk8AkINg8Zlk0HLebQ5+tip8SuppfsW/Bhkcp1gGSwu1EM+WLpUTPK5GohsszoNpkOT34gr80t+Q8SxkD03BvzjseZfDkDiNrezkzVZSa5/8p2kDqdGbejXgwjyUv9yiy46EmgSiORjFdT/VzAHwDIV8eujirsS9rbRaUgL3d4/wUvfb6hXer6F3WnfKwNjAgVcKjx2KmEpMEmYE37md+FhyJ0PYYNWImeIlIra0V392ya72XzIHZsicU08dSg09KtwxJ710yzr1AWwmp/bgFFMUGG09VAEbsRUxcLw/ByiRaCkmaV0082Qp8YFhoRBUVYzUkSt5x6Pp0Vv56CvFMmYLAMHpCL+tDLercBkk4jgKS2om//sMIFn5hkdyQ+/CkHZ8HPw8w1O7RqLSFRmsl/KM/rmo5/ligQbcp6H3IkApiQpjKMsh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.0133 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf55b9d-df59-4178-1bc5-08d7c228cd18
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_897576_C7025D70 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.46 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for get_chipid.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     |  4 ++--
 drivers/nvmem/zynqmp_nvmem.c         | 11 +----------
 include/linux/firmware/xlnx-zynqmp.h |  2 +-
 3 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index f7725d1..02d89e9 100644
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
@@ -709,7 +710,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
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
index 7529383..84b4160 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -286,7 +286,6 @@ struct zynqmp_pm_query_data {
 };
 
 struct zynqmp_eemi_ops {
-	int (*get_chipid)(u32 *idcode, u32 *version);
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
 	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
@@ -317,6 +316,7 @@ struct zynqmp_eemi_ops {
 };
 
 int zynqmp_pm_get_api_version(u32 *version);
+int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
