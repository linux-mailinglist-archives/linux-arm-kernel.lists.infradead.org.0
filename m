Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3ED143AD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4d2LDwEjypzBlVZltLmqSG8zg4/Oz3AomKUIgxqKLw=; b=ESRg1eAH2ZnrXX
	bZBVYRJqexRuJaDkfgwngwAySaCXEWj3UvRWjS9LUu8cpAlMTcnvaRp0SkW9nVmqsGCPyd5SPIlt3
	KhTGNRHxtsiltPq9oiOfEA7BOcdbvUleSCorPk2BA+9hYoF6IIw3Q5ZItQF61m5G2pyGC9RiM0YrB
	sewDnjzP5PFa+MLkfj4fzAvsowmf4yTvHkFPxOgt/ictw4I215P8CDonBvUPd0Pr9HY5ScNj/AMd2
	5DG2pB4H/3LGM9vBCMeCAZU9litFN07r7/4bcyjcEOACv/cwCFT5plPFhFsntOZB8qErla3x2BYvB
	YTlhSY/GAA18jR6tN/mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqgq-0002Ka-Vn; Tue, 21 Jan 2020 10:23:20 +0000
Received: from mail-dm6nam10on2062c.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::62c]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqfU-0001NO-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:22:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nK6RYSZ+8GZMvlf/nEuD9wEbzSbT4me0bwggGdxgnMnLsGHcWiEkzn44ZxkLOn9eAwi6W1pBqG+GCbP+NkDewbDUPJlunTG/JCY0z9ppB1Tlp7IC0t6w6EyAyzsRMHHZzyJv0Jybg7Z29UB5V+VQKr0w1PTsVJNVjTaOcQxvPDc6sdcUk3vKfvBZJrPf7POiRauTUIFsln1CJid74y4bNXLNbNclWZ1rNJH5FfDq4ya23AwQ9XV2AGLYfzWNHYhSmdsC+wd+Z521UHoGE4Zt58LlBLrq+hsLmQFR2Y6r6Z1FSfkaE2g0aTsG7FpMqFp6e/IJ4/hvBuJYPzR0woTKrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbWS3IO5nOe9odaHiUd7Lg/BE1l5j6DR7enHd18ORBM=;
 b=cX/vCbFemKeMTUEeC9fCbTexj1cFPZi5NyxH4Pnqav7XO6HrKixTWlZxg0tftn/WAeTTt9+pCsGjI907oBnVb40G8kvsHk1DJq2bxVm2BcNjpZbdCWb6rTjRL9n8vc8omSxYZgcNy/kFYoFOmJcbaRsgarcnBrGDG80p6NTUOBOhk8L4cY/T8O45mwnIIwHaxE+8m5oL8r2qXivtwBdI/k+N0OeKUPJn3G7o4uwic8m3KjIH+1Ct85ViHg5m8X0ZIeMSVSB9HBxveL25p3gbW3fhu2rv2OjcEDK6e+NT9Bre7BMZPxpUgMkfG2E9Yvtj419TXN9nYjpeefB7iSGL+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbWS3IO5nOe9odaHiUd7Lg/BE1l5j6DR7enHd18ORBM=;
 b=GboBlKooiicSHE0OQFHKFyre39wElekYg4Yyzr7UY2/mYVKI4BrdU6f46zkZu1vz46X8iZn3XZdhC5QKN1woQe+olqTw8EItpwfhPkDVEEUyzxTRsS6Zy105omNvyRHbc9RvmLbMHLO6IBxZq+gnOxGSo4SVN/8sceRKadfUgTw=
Received: from DM6PR02CA0102.namprd02.prod.outlook.com (2603:10b6:5:1f4::43)
 by BYAPR02MB5896.namprd02.prod.outlook.com (2603:10b6:a03:122::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23; Tue, 21 Jan
 2020 10:21:53 +0000
Received: from CY1NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by DM6PR02CA0102.outlook.office365.com
 (2603:10b6:5:1f4::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23 via Frontend
 Transport; Tue, 21 Jan 2020 10:21:53 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT042.mail.protection.outlook.com (10.152.75.136) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Tue, 21 Jan 2020 10:21:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfQ-0000zF-BQ; Tue, 21 Jan 2020 02:21:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1itqfL-0003Rc-7i; Tue, 21 Jan 2020 02:21:47 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00LALgUE001395; 
 Tue, 21 Jan 2020 02:21:42 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1itqfF-0003Pm-QJ; Tue, 21 Jan 2020 02:21:42 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 0967E12007B; Tue, 21 Jan 2020 15:51:41 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: michal.simek@xilinx.com, adrian.hunter@intel.com, ulf.hansson@linaro.org, 
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 manish.narani@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH 1/4] firmware: xilinx: Add ZynqMP Tap Delay setup ioctl to the
 valid list
Date: Tue, 21 Jan 2020 15:51:32 +0530
Message-Id: <1579602095-30060-2-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(396003)(376002)(199004)(189003)(4326008)(186003)(70206006)(6636002)(26005)(8676002)(2906002)(5660300002)(70586007)(81166006)(81156014)(36756003)(4744005)(42186006)(426003)(316002)(2616005)(478600001)(356004)(6266002)(8936002)(6666004)(44832011)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5896; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cfc6e236-800a-4781-ba8d-08d79e5bbbf8
X-MS-TrafficTypeDiagnostic: BYAPR02MB5896:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5896416797C25C6B7467E38AC10D0@BYAPR02MB5896.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 0289B6431E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5/rQz7TgY2s7lqq/FrBp4UYZrThiIVlqNacu8OzFAdmlMM7bLrnqJ6C5bAtT7s2+iZ97rmY0fFnL8Km+k3LdjvXRvuXtXShgJFR7OJ+D3w/l9OFzcyBnLrPiEwLxdZP1G+q7MLeQe+LXmpppP/POox7J5xhx8SMjqGB30LIxTXz5HMkSjU2E058Ze98/H28tZiZlfzsCcTNnkxuXM6rQaHOixlDnWWvrKT42aAXLirbWlscFFye2XSvqRs1tr/zBannkLg4FN5Uf+HZpVVOmIvsyTaTX9eH5YgvROLJWpjKEslwr1MJmNKPBy+oB5Ado4sUK5u1XjePPLY5zSgRnEmIQv9IxBljV9RVpae0BbMAnXQmSy88ngiFTnN5rNRLWvvPYhZqIsUMpY4nvVeAPJ8uwj1o5WqhpTM02m0ItoL+FeNbxolzTiU/FtR0Qyewh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2020 10:21:52.7784 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cfc6e236-800a-4781-ba8d-08d79e5bbbf8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022156_765134_425FAFEF 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Tap Delay setup ioctl was not added to valid list due to which it
may fail to set Tap Delays for SD. This patch fixes the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 75bdfaa08380..89eb198cee5e 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -469,6 +469,7 @@ static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
 static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
 {
 	switch (ioctl_id) {
+	case IOCTL_SET_SD_TAPDELAY:
 	case IOCTL_SET_PLL_FRAC_MODE:
 	case IOCTL_GET_PLL_FRAC_MODE:
 	case IOCTL_SET_PLL_FRAC_DATA:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
