Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B41183B5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zuKYemRYF0d+2cDT+8drHSTULS0p2rodqRfsXAEMhps=; b=uMa1zK6OoBNsTT
	jKii6D3T4nBmByeAkJQmUJiuUdJK2Abjz9P+1cMH05xalphgg4Y4cHM/8Gp0cJ/XRlixj+eA4Rob9
	ExsoO+NTIKYHxyP/jZ4IZTSLFHxT8Cv42RvJ+UtQ9W43GbJwsRaPamxdue6zbfrlCi7Tzgatt86GD
	1EXySXSc+t+AKOxhQGUcGzp4eE9bXzL+bmfqtMTCyDuJ7uAQUzftbTF+hUg/PVVly0ClwqJwqFLSi
	8OU8cszRW/iiM5N4ZLC476ZwbpwsmijIZP8QUpnUybghFd8PYwS464FAZT6AOhdBEl7q26HpKGkQx
	UTiv2WpX4TF65HCvSDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVRl-0005BB-Jg; Thu, 12 Mar 2020 21:32:53 +0000
Received: from mail-mw2nam12on2075.outbound.protection.outlook.com
 ([40.107.244.75] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVR4-0004gm-Jz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:32:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ToCOHUVw5lx3Y7tc994eDWBP7jfhqkrYDb4yugUqeVN0CrJvwzI3ysDQEI/+Uip2L1wlv47cXRdpi6TAc8QIKZhlb8ULEwD8BCnbBcuJ0//L9OiMnUC0gYBczfxtTMnsjwSmdBvBEns7ZyUNK9gCcKeVkn26wsQ/clfi11A+37p2l+D41A5RNXodHnJmb27kNRefYrJpFyOHTcob9zMj0wvrbjiszmkmANyE1d4hdeH1KgWkbFlC/M9fH0Mnij9izkylhFR2ZqmYiGVebYtnWI5/TCECubNqlxaQ9DfVPoAeCIC51qf+5v5Ecrc8yr/shQ5RLWAkw9Tr1R+4+UIgNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03nBHcQ6MxdHIBo1SrKuP0e1LrxXJUvJ4S79wRCkItI=;
 b=AaQNPhK9yP88rQj35B0VPT6pObG14czc57osITvTw3RIi2zm3m5cGvRFJmfA1lajJKzmGcoZgE4yrhLndC5XoXFa+c58DgWoSVcLlkyUe3o4cA5AD/EYPZfcy6p54Ah+jxNH31DRM35+3SOdbqTuCtnCu8lxXbtwbIqP42lz3q4bNtkgXSGAcO0LjK88d5lU7KavzE2ZG8tiNtq98MPVDLpBjGzsAo13UGaqvpipu5lf6eeIIepx5go1I3ifOpr2wHkevtLijN6XztvI8qnUBnGC6KOYk9e99ZliZRJl3UdscsyriO6WJTppf21MFOx7pFVZ0y98gCBG5BxmjRHbfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lixom.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03nBHcQ6MxdHIBo1SrKuP0e1LrxXJUvJ4S79wRCkItI=;
 b=dNOfdlo+1zi7Ae+R/vX6P0y1EyNOsvs/D1uqKlqSKxAQpqvI+xwxKSnECEwREJRtpghxaqyUQxUSKmnqDeggTRdiYm07Rt44U4rGVtG8xrEGa+wXzyxOPgH7Q8zROtdfYjT2hbiyDlC4YyGUEKuRiCXAtUBiLJJtbJz8m+NK1Ic=
Received: from CY4PR05CA0017.namprd05.prod.outlook.com (2603:10b6:910:87::30)
 by DM5PR02MB2793.namprd02.prod.outlook.com (2603:10b6:3:109::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Thu, 12 Mar
 2020 21:32:08 +0000
Received: from CY1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2603:10b6:910:87:cafe::e5) by CY4PR05CA0017.outlook.office365.com
 (2603:10b6:910:87::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.8 via Frontend
 Transport; Thu, 12 Mar 2020 21:32:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lixom.net; dkim=none (message not signed)
 header.d=none;lixom.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT023.mail.protection.outlook.com (10.152.74.237) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Thu, 12 Mar 2020 21:32:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVR1-0001nE-42; Thu, 12 Mar 2020 14:32:07 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVQv-0006jp-TW; Thu, 12 Mar 2020 14:32:01 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVQm-0006iZ-TJ; Thu, 12 Mar 2020 14:31:52 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 0/2] drivers: clk: zynqmp: Update fraction clock check from
 custom type flags
Date: Thu, 12 Mar 2020 14:31:37 -0700
Message-Id: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(199004)(81156014)(186003)(81166006)(8676002)(26005)(44832011)(5660300002)(2616005)(9786002)(336012)(8936002)(7696005)(426003)(15650500001)(316002)(70206006)(70586007)(2906002)(36756003)(4326008)(4744005)(356004)(6666004)(478600001)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2793; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec9af2d1-af7e-48a4-d754-08d7c6ccd119
X-MS-TrafficTypeDiagnostic: DM5PR02MB2793:
X-Microsoft-Antispam-PRVS: <DM5PR02MB279397C4F8F693F36DF137A2B8FD0@DM5PR02MB2793.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0340850FCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ba0XtMKXggnlyoPY4IEJx2XPNhPG0AhQXQBDGWhkT+oHhePp57rjJqKKLMGAp0hcDzaIu3j73TUuA4uIRUPYR1e0YBVSawy7+sy4eMAMZuTxL84V29akKgeny5vTYRp6VmjKsyN+Yj7b41VhUYhCGKhX/vTrlGQ8eNwZFvO9JwFx91BwVHDQwF7LDlrV9SvsyiALfnjottzfCIjaSxa8++XlsYJmalSKyEsQgPn1YgctmrXQryqhPuw5h9IL+CVEEqpYqXPr52afcObnHtNqzXrqo13Ufgyog6TYBQ827BSyLhld43j4np1e/NunC+p2696Ba+7x2nObS3wOJLBBiancC8NRRv7LaWnpU2hJGmlldz5c3JL/hc8EBrFTL94ZAkW158vfCZqzvTbRyOwapvJk475NyC/l/rVoKxT5loqxO4zEcdj4XRPAUwcyBdYa
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 21:32:07.8693 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9af2d1-af7e-48a4-d754-08d7c6ccd119
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143210_652793_E2198B6C 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.75 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for custom type flags passed from
firmware. It also update  fraction clock check from custom type
flags since new firmware pass CLK_FRAC flag as a part of custom flags
instead of clkflags as CLK_FRAC is not common clock framework flag.

This patch series maintains backward compatibility with older version
of firmware.
v2:
 -PATCH[2/2] Correct BIT index of CLK_FRAC in custom_type_flag

Rajan Vaja (1):
  drivers: clk: zynqmp: Add support for custom type flags

Tejas Patel (1):
  drivers: clk: zynqmp: Update fraction clock check from custom type
    flags

 drivers/clk/zynqmp/clk-zynqmp.h | 1 +
 drivers/clk/zynqmp/clkc.c       | 4 ++++
 drivers/clk/zynqmp/divider.c    | 6 ++++--
 3 files changed, 9 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
