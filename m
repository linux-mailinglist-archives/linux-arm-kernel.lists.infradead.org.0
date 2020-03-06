Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A417C905
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QPemIz8Wnjii7XIbLCBizxUkQQ8vxLZr4S8MuAaN/gs=; b=qmPWR+Ln7D5ABY
	esmHcKCr6ggu+2V4tTwhOlMIV6DHoPHEKNhl0ER4eRW6fu4z+R/0dwNWEzrm5t53ZqiFywnCBc2MQ
	1BpCc1nJY1OmzYImAUwAV2Yfb+sDmcIEqn7m5NRkqbC2V3NldaNalg9+vimVF15HarpNU47wjJ0FK
	h7Pt2TyhaUOp52HFdhf/B66nPT9mJO8O/0eIQ55ung8ruuYIddK5P/9GZfESWxgUWFtOURVlCMbmf
	wfzLIBqBO89JfiPIFGBm+1FHiyg9CuvLZCuF3VP2k8zRxfSD/RkzFO9n4EBffAlrHN4A4Z1IjrSgk
	T6bI9immhB0TjHJHUgKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMiO-0006iw-Vd; Fri, 06 Mar 2020 23:49:12 +0000
Received: from mail-mw2nam12on2046.outbound.protection.outlook.com
 ([40.107.244.46] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhE-0005ya-FK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OIBZTyo7lIZvu7WssZUcAAC0tL1+PX2/BJBnqXVovqMtvUfFQC0NB3OhGYYS9+WrTgaCe2vQc4Vt13stVbAxEDfSy99qwFwu+qo8P0mVhBb34LW1hZqPgRH6hGf1vINySqkexlER1QRtgXvTCHiMb/f5VxauQB629Dc53Ax74TRrmpgxYk2vJrnVzxdnlxYQSLozkqeALYfARGF1HMV6oTe7OoeZwfDZELpmmSXs12g142ka2FRxqxPvDrMMeTGIjD/f5hvCJrnqamyRBEqIMAlGVN6R6tbKMREJbM3d3RFNdAfpwFBHYI/OJu+9Wfbfoetizi2Iy+qHNH/VI91zpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nFyRL44kb7L9IF+WjTtCQ7auUAug8qJIeSDXwd8qJ4k=;
 b=ivJ16vMyZybxgG7KgOumaKCr3mDmpF/1+2b2DFG728GURL+5Mf9VkHrsIbxri6vkCZ2YxyUq6ePJA4C4DgWPqEbLxB5foJYuOwOe2fhq57Y1/XfTsbmRR/3+lqENk1854L6f3WWHHcxhY0ImUkbo0yrzrKQv9hy2PyaBtP9MifTZ4qGJFjji7MMpu3El8PqRlFvwTp1HBMK6jfW2cEYQg4cAjkJEeLD79Z2FjNMcQePuYn3AAZuw4/pIChye3/TTt1B+FBWf5txESUJonIRkADSqs9iuBMISY9VBUIR/rH4Ic1kvVhRyuUkv/+M6uL2rxl/EUg0dOD8Z1edc/IdJKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nFyRL44kb7L9IF+WjTtCQ7auUAug8qJIeSDXwd8qJ4k=;
 b=OHPg9CYe6GL0S8lem9os8zUJXenAHKdRqxtqqXng4q5OvYe/YWrJRQOAbKnKk5Divcv4lJQKdEA1nLa1mp23XXaK/dMEcLZ3WJf5TdEdiLPEoA2dv3DXH8m7T3Tinuun92agQ41SiYQmyHNOZ+4UltMrGPO9LGfZSRAJ5MlvH9k=
Received: from BL0PR01CA0017.prod.exchangelabs.com (2603:10b6:208:71::30) by
 CH2PR02MB7031.namprd02.prod.outlook.com (2603:10b6:610:88::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Fri, 6 Mar 2020 23:47:58 +0000
Received: from BL2NAM02FT003.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:71:cafe::73) by BL0PR01CA0017.outlook.office365.com
 (2603:10b6:208:71::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT003.mail.protection.outlook.com (10.152.76.204) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q6-Gv; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-Dl; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NljP0002385; 
 Fri, 6 Mar 2020 15:47:45 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMgz-0002eg-KC; Fri, 06 Mar 2020 15:47:45 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 00/24] firmware: xilinx: Add xilinx specific sysfs interface
Date: Fri,  6 Mar 2020 15:47:08 -0800
Message-Id: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(356004)(6666004)(70206006)(6636002)(4326008)(9786002)(107886003)(70586007)(316002)(7416002)(478600001)(44832011)(36756003)(8676002)(2616005)(336012)(186003)(2906002)(81166006)(81156014)(26005)(7696005)(5660300002)(8936002)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB7031; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0cfb587c-f4f2-472e-37e8-08d7c228cc96
X-MS-TrafficTypeDiagnostic: CH2PR02MB7031:
X-Microsoft-Antispam-PRVS: <CH2PR02MB7031692052305D7E4B5E0DA6B8E30@CH2PR02MB7031.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 99zQs4Y3ARsCGCYEHon/V6ClVe9twUzVw6mxZGbkFpm1KkkU83mWo+/oEIqa/MoQRwE4x/jU+eLOLuazdot/IPV9rlWUz38djJmUbAYSMNHACALk7Ba36W8wq2BXfzV2hJF8cJqTPHfzJzWPaIlXInEmYhU5/HjGBICBP/lvxYR/8+AfTe/KkuA3cvD8ep9ttTs3l9k5PskQwcZIDDzlN0lRK8rK855/VrvJgPdU9/LfGJaeKqWgoQcjgEaop8AZQriklYucsFIaqRtxLnv65Ea9v9WYqZrLRQXlNnzKaQvEVnOlukF//Da1fVDzkVVWkkRIxg5xPHGNkdK9F1HM9t3IdvVA268+YP3d4SX4GPMwA3zGY7FKXa+xZETyx1d62kNI+O+bXqLN++915rbJiMkGgtZ0/wTe/hJUmGbfa0s565rAbSE0gnsj6DXjtZeT
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.0689 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cfb587c-f4f2-472e-37e8-08d7c228cc96
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB7031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154800_516567_D03C765C 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.46 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds xilinx specific sysfs interface for below
purposes:
- Register access
- Set shutdown scope
- Set boot health status bit

Also this patch series removes eemi ops and adds API
corresponding to each eemi ops.

v3:
 - Remove eemi ops function pointers and call real functions
 - For ioctl eemi calls, make actual function calls rather than ioctl api
 
Rajan Vaja (24):
  firmware: xilinx: Remove eemi ops for get_api_version
  firmware: xilinx: Remove eemi ops for get_chipid
  firmware: xilinx: Remove eemi ops for query_data
  firmware: xilinx: Remove eemi ops for clock_enable
  firmware: xilinx: Remove eemi ops for clock_disable
  firmware: xilinx: Remove eemi ops for clock_getstate
  firmware: xilinx: Remove eemi ops for clock_setdivider
  firmware: xilinx: Remove eemi ops for clock_getdivider
  firmware: xilinx: Remove eemi ops for clock set/get rate
  firmware: xilinx: Remove eemi ops for clock set/get parent
  firmware: xilinx: Use APIs instead of IOCTLs
  firmware: xilinx: Remove eemi ops for reset_assert
  firmware: xilinx: Remove eemi ops for reset_get_status
  firmware: xilinx: Remove eemi ops for init_finalize
  firmware: xilinx: Remove eemi ops for set_suspend_mode
  firmware: xilinx: Remove eemi ops for request_node
  firmware: xilinx: Remove eemi ops for release_node
  firmware: xilinx: Remove eemi ops for set_requirement
  firmware: xilinx: Remove eemi ops for fpga related APIs
  firmware: xilinx: Add APIs to read/write GGS/PGGS registers
  firmware: xilinx: Add sysfs interface
  firmware: xilinx: Add system shutdown API interface
  firmware: xilinx: Add sysfs to set shutdown scope
  firmware: xilinx: Add sysfs and API to set boot health status

 .../ABI/stable/sysfs-driver-firmware-zynqmp        | 103 +++
 drivers/clk/zynqmp/clk-gate-zynqmp.c               |   9 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c                |   6 +-
 drivers/clk/zynqmp/clkc.c                          |  17 +-
 drivers/clk/zynqmp/divider.c                       |  12 +-
 drivers/clk/zynqmp/pll.c                           |  29 +-
 drivers/firmware/xilinx/zynqmp-debug.c             |   5 +-
 drivers/firmware/xilinx/zynqmp.c                   | 806 ++++++++++++++++++---
 drivers/fpga/zynqmp-fpga.c                         |  12 +-
 drivers/mmc/host/sdhci-of-arasan.c                 |  33 +-
 drivers/nvmem/zynqmp_nvmem.c                       |  11 +-
 drivers/reset/reset-zynqmp.c                       |  26 +-
 drivers/soc/xilinx/zynqmp_pm_domains.c             |  26 +-
 drivers/soc/xilinx/zynqmp_power.c                  |  17 +-
 drivers/spi/spi-zynqmp-gqspi.c                     |   5 -
 include/linux/firmware/xlnx-zynqmp.h               | 102 +--
 16 files changed, 924 insertions(+), 295 deletions(-)
 create mode 100644 Documentation/ABI/stable/sysfs-driver-firmware-zynqmp

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
