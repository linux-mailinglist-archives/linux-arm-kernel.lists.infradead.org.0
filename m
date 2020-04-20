Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A6A1B197D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A3Wz0D5WyPK2hsBlDyZIONpZilrUqE8dkHdIGHLvAA=; b=D478Yqb9FRW+Vn
	r7ZUQB7UEKTTnAZyQOMSoiHGJFLM8I+2OqJ1CJWTea8L6k4PvvxNhoG1vHC1YXkYWiVnfSFH4s3Ip
	Ccv6wa8pxgyYn/CHNGccuz7H31KkAQcO12cvrfITxyd+Dqg32/yEQECv4T1XaCIsyQ73B7EiPuctM
	qByKs7w1fDttu5YitKon2lciQ2fvFyTYYXZQgB5dF3OBjjYrOCPQDDqdjr95PoweDCnENwjRKqTqt
	wxsZRTPyvfJ4IqDf+/VxzNfx5Ec/4P3AzCwGYeDGP5cJWuMDzgZET6OGet2h0RAv1psriwi0IGitF
	xVpSd7GtGWsv8VSaRvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQetm-0002UL-2J; Mon, 20 Apr 2020 22:28:18 +0000
Received: from mail-bn7nam10on2053.outbound.protection.outlook.com
 ([40.107.92.53] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQest-0001qw-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:27:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KDp9X6nM8PFBgMfQAWZFaI86GnQE+nJjjvj9mb1tFQ040AS0BCcjnVt2h7U8ylNmjcFlYhGp45BWg7hnikxJQVwSUDCO5HbPbQjcxbG2GBqXl68EchWWxKsnLV8Bcq4ey4AIii/v2VEugvJFFExPLFt8FZVD5WZ4z1Y92org5MW623/yHqec5hwOSH3sTDKCAw9WBTTn9i4NOsdalJoy3POvUT+Z6UZSHiFucxT0D7G7hDSuTiytF1SvPzvzn9mNoPxxTbRUTcre8ly4k2LEgBKGP+cTTvQ4XMNZs+3531TwdHMUD6N6Kx0KOHWT4t6YqRp4pNoTarSxC8QyBRYzlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roz9wI1ufrWkq6jN5pjC6kpqV8Ab8puozveoIWPA/RY=;
 b=T2kKIzLBdNhVja7RYruvrnutuRFmNVoBMQPlsaijPAcufGjAUJRX6QnCFqwq2c0wT0dicic25w6rOgnS+VK3tFGo3ePsQTy9alsGApPIJ7K0kI5HpIHDbI+BXGwZ6CDBXuudbIa2C6pdQa9tPOc5w1670FamcCPkQkPa6WEvuEUYVIN4WwnaihHP+9pJ0KhTvYowd0foelg39Qv4tuX0K4aRm4MDxMLkdpdL7zENQ0EV9Ll0qtc1Ium96E/1P0zLCEVt5D0i/wdXDQ2b9R3SiVWLcofnPrQRJHFTsgPz5Fk+n2zfBkD55eC48DNgge1XaRl2QfjrTXA8QaLktX94Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roz9wI1ufrWkq6jN5pjC6kpqV8Ab8puozveoIWPA/RY=;
 b=C6t2oN39GSkq2qGSd8CteN/ozKTL7jwInCRF13Ec61g5amMkT/WVsU8VDpoHAosAUQejE/kgKGvtgLgK4OcA+kgDFNmx62FZgIiV02b9+AQL1upiKA31OgCNreQyRLy35dkGOx+LEJ/StYDY9qO3mZ6pXk0mUdLiY5VEhaX2HxQ=
Received: from BL0PR01CA0012.prod.exchangelabs.com (2603:10b6:208:71::25) by
 BL0PR02MB6482.namprd02.prod.outlook.com (2603:10b6:208:1ce::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Mon, 20 Apr
 2020 22:27:20 +0000
Received: from BL2NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:71:cafe::7a) by BL0PR01CA0012.outlook.office365.com
 (2603:10b6:208:71::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Mon, 20 Apr 2020 22:27:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT018.mail.protection.outlook.com (10.152.77.170) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 22:27:19
 +0000
Received: from [149.199.38.66] (port=33639 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQerr-0000SX-Vo; Mon, 20 Apr 2020 15:26:19 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesp-0008OD-4m; Mon, 20 Apr 2020 15:27:19 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03KMR9JL006352; 
 Mon, 20 Apr 2020 15:27:09 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesf-0008MN-7D; Mon, 20 Apr 2020 15:27:09 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v3 1/5] firmware: xilinx: Add ZynqMP firmware ioctl enums for
 RPU configuration.
Date: Mon, 20 Apr 2020 15:27:05 -0700
Message-Id: <1587421629-914-2-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(39860400002)(46966005)(7696005)(82740400003)(9786002)(356005)(4326008)(81166007)(8676002)(44832011)(81156014)(8936002)(2906002)(336012)(426003)(26005)(36756003)(5660300002)(2616005)(478600001)(70586007)(316002)(6666004)(186003)(70206006)(47076004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6a73f9e-65ec-4c6f-5e84-08d7e579fd1b
X-MS-TrafficTypeDiagnostic: BL0PR02MB6482:
X-Microsoft-Antispam-PRVS: <BL0PR02MB648204992B3E5AEE9CB17B3BB5D40@BL0PR02MB6482.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 03793408BA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: emHRRVBWcip2GeGSF9fGkMseNBa4rVS6P0SwY60htwFbLEXchkDdyNLI/jPv5yh1oMmHPKzxeggrJ9t5IXJXVUA273Bz0oNH+n0xWopOh7d3rMANlj+Qou3ztFX1ENwIay3wQyYtjkd9rxS8eIPP7bzFOQNTlIw4/OCvs2zT8URtZI0jNcDlzvvJQIm4vvvOGAq5U8V1YI8C4y2pWdCadWJtv+KtybcYLI1/WnN1mjnJ2DF/zp+ew9Sjgo+N4fDnARQCQA5sk+XJk53VjkT+/Q5Jt9PU/qd//TeDEHZ+k2rirRo41R9NGthDgRxuipC+AT1Fo5liM4ZwyJjWR7MU3r5qr9GZ/JfTkTEr+sInoHQUQXjz/LqnHtpvo2fBtwB/bmtary8BbKxOYel6HJ3hcLt57romb66Wg3KE1EYqqQianwQVMP0s0htqTRXltGuxYkZvSdUOr7wSZi33WBQkGdU9JkObzh5OGM6W1qC0qvw21yLYvPUGbb46cwgsrdlWNPbSgGsR79cHh11tYvyARw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 22:27:19.6317 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6a73f9e-65ec-4c6f-5e84-08d7e579fd1b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152723_771258_0E348C30 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.53 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ZynqMP firmware ioctl enums for RPU configuration.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
 include/linux/firmware/xlnx-zynqmp.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 5968df8..074ad71 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -104,6 +104,10 @@ enum pm_ret_status {
 };
 
 enum pm_ioctl_id {
+	IOCTL_GET_RPU_OPER_MODE = 0,
+	IOCTL_SET_RPU_OPER_MODE,
+	IOCTL_RPU_BOOT_ADDR_CONFIG,
+	IOCTL_TCM_COMB_CONFIG,
 	IOCTL_SD_DLL_RESET = 6,
 	IOCTL_SET_SD_TAPDELAY,
 	IOCTL_SET_PLL_FRAC_MODE,
@@ -129,6 +133,21 @@ enum pm_query_id {
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
