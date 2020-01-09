Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D421360BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 20:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sVGPS0WCLQH8fmBV8d4wlMEnOz4zIJklV9pYgnrFadI=; b=MSBq3fgUcJg81F
	jPa/8b06W5R++tI8/PaipvOBFGADH/N1a7GIXC2HIXN+1VwlhJsD1V292ph5l9yFVO10OtFHvr7EX
	pjTskBqBjuY0ItwedeWUCDcO17/PFxkAsReePoUWSRYU6KGbvLALBk1Mcm9uUYLEAyPRezQ4USUmK
	8K1OHLepl6ldNKj4Ua9TadmL29fnhOzOWp8V+CYpVK40XeynO5RKkOCjyhqepNCs865FQNn0ZslFp
	X7eohXse0lrpwoyI0+M1lDgnMR4/kVro1ZAtYMguONwnUfTpZFk4Obmeg55bm1blrDdq3pEAnaDye
	zdJaSVz1tsLGZXaQDE8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipd8s-0003sE-O6; Thu, 09 Jan 2020 19:06:50 +0000
Received: from mail-dm6nam10on2068.outbound.protection.outlook.com
 ([40.107.93.68] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipd8S-0003hZ-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 19:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdSuFbx5qONLLdvYDtMGme0+pvexXeF2VWgzii5n1QnwDpRhwiWjkZx9v5SW3pswM1/OfU0i3k0IesJQ+a6ccbmBRbC/PX9GAAC3ssaJPPcs957eMHgnZMqoTYAZgh7tFFMC2Unp60/7Fdc65nivcgtrFR4i17n3u4bFVBSG/ntNqLhzzABKfC2WGV+uPu9b6Wo8EeZF+UfcstdUjNUhCyBrSNqv9cTK2yYz9vq4Uo8ra27PTRoE3lihO+SjkS4LPs0g13/NmDz4lN5zDefseOt47LBM/tR7u0qF7iMxvG6nicNwfY/BgLP/7MCAHT3S9Sqn2HaL9/1ARBlxJPKuDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qq1/PJf+Q9W6nmUlSbouULjJQxl7pzGd26ujV7jjax8=;
 b=I0Mo42gPzPZgG2Jt+6pQDKcOjv/vUnF6Wnkl7mRZB1gcDJER0IO65Mbn9/0LT04P52EyrN40/qvD91HKL6L7Ppcna8cvyVyKslFrvekskdNoqZIPNTxjHnkIlySwQLlo1qRohpICx7bCBUuCSk0Z9EFP2oEiO0ZTLA97Y0j6xGY4WRGZtCQ8jAqnCKvTg/EQsVy6iuW5/I329ofit959G6hv0C/Gh/imCXBEOK6/ES0QCngBZPnWtbpwQQN2ERbEzv/Ofd3WaN5X3707OmiPRZE7HiyYWL0Pptps8hfMbHLjV4O6fpNELyi1JmAjoxmYX/2aWwHd2+FdFir9svor9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qq1/PJf+Q9W6nmUlSbouULjJQxl7pzGd26ujV7jjax8=;
 b=KjT35kgm3uhclO/CrOr04Z1qZbK6z/puSOsC14mcB3g0CL2RBkJydMEpFwrDYxJ7XkWvv2Gpao3oMgadB3/qPC8PGLwbOZZ7Rm9wV3+6IG04FWmELZDqW2NABjo2cmjvJUsFvQgNsgSEfH2WcPzw7J3CE1QKcY8pNIdXDmqUpN8=
Received: from SN4PR0201CA0035.namprd02.prod.outlook.com
 (2603:10b6:803:2e::21) by DM6PR02MB5596.namprd02.prod.outlook.com
 (2603:10b6:5:7b::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12; Thu, 9 Jan
 2020 19:06:20 +0000
Received: from SN1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by SN4PR0201CA0035.outlook.office365.com
 (2603:10b6:803:2e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.13 via Frontend
 Transport; Thu, 9 Jan 2020 19:06:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT010.mail.protection.outlook.com (10.152.72.86) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Thu, 9 Jan 2020 19:06:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8O-0008O6-5F; Thu, 09 Jan 2020 11:06:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8J-00030t-24; Thu, 09 Jan 2020 11:06:15 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 009J66Xx021951; 
 Thu, 9 Jan 2020 11:06:07 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipd8A-0002yD-Sz; Thu, 09 Jan 2020 11:06:06 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 0/2] arch: arm64: xilinx: Make zynqmp_firmware driver optional
Date: Thu,  9 Jan 2020 11:06:02 -0800
Message-Id: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39860400002)(199004)(189003)(26005)(81156014)(70206006)(81166006)(8676002)(36756003)(7696005)(8936002)(336012)(478600001)(2616005)(70586007)(107886003)(426003)(9786002)(4326008)(7416002)(44832011)(6666004)(356004)(2906002)(6636002)(316002)(5660300002)(4744005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5596; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2648c970-fc68-40a3-8fe4-08d795370344
X-MS-TrafficTypeDiagnostic: DM6PR02MB5596:
X-Microsoft-Antispam-PRVS: <DM6PR02MB55967DC0416F24F30EA93A27B8390@DM6PR02MB5596.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 02778BF158
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oos2KgF7PGM6E0HM11eU+fcg/BHghGytpEEd+j2l4wOI8gwcUwpY0KfiB6nm9Mh4PNGCe8puNA1y/4Du9ya8sr4K74mOxWcsGCsO2hEeA3kzhxvfbP5I5BP6CyVsFeCP784FVIvMrUKezBOGE0jBSYfsiCIzpV+KWZCP5EJqhJLhkbN1EY0p4eMShM53tMrDg3KwPEqvTAXscsStrnd+GiGlPCEpKMeQRNIMp3lG5LaLXW16tB3peFqTMjID24mwDS4NEzLsi9WCxS6VzoKXh4xCtZC05kW7McJZHo0LdVzciIX/VdA2hKTr4dDCy14JEYSrMy6nMo8q0H0Tb6p/sW77AlooUa9ZizpPMtY/aZcWDDV9J2la2FVzParN1CGMoJa6NW8gGQyFaWAbgGDIHSnxMoiqhGNMbcx96Q9b0D2mu0TtnBQ+ktQ2NyUYNzrh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2020 19:06:20.5658 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2648c970-fc68-40a3-8fe4-08d795370344
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_110624_465573_C0463963 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.68 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Zynqmp firmware driver requires firmware to be present in system.
Zynqmp firmware driver will crash if firmware is not present in system.
For example single arch QEMU, may not have firmware, with such setup
Linux booting fails.

So make zynqmp_firmware driver as optional to disable it if user don't
have firmware in system.

Tejas Patel (2):
  include: linux: firmware: Correct config dependency of zynqmp_eemi_ops
  arch: arm64: xilinx: Make zynqmp_firmware driver optional

 arch/arm64/Kconfig.platforms         | 1 -
 drivers/firmware/xilinx/Kconfig      | 2 ++
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 3 files changed, 3 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
