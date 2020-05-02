Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC051C2311
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 06:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YUuAVCeLCCxvPZ8W0D4L6cNa6RNFjkhiA96jAhUA2iY=; b=bjV3NyndxnKV9N
	0IiAoeHHXxvgt2FZyujMH37PhNBBeYYoVmu9I20DZgepABICdrsvm8Idr2Ohqwx//nxi6fi0THnAB
	qbSUrI/vfYKVkIxiv+JkpCV8wgAxpXknHg1lAuj/+taVu1xkzkBA2PiypoAMWakEMjJCfQNsTqFwG
	Kgxwc2sy93Y2CwB0D+c2NlcoVASbw1LKvzHUs0zDGN5WMdbGrr2OvYhFjRma8n1uhp5wWfSPr0/2+
	ilAqa74PTC8HAUmA/guD3zrsL9ua/yl8iNpynWl9Xjk3AnM200kV6iBHh0BD7nt/SVY1PANSCJdPi
	ci82u4J3ZRvroeL1Jo9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUjuG-00014g-Dt; Sat, 02 May 2020 04:37:40 +0000
Received: from mail-eopbgr760048.outbound.protection.outlook.com
 ([40.107.76.48] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUjtw-0000uy-8b
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 04:37:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IasgLrKZBjprh6wF6R19mbEQwnx/tMtOzkY31NL2bwEC8bHZSvpkfANTQDnLkK2ygcFZ2eRtpgnybxQ02GzszMrEUe5CuGFt7I73NYyDwL8HcckTIvFj5V3eXSpzZe1HZ5OqQtuM45u3PyHnfZMmneBjlWsaR3Bz/N9sTN/fTREWroj+cnA9plk4GesyPwNlmGp20Izn3YU9irIYdx96KQ5LzGH0IFm8+vWAcbp5hrupXRsBtZMTwiWltOS3xLHfp9vGkvyibY/8SNcIOnOxgLASytT8n/bulfK7iCeBUrJ52Wx5nTSLviFE6WE/Re9yhccOJ5P7+JeEIFxGb0mIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81Vr0pdQLNjcCLAMipEhCBN3HMdvBiv21M+tfaC7ngQ=;
 b=W5y7k0Y7O2Ij0zgGvFiALnHLtlDtIN5mjJePp9QEo4W2NiMyi5xCE/RwDSJDMshqePHFj8EuvIH/uYAh2/R3jfSAPG43n2lOsMmFX98JKoKqpWJBB1BlSlk+2vQ2nX3brZDjnQgl9X9Eq/iFumRUlK6MrPzufcdeQn7bAodc20bF1bzOfHAm/RFG8BgmuJ17JNUqhiaX5/XoDq2IGlQrz67xVocKJtRUGt6FnBV+QuDAO82SigAOtGqFnquCuQEOiuD26JCMQaGByiRBLXm8EZfN/Lpx7N3G7Tm8ONpjrVaskvL6sm3rEXJp6yklJHq9wo8Orlz+CvnNubEpOuzW4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81Vr0pdQLNjcCLAMipEhCBN3HMdvBiv21M+tfaC7ngQ=;
 b=TuFcHG3VsiO4rEIBcTWBhpSm9fskphj4IY0tnA/cWVxQbB8XS8+TkPvdf3wob4rOZoAjAR1Jyi3S6nybRynlK/tPNByU1XrjdMmyAXsKXbwN9wAAM7wSEISyyqSzcv6aDJfHpwUTzBzgiGXbLflbFS/oE6OPqijhGn8GR/doikM=
Received: from DM5PR21CA0068.namprd21.prod.outlook.com (2603:10b6:3:129::30)
 by DM6PR02MB5801.namprd02.prod.outlook.com (2603:10b6:5:17c::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 2 May
 2020 04:37:14 +0000
Received: from CY1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:129:cafe::c2) by DM5PR21CA0068.outlook.office365.com
 (2603:10b6:3:129::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.3 via Frontend
 Transport; Sat, 2 May 2020 04:37:14 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT040.mail.protection.outlook.com (10.152.75.135) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 04:37:13
 +0000
Received: from [149.199.38.66] (port=34426 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtn-0002fb-34; Fri, 01 May 2020 21:37:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtp-0004eZ-JX; Fri, 01 May 2020 21:37:13 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0424b5gJ003802; 
 Fri, 1 May 2020 21:37:05 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjth-0004de-4p; Fri, 01 May 2020 21:37:05 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 0/4] drivers: clk: zynqmp: minor bux fixes for
 zynqmp clock driver
Date: Fri,  1 May 2020 21:36:59 -0700
Message-Id: <1588394223-257635-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(346002)(396003)(46966005)(478600001)(6666004)(966005)(316002)(7696005)(107886003)(5660300002)(8676002)(26005)(356005)(4326008)(8936002)(82310400002)(81166007)(2906002)(9786002)(47076004)(82740400003)(70586007)(70206006)(36756003)(336012)(186003)(426003)(2616005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f24b8a0-11a5-4742-9e4e-08d7ee527c78
X-MS-TrafficTypeDiagnostic: DM6PR02MB5801:
X-Microsoft-Antispam-PRVS: <DM6PR02MB58010C628EC813145A219146A7A80@DM6PR02MB5801.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /7oWpxS7ouS0Kunzf8ZsbjiWZ6cyD6f+jjAVce57a9x+D3fQ9wXAPqisewPs+9+D3tloWQhqdYbYqTLgdJ9r+xdzpJ8SnF7rCVUcEfUakWoB0xfS+pvlJB1Cn1VJTRCpvXRdSYRBKVrUGGusCxehfCsezrxAEM6sbMjpxyWRobIDeu9Az3EG47HGAk4vlr6PiVk3GA41bIq2CGMtpeWDDGe3+furVbVodGwoLGFMl5SCSSlvIU8vfhY5JLOoHXygMF7WkC+34X7YgBt4G7jpjPjLiijL+31MbYnvVrxdOVfrvSn8ytw//QDP5ss7vw+0PzDD1cdW7zjgvh036gyFCHL3nziLe5M7Nf9yCKSB6GH20XgIiHGmmfPSfpabC8I5dXgjUhguZqweZXaDSean+xD732jas6n2RpqAHLEPpHXdAMuipD6fIQLBNeSq1VTt/U9aqYAjPRnRGZEQ9JKXJdmBYngY6gq8/Ak17RSObJyvPHA0xMsty8O35il9NAnO7/QJQ3JwFOM3Kd4L3qWMF8PqjHn5GPIIxbOdHBFxrZAJy+CRCuMxWUH2crLVa6YUref1iEk4Jic3TIeUeuDC7w==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 04:37:13.8933 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f24b8a0-11a5-4742-9e4e-08d7ee527c78
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_213720_348071_FF497668 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.48 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: jollys@xilinx.com, rajanv@xilinx.com,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset includes below fixes for clock driver
1> Fix Divider2 calculation
2> Memory leak in clock registration
3> Fix invalid name queries
4> Limit bestdiv with maxdiv

v2:
 - Updated subject for cover letter and patches
   to add prefix
resend-v2:
  - -We have tried to ping Stephen several times over email. Link:
  https://lkml.org/lkml/2020/4/9/754 and also we tried to pinged him
  over IRC this week without no reaction that's why we are sending
  patches again


Quanyang Wang (1):
  drivers: clk: zynqmp: fix memory leak in zynqmp_register_clocks

Rajan Vaja (2):
  drivers: clk: zynqmp: Limit bestdiv with maxdiv
  drivers: clk: zynqmp: Fix invalid clock name queries

Tejas Patel (1):
  drivers: clk: zynqmp: Fix divider2 calculation

 drivers/clk/zynqmp/clkc.c    | 20 ++++++++++++++------
 drivers/clk/zynqmp/divider.c | 19 ++++++++++++++-----
 2 files changed, 28 insertions(+), 11 deletions(-)

--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
