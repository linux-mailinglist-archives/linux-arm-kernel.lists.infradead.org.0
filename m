Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11EB1360BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 20:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMuHfLqx0fFNHbm8FEeAOAWfQ+egIz7ljtGvgKBnEoM=; b=ppPY1cwiNLB09b
	mv9d4U9kmtCJ2AhCO42+UoG7vMr88jpxhizpO6BCfFgoF/EFBohpP+sUwBpEg4SqAnwR7W4opUek5
	9eE9EAQemOHtWQd3KfPGD+7UGaW5D+bmLg7irckTfAwVNkNSRT2ROVOOw94TeWLIvMpug5lHO9zk5
	TKJR58sJq5y3/zxLmuNeZc9h/Ne495O452y47vPMCP19380fbC+mrKWpIEJs5uFLjDhqSCqicswca
	LzyCsmQpy54wVFdR1A5+L+ncGRq0gCvKDiYphZMi/qYhFaDGVyEnvDwmDx6VbsE2F2Y07qZVf8ceL
	1GxczEH6oXFCf2jBvxLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipd9E-0004Fl-50; Thu, 09 Jan 2020 19:07:12 +0000
Received: from mail-eopbgr760058.outbound.protection.outlook.com
 ([40.107.76.58] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipd8S-0003hX-DI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 19:06:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnJOZ8Vvh89fIKoxltpfjCG1wnzLz7ShkJmN2dUQwHAAyKWvp37bpVJ9jtCWfSZ+ViI1E0nuZno4l/vg0yTIaYEXG7i3SsiemC+ghL/ftf8dTyr23TchysQfiyA5tEBR1Pd7F5lISftKqv3iJ45zhx2JWwZKBXCIzbxzB3ngqMbEKHuc9tf2ObdjQwqiABTjNsLUYFiLMel1n9zEeqGyNf9sUKWPIGRmU5tPEWSpjM8mpyxrvo0GXLY9U1q87y4m66ZrCj4DSr6gWxwE7gMqEM3a3GfHq5eVKbyBvQlYORafTiObzSB4nL7BMiXVczRLON9o4s/xNOdbm0DNP894Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnXlTbDm/iPPO/b+WfAIZwqJmMT6ysDpy6iEI42vOgY=;
 b=h7mP1q1TT1ufu9S6tILp7ggTfxDKrTbTmonkSqOpx+YKI72xZsy5MCGF4Jl8bdmET3JcZXYTC00weH/1MxAubJEPvaaN2+3HLZVhfPG31mQA9ZuBWCPaWWDiWE+VXGpvgL5BIx5akdHnAOwMNCjoAu32BF0HVnkuzN0vrU0Ffe5/aFZo4m1bD2RGKQ0yJ4ZKsdEQPkeJoFRgI1muX4Hpt3A40OZic9oqELEjfrbqpj3p1SkrI5sIfGALt6q/q/gwdxiQGRpnLIoXcXkE4XbcSr21cDmn+0ySBRPI7xVnSP0n6VtuIEmfQUTg3nAbRHDp6JfUc794cSiaLnNvZCfbtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnXlTbDm/iPPO/b+WfAIZwqJmMT6ysDpy6iEI42vOgY=;
 b=TjhZNcWCx20I70s5r6WNpa5+w81ET2Z8rKny61dtqXvx5t5FXGPiKq4UHCFK4qtB/iyTawZqVD9bdhTj2/drBhVM87iu1og39QLlEfk0k6IqYuJEP4HKfprijcQlHvYR1jzNHInll/nmHIid3WutciD6vDPh1muGUqfaigrv+GI=
Received: from SN4PR0201CA0034.namprd02.prod.outlook.com
 (2603:10b6:803:2e::20) by CY4PR02MB2837.namprd02.prod.outlook.com
 (2603:10b6:903:11b::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12; Thu, 9 Jan
 2020 19:06:20 +0000
Received: from CY1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0034.outlook.office365.com
 (2603:10b6:803:2e::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.12 via Frontend
 Transport; Thu, 9 Jan 2020 19:06:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT051.mail.protection.outlook.com (10.152.74.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Thu, 9 Jan 2020 19:06:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8O-0008O4-0e; Thu, 09 Jan 2020 11:06:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8I-00030t-Tg; Thu, 09 Jan 2020 11:06:14 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 009J67CP029184; 
 Thu, 9 Jan 2020 11:06:07 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8B-0002yD-0p; Thu, 09 Jan 2020 11:06:07 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 2/2] arch: arm64: xilinx: Make zynqmp_firmware driver optional
Date: Thu,  9 Jan 2020 11:06:04 -0800
Message-Id: <1578596764-29351-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(186003)(4326008)(356004)(26005)(2616005)(336012)(6666004)(426003)(7416002)(6636002)(81156014)(8676002)(107886003)(44832011)(81166006)(8936002)(7696005)(316002)(36756003)(70206006)(5660300002)(9786002)(2906002)(478600001)(70586007)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2837; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d833a41-7a0e-4702-4d6b-08d795370337
X-MS-TrafficTypeDiagnostic: CY4PR02MB2837:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2837555DD64B082C264E0DADB8390@CY4PR02MB2837.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 02778BF158
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wcZFljlbcdGRjgeg59DQ6vsJtyGqrF2PMcKoQPjpqSouky3optt5//XTM3E78pczfZuKCpQulmdrNx4Kd1ZiZ4XhydjYSghBcR2UnxaOAm7kWFVDgAqYc0DlNOFYbVMLR256cwm8pkmPndSvpXzpl1MRMqHmSpOlLUqb4AJU0AdkGnXfcHxq43kEkIPfw5tQDT7W2eCXuwjVeuhKtOHZG0B3W9SJVhVMBWHR0202v0223ftLmSnAFRYkMY/cWr0FCCjNii/kwXALsydsX/jIqsuEZzNAXdQ9pBO/eF0wRZLv8D+GiBL/X3dEDmShcfZm1RveCtTV8GjHR8m3PKCuUVMI51dHhbcr4oqZqB0Gv/XuNIijn/HWkDkgx9mOMmA7hKMWnqhBOZslTnbIz1GnJkUKahMGwtKrHt7qzoBUE6jd7MiQ4PUd9w290osVSJHV
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2020 19:06:20.4629 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d833a41-7a0e-4702-4d6b-08d795370337
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2837
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_110624_460001_69D3153B 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.58 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Zynqmp firmware driver requires firmware to be present in system.
Zynqmp firmware driver will crash if firmware is not present in system.
For example single arch QEMU, may not have firmware, with such setup
Linux booting fails.

So make zynqmp_firmware driver as optional to disable it if user don't
have firmware in system.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 arch/arm64/Kconfig.platforms    | 1 -
 drivers/firmware/xilinx/Kconfig | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index b2b504e..563c93d 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -301,7 +301,6 @@ config ARCH_ZX
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP Family"
-	select ZYNQMP_FIRMWARE
 	help
 	  This enables support for Xilinx ZynqMP Family
 
diff --git a/drivers/firmware/xilinx/Kconfig b/drivers/firmware/xilinx/Kconfig
index bd33bbf..9a9bd19 100644
--- a/drivers/firmware/xilinx/Kconfig
+++ b/drivers/firmware/xilinx/Kconfig
@@ -6,6 +6,8 @@ menu "Zynq MPSoC Firmware Drivers"
 
 config ZYNQMP_FIRMWARE
 	bool "Enable Xilinx Zynq MPSoC firmware interface"
+	depends on ARCH_ZYNQMP
+	default y if ARCH_ZYNQMP
 	select MFD_CORE
 	help
 	  Firmware interface driver is used by different
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
