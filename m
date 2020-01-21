Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F217143AD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQgTy9q02O8Nov8UhL01l9VX1BLZtZnLcMaXHWYlaR0=; b=E/7HLs+lZYS00U
	791S52gVzG1+2Me81mHDUm8Dzx8rc81NAmDnr+e2rETKfnMHcANnGnjff04ZYr5AgzUBu1gKt3uev
	4Lt95ADBenpjIdM0mFokt5q/6k2X3b8eG6opJb8FvTk0xLBm/dHykWnRJiDcSk2SXGeQhZf4LKu5H
	fkvza5VBXC1yHYBF8ac/j22vk8Es1oQidReDqzlQnscCDl79Z+OTjooNVEx8Fr/Wb/pNx7wHMVdFF
	X1DYiBs8Ag+kpFT2X8uDGsTWOnksjP7ZneofurHT85A5MFg+S5pcCDoOmDN1/4fB70dfeFTytii8p
	H3wZ1uzwtgSEX+befJqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqga-00026Q-MH; Tue, 21 Jan 2020 10:23:04 +0000
Received: from mail-mw2nam12on2059.outbound.protection.outlook.com
 ([40.107.244.59] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqfU-0001NR-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:22:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nENrV76B90/nL49hB23GOd1qXIAXW93fdJDKkm1ztrc9KdMIl3N9e/CFVUSdWrsqCXqR0mmJmm4wIW5YTWk8GAnP8eXaUvs0va6WA5fqrBIX34G9Hz4kwq/bnby9R0rrEiRIf7tkUIPl3DCIuTkRE664u7WiYQqlFJrmLS3mEW1JaVwnzaMzDNnwYYPuxGWNP9t435nuVuJe6byfJwP2IMAdcOv1UxdgBFI7UkmGXQbg/EV2N4oZu7rDldRpdX6gCUZg3TBj/i7M3Zl23VH6pixd26IxR78Fs5gTx/jKc2jpqPqfUwJq8kiHorAl62v2Ufn6oucv0IR71VDvmqh86g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJSKX2rj6pYwLWRX67lh36MWnhuaGoIjmki4w+gKq04=;
 b=ZZNlXjwHFYk/db23yWVoYO4F/bUATbTHm/Z2wH7ks72w39nt6sHIF4LcIz5+GvwYAQf+tSR+t6rzYlCXA+0OBrs3/D8l4VsAhzRTbTZn28SLy3ntvJCj1Fqw8vz3xuxq1vE/ZC3qF23PHA+rqTRc2/dYNz1NPoYcdx/uJI/CulL2fPV+3e+PPYKYfRRNAlpjWQz0uSb53Pm/DDru7v1e6gtbjgopoPh1SK/LGqA14TxfH0wghWtGX+yWITNjzRU0FpQrrONOLQhuq3KQuBdoZ/uqVeHOhT2/1KzQO0vibfQ02auY3Yl0a+nKc7jMDSA+4tb1oP98eGn9hFNmCc7aEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJSKX2rj6pYwLWRX67lh36MWnhuaGoIjmki4w+gKq04=;
 b=dtOqXwq6LQQQKcxrxbumhaqyoL1Tgi6K9To/45sUHBqHF7bgLuh9EO9HsBLeni8VF1eQI73DqI2bWsFBPDFHTvl5PHPmnPR+LK3JeYZt9lOmKafP54iqKIMxOhsRdIrOvEikJ2rvXfkgMCsaAuTOyRC1SAnNzg+OOcoFkyaPdcY=
Received: from MN2PR02CA0024.namprd02.prod.outlook.com (2603:10b6:208:fc::37)
 by BY5PR02MB6242.namprd02.prod.outlook.com (2603:10b6:a03:1fa::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23; Tue, 21 Jan
 2020 10:21:53 +0000
Received: from CY1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::206) by MN2PR02CA0024.outlook.office365.com
 (2603:10b6:208:fc::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend
 Transport; Tue, 21 Jan 2020 10:21:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT062.mail.protection.outlook.com (10.152.75.60) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Tue, 21 Jan 2020 10:21:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfQ-0000zE-8H; Tue, 21 Jan 2020 02:21:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfL-0003Rc-4e; Tue, 21 Jan 2020 02:21:47 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00LALghh003286; 
 Tue, 21 Jan 2020 02:21:42 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1itqfF-0003Pl-Q8; Tue, 21 Jan 2020 02:21:42 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 06698121E00; Tue, 21 Jan 2020 15:51:40 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: michal.simek@xilinx.com, adrian.hunter@intel.com, ulf.hansson@linaro.org, 
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 manish.narani@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
Date: Tue, 21 Jan 2020 15:51:31 +0530
Message-Id: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39850400004)(199004)(189003)(70206006)(70586007)(426003)(186003)(26005)(8936002)(36756003)(336012)(6266002)(2616005)(6636002)(81156014)(44832011)(4326008)(81166006)(5660300002)(4744005)(42186006)(6666004)(2906002)(316002)(356004)(478600001)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6242; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ad5363b-dcec-4072-48a0-08d79e5bbbe8
X-MS-TrafficTypeDiagnostic: BY5PR02MB6242:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6242B49A30A5358495672AF3C10D0@BY5PR02MB6242.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0289B6431E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xSLM3qAhvzQ0poGOTMq/zkLqg+9V51edYq/LFdv06EwN3zfWFT7oPOAd9yrUHZOFTvHCXPUBhKVXJB7PeGJwardL4s378CTWdbTBNmGG6yLx612lkwpPIrm+97Y/7hLm/vTeQZdBIGV3vKHt5OmcuQxuR/7c38Ynd92BVE+HaXlzCsM7JwGxUxJ2sBnbC5qQtsSqgSH/qP2KTaH7x8lJTSK8W4MwaKQXe6U46sKBUnzCXyFEYVvkmkq7oAvqiPjlqHfEyjkSKlB5gJyuzjzx1NFOUbSAwTMX/um8bE6HK0Yn+xJ82deArl5KLnkte4vzcMoisi97UjKLpmxZVlnap1WiR+9TwspPvl5rwsMZMYUHEZNCKV4qOyPFckzJV20elkqH3o4SUeErLFOOJXTF0ZrCV44dIDF93AdW/UAMeeq7A8q7uztMwmnYdmDm4wEg
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2020 10:21:52.6708 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad5363b-dcec-4072-48a0-08d79e5bbbe8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022156_602280_C580AE87 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.59 listed in list.dnswl.org]
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series includes:
-> Mark the Tap Delay Node as valid for ioctl calls
-> Add support for DLL reset in firmware driver
-> Add support to reset DLL from Arasan SDHCI driver for ZynqMP platform
-> Fix incorrect base clock reporting issue

Manish Narani (4):
  firmware: xilinx: Add ZynqMP Tap Delay setup ioctl to the valid list
  firmware: xilinx: Add DLL reset support
  mmc: sdhci-of-arasan: Add support for DLL reset for ZynqMP platforms
  sdhci: arasan: Remove quirk for broken base clock

 drivers/firmware/xilinx/zynqmp.c     |  2 +
 drivers/mmc/host/sdhci-of-arasan.c   | 59 +++++++++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h |  9 ++++-
 3 files changed, 68 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
