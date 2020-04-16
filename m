Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8404B1AD25B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZwQsNRxjatwK3/qO1nJjKtei4RxmNpWxUkFBNfZ6q0=; b=T1gdncM4Y+qzOU
	o1I7Z+kf9NGPp1qmF9uP4t/JUgnioINitoIio91qBzf7JuuYbGHI3E7U2fkwGNDGSS8QKUSRn3BwW
	+uGnP5bpwpkUhb1wuuZMKmzVwMz3L88MKe69PoUxS9s2Up+cfnbGUF4vrx1WF+LQH4fCMRXGFehlr
	kReOLqKpeZpa7xcbApmHmuH9J/d0dlhUi5RjkJsJs19ZPwlCCWgle12LyFeJQ4nXRmBGE5o1WcMH7
	0xkqvMPoE+MVqdA/s/3avx3/V9T5QKhOfQGxKcwvz2obgB9pAnpl4GsCcthnPGMkJ36HX8d/+u8cp
	Mpm/Ey8jTjRvNf0exRcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCU8-0005eE-Ae; Thu, 16 Apr 2020 21:55:48 +0000
Received: from mail-dm6nam11on2044.outbound.protection.outlook.com
 ([40.107.223.44] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCTD-0002nk-NS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PcAguEZPqL3CnF7runsUf6hmRTVyjmeruM2+svZ6pWaTPDmW2d63FKxBxjBiaUjqYznrncTCGwcBdpeR0gf4CEu8UYLIiG32SqBOAjbcxiWpUi3mDR7pAZnhW8pna+JLw5jebYsUIYJw1pVY4t50JnxSVYMBzAtC2R16vmUYcYes9O2M8nVK4YwJYFwUl6uOxuWcFT7YVCE/qMZaUwT3nq2gN2NXeKGk84kUPE8sOLHeHoYAlStioWtKZbM3BExpAVDazG+CcVjCVuyakdy6xHOKpysi3RmZXyFxvNjnGyTKDOR8IUaYdzoB197j3X2z6Pi44sHR/vRx6lIdGSt7Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ym5wJllLzKBNSaHlZTDO4xHyMwQtrx+lmbsHnkMms24=;
 b=f9N7LiB9yZ+Ofw4O8bTFBQMQwBFFPAw/kyPs+w7C/EG0wvK0OOcojSAfrYHK9t9y9EwzIibwdFN9oaCjAaMHeM0I3xsUbiwng+QD/IEnuXR1W2x8wdJ1OnfuGlg6VSeyzY8nd9dq8SM6Al9SIT15pD39BaPf50rMa+dd03X8QbyUNknXwGXv0reuPMepAvQgCV12wgxpqwrOqFnGQl2MgvBUj6Lpl/S83AsoEQSnQ06kkKKkv93VJCvVo5zA//cmnU6Sv+WatM8Z5bkOulQxHtf1HSoi722xm3jhQ4GzCm5De9lXejAjoACs4QZyhvZNHapt2pwmk6hx2n5cQSWqAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ym5wJllLzKBNSaHlZTDO4xHyMwQtrx+lmbsHnkMms24=;
 b=iiE6eIoGIyInOfpOaUfaOC2ogAAisZIDBisfAwK42IXekcteM/M8uWcxeciCuG7rmrDSOKj2GpRGaQPSfL+i0xYln4U6h69Nt0gxYAVox0Ir5evAQl3qNvN7c2x9ry+QIEjhEO2SkyeeMaTAQ/Ecgp1swV6dizQCOkH6gu8X+SA=
Received: from BL0PR05CA0001.namprd05.prod.outlook.com (2603:10b6:208:91::11)
 by BY5PR02MB6161.namprd02.prod.outlook.com (2603:10b6:a03:1b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 21:54:47 +0000
Received: from BL2NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:91:cafe::4f) by BL0PR05CA0001.outlook.office365.com
 (2603:10b6:208:91::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.5 via Frontend
 Transport; Thu, 16 Apr 2020 21:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT032.mail.protection.outlook.com (10.152.77.169) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 21:54:47
 +0000
Received: from [149.199.38.66] (port=38388 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCSN-0004cY-EU; Thu, 16 Apr 2020 14:53:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT8-0003e3-LN; Thu, 16 Apr 2020 14:54:46 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT4-0003cm-5Q; Thu, 16 Apr 2020 14:54:42 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2 1/5] firmware: xilinx: Add ZynqMP firmware ioctl enums for
 RPU configuration.
Date: Thu, 16 Apr 2020 14:54:38 -0700
Message-Id: <1587074082-14836-2-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(396003)(46966005)(336012)(70206006)(8936002)(5660300002)(426003)(356005)(9786002)(44832011)(70586007)(2906002)(2616005)(82740400003)(6666004)(7696005)(8676002)(316002)(4326008)(478600001)(47076004)(81166007)(26005)(81156014)(186003)(36756003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e909902e-0191-4b23-8482-08d7e250c7a3
X-MS-TrafficTypeDiagnostic: BY5PR02MB6161:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6161CA424CC4A1CD5CD0DC7BB5D80@BY5PR02MB6161.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 0375972289
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vxfDz1hKHnVZQ/bBxzE02MydLV5WuUVrvPx12E6m3+6FVte74nMcWGApjuwkG549gPwkN5hWtz6f/JSsapwmLtnOB+C7fHFWy5whmBMy5W8OPtEQkhpn/ZHq2aTkJiagOW/iYLLkREsvwsMbi8L5G7a3YQZBtkMcb2GgzGMbzmGIIMLRtjgNdcbaCLJ/oagS2Oh8GgfuXrvLRDQ8ontW/T6fSwL55GWsoc3SepWtPEgq+08e+AQTCcHUPh/swlMm+0GqLqMtnpGFofo71GxVRlog95T0qPIwLt7DutOoWqSmbNfroSkkfSoyqe5oZpxbfGpsh9Nu3/Kc/iKaueNokT1HzR/fyfS2w6yArZyYmt2tSjj0ZD+UvOPzItzzEF9jv915cCMzuSb46JliWML9i9nbAQNC213fCyl2AmihPT8JpRiaZErFMGcdTf2oMrISMkm5qsogdH5XijwisVu6iBtGRMA2SP3ON8HrHQks8yb2hzdiew7+qUkkV1XkLDe5KxLxAWN56HwSj0TNLPQCfQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 21:54:47.0737 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e909902e-0191-4b23-8482-08d7e250c7a3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145451_762256_807ACA1D 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ZynqMP firmware ioctl enums for RPU configuration.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     |  4 ++++
 include/linux/firmware/xlnx-zynqmp.h | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 41b6516..7978065 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -512,6 +512,10 @@ static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
 static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
 {
 	switch (ioctl_id) {
+	case IOCTL_GET_RPU_OPER_MODE:
+	case IOCTL_SET_RPU_OPER_MODE:
+	case IOCTL_RPU_BOOT_ADDR_CONFIG:
+	case IOCTL_TCM_COMB_CONFIG:
 	case IOCTL_SD_DLL_RESET:
 	case IOCTL_SET_SD_TAPDELAY:
 	case IOCTL_SET_PLL_FRAC_MODE:
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 8efa5ac..ddc996de 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -101,6 +101,10 @@ enum pm_ret_status {
 };
 
 enum pm_ioctl_id {
+	IOCTL_GET_RPU_OPER_MODE = 0,
+	IOCTL_SET_RPU_OPER_MODE,
+	IOCTL_RPU_BOOT_ADDR_CONFIG,
+	IOCTL_TCM_COMB_CONFIG,
 	IOCTL_SD_DLL_RESET = 6,
 	IOCTL_SET_SD_TAPDELAY,
 	IOCTL_SET_PLL_FRAC_MODE,
@@ -120,6 +124,21 @@ enum pm_query_id {
 	PM_QID_CLOCK_GET_MAX_DIVISOR,
 };
 
+enum rpu_oper_mode {
+	PM_RPU_MODE_LOCKSTEP,
+	PM_RPU_MODE_SPLIT,
+};
+
+enum rpu_boot_mem {
+	PM_RPU_BOOTMEM_LOVEC,
+	PM_RPU_BOOTMEM_HIVEC,
+};
+
+enum rpu_tcm_comb {
+	PM_RPU_TCM_SPLIT,
+	PM_RPU_TCM_COMB,
+};
+
 enum zynqmp_pm_reset_action {
 	PM_RESET_ACTION_RELEASE,
 	PM_RESET_ACTION_ASSERT,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
