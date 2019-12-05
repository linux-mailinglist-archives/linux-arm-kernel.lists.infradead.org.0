Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B014113BD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIQykZ8wv0ABDk4ShlhFxf/e4j06iBctUFAG4O59zKY=; b=QVQWPWkPeL9rh7
	xzxvY86GF37lIW7oxtNdewK8H626Bx/RRMAlIFZa5xmz+xJMU2WIc82nKNvPM3Xaq0yriJ1PCJm8Y
	4jTm8BVyzkg4BjpEqW0maeSQ2gvZceox4NDvMkheY4GO4mhiC4NoU8Cu6hXCHtjnJN8VmspRwAvM5
	Uyzya86MtflOVMABm7RfyIKwvXXDz5iRXj54b6x24hFg0eirZ8nMEznQsVBpGU9eHwuAeYu+z9WYr
	PIwl9M3nS1YV4POpdsrLcdRCCuDJ2UMVtK/DeXtsJmIJoAdqphnEnxUTxbU+LzWEVPDLncyAfG/bZ
	prsCMXr7rxbfJ2FavHSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickmj-0005Ha-4E; Thu, 05 Dec 2019 06:38:45 +0000
Received: from mail-eopbgr680044.outbound.protection.outlook.com
 ([40.107.68.44] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icklf-0004Dn-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:37:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVk1kCycfYPkLbfNWkT4UdIhWBW3pdBKyaMnWgcFqtvxJBBRXmZPB6esP8fBjEVB+k3fYTAf0zGK0VRu+zCuuILM0pqodpvBasrnKdQDbeKshv/fhLoIdtYPBeWGfCnoThD4AE4hH7WYr0emguVYDSRPyuKj75iQg22fkAg6tGoL6E0BKW+/O1Fgf3GrPVMxDi78QagWs1dPYU7zU/E6TYMQxc0TtJ5wD/cQACV60sstGCYtTlRNOWPkA9vRLHVyhcoUlE/gmEvStUyFUDB4x8xK1PLIr6oQl6lX3egW4XejjhN8M3lXMTEB0vQkNJKy3zERGm0JyRjj9UCtIKnksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33LS+ZyloUssHMLNiVKIi6pfKqJm0s1OswnsyX5QmCY=;
 b=kwxhVZfxMESCN1b2sRR0PKUNNkomisw9kJgmbvdBuX3xsP8uEpoKK5+S/ss8TAV3NnczgCqdOJgZU9ky1ib2xKddprdkghqQscaYcLZMqR72ZsT9plOGRQErqX22Omcm8oZd+zqe6cGbPoefthn8XUKZGkfxx9DtFi5HBrnyRl2zSV8wDVPmekdA0S9RTTErM51rjqesnm8CWe1newjAQnvIwvG4PpcsIMrCO/P+PTgwU/OVanMZZG87QkOAMxG1tCW0UzYPN7jemCKMrSa7EgVCkzUT2mtRGt5vjhcdbXhXJevGlq2cEW/gqqtydbAP3rynv1GpMb5qDRb60g8h3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33LS+ZyloUssHMLNiVKIi6pfKqJm0s1OswnsyX5QmCY=;
 b=XtbWNw7PeC8HngHNHgxnqby5z51/+Pw3X/tfyDDhA6R0RCaVdtbvWzHybwtsAK7tD/O7KudJHqTxV0ewYJx64Lh14wTGXc3cG2eIPc0EX4DoD9YgLARPQ/KiuIEPAg/2K2APtMpgtRPVgdQHlBczfe3s/PmIpVESLosjdpna7jc=
Received: from BL0PR02CA0130.namprd02.prod.outlook.com (2603:10b6:208:35::35)
 by BN7PR02MB4978.namprd02.prod.outlook.com (2603:10b6:408:2a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Thu, 5 Dec
 2019 06:37:36 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BL0PR02CA0130.outlook.office365.com
 (2603:10b6:208:35::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18 via Frontend
 Transport; Thu, 5 Dec 2019 06:37:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 5 Dec 2019 06:37:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklb-0000xN-1u; Wed, 04 Dec 2019 22:37:35 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklV-0000XV-Un; Wed, 04 Dec 2019 22:37:29 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB56bJdw010325; 
 Wed, 4 Dec 2019 22:37:19 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklL-0000WL-Mg; Wed, 04 Dec 2019 22:37:19 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v3 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
Date: Wed,  4 Dec 2019 22:35:53 -0800
Message-Id: <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(199004)(189003)(4326008)(5660300002)(16586007)(50466002)(7696005)(81166006)(316002)(336012)(8676002)(48376002)(9786002)(107886003)(76176011)(356004)(51416003)(6666004)(81156014)(11346002)(305945005)(478600001)(14444005)(50226002)(8936002)(26005)(36756003)(7416002)(426003)(186003)(2616005)(2906002)(70206006)(44832011)(70586007)(36386004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4978; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 008fa6ff-3627-4751-bf7b-08d7794d9e10
X-MS-TrafficTypeDiagnostic: BN7PR02MB4978:
X-Microsoft-Antispam-PRVS: <BN7PR02MB4978A89B46C8FDFAF7DF1354B75C0@BN7PR02MB4978.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 02426D11FE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GixZawCC27bTcGF15s5shn5D7og2KQf6FBLpMwvLopd7E2MG1Bkm6XHqwa323sQe1kdWialSpvRtL5OeMXjtBEp3UKHSmqahn+ToANwUG9KR0zPyzxBta+IQEeWA82FQ99ZY3Pd4thmlSZyMN8iQGlOhe0D/1CVg3alGrDRN5rGcK6axvw1efNK2CThYkGWBOZW7eVlilo2PZDYyZgtJ+uf8nt8fXq0P3nV7vFJpzQTwtrWXsPqIAGyDcq+SqWKl69Ucezk5VZOXtnOvMHzEldRW/WhNYUhw4VghvJ4/xwxUE7p0LEOwqGZEAV5FcPDXp78dHPHvQIK9bVR/pifG68w3FFE6wb5edzR5pdg3KUnJ2Y2e9a8jdGBDZ5qTWh7PJr51K+3afDsKSNkiFwrWZM9Wd5yd836VG+CYSWBMcD+saytjXHTq3E9jBCBLz6W2y+H2jqv6oauq74Wb4OBFAwdjqU4MmoXlI5DBNOKTjM+XtsVTMpQzIOWDAG7Mc2s2
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2019 06:37:36.5823 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 008fa6ff-3627-4751-bf7b-08d7794d9e10
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4978
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223739_687065_5A7BC151 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.44 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMP clock driver can be used for Versal platform also. Add support
for Versal platform in ZynqMP clock driver.

Also this patch series fixes divider calculation and adds support for get
maximum divider, clock with CLK_DIVIDER_POWER_OF_TWO flag and warn user if
clock users are more than allowed.

Rajan Vaja (5):
  dt-bindings: clock: Add bindings for versal clock driver
  clk: zynqmp: Extend driver for versal
  clk: zynqmp: Warn user if clock user are more than allowed
  clk: zynqmp: Add support for get max divider
  clk: zynqmp: Fix divider calculation

Tejas Patel (1):
  clk: zynqmp: Add support for clock with CLK_DIVIDER_POWER_OF_TWO flag

 .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
 drivers/clk/zynqmp/clkc.c                          |   3 +-
 drivers/clk/zynqmp/divider.c                       | 118 +++++++++++++++++++-
 drivers/clk/zynqmp/pll.c                           |   6 +-
 drivers/firmware/xilinx/zynqmp.c                   |   2 +
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |   2 +
 7 files changed, 310 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h

-- 
Changes in v3:
 - [PATCH 1/7]: Update SPDX-License-Identifier.
Changes in v2:
 - [PATCH 7/7]: Removed patch #7 to fix clock frac to handle backward
		compatibility. Will send this patch separately with
		proper backward compatibility handling.
 - Rest of the changes are mentioned in individual patches.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
