Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FB45B418
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJRS8HSXrAHezSoJsi+Pdqr8U0/Q0/z36a7T29YYMlI=; b=UoFg/r1t49UozA
	C7n5uCqU11KOo4GQhdGiIHZ13JexdLhI0BQ9lOG4ri9pmN/mUl4w0xcSmtYpaBAPIUYxv4sMl6CBP
	o64givuzTqXtYsBASLWPQP+a3rF2Ryd+8+m8Ho68otfZC8t2J87hvj6c4fFcqd1YUuJ8dwtcl3uF+
	zKC9mFS7iOKn/Iu+1I/VBVfTGGT7swInV9Zfj0F0j8cMbva1h1ZFEqy1KB66sV9AuF2xrpuul+Kpo
	BtQLemUQ+fIfgW5jgC8+m5MHQWTMUqff45ANGta1kJQPbbv6eMdyvCKBUltYSfMephpwfKla9gXu/
	F9p9fw+u+NORrY3vXCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhovJ-0000Lr-59; Mon, 01 Jul 2019 05:32:17 +0000
Received: from mail-eopbgr810088.outbound.protection.outlook.com
 ([40.107.81.88] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotH-0007LJ-Ly; Mon, 01 Jul 2019 05:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZecrJFOP04cY7K7tn1G2DeQyLfHViOOPNHlXhTd2CTU=;
 b=Zg4pwFKS6hI5IBvy4x8dGDCgsGXVRB4mmT1enHSZ//C464QppAZKMF9ej73XddbB+GfOEGffsl5C8QXVLbPpxjZeACPzCB1Aa2Im0tsDnom5O9JxZzwTCmQ2GR5hngCi5c22tfenqssbu3MMg2++dym5SYPJK5rr2ZLGMwsQixE=
Received: from BL0PR02CA0039.namprd02.prod.outlook.com (2603:10b6:207:3d::16)
 by BYAPR02MB5238.namprd02.prod.outlook.com (2603:10b6:a03:68::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:30:07 +0000
Received: from BL2NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BL0PR02CA0039.outlook.office365.com
 (2603:10b6:207:3d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.20 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:07 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT012.mail.protection.outlook.com (10.152.77.27) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotC-0002rk-6l; Sun, 30 Jun 2019 22:30:06 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot7-0003EO-2d; Sun, 30 Jun 2019 22:30:01 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615TtBC008170; 
 Sun, 30 Jun 2019 22:29:55 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot0-0003CM-VM; Sun, 30 Jun 2019 22:29:55 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 21E6D121714; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Date: Mon,  1 Jul 2019 10:59:40 +0530
Message-Id: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(4636009)(376002)(346002)(39860400002)(136003)(396003)(2980300002)(189003)(199004)(8676002)(186003)(2906002)(14444005)(336012)(70586007)(356004)(52956003)(70206006)(44832011)(50466002)(36386004)(486006)(48376002)(81156014)(47776003)(305945005)(4326008)(16586007)(81166006)(103686004)(6266002)(26005)(6666004)(2616005)(36756003)(7416002)(63266004)(426003)(476003)(5660300002)(126002)(478600001)(8936002)(72206003)(42186006)(316002)(50226002)(106002)(51416003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5238; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ea1ea3a-88c2-4268-516a-08d6fde52d6f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB5238; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB5238:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BYAPR02MB5238E142B8F71E6B20C48239C1F90@BYAPR02MB5238.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: dsmdoRBvLPdsk7FUQ5gswwBq1xYkyxa4NI/j17J2qi8Vcj15G5p7HfypVcYzR5jNe8XhKf95gv3bdfktIASMgSggpQXCs1npAZzYVVM/U9g1HSXqgMrGMhuYBzVjVk9LzWt+1/GYygLq+3mHqBGeYs4VeuCkS1eHjs4bb+CJ4eI4sOCZ4wWeVwAumFzF3g6zxafmyOeZCtQ+YzuthAfm1pRob4FPofUqH9ab2U/BTtc6Z+jhKwsZ+ge9oT2hov4OfunEr35xfdBPECMb3GcpUeZ8ubXO58L3k1Fhdp7+LE8CfK4tRnZ8iu7VQVGfPDtoY7Jt0WN+wHRZRN8iS6+qXzCTfFnnh5KpEi7GTHGCN4f4OieF/OQh6hGwe48NW3G7xe5KkiHuz0DxIx8035yYsO5VcoAAAefsJTwDioEve5s=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:06.9400 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea1ea3a-88c2-4268-516a-08d6fde52d6f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223011_733942_EA354818 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.88 listed in list.dnswl.org]
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
 linux-rockchip@lists.infradead.org
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

This patch series contains a DT patch, which I think should be there to
maintain the order of commits.

Manish Narani (11):
  dt-bindings: mmc: arasan: Update documentation for SD Card Clock
  arm64: dts: rockchip: Add optional clock property indicating sdcard
    clock
  mmc: sdhci-of-arasan: Replace deprecated clk API calls
  mmc: sdhci-of-arasan: Separate out clk related data to another
    structure
  dt-bindings: mmc: arasan: Update Documentation for the input clock
  mmc: sdhci-of-arasan: Add sampling clock for a phy to use
  dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
  mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
  firmware: xilinx: Add SDIO Tap Delay APIs
  dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
  mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup

 .../devicetree/bindings/mmc/arasan,sdhci.txt       |  49 ++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   4 +-
 drivers/firmware/xilinx/zynqmp.c                   |  48 +++
 drivers/mmc/host/sdhci-of-arasan.c                 | 453 ++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h               |  15 +-
 5 files changed, 540 insertions(+), 29 deletions(-)

-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
