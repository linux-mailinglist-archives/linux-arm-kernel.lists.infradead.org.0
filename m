Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCD8DA583
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNkTJuA6ksmNKJZtWa+DTAYis/1rQBwdLbuMv29wa/8=; b=OCRBgcac7KvvIU
	G2/3ZfpRTTgbwPztdodxgWDzvLN5RygNerNecGV0MaUJ2ojHiP7LbZZvrFNngj/6z5jOlwS1/V3xX
	L2JJ7sP1hKxL7FSHgMUmjUahZZ4+MTas7ZH8y6yUdhFfJvn2B67tn8NWu8LW4kt2+v3umpB6/11BN
	ooV+t1BBmBSlyxJpiN9f4ZfTAnv3AcfNQazxmhQHxz7t/XbPA3+aLGXNKTG81H9uMjnpGQfcD+Nkz
	8Jjz+onbTknGSwIauTVaXYQcIOUwoDKtd0nSfdaUHUjhG4teT96GQ7Pszq8y70wjYvYuDAg1t3A+/
	7J2Qw00ODcItawyrvcAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzBA-0004Bo-T2; Thu, 17 Oct 2019 06:22:33 +0000
Received: from mail-eopbgr760083.outbound.protection.outlook.com
 ([40.107.76.83] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzAn-0004A4-9t
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:22:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVbT4h/4TkVLlGBIDj/bhLgHm7FFDJ8avMyLtXIv28o6KEPnKPY0/FxCSn6kAa62FgpKK/gXDzjUSoXTF1grHHYLZUyRM0uOsV6KqXxDzk0QVbs661WA8SFhTbPQA9gLidY68UA3JRAaqGO0WdoWfFjejdOCjtSOtxDx4knCG6lAfgwT5Xll8+xACfeoI1DTQWs9siQlqMysykc7kWq/Ns5k8yrihEAEF/7wGzNyP3bBZO3fSMkA4Y4q7nT9V0MdBChrJb+Ll07NO1QRTFBSonKvILXuWx8K6WTCRwWR3Tbzsx2NcCQq+0jQ2zW1Lu3B+wcrfC3IDpVnVL1fJjolfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8ZAaEVeEpNU628p3tE43eG+T1WHOKMQZYjiHaLpqk0=;
 b=dgEOVJ+wnJ7Cb7c2XukoHk56eIDqG9ILzUH1hsprxkZ8pVt7fFOnficJol+gcVwV43v7Ymim1I9hm1wqxRuOnITvOvfEjaIr6QP83QGmH9if41Uqb8fDt8B+VfzWLs+L/jtcVY6IT6NalIHNsr1BhJbX0b0CLidUGZqeKrQCRr39zU+PuFsUzD+rwZlTVlfxb8t7lVmfMspAhJxxXpFNvgnEDvv7WxkmiX7HvuPK7hGXbbEJjJwmNQiGUU2jGsj7/M4E3L5ESJE2Ggct/W7RizyNZv8rqCEt+oN9pZzkZuT75MK3Wr/IAxmKrOJvboaCsfVgG2gTS/2v+oaPEHKRhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8ZAaEVeEpNU628p3tE43eG+T1WHOKMQZYjiHaLpqk0=;
 b=Z+E+rMKgSbC+XY7wC2OZSXbKlK1l/QVaH9rk2Gim/ONoqfXUnXxz0sABgHuBdjqWI6VA5nn0142Yt12jqnEvYgQx+nx9Qm8vcGX6m1XyA+l3mQpNbpFzGXNWy/i35lNeBTEvpgxtJwdagDfmDsLVm3cCSBqP52WdtoVqsYmOai4=
Received: from CY4PR02CA0034.namprd02.prod.outlook.com (2603:10b6:903:117::20)
 by DM6PR02MB6684.namprd02.prod.outlook.com (2603:10b6:5:21b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Thu, 17 Oct
 2019 06:22:05 +0000
Received: from SN1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by CY4PR02CA0034.outlook.office365.com
 (2603:10b6:903:117::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 06:22:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT059.mail.protection.outlook.com (10.152.72.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Thu, 17 Oct 2019 06:22:05 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAh-0004ag-MK; Wed, 16 Oct 2019 23:22:03 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAc-0003f6-JB; Wed, 16 Oct 2019 23:21:58 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iKzAZ-0003dc-BM; Wed, 16 Oct 2019 23:21:55 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id 8C3B343A9A; Thu, 17 Oct 2019 11:51:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org,
 manish.narani@xilinx.com
Subject: [PATCH v3 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Date: Thu, 17 Oct 2019 11:51:42 +0530
Message-Id: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(42186006)(16586007)(2906002)(48376002)(316002)(44832011)(6666004)(14444005)(305945005)(103686004)(126002)(486006)(2616005)(356004)(478600001)(47776003)(336012)(426003)(476003)(6266002)(26005)(36386004)(4326008)(50466002)(186003)(5660300002)(36756003)(51416003)(50226002)(8936002)(107886003)(81166006)(8676002)(81156014)(70206006)(70586007)(106002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6684; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6394a872-59a9-4f6f-7fba-08d752ca5499
X-MS-TrafficTypeDiagnostic: DM6PR02MB6684:
X-Microsoft-Antispam-PRVS: <DM6PR02MB668457CD0883E18195E5A9DDC16D0@DM6PR02MB6684.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2idbgbNeFLfivoJW9hB5+BheDMq+YlTPh/6Rom8Yqqppbc1YuPRkwqmU+iWAAQFJw3qYX8d/hi+7YrVVpSMGU8sck813QujvKLqJ2KbEeZSxuwi+6CvL90VD5GjcfmKHOhy9yEoj/nw0vtzI7xHK83FIr5nSkzD7HJ98DVJcwSM1vTbyes1qZkDZ1lphklxQ2T0gb2Mwgpa54cbMxpiTIxtjmAcV/X4SwFtKiwG88G+ENQdsQzTTHHBNHs/cJmkcnbD4zqe13+SzufMpScNdkHToK/E27csxcWBzOIw3q8Lqksy0HFlP89FcpCq+7OCZwrB59/ijuJcX4E/ocMv32uvdi03fHTJzcf4cwXh9R2s0tspLQGZKNUVQQkpWOM9QbcafE5RbK0QVPhc3F5nyepKnlzheYx84dgHqOyXmqmw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 06:22:05.1310 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6394a872-59a9-4f6f-7fba-08d752ca5499
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6684
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232209_366084_9DFD63FB 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.83 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
 - Reorganize the Clock Handling in Arasan SD driver
 - Adds new sampling clock in Arasan SD driver
 - Adds support to set Clock Delays in SD Arasan Driver
 - Add SDIO Tap Delay handling in ZynqMP firmware driver
 - Add support for ZynqMP Tap Delays setting in Arasan SD driver

Changes in v2:
	- Replaced the deprecated calls to clock framework APIs
	- Added support for dev_clk_get() call to work for SD card clock
	- Separated the clock data struct
	- Fragmented the patch series in smaller patches to make it more
	  readable

Changes in v3:
	- Reverted "Replaced the deprecated calls to clock framework APIs"
	- Removed devm_clk_get() call which was added in v2

Manish Narani (8):
  mmc: sdhci-of-arasan: Separate out clk related data to another
    structure
  dt-bindings: mmc: arasan: Update Documentation for the input clock
  mmc: sdhci-of-arasan: Add sampling clock for a phy to use
  dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
  mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
  firmware: xilinx: Add SDIO Tap Delay nodes
  dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
  mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup

 .../devicetree/bindings/mmc/arasan,sdhci.txt  |  40 +-
 drivers/mmc/host/sdhci-of-arasan.c            | 477 +++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h          |  13 +-
 3 files changed, 498 insertions(+), 32 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
