Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0D91A3A57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zz0RBFdOWAe4ebOz3Aianj4NOP6HlRHRzumRWIJswsc=; b=b/yW50/DA827Mr
	aps39hkAQqm4mTRQAz2MCqsTTGpMft5FUALSMP+HHFymiD37CWY1yR8qC6OZDNNTWeJDmrIZvxisT
	YQA0QMEQhoNvti430X5tmUYiHPCMGWlvs7Mfp7qE6G6q56pg6fD8mQSXdomBBbxC9drjaG9cgCCzc
	pFpeiH1KChSBMUvYfluhG3vzTSosPsvcprqBiQn2LRB322LT/tYcayRu1hiJtSEb2nhs85Vx24SN+
	RVpuXQ5/KHBCbxmVILt233kkmL5+IXlxa/ZtGAMgiCzqO7g4KbIH0ShsIDQVXROc3QqwvadJeIzqk
	Sz1uxWQDfP2LZyLjwJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcdk-0000SM-8z; Thu, 09 Apr 2020 19:15:04 +0000
Received: from mail-bn8nam11on2073.outbound.protection.outlook.com
 ([40.107.236.73] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007KH-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JWAhXmK+iSjMLtkmb74k0Ng4H+KkF1+75d6C4NWwP+w+K8wvKANLx3opS08/xDby7mgB8GFxB3/yDKuhJbxAF/Hju41iglicH7GwOJxcw58qy8S0EOUwOJwOEHduQEa9UAeraQ/7eIYFymTAyp7cnywzxTrmHUvj+DdstLvPNZ9YPYrwCrhnHtg7dbJXQ6CHdhcrLjNw2Z1DE7LITt3YFwmkhmv/2CmDq0hffiZgqxLxVD+kBOtJhUEbb4bPMHE6VZA1mEtRlVD9Z+B1HwiL31IsYX1swI53lol535whIS5UrZAkxKyMNcKFwxrqGw+CyEoiMd9O7Mp0oDP15UaAzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LyaQQSBoqnt3cHq0TsKtRSqzQWFJuf15o19UstUhrds=;
 b=aFo42Ai8QrRzM32Xeie8vMfU6GkAmmMarmWMnqkstCWg7I2T6pAud76n+JQDzN4Lrhi7KGMf0qlks+4P3gGAcvJIhFd1f5zxeqH4Na3m2qfqYOO9AicPNU1cX8LojuF9UUpeNP0iqAKwXauHahF4jln1wntkzJRazm/3VR0YHq8Anwy2Aved3PR1tBglHf0LBsN5vCRlB2uA/48EehYg7FznbhIBIVKtK7czpznZNTKlDiqkB11muLKMOzJ8tyT36PAsQhE1/OHzuQljOqDhO5SYtNp1N494IjYCnqIt/FSGFjATaFS9SMjZ8jO7eBRL5oBSY7mAI4/evv1zeDGJTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LyaQQSBoqnt3cHq0TsKtRSqzQWFJuf15o19UstUhrds=;
 b=ZjSJj9CRqOFpXLLtkf3t3YTH3pDVhXDn2yMKfTH8CjGzFjUn55LramdSQRw/Vdp2Cig52npRFnQwww/TFryHJVEYh0Z1P3RYi+TzofujwAo43nh3Ivwy7EwghfEzhYUn2INPhkwI0e7n1oIgiiGdqagc2cWcN6Kpc0NFfX4JpCY=
Received: from SN4PR0701CA0002.namprd07.prod.outlook.com
 (2603:10b6:803:28::12) by BN6PR02MB2708.namprd02.prod.outlook.com
 (2603:10b6:404:fa::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 19:12:51 +0000
Received: from SN1NAM02FT026.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::41) by SN4PR0701CA0002.outlook.office365.com
 (2603:10b6:803:28::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT026.mail.protection.outlook.com (10.152.72.97) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44327 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-00060W-KX; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcba-0007NV-2v; Thu, 09 Apr 2020 12:12:50 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbR-0007La-Le; Thu, 09 Apr 2020 12:12:41 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 00/25] firmware: xilinx: Add xilinx specific sysfs interface
Date: Thu,  9 Apr 2020 12:11:49 -0700
Message-Id: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(46966005)(26005)(316002)(2906002)(47076004)(6636002)(336012)(478600001)(36756003)(426003)(82740400003)(5660300002)(7416002)(186003)(44832011)(70206006)(107886003)(4326008)(70586007)(81166007)(8936002)(7696005)(9786002)(81156014)(8676002)(2616005)(356004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdf666ed-5d19-4139-37d6-08d7dcb9ff2d
X-MS-TrafficTypeDiagnostic: BN6PR02MB2708:
X-Microsoft-Antispam-PRVS: <BN6PR02MB27083ADEEDFC9AA5F09F7F82B8C10@BN6PR02MB2708.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aq/INaOCBQuHtqQnjFIWRZaNx5FUkmeI67DfMCnhC+FIzjFNUbciCukF/WUGP5gUlnjTjTW4KafJZm+++633Crk5DnklfgHaf6olUvk6vrknm+Ca2TjIPbFO4wlZoeWnyUUj/5ASP/eK1GeOL3lqEvjQg2WQh6OXh3hpCbnFvGeFR3QKuQK0ENm/AWDONBdVWErsj0O1nOOFdBdxxiWGtFSvpKyAAsPY4hQbEsPCNnVcw14x6S7G8Li5FzkMeRJ+AWWTwIL/gXM1tySJeBP648bDc1WN/cbyfriEfKzoLDod23UNRipApxWKS2QagEy3RT7XUOD4bFnrG4Jtsg6L6bd3lLAHlXGN8s8HxdRM6kOz9tB9PnY+k0D4mYx3CX+s5jH+YODizKcYqVR6QEpzRJvYXLhttPJwOuFmAySXXgs7pDgHQLJB3oYLNIISUakbew/J9kjK4zMgQRl1EIZY/dC2xF+C7CkjuC+lYFnA7YyG7WywRo5ZKrzZaU4DvkWDOo/OLFV2cPxaIGuodUdVLA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.4278 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bdf666ed-5d19-4139-37d6-08d7dcb9ff2d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_499403_59F63000 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.73 listed in wl.mailspike.net]
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

Rajan Vaja (25):
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
  firmware: xilinx: Remove eemi ops for aes engine
  firmware: xilinx: Remove eemi ops for fpga related APIs
  firmware: xilinx: Add APIs to read/write GGS/PGGS registers
  firmware: xilinx: Add sysfs interface
  firmware: xilinx: Add system shutdown API interface
  firmware: xilinx: Add sysfs to set shutdown scope
  firmware: xilinx: Add sysfs and API to set boot health status

 .../ABI/stable/sysfs-driver-firmware-zynqmp        | 103 ++++
 drivers/clk/zynqmp/clk-gate-zynqmp.c               |   9 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c                |   6 +-
 drivers/clk/zynqmp/clkc.c                          |  17 +-
 drivers/clk/zynqmp/divider.c                       |  12 +-
 drivers/clk/zynqmp/pll.c                           |  29 +-
 drivers/crypto/xilinx/zynqmp-aes-gcm.c             |  12 +-
 drivers/firmware/xilinx/zynqmp-debug.c             |   5 +-
 drivers/firmware/xilinx/zynqmp.c                   | 601 +++++++++++++++++----
 drivers/fpga/zynqmp-fpga.c                         |  12 +-
 drivers/mmc/host/sdhci-of-arasan.c                 |  38 +-
 drivers/nvmem/zynqmp_nvmem.c                       |  11 +-
 drivers/reset/reset-zynqmp.c                       |  26 +-
 drivers/soc/xilinx/zynqmp_pm_domains.c             |  26 +-
 drivers/soc/xilinx/zynqmp_power.c                  |  17 +-
 drivers/spi/spi-zynqmp-gqspi.c                     |   5 -
 include/linux/firmware/xlnx-zynqmp.h               | 237 ++++++--
 17 files changed, 861 insertions(+), 305 deletions(-)
 create mode 100644 Documentation/ABI/stable/sysfs-driver-firmware-zynqmp

--
Changes in v4:
 - Rebased on latest repository.
 - Resolve compilation errors from patch #1 - #20.
 - Add patch #19 to remove eemi ops for aes engine.
 - [PATCH 11/25]:
   - Add API for SD DLL reset.
   - Rebase on latest repository.
 - [PATCH 21/25]:
   - Use explicit values for enums.
 - [PATCH 22/25]:
   - Remove function header for static functions.
   - Remove unnecessary condition checks.
   - Use one value per file.
   - Use ATTRIBUTE_GROUPS() macro for assigning attribute groups.
   - Remove unnecessary inclusion of header file.
 - [PATCH 23/25]:
   - Use explicit values for enums.
 - [PATCH 24/25]:
   - Use ATTRIBUTE_GROUPS() macro for assigning attribute groups.
 - [PATCH 25/25]:
   - Use dev_err() instead of pr_err().
   - Use ATTRIBUTE_GROUPS() macro for assigning attribute groups.
Changes in v3:
 - add patch #1/24 to #11/24 and #12/24 to #20/24 to remove eemi apis
   and use direct function call.
 - Add patch #11/24 to use ZynqMP APIs of IOCTLs instead of IOCTLs
   and remove IOCTLs for ZynqMP.
 - Add patch #20/24 to add APIs for read/write GGS and PGGS registers.
 - [PATCH 21/24]:
   - Add GGS sysfs interface in zynqmp.c file instead of zynqmp_ggs.c.
   - Use platform device directory for sysfs instead of creating new
     directory in firmware.
   - Change kernel version to 5.6.
   - Set count variable to the error value instead of testing ret
     variable at the end of function to store GGS/PGGS.
   - Use ZynqMP firmware API for write/read PGGS and GGS instead of
     ioctls.
   - Use platform device attribute off instead of creating new kobject.
   - Change Date field in documentation.
 - [PATCH 23/24]:
   - Use platform device directory for sysfs instead of creating new
     directory in firmware.
   - Change kernel version to 5.6.
   - Change Date field in documentation.
 - [PATCH 24/24]:
   - Use platform device directory for sysfs instead of creating new
     directory in firmware.
   - Change kernel version to 5.6.
   - Change Date field in documentation.
   - Add eemi API to set boot health status instead of IOCTL.
Changes in v2:
 - Removed patch #1 for register access sysfs.
 - Updated kernel version in documentation.
 - Used DEVICE_ATTR_* and ATTRIBUTE_GROUPS macros.
 - Correct typo
 - Free Kobject structure in case of error.
 - Resolved smatch errors.
 - Updated Signed-off-by sequence.
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
