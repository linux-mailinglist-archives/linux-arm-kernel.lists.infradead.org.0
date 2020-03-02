Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD2176640
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HeQYW8x47QiBVRWIL0JVIF4q3KO+xDlCGgg7GSstF00=; b=HW7VEz/remB60Y
	pG3n2v/fH5VHlq1N1p7RbETm7dS6mH4Pjj2i5uAqhyruaLXkQw5bSdUJZZ6Jm7tZVDkQgy9f1JtmJ
	2XlNw2OB+kTEHAmIGEDMqGu3YIliGatceFd8sT8oxo6uqkkW1KhLFsW8GHnhFP4g16+s7GIDVI1Ff
	ettKaE/7iAFpH7KeBkjgyiBQU9q4VL6qOVRWdoT1cSSwUCaZVc7LD6Occ6VvWC+/R6DH+aWBTL7LV
	BjMSyaX3WAWNYHtdcypMYOnf/hrtNAjvmdaYzxnTSGQMeaQeayuOcSLCEo/b5JEGkI5ZCncP1UP3E
	YRpW/RbCShNLgAxhKqFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sr5-0002lj-9e; Mon, 02 Mar 2020 21:44:03 +0000
Received: from mail-eopbgr690074.outbound.protection.outlook.com
 ([40.107.69.74] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sqx-0002kJ-5d
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:43:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4E5l0ybgyDjuXRdKZV/UvNKXYTmbru78/5q2l7JTj17SwBnUi5LJH7bhSJ5xtBSQI+FlpnucoZixqOQpApi4Kih7jPCZ98MJ0ENWskb7ugQMgI07SG+y1NtAtGRQqyKFY52j9/SXHxn9otEhJ1WuAHBrlHEOIzh02g2uBzSacmyINHEdvMpWVXi6eU/iNai9zN40nfCsUH6DnCH97NBuiFjJlUfgJ8u6YqxtWKOsqj7Xgg9rtGWnpJtAXEvPRl4NGtUlXuPk4XV4HnkqQBsAZgxvrLRw+gPDGNxlRwder/HUlIoIDD5+UweM8CI+dPTS7L3XHPDfiI0z6//GcKoBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKguYXdmTR0W6sNGc8gK3q5BRscRZZWMCQvEaWccbXc=;
 b=BbxCcp1hXpeVl087mEhTwePfL1eo0JlOESD67BrLhmJ3eZH7/NUcics6XrErAA7/0H08LIdYuxWLyldaZtBy+rJ1ELPXmloYcXdcJyBww/tQn/yL0rdukKxpAELghg8TMs9wcDZhaccdKIhv/z0LeZBn81O0t8Y8EaAL7/EltCjWH/7Oa+oLavmsCm2/KP3DEAbstoME0g4jITPW+qyIKEs10cdilptAgVfCaIM2h1eR+tYUBWMfO0KnyTzArwQRM0Pk8CQn5Wow58cmF6KUPMD1JmVPyiz42yzQPa5CHP4QMM22ZyrJ64W4DXG7l9fs5u9niIsdsFlRsJd3YDZlIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKguYXdmTR0W6sNGc8gK3q5BRscRZZWMCQvEaWccbXc=;
 b=YQIzrUSSvmCra/d/v+EOvVUx0D+lkMDyQmr/RA+QQfa2L9o5oDLqqtSCtCj9oH7jZg1QImL6Mwbc/LHqMah+1R29ZFCz7UKgIxSJggE9TbD9igPvULcSj6RMiHzi6L95sXn8ZgoLFFAhMDnIvvzMXC0SEkcyDbU4MjQzv0TeecI=
Received: from CY4PR21CA0015.namprd21.prod.outlook.com (2603:10b6:903:dd::25)
 by SN6PR02MB4432.namprd02.prod.outlook.com (2603:10b6:805:a5::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 21:43:53 +0000
Received: from CY1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:dd::4) by CY4PR21CA0015.outlook.office365.com
 (2603:10b6:903:dd::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.4 via Frontend
 Transport; Mon, 2 Mar 2020 21:43:53 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT006.mail.protection.outlook.com (10.152.74.104) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:43:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8squ-00020C-8M; Mon, 02 Mar 2020 13:43:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqp-00033f-5B; Mon, 02 Mar 2020 13:43:47 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LhiBa006053; 
 Mon, 2 Mar 2020 13:43:44 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqm-00032V-Kq; Mon, 02 Mar 2020 13:43:44 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 0/4] Clock driver fixes
Date: Mon,  2 Mar 2020 13:43:30 -0800
Message-Id: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(8676002)(4744005)(81166006)(26005)(81156014)(2616005)(2906002)(7696005)(426003)(8936002)(336012)(6666004)(356004)(9786002)(186003)(44832011)(36756003)(5660300002)(70586007)(107886003)(70206006)(4326008)(316002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4432; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68a12ae4-d2fa-4c76-81b7-08d7bef2cd13
X-MS-TrafficTypeDiagnostic: SN6PR02MB4432:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4432EF31D00D5C4E7CA013F5B8E70@SN6PR02MB4432.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yasSRkDke6YFyEEFTgzHqNCJUwpHu6ombDDK4pYdrEQhmPb2z5yPbIjwfHPPWu5ZsqYBjlAkys0WqEi4ydNRWpC3v8qXJGaVJtdwsEA14Df+V1+xvptdSKp3iuv0UipeeVrFfyrkire4j5JiEOzMQp0w+uKPjcEDcK6Gc1Q+AtoQZ49TIDc/GWHPY4iSwURdzlz2vSehnJbp97JLwyDLN838GkirEYiX+g2Sj/jhbL+goRkU3ydWMUMFiccuDNMnko/bmvMyJfoefP31r3xxgD/9L/C0ymjDFeZzsXkzJ69FV89LHpRn356cULoO6+/nMbqlwtmrEcTu6h4vi+A8UaiQWa4/irPXCmOMSpQrK3nZMbFt/jvUryIhyu444wL84UTIxyzreXVcAH9bGjzVfMITPLvKfXq2OIpWszbKMlNnRQF/hvZ1zk1nL+w0bqo3
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:43:52.6894 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68a12ae4-d2fa-4c76-81b7-08d7bef2cd13
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_134355_211098_3D62639A 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset includes below fixes for clock driver
1> Fix Divider2 calculation 
2> Memory leak in clock registration
3> Fix invalid name queries
4> Limit bestdiv with maxdiv

Quanyang Wang (1):
  clk: zynqmp: fix memory leak in zynqmp_register_clocks

Rajan Vaja (2):
  clk: zynqmp: Limit bestdiv with maxdiv
  drivers: clk: Fix invalid clock name queries

Tejas Patel (1):
  drivers: clk: zynqmp: Fix divider2 calculation

 drivers/clk/zynqmp/clkc.c    | 20 ++++++++++++++------
 drivers/clk/zynqmp/divider.c | 19 ++++++++++++++-----
 2 files changed, 28 insertions(+), 11 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
