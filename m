Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BC0103472
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Ss4ywK6KTnFSpWOzj1AovFo4udB8cILdsRKLBcX6UQ=; b=FH7t/lMuseIxpE
	+aXi+eBUyxlTLgH166HD4BGyh9fAZyZtZJMyujqhSN8/pRsoEu6bXP2FHVlJNH8MLc6h/SHzCS4nq
	T4t+yLb8MqCrhHwFrwKoB87Oosmvp1nh+WMe/3UG81rapDiTyLprUB4ncqwrAOpUF5fRpZUgQkttd
	dwM5G0lnVSl+gd8JHwugN5pzvUQGkFjdynwc5HU0m4c3L0omkS5RskatX0K8PmVwUc1byPqIDxPdj
	SWh0ZOA9cbJd0CKtWgw8Kkq9u3PJt3/IOq4bZOdjpGM/J+60nEObbcUIrQOd+zcCq7FkuYZLzaU98
	byhRH93P8IkiJKeyda8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJmU-0006K8-Qt; Wed, 20 Nov 2019 06:48:02 +0000
Received: from mail-eopbgr800079.outbound.protection.outlook.com
 ([40.107.80.79] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJmJ-0006HX-HL
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:47:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQeftY/cY5rcnWQCnb8ONlthSlor4e0yityvb+gUF8TUV8UesNZxzhbGaviKbI+UrBvPgeYeoyE5UVpgoslY4p+YWqpIg/h3OIGdpYOkOg3d3Oo2EG7ov3lpTUpXHE/6U1gujxO/CSZ5Ig32EaM3JCwSjb6pdMg0vq4t34cthMzHp5iFvCFWOCUGCcbV+Ihu0Clmb+9eIRA/EQGVx/Ea0EvlKzcCVUZVdzbRwMFU+t9ijkAdCxtQ468wu+ZuPsum4VVrqOS9Uim8twR5XLeO8MeXxsFgFORQ13OKfeSjxuIvMeAV/h6BT561H2tO0GlgkInbSwDpi2MCa2e0VmtNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GK2Og5rGVawjCNyET2Ne6BuZnLTiF1HsXwJIvMpWDdY=;
 b=mUuZeswTbqucYmsOQtbMLMOeqfUvAPLxhs4co3u9tpedKPMnmAzGweTyNN/rBJNXJpc3lTBRqXmu2K609kbAOeODxaZMrt51Z1Km8KZKotpU6aNIyCvfd/qxXrGPLWIOV/0MmisLQzIuJYIzJsg6zRGOSWHVnQXEakCJtd1iZVcUyaB+4/yIC2jr4tFc0DJrhtdIHB7gc6IVvnIaxTs6Ca/uoMLpIjf4+Xc0nh4DYcIchvI4403O7Jr2PqOOJXUzSz8Q8FiUcMZ1hHduoam9lDs7zb5ZU3mgPiJ18w42PNGBZHdp3ULnfHum7KglH0wsGa96vpFCGcNqOZT0plWw5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GK2Og5rGVawjCNyET2Ne6BuZnLTiF1HsXwJIvMpWDdY=;
 b=by4m/lPtsAq88t5/8i5oAyJJkfKuyHu/qxO4aktQw1VX07/pWK+rgXiPbfHTuDeBsl+hPw5XxhrtjKlY9HcJqArkouRLM4BMsVAbFAki3TKfkQvT26Os3PGr1K0jKtTtTMJMqBucbrpPTv08q/zEVw4ZHSujB5vNIbuepOwEEqw=
Received: from BL0PR02CA0143.namprd02.prod.outlook.com (2603:10b6:208:35::48)
 by MN2PR02MB6687.namprd02.prod.outlook.com (2603:10b6:208:1dc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Wed, 20 Nov
 2019 06:47:48 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0143.outlook.office365.com
 (2603:10b6:208:35::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Wed, 20 Nov 2019 06:47:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 06:47:48 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmF-000616-F8; Tue, 19 Nov 2019 22:47:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmA-00049o-BK; Tue, 19 Nov 2019 22:47:42 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAK6la1t001801; 
 Tue, 19 Nov 2019 22:47:37 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXJm4-00048z-KB; Tue, 19 Nov 2019 22:47:36 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id D1B9A12127B; Wed, 20 Nov 2019 12:17:35 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org, manish.narani@xilinx.com
Subject: [PATCH v6 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Date: Wed, 20 Nov 2019 12:17:21 +0530
Message-Id: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(199004)(189003)(106002)(14444005)(186003)(44832011)(26005)(336012)(47776003)(36386004)(4326008)(6666004)(356004)(36756003)(126002)(107886003)(486006)(2616005)(6266002)(51416003)(48376002)(81156014)(81166006)(476003)(8676002)(426003)(5660300002)(478600001)(8936002)(50226002)(305945005)(2906002)(316002)(16586007)(42186006)(70206006)(70586007)(50466002)(103686004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6687; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b23c3b4-a715-4da2-dae9-08d76d858e51
X-MS-TrafficTypeDiagnostic: MN2PR02MB6687:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6687DD9AB34A9ABCA3F466C3C14F0@MN2PR02MB6687.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Q4r4i8EQ6JMs1lmmu7Jqz6E1G2TVBuF90GxuANexQDXB7nBK44COqV+4MWQKxHmS2o+cF09Vyg9AMV5yQIYZ3sDdisvLAyrmi0RqdnuBMHK4/Dj3ttH2hz23KKfCUmnmKKuddX2RFSji/Nldd9hvnyjLMUEIkRig0paeJSnbHbyzqb6a5EeRi38hrWT1o0gqe+lZWgNEuBPHeoYdrQCoY5sl3R1HjF+4n15XIRy2Vbjh/n9HemLCHsuE20D4hOdcSkRLpnmvUehg6nddf0YQ39mm+52hPi/jWQWDd7gaMLYLbdluaqYs1LtXYqPyjDqSZcegz/0OdpesrER9DaBugAn1BY/NHI1h6lFw5j+5JAF6BT2P8i79L+pB4chnPpCIWM4bDe5sWfbw8R2hrzrDBP6eho2o8Loqn9HZULjeM0sqwcriNwWZRrqiWyY9U3U
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 06:47:48.0270 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b23c3b4-a715-4da2-dae9-08d76d858e51
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224751_573387_D1EC1330 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Changes in v4:
	- Made the Phase Delay properties Arasan specific

Changes in v5:
	- Made Clock Phase Delay properties common
	- Moved documentation of them to the common mmc documentation.

Changes in v6:
	- Clubbed all Clk Phase Delay properties' into a pattern
	  Property

Manish Narani (8):
  mmc: sdhci-of-arasan: Separate out clk related data to another
    structure
  dt-bindings: mmc: arasan: Update Documentation for the input clock
  mmc: sdhci-of-arasan: Add sampling clock for a phy to use
  dt-bindings: mmc: Add optional generic properties for mmc
  mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
  firmware: xilinx: Add SDIO Tap Delay nodes
  dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
  mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup

 .../devicetree/bindings/mmc/arasan,sdhci.txt  |  25 +-
 .../bindings/mmc/mmc-controller.yaml          |  13 +
 drivers/mmc/host/sdhci-of-arasan.c            | 478 +++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h          |  13 +-
 4 files changed, 497 insertions(+), 32 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
