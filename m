Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC49F9064
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TBYjr0A8gLd7it1R/48XP9lsEG1YlFRtMnvi1tMlxEs=; b=bY0nf48WUBe9fy
	7J0IjXxrh5CyhLsy7L0DfZtxcAoaN5MY0eG7DYm3C72a3G5VZsuSDJkM/xXqHW8ZnzkOt6eZW/D9G
	+/MVe56QbqFywD2s9HL1bnLn9NAbHthLJNY1pDkhXbVjK0PjE8Knib4kH4hCP6OUnxBjOnrVBJnp/
	//AsnGHyvyEHUyIjXn4rx0oT/4TWUGk6r0sloMUEZ3LaI1qbePNdvtOQOGnul1Q9DO9C4n+vKhRrk
	0Le+TBJaiRJw8MD2143Xbk/WdCblkPoD/NCSU/INaU2fwERbBc2gmQBPH9J9kt+Dhl+pRXPrj+WMu
	AtIlQ5ZjbdL5f8I2Z+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW3I-0006ww-KY; Tue, 12 Nov 2019 13:17:48 +0000
Received: from mail-eopbgr740040.outbound.protection.outlook.com
 ([40.107.74.40] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW2l-0006gM-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:17:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+8oO8iNbI462fwEIJ8+DV8J19yRbAJq4FFYxRf5Z/19xZRlzU0lTqGqjJLxl7ScXm3igjvmJcJjhYE3VSCBpEdDk4sg6+klPiC9ugHLVxIbpzMZ86qqRvrrH7t0Xgxe2yQIZUIo26Zyt4SAFz4yDK/E9uURmbjgPofn+3c32QN1sd0q9WzFqVylDRNdFmLRgQFvvZUqDbZRsOI6gCbV1jr0A6pcjVfLHIUaYX9824n92NuHyUUIqjVVOJppBR/sLbgvagXEupUGOEbzWPxnQgWH6XwF47htNYM7Kr5LnpVcpQub1qanWSygSrOU3Xk26E4zcfDDsk8P5WXyhv9z6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjJQF/rMyDwnWAHZ2OgcVJxIiRzJIybjry1lY+4QTFg=;
 b=oZGj6wMQVtqHqcbDWyQminzN4BFMXN913ofJj7KXm90kt6FGMWdcSyXDZE28REc1eM48t/6MLT4oW7fUEqwQMjpf1/Yi4DMv2kEdkAErw8QoCZnQOrkOCn2iiaXPT29WGrsOSYxU/Qd/lrSwaUjVox42zDw1Q6BTmTWTE60vUJ4ZvE7dNLNLBIrLIdvbwsBbFZxOQE4KUXAe685kRYoRKL0uQPOhECl8S8nnjPJrPE5jGwaM7ItcV/WsZLdvvlYG4blNDBevJeJ8au4ICM5AxzxG0eoVcNP1P0pLh/XJJr3ySpFGXxcHSSaGK81JMekGwBc2pHLZihs/PhK7c31cEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjJQF/rMyDwnWAHZ2OgcVJxIiRzJIybjry1lY+4QTFg=;
 b=S914k7OEWIEWTmq7re1aJuuXlNr21nHvUxcyIDxoNMRpjweIj89qqeGcnlDFd/5bGAvBXRBq11WcSnHm5DUz4WyHCwDOfh+Cryxw1KsS7myBtP5Vdj1t+PeSnCm/jHY6gyu4fD6r0u0kJMpKdNOroSNhDLqSWEgcmhg+rxPtigE=
Received: from DM6PR02CA0136.namprd02.prod.outlook.com (2603:10b6:5:1b4::38)
 by BYAPR02MB5573.namprd02.prod.outlook.com (2603:10b6:a03:9b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Tue, 12 Nov
 2019 13:17:10 +0000
Received: from CY1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (104.47.37.51) by DM6PR02CA0136.outlook.office365.com (20.179.165.166) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Tue, 12 Nov 2019 13:17:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT051.mail.protection.outlook.com (10.152.74.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 13:17:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2f-0003sh-8x; Tue, 12 Nov 2019 05:17:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2a-0004GJ-50; Tue, 12 Nov 2019 05:17:04 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDGwuU022459; 
 Tue, 12 Nov 2019 05:16:58 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2U-0004Ds-9C; Tue, 12 Nov 2019 05:16:58 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jolly.shah@xilinx.com,
 dan.carpenter@oracle.com, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, ravi.patel@xilinx.com
Subject: [PATCH 0/7] clk: zynqmp: Extend and fix zynqmp clock driver
Date: Tue, 12 Nov 2019 05:16:13 -0800
Message-Id: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(189003)(199004)(486006)(16586007)(9786002)(478600001)(44832011)(2906002)(36756003)(316002)(47776003)(36386004)(7416002)(4326008)(305945005)(6666004)(356004)(6636002)(107886003)(426003)(26005)(48376002)(50466002)(7696005)(51416003)(5660300002)(336012)(50226002)(70206006)(8676002)(186003)(81156014)(2616005)(476003)(126002)(8936002)(70586007)(106002)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5573; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69e9ad11-5642-427a-fbd7-08d767729faa
X-MS-TrafficTypeDiagnostic: BYAPR02MB5573:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5573B0C7E95FC4BEE982EAB3B7770@BYAPR02MB5573.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1148;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vs/ZzYRbnKavYMDBnB7ZntKM6Re4Xnpxm1Ar0w6ILmX6BYR8A4++lrCxKWVm7FYuKWoseSuDgbwEJ5aWxNhYMj3pWcVCFOPS/qr4sUbksADkt8NFiQmcy3O588kNqtyVtAeAEu+kWAw0UB41y4Eqe8fWTnEVtkPkVKuLzBdyskYHRVpW+MvYngnOIJnv0f9sNkDLLbFOL5nuuGDgprsXIo3fp8NZF0IB1SliktcRTS6afs1HQPTgx+j9uGFlZ7gVvMqObP2G1sBbBVEQ5yBelyxsK8nS71PPZ0YHcoJ/GY6kxEoxeV/KOFsZ2tZOZS9ihnEIcPbMoU25IHtWd6OAuBtaAe9T+a7IfHzPzl2j6AcIwBr3DFXWjXNZWg9I0NbpBw/U5gc7sP0sA886aLjrja6kJOpFmlre7mLJgYCdM39TT8124cMp4PpOpS4ceUu+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:17:09.7629 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e9ad11-5642-427a-fbd7-08d767729faa
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051715_344438_D70A4624 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.40 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMP clock driver can be used for Versal platform also. Add support
for Versal platform in ZynqMP clock driver.

Also this patch series fixes divider calculation, fractional clock
check and adds support for get maximum divider, clock with
CLK_DIVIDER_POWER_OF_TWO flag and warn user if clock users are more
than allowed.

Rajan Vaja (6):
  dt-bindings: clock: Add bindings for versal clock driver
  clk: zynqmp: Extend driver for versal
  clk: zynqmp: Warn user if clock user are more than allowed
  clk: zynqmp: Add support for get max divider
  clk: zynqmp: Fix divider calculation
  clk: zynqmp: Fix fractional clock check

Tejas Patel (1):
  clk: zynqmp: Add support for clock with CLK_DIVIDER_POWER_OF_TWO flag

 .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  67 +++++++++++
 drivers/clk/zynqmp/clk-zynqmp.h                    |   1 +
 drivers/clk/zynqmp/clkc.c                          |   7 +-
 drivers/clk/zynqmp/divider.c                       | 108 ++++++++++++++++--
 drivers/clk/zynqmp/pll.c                           |   9 +-
 drivers/firmware/xilinx/zynqmp.c                   |   2 +
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |   2 +
 8 files changed, 306 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
