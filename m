Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095B81A3ABD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oWpyPuJpzZkUF51jfZDmimdq1Y00Cbc76tO0iOMDAw=; b=R0a0xEF0THypU1
	+1wjJckQm8TrfgWejKKhvrfGlwuB5kjBAzu0sp3vuRh66N1ekPRdDWNig2aQ3O/lgamdI8rdC5pfc
	a2umKuETbsaJ9YA7D3wyB1zjS6pNocd4tRnct//I3ybH6aHuMBiMPGG6xtmEfdj7HTGJgt4DXSjDA
	ZPreK0JLCDl7sC0s94t+2IyC0IsBd2rRBc27+GWrBd6MZRqhLGmwqUXzG4QDWqCsNWYXx9p1N/xE8
	K5aVIpCirJsnDqfG2fUBJ0JPJurakan1LP1Jhqv+ZXf3cDUWcLaYkhd7v7Wc+YA4YNrvI9JiLWI76
	rX+RVkGU6fBO4v4qdAhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMd7M-0001a6-3U; Thu, 09 Apr 2020 19:45:40 +0000
Received: from mail-bl2nam02on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::623]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMd6l-0007L2-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:45:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MNero8Zgz6du5PaS8M+55Z2nLwhh7val237z6mTxiSwDRPiScHOXk2L+G/EZN0/9U/dAaoZa6ZdX5Bnf0TW/TD3d+ZKbpdOoB5E1LLiPnkC0ydiOL92bU7U4T7N7wZZTr58WZZJ5dD9nYzaw0JFIYyHdnwA0v9GaI6tKoL7UZNQSJ0pPOjUOYuhnxQG+sybSB3lSmJ2O3zRv+QJXTSLmvMDTlJsVmRev1VthQHDFuUDN/e0QD9QRt/j9GkuPFW0c/7XmoCNZ0QuR6fygkG9ytkoD4Au3nMr3fq94Irbp0zxNcoFMO73oKsU5zR9RtLIa9/lLwLAu37HcXkBwbaho4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAAPoIV2GLjWEvmw3UL+aG1qRbLIHAkOe1dDdUa+kgk=;
 b=ebZQl0ed/HQl4MFPuGdhmD94tUAN1cLUcQLbtJTei06MqReWJ1KycYYIGVO34X9XB8999Mt1aBV9E7Y+AOKYxOAAGlVTUQkRZodoB0Uw/pA7cT0AGoeZzRhd0IvN1EKXl86aUYaTndbfqZZI3HLpZlS1pp1NEWwV6TS1PEpuVyY3BK1jVF7bTuLiSZWAnKkGUwDXjQG+7hQeKI4Sl8ZVbqBca68RPk19FlRkCg/g2E6D+osYUUaOhxCQhMtGmer/SQJbvuc93vIRcnLtRHI9FG7SI7gFrfuM9c7HPmRhJmVs7swcFQ3cMLf/7Fw73+g/VrlZGe3t16FolaHWrH77jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=jmondi.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAAPoIV2GLjWEvmw3UL+aG1qRbLIHAkOe1dDdUa+kgk=;
 b=ogRpIYYTZzAyjogedh13qcjEIob/VPsIwoIzFGnV4nicbLC/JXoA6qK6Z78y/YIst5V6Smv1zntKh2TTM7DYWEDYDVOTAjCbiPxa+7xqVpf4tt0BJ5m6YTeVqWL0P7CotDrxlMb08og+QCxfPftB3ewgwatZYAn0zAmHZRBvMx0=
Received: from CY4PR22CA0035.namprd22.prod.outlook.com (2603:10b6:903:ed::21)
 by BY5PR02MB6066.namprd02.prod.outlook.com (2603:10b6:a03:1f9::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 9 Apr
 2020 19:44:57 +0000
Received: from CY1NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ed:cafe::ce) by CY4PR22CA0035.outlook.office365.com
 (2603:10b6:903:ed::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:44:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; jmondi.org; dkim=none (message not signed)
 header.d=none;jmondi.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT022.mail.protection.outlook.com (10.152.75.185) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:44:57
 +0000
Received: from [149.199.38.66] (port=36409 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jMd6E-000759-FD; Thu, 09 Apr 2020 12:44:30 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jMd6f-00089I-0X; Thu, 09 Apr 2020 12:44:57 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 039Jipug009427; 
 Thu, 9 Apr 2020 12:44:51 -0700
Received: from [172.23.82.133] (helo=xhdvsagar40x.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jMd6Y-00083q-Lk; Thu, 09 Apr 2020 12:44:51 -0700
From: Vishal Sagar <vishal.sagar@xilinx.com>
To: Hyun Kwon <hyunk@xilinx.com>, laurent.pinchart@ideasonboard.com,
 mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 Michal Simek <michals@xilinx.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dinesh Kumar <dineshk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, Jacopo Mondi <jacopo@jmondi.org>
Subject: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Date: Fri, 10 Apr 2020 01:14:24 +0530
Message-Id: <20200409194424.45555-3-vishal.sagar@xilinx.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200409194424.45555-1-vishal.sagar@xilinx.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(46966005)(8936002)(1076003)(186003)(9786002)(30864003)(7416002)(26005)(70586007)(70206006)(36756003)(2616005)(47076004)(44832011)(4326008)(107886003)(336012)(426003)(5660300002)(478600001)(7696005)(54906003)(110136005)(2906002)(8676002)(356004)(81166007)(81156014)(82740400003)(316002)(6666004)(921003)(1121003)(579004);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d38bd63-e7c1-49dd-e4d9-08d7dcbe7bad
X-MS-TrafficTypeDiagnostic: BY5PR02MB6066:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6066CAB196F7808FDF48A813A7C10@BY5PR02MB6066.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:238;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TfwkzVbYc60SRllvectQidbm4rlHL3OrG7+UU038n2RnwHaNUe8cRNNIsW2HJSz2GOGSliA+6HDRs3OCCHxF3Vc6Ss8rzQwrdNKzrLPsh4lfkV1AaMu6PYO3zOVsQVcFxqgdf7BTFnRIIqVpoH+ReKoX8ILhQWNaSIbCE+iJxxMIP8SSuK3EvY1hcZ/CZKuCOiHm9Yx8MYSPyfil6UwcmrC89oEMl1/AmQD8haa2ljEoxJpyeBEZcKlBFyRUPOY3nbtWepqSki4dju1GN/VFp+MkyNnEIBsmX7I0hYYHGMkpavKt6MXF0efCptd8t/JVo+oQtQUuH47ho6peHhklt5+iO+WO4gwsLprBpuMHd1QNn2PpwZ4H/0Hy1ywMY9rFGVVCV6lPoBXfS1lXHquyqqIdcS7Uk70WpQVGJkQgWjz8bizStFBBgCmdmzye9MwIwWSk3TYvBKpq03TBLogPZe66VGMftM9eINFX/8moJS2ox1wMbA4v34O02TBY0INvZvx5fnOcGItGsYhHkKasNFOSke9ts8vD8mt/4KtXQ3hKa+RBHG86CCuexVUJ+HNF
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:44:57.2940 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d38bd63-e7c1-49dd-e4d9-08d7dcbe7bad
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_124503_646893_E6127F18 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:623 listed in]
 [list.dnswl.org]
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
Cc: Hyun Kwon <hyun.kwon@xilinx.com>, Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Xilinx MIPI CSI-2 Rx Subsystem soft IP is used to capture images
from MIPI CSI-2 camera sensors and output AXI4-Stream video data ready
for image processing. Please refer to PG232 for details.

The CSI2 Rx controller filters out all packets except for the packets
with data type fixed in hardware. RAW8 packets are always allowed to
pass through.

It is also used to setup and handle interrupts and enable the core. It
logs all the events in respective counters between streaming on and off.

The driver supports only the video format bridge enabled configuration.
Some data types like YUV 422 10bpc, RAW16, RAW20 are supported when the
CSI v2.0 feature is enabled in design. When the VCX feature is enabled,
the maximum number of virtual channels becomes 16 from 4.

Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
---
v11
- Fixed changes as suggested by Sakari Ailus
- Removed VIDEO_XILINX from KConfig
- Minor formatting
- Start / Stop upstream sub-device in xcsi2rxss_start_stream()
  and xcsi2rxss_stop_stream()
- Added v4l2_subdev_link_validate_default() in v4l2_subdev_pad_ops()
- Use fwnode_graph_get_endpoint_by_id() instead of parsing by self
- Set bus type as V4L2_MBUS_CSI2_DPHY in struct v4l2_fwnode_endpoint
- Remove num_clks from core. Instead use ARRAY_SIZE()
- Fixed SPDX header to GPL-2.0
- Update copyright year to 2020

v10
- Removed all V4L2 controls and events based on Sakari's comments.
- Now stop_stream() before toggling rst_gpio
- Updated init_mbus() to throw error on array out of bound access
- Make events and vcx_events as counters instead of structures
- Minor fixes in set_format() enum_mbus_code() as suggested by Sakari

v9
- Moved all controls and events to xilinx-csi2rxss.h
- Updated name and description of controls and events
- Get control base address from v4l2-controls.h (0x10c0)
- Fix KConfig for dependency on VIDEO_XILINX
- Added enum_mbus_code() support
- Added default format to be returned on open()
- Mark variables are const
- Remove references to short packet in comments
- Add check for streaming before setting active lanes control
- strlcpy -> strscpy
- Fix xcsi2rxss_set_format()

v8
- Use clk_bulk* APIs
- Add gpio reset for asserting video_aresetn when stream line buffer occurs
- Removed short packet related events and irq handling
  - V4L2_EVENT_XLNXCSIRX_SPKT and V4L2_EVENT_XLNXCSIRX_SPKT_OVF removed
- Removed frame counter control V4L2_CID_XILINX_MIPICSISS_FRAME_COUNTER
  and xcsi2rxss_g_volatile_ctrl()
- Minor formatting fixes

v7
- No change

v6
- No change

v5
- Removed bayer and updated related parts like set default format based
  on Luca Cersoli's comments.
- Added correct YUV422 10bpc media bus format

v4
- Removed irq member from core structure
- Consolidated IP config prints in xcsi2rxss_log_ipconfig()
- Return -EINVAL in case of invalid ioctl
- Code formatting
- Added reviewed by Hyun Kwon

v3
- Fixed comments given by Hyun.
- Removed DPHY 200 MHz clock. This will be controlled by DPHY driver
- Minor code formatting
- en_csi_v20 and vfb members removed from struct and made local to dt parsing
- lock description updated
- changed to ratelimited type for all dev prints in irq handler
- Removed YUV 422 10bpc media format

v2
- Fixed comments given by Hyun and Sakari.
- Made all bitmask using BIT() and GENMASK()
- Removed unused definitions
- Removed DPHY access. This will be done by separate DPHY PHY driver.
- Added support for CSI v2.0 for YUV 422 10bpc, RAW16, RAW20 and extra
  virtual channels
- Fixed the ports as sink and source
- Now use the v4l2fwnode API to get number of data-lanes
- Added clock framework support
- Removed the close() function
- updated the set format function
- support only VFB enabled configuration

 drivers/media/platform/xilinx/Kconfig         |   10 +
 drivers/media/platform/xilinx/Makefile        |    1 +
 .../media/platform/xilinx/xilinx-csi2rxss.c   | 1234 +++++++++++++++++
 3 files changed, 1245 insertions(+)
 create mode 100644 drivers/media/platform/xilinx/xilinx-csi2rxss.c

diff --git a/drivers/media/platform/xilinx/Kconfig b/drivers/media/platform/xilinx/Kconfig
index a2773ad7c185..cd1a0fdde4df 100644
--- a/drivers/media/platform/xilinx/Kconfig
+++ b/drivers/media/platform/xilinx/Kconfig
@@ -10,6 +10,16 @@ config VIDEO_XILINX
 
 if VIDEO_XILINX
 
+config VIDEO_XILINX_CSI2RXSS
+	tristate "Xilinx CSI2 Rx Subsystem"
+	help
+	  Driver for Xilinx MIPI CSI2 Rx Subsystem. This is a V4L sub-device
+	  based driver that takes input from CSI2 Tx source and converts
+	  it into an AXI4-Stream. The subsystem comprises of a CSI2 Rx
+	  controller, DPHY, an optional I2C controller and a Video Format
+	  Bridge. The driver is used to set the number of active lanes and
+	  get short packet data.
+
 config VIDEO_XILINX_TPG
 	tristate "Xilinx Video Test Pattern Generator"
 	depends on VIDEO_XILINX
diff --git a/drivers/media/platform/xilinx/Makefile b/drivers/media/platform/xilinx/Makefile
index 4cdc0b1ec7a5..6119a34f3043 100644
--- a/drivers/media/platform/xilinx/Makefile
+++ b/drivers/media/platform/xilinx/Makefile
@@ -3,5 +3,6 @@
 xilinx-video-objs += xilinx-dma.o xilinx-vip.o xilinx-vipp.o
 
 obj-$(CONFIG_VIDEO_XILINX) += xilinx-video.o
+obj-$(CONFIG_VIDEO_XILINX_CSI2RXSS) += xilinx-csi2rxss.o
 obj-$(CONFIG_VIDEO_XILINX_TPG) += xilinx-tpg.o
 obj-$(CONFIG_VIDEO_XILINX_VTC) += xilinx-vtc.o
diff --git a/drivers/media/platform/xilinx/xilinx-csi2rxss.c b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
new file mode 100644
index 000000000000..083422768ebd
--- /dev/null
+++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
@@ -0,0 +1,1234 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Xilinx MIPI CSI2 Rx Subsystem
+ *
+ * Copyright (C) 2016 - 2020 Xilinx, Inc.
+ *
+ * Contacts: Vishal Sagar <vishal.sagar@xilinx.com>
+ *
+ */
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/v4l2-subdev.h>
+#include <media/media-entity.h>
+#include <media/v4l2-common.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-fwnode.h>
+#include <media/v4l2-subdev.h>
+#include "xilinx-vip.h"
+
+/* Register register map */
+#define XCSI_CCR_OFFSET		0x00
+#define XCSI_CCR_SOFTRESET	BIT(1)
+#define XCSI_CCR_ENABLE		BIT(0)
+
+#define XCSI_PCR_OFFSET		0x04
+#define XCSI_PCR_MAXLANES_MASK	GENMASK(4, 3)
+#define XCSI_PCR_ACTLANES_MASK	GENMASK(1, 0)
+
+#define XCSI_CSR_OFFSET		0x10
+#define XCSI_CSR_PKTCNT		GENMASK(31, 16)
+#define XCSI_CSR_SPFIFOFULL	BIT(3)
+#define XCSI_CSR_SPFIFONE	BIT(2)
+#define XCSI_CSR_SLBF		BIT(1)
+#define XCSI_CSR_RIPCD		BIT(0)
+
+#define XCSI_GIER_OFFSET	0x20
+#define XCSI_GIER_GIE		BIT(0)
+
+#define XCSI_ISR_OFFSET		0x24
+#define XCSI_IER_OFFSET		0x28
+
+#define XCSI_ISR_FR		BIT(31)
+#define XCSI_ISR_VCXFE		BIT(30)
+#define XCSI_ISR_WCC		BIT(22)
+#define XCSI_ISR_ILC		BIT(21)
+#define XCSI_ISR_SPFIFOF	BIT(20)
+#define XCSI_ISR_SPFIFONE	BIT(19)
+#define XCSI_ISR_SLBF		BIT(18)
+#define XCSI_ISR_STOP		BIT(17)
+#define XCSI_ISR_SOTERR		BIT(13)
+#define XCSI_ISR_SOTSYNCERR	BIT(12)
+#define XCSI_ISR_ECC2BERR	BIT(11)
+#define XCSI_ISR_ECC1BERR	BIT(10)
+#define XCSI_ISR_CRCERR		BIT(9)
+#define XCSI_ISR_DATAIDERR	BIT(8)
+#define XCSI_ISR_VC3FSYNCERR	BIT(7)
+#define XCSI_ISR_VC3FLVLERR	BIT(6)
+#define XCSI_ISR_VC2FSYNCERR	BIT(5)
+#define XCSI_ISR_VC2FLVLERR	BIT(4)
+#define XCSI_ISR_VC1FSYNCERR	BIT(3)
+#define XCSI_ISR_VC1FLVLERR	BIT(2)
+#define XCSI_ISR_VC0FSYNCERR	BIT(1)
+#define XCSI_ISR_VC0FLVLERR	BIT(0)
+
+#define XCSI_INTR_PROT_MASK	(XCSI_ISR_VC3FSYNCERR |	XCSI_ISR_VC3FLVLERR |\
+				 XCSI_ISR_VC2FSYNCERR | XCSI_ISR_VC2FLVLERR |\
+				 XCSI_ISR_VC1FSYNCERR | XCSI_ISR_VC1FLVLERR |\
+				 XCSI_ISR_VC0FSYNCERR |	XCSI_ISR_VC0FLVLERR |\
+				 XCSI_ISR_VCXFE)
+
+#define XCSI_INTR_PKTLVL_MASK	(XCSI_ISR_ECC2BERR | XCSI_ISR_ECC1BERR |\
+				 XCSI_ISR_CRCERR | XCSI_ISR_DATAIDERR)
+
+#define XCSI_INTR_DPHY_MASK	(XCSI_ISR_SOTERR | XCSI_ISR_SOTSYNCERR)
+
+#define XCSI_INTR_SPKT_MASK	(XCSI_ISR_SPFIFOF | XCSI_ISR_SPFIFONE)
+
+#define XCSI_INTR_ERR_MASK	(XCSI_ISR_WCC | XCSI_ISR_ILC | XCSI_ISR_SLBF |\
+				 XCSI_ISR_STOP)
+
+#define XCSI_INTR_FRAMERCVD_MASK	(XCSI_ISR_FR)
+
+#define XCSI_ISR_ALLINTR_MASK	(XCSI_INTR_PROT_MASK | XCSI_INTR_PKTLVL_MASK |\
+				 XCSI_INTR_DPHY_MASK | XCSI_INTR_SPKT_MASK |\
+				 XCSI_INTR_ERR_MASK | XCSI_INTR_FRAMERCVD_MASK)
+
+/*
+ * Removed VCXFE mask as it doesn't exist in IER
+ * Removed STOP state irq as this will keep driver in irq handler only
+ */
+#define XCSI_IER_INTR_MASK	(XCSI_ISR_ALLINTR_MASK &\
+				 ~(XCSI_ISR_STOP | XCSI_ISR_VCXFE))
+
+#define XCSI_SPKTR_OFFSET	0x30
+#define XCSI_SPKTR_DATA		GENMASK(23, 8)
+#define XCSI_SPKTR_VC		GENMASK(7, 6)
+#define XCSI_SPKTR_DT		GENMASK(5, 0)
+
+#define XCSI_VCXR_OFFSET	0x34
+#define XCSI_VCXR_VCERR		GENMASK(23, 0)
+#define XCSI_VCXR_VCSTART	4
+#define XCSI_VCXR_VCEND		15
+#define XCSI_VCXR_FSYNCERR	BIT(1)
+#define XCSI_VCXR_FLVLERR	BIT(0)
+
+#define XCSI_CLKINFR_OFFSET	0x3C
+#define XCSI_CLKINFR_STOP	BIT(1)
+
+#define XCSI_DLXINFR_OFFSET	0x40
+#define XCSI_DLXINFR_STOP	BIT(5)
+#define XCSI_DLXINFR_SOTERR	BIT(1)
+#define XCSI_DLXINFR_SOTSYNCERR	BIT(0)
+#define XCSI_MAXDL_COUNT	0x4
+
+#define XCSI_VCXINF1R_OFFSET		0x60
+#define XCSI_VCXINF1R_LINECOUNT		GENMASK(31, 16)
+#define XCSI_VCXINF1R_LINECOUNT_SHIFT	16
+#define XCSI_VCXINF1R_BYTECOUNT		GENMASK(15, 0)
+
+#define XCSI_VCXINF2R_OFFSET	0x64
+#define XCSI_VCXINF2R_DT	GENMASK(5, 0)
+#define XCSI_MAXVCX_COUNT	16
+
+/*
+ * The core takes less than 100 video clock cycles to reset.
+ * So choosing a timeout value larger than this.
+ */
+#define XCSI_TIMEOUT_VAL	1000 /* us */
+
+/*
+ * Sink pad connected to sensor source pad.
+ * Source pad connected to next module like demosaic.
+ */
+#define XCSI_MEDIA_PADS		2
+#define XCSI_DEFAULT_WIDTH	1920
+#define XCSI_DEFAULT_HEIGHT	1080
+
+/* Max media bus formats supported for enumeration */
+#define XCSI_MAX_MBUS_FMTS	16
+
+/* Max string length for CSI Data type string */
+#define XCSI_PXLFMT_STRLEN_MAX	16
+
+/* MIPI CSI2 Data Types from spec */
+#define XCSI_DT_YUV4228B	0x1E
+#define XCSI_DT_YUV42210B	0x1F
+#define XCSI_DT_RGB444		0x20
+#define XCSI_DT_RGB555		0x21
+#define XCSI_DT_RGB565		0x22
+#define XCSI_DT_RGB666		0x23
+#define XCSI_DT_RGB888		0x24
+#define XCSI_DT_RAW6		0x28
+#define XCSI_DT_RAW7		0x29
+#define XCSI_DT_RAW8		0x2A
+#define XCSI_DT_RAW10		0x2B
+#define XCSI_DT_RAW12		0x2C
+#define XCSI_DT_RAW14		0x2D
+#define XCSI_DT_RAW16		0x2E
+#define XCSI_DT_RAW20		0x2F
+
+#define XCSI_VCX_START		4
+#define XCSI_MAX_VC		4
+#define XCSI_MAX_VCX		16
+
+#define XCSI_NEXTREG_OFFSET	4
+
+/* There are 2 events frame sync and frame level error per VC */
+#define XCSI_VCX_NUM_EVENTS	((XCSI_MAX_VCX - XCSI_MAX_VC) * 2)
+
+/* Macro to return "true" or "false" string if bit is set */
+#define XCSI_GET_BITSET_STR(val, mask)	(val) & (mask) ? "true" : "false"
+
+#define XADD_MBUS(state, mbus_fmt)					\
+	do {								\
+		if ((state)->mbus_fmts_count < XCSI_MAX_MBUS_FMTS) {	\
+			(state)->mbus_fmts[(state)->mbus_fmts_count++] =\
+				(mbus_fmt);				\
+		} else {						\
+			dev_err((state)->core.dev,			\
+				"accessing array out of bounds!\n");	\
+		}							\
+	} while (0)
+
+/**
+ * struct xcsi2rxss_event - Event log structure
+ * @mask: Event mask
+ * @name: Name of the event
+ */
+struct xcsi2rxss_event {
+	u32 mask;
+	const char *name;
+};
+
+static const struct xcsi2rxss_event xcsi2rxss_events[] = {
+	{ XCSI_ISR_FR, "Frame Received" },
+	{ XCSI_ISR_VCXFE, "VCX Frame Errors" },
+	{ XCSI_ISR_WCC, "Word Count Errors" },
+	{ XCSI_ISR_ILC, "Invalid Lane Count Error" },
+	{ XCSI_ISR_SPFIFOF, "Short Packet FIFO OverFlow Error" },
+	{ XCSI_ISR_SPFIFONE, "Short Packet FIFO Not Empty" },
+	{ XCSI_ISR_SLBF, "Streamline Buffer Full Error" },
+	{ XCSI_ISR_STOP, "Lane Stop State" },
+	{ XCSI_ISR_SOTERR, "SOT Error" },
+	{ XCSI_ISR_SOTSYNCERR, "SOT Sync Error" },
+	{ XCSI_ISR_ECC2BERR, "2 Bit ECC Unrecoverable Error" },
+	{ XCSI_ISR_ECC1BERR, "1 Bit ECC Recoverable Error" },
+	{ XCSI_ISR_CRCERR, "CRC Error" },
+	{ XCSI_ISR_DATAIDERR, "Data Id Error" },
+	{ XCSI_ISR_VC3FSYNCERR, "Virtual Channel 3 Frame Sync Error" },
+	{ XCSI_ISR_VC3FLVLERR, "Virtual Channel 3 Frame Level Error" },
+	{ XCSI_ISR_VC2FSYNCERR, "Virtual Channel 2 Frame Sync Error" },
+	{ XCSI_ISR_VC2FLVLERR, "Virtual Channel 2 Frame Level Error" },
+	{ XCSI_ISR_VC1FSYNCERR, "Virtual Channel 1 Frame Sync Error" },
+	{ XCSI_ISR_VC1FLVLERR, "Virtual Channel 1 Frame Level Error" },
+	{ XCSI_ISR_VC0FSYNCERR, "Virtual Channel 0 Frame Sync Error" },
+	{ XCSI_ISR_VC0FLVLERR, "Virtual Channel 0 Frame Level Error" }
+};
+
+#define XCSI_NUM_EVENTS		ARRAY_SIZE(xcsi2rxss_events)
+
+/*
+ * struct xcsi2rxss_core - Core configuration CSI2 Rx Subsystem device structure
+ * @dev: Platform structure
+ * @iomem: Base address of subsystem
+ * @enable_active_lanes: If number of active lanes can be modified
+ * @max_num_lanes: Maximum number of lanes present
+ * @datatype: Data type filter
+ * @events: counter for events
+ * @vcx_events: counter for vcx_events
+ * @en_vcx: If more than 4 VC are enabled
+ * @clks: array of clocks
+ * @rst_gpio: reset to video_aresetn
+ */
+struct xcsi2rxss_core {
+	struct device *dev;
+	void __iomem *iomem;
+	bool enable_active_lanes;
+	u32 max_num_lanes;
+	u32 datatype;
+	u32 events[XCSI_NUM_EVENTS];
+	u32 vcx_events[XCSI_VCX_NUM_EVENTS];
+	bool en_vcx;
+	struct clk_bulk_data *clks;
+	struct gpio_desc *rst_gpio;
+};
+
+/**
+ * struct xcsi2rxss_state - CSI2 Rx Subsystem device structure
+ * @core: Core structure for MIPI CSI2 Rx Subsystem
+ * @subdev: The v4l2 subdev structure
+ * @format: Active V4L2 formats on each pad
+ * @default_format: Default V4L2 format
+ * @lock: mutex for accessing this structure
+ * @pads: media pads
+ * @mbus_fmts: List of media bus formats for enum_mbus_code
+ * @mbus_fmts_count: Number of media bus formats
+ * @streaming: Flag for storing streaming state
+ *
+ * This structure contains the device driver related parameters
+ */
+struct xcsi2rxss_state {
+	struct xcsi2rxss_core core;
+	struct v4l2_subdev subdev;
+	struct v4l2_mbus_framefmt format;
+	struct v4l2_mbus_framefmt default_format;
+	/* used to protect access to this struct */
+	struct mutex lock;
+	struct media_pad pads[XCSI_MEDIA_PADS];
+	u32 mbus_fmts[XCSI_MAX_MBUS_FMTS];
+	u32 mbus_fmts_count;
+	bool streaming;
+};
+
+static const struct clk_bulk_data xcsi2rxss_clks[] = {
+	{ .id = "lite_aclk" },
+	{ .id = "video_aclk" },
+};
+
+static inline struct xcsi2rxss_state *
+to_xcsi2rxssstate(struct v4l2_subdev *subdev)
+{
+	return container_of(subdev, struct xcsi2rxss_state, subdev);
+}
+
+/*
+ * Register related operations
+ */
+static inline u32 xcsi2rxss_read(struct xcsi2rxss_core *xcsi2rxss, u32 addr)
+{
+	return ioread32(xcsi2rxss->iomem + addr);
+}
+
+static inline void xcsi2rxss_write(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
+				   u32 value)
+{
+	iowrite32(value, xcsi2rxss->iomem + addr);
+}
+
+static inline void xcsi2rxss_clr(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
+				 u32 clr)
+{
+	xcsi2rxss_write(xcsi2rxss, addr,
+			xcsi2rxss_read(xcsi2rxss, addr) & ~clr);
+}
+
+static inline void xcsi2rxss_set(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
+				 u32 set)
+{
+	xcsi2rxss_write(xcsi2rxss, addr, xcsi2rxss_read(xcsi2rxss, addr) | set);
+}
+
+static void xcsi2rxss_enable(struct xcsi2rxss_core *core)
+{
+	xcsi2rxss_set(core, XCSI_CCR_OFFSET, XCSI_CCR_ENABLE);
+}
+
+static void xcsi2rxss_disable(struct xcsi2rxss_core *core)
+{
+	xcsi2rxss_clr(core, XCSI_CCR_OFFSET, XCSI_CCR_ENABLE);
+}
+
+static void xcsi2rxss_intr_enable(struct xcsi2rxss_core *core)
+{
+	xcsi2rxss_clr(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
+	xcsi2rxss_write(core, XCSI_IER_OFFSET, XCSI_IER_INTR_MASK);
+	xcsi2rxss_set(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
+}
+
+static void xcsi2rxss_intr_disable(struct xcsi2rxss_core *core)
+{
+	xcsi2rxss_clr(core, XCSI_IER_OFFSET, XCSI_IER_INTR_MASK);
+	xcsi2rxss_clr(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
+}
+
+/**
+ * xcsi2rxss_reset - Does a soft reset of the MIPI CSI2 Rx Subsystem
+ * @core: Core Xilinx CSI2 Rx Subsystem structure pointer
+ *
+ * Core takes less than 100 video clock cycles to reset.
+ * So a larger timeout value is chosen for margin.
+ *
+ * Return: 0 - on success OR -ETIME if reset times out
+ */
+static int xcsi2rxss_reset(struct xcsi2rxss_core *core)
+{
+	u32 timeout = XCSI_TIMEOUT_VAL;
+
+	xcsi2rxss_set(core, XCSI_CCR_OFFSET, XCSI_CCR_SOFTRESET);
+
+	while (xcsi2rxss_read(core, XCSI_CSR_OFFSET) & XCSI_CSR_RIPCD) {
+		if (timeout == 0) {
+			dev_err(core->dev, "soft reset timed out!\n");
+			return -ETIME;
+		}
+
+		timeout--;
+		udelay(1);
+	}
+
+	xcsi2rxss_clr(core, XCSI_CCR_OFFSET, XCSI_CCR_SOFTRESET);
+	return 0;
+}
+
+static void xcsi2rxss_reset_event_counters(struct xcsi2rxss_state *state)
+{
+	unsigned int i;
+
+	for (i = 0; i < XCSI_NUM_EVENTS; i++)
+		state->core.events[i] = 0;
+
+	for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++)
+		state->core.vcx_events[i] = 0;
+}
+
+/* Print event counters */
+static void xcsi2rxss_log_counters(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+	unsigned int i;
+
+	for (i = 0; i < XCSI_NUM_EVENTS; i++) {
+		if (core->events[i] > 0) {
+			dev_info(core->dev, "%s events: %d\n",
+				 xcsi2rxss_events[i].name,
+				 core->events[i]);
+		}
+	}
+
+	if (core->en_vcx) {
+		for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++) {
+			if (core->vcx_events[i] > 0) {
+				dev_info(core->dev,
+					 "VC %d Frame %s err vcx events: %d\n",
+					 (i / 2) + XCSI_VCX_START,
+					 i & 1 ? "Sync" : "Level",
+					 core->vcx_events[i]);
+			}
+		}
+	}
+}
+
+static void xcsi2rxss_log_ipconfig(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+
+	dev_dbg(core->dev, "****** Xilinx MIPI CSI2 Rx SS IP Config ******\n");
+	dev_dbg(core->dev, "vcx is %s", core->en_vcx ? "enabled" : "disabled");
+	dev_dbg(core->dev, "Enable active lanes property is %s\n",
+		core->enable_active_lanes ? "present" : "absent");
+	dev_dbg(core->dev, "Max lanes = %d", core->max_num_lanes);
+	dev_dbg(core->dev, "Pixel format set as 0x%x\n", core->datatype);
+	dev_dbg(core->dev, "**********************************************\n");
+}
+
+/**
+ * xcsi2rxss_log_status - Logs the status of the CSI-2 Receiver
+ * @sd: Pointer to V4L2 subdevice structure
+ *
+ * This function prints the current status of Xilinx MIPI CSI-2
+ *
+ * Return: 0 on success
+ */
+static int xcsi2rxss_log_status(struct v4l2_subdev *sd)
+{
+	struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
+	struct xcsi2rxss_core *core = &xcsi2rxss->core;
+	u32 reg, data;
+	unsigned int i, max_vc;
+
+	mutex_lock(&xcsi2rxss->lock);
+
+	xcsi2rxss_log_ipconfig(xcsi2rxss);
+
+	xcsi2rxss_log_counters(xcsi2rxss);
+
+	dev_info(core->dev, "***** Core Status *****\n");
+	data = xcsi2rxss_read(core, XCSI_CSR_OFFSET);
+	dev_info(core->dev, "Short Packet FIFO Full = %s\n",
+		 XCSI_GET_BITSET_STR(data, XCSI_CSR_SPFIFOFULL));
+	dev_info(core->dev, "Short Packet FIFO Not Empty = %s\n",
+		 XCSI_GET_BITSET_STR(data, XCSI_CSR_SPFIFONE));
+	dev_info(core->dev, "Stream line buffer full = %s\n",
+		 XCSI_GET_BITSET_STR(data, XCSI_CSR_SLBF));
+	dev_info(core->dev, "Soft reset/Core disable in progress = %s\n",
+		 XCSI_GET_BITSET_STR(data, XCSI_CSR_RIPCD));
+
+	/* Clk & Lane Info  */
+	dev_info(core->dev, "******** Clock Lane Info *********\n");
+	data = xcsi2rxss_read(core, XCSI_CLKINFR_OFFSET);
+	dev_info(core->dev, "Clock Lane in Stop State = %s\n",
+		 XCSI_GET_BITSET_STR(data, XCSI_CLKINFR_STOP));
+
+	dev_info(core->dev, "******** Data Lane Info *********\n");
+	dev_info(core->dev, "Lane\tSoT Error\tSoT Sync Error\tStop State\n");
+	reg = XCSI_DLXINFR_OFFSET;
+	for (i = 0; i < XCSI_MAXDL_COUNT; i++) {
+		data = xcsi2rxss_read(core, reg);
+
+		dev_info(core->dev, "%d\t%s\t\t%s\t\t%s\n", i,
+			 XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_SOTERR),
+			 XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_SOTSYNCERR),
+			 XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_STOP));
+
+		reg += XCSI_NEXTREG_OFFSET;
+	}
+
+	/* Virtual Channel Image Information */
+	dev_info(core->dev, "********** Virtual Channel Info ************\n");
+	dev_info(core->dev, "VC\tLine Count\tByte Count\tData Type\n");
+	if (core->en_vcx)
+		max_vc = XCSI_MAX_VCX;
+	else
+		max_vc = XCSI_MAX_VC;
+
+	reg = XCSI_VCXINF1R_OFFSET;
+	for (i = 0; i < max_vc; i++) {
+		u32 line_count, byte_count, data_type;
+
+		/* Get line and byte count from VCXINFR1 Register */
+		data = xcsi2rxss_read(core, reg);
+		byte_count = data & XCSI_VCXINF1R_BYTECOUNT;
+		line_count = data & XCSI_VCXINF1R_LINECOUNT;
+		line_count >>= XCSI_VCXINF1R_LINECOUNT_SHIFT;
+
+		/* Get data type from VCXINFR2 Register */
+		reg += XCSI_NEXTREG_OFFSET;
+		data = xcsi2rxss_read(core, reg);
+		data_type = data & XCSI_VCXINF2R_DT;
+
+		dev_info(core->dev, "%d\t%d\t\t%d\t\t0x%x\n", i, line_count,
+			 byte_count, data_type);
+
+		/* Move to next pair of VC Info registers */
+		reg += XCSI_NEXTREG_OFFSET;
+	}
+
+	mutex_unlock(&xcsi2rxss->lock);
+
+	return 0;
+}
+
+static struct v4l2_subdev *xcsi2rxss_get_remote_subdev(struct media_pad *local)
+{
+	struct media_pad *remote;
+
+	remote = media_entity_remote_pad(local);
+	if (!remote || !is_media_entity_v4l2_subdev(remote->entity))
+		return NULL;
+
+	return media_entity_to_v4l2_subdev(remote->entity);
+}
+
+static int xcsi2rxss_start_stream(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+	struct v4l2_subdev *rsubdev;
+	int ret = 0;
+
+	xcsi2rxss_enable(core);
+
+	ret = xcsi2rxss_reset(core);
+	if (ret < 0) {
+		state->streaming = false;
+		return ret;
+	}
+
+	xcsi2rxss_intr_enable(core);
+	state->streaming = true;
+
+	rsubdev = xcsi2rxss_get_remote_subdev(&state->pads[XVIP_PAD_SINK]);
+	ret = v4l2_subdev_call(rsubdev, video, s_stream, 1);
+
+	return ret;
+}
+
+static void xcsi2rxss_stop_stream(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+	struct v4l2_subdev *rsubdev;
+
+	rsubdev = xcsi2rxss_get_remote_subdev(&state->pads[XVIP_PAD_SINK]);
+	v4l2_subdev_call(rsubdev, video, s_stream, 0);
+
+	xcsi2rxss_intr_disable(core);
+	xcsi2rxss_disable(core);
+	state->streaming = false;
+}
+
+/**
+ * xcsi2rxss_irq_handler - Interrupt handler for CSI-2
+ * @irq: IRQ number
+ * @dev_id: Pointer to device state
+ *
+ * In the interrupt handler, a list of event counters are updated for
+ * corresponding interrupts. This is useful to get status / debug.
+ *
+ * Return: IRQ_HANDLED after handling interrupts
+ *         IRQ_NONE is no interrupts
+ */
+static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
+{
+	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
+	struct xcsi2rxss_core *core = &state->core;
+	u32 status;
+
+	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) & XCSI_ISR_ALLINTR_MASK;
+	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
+
+	if (!status)
+		return IRQ_NONE;
+
+	/* Received a short packet */
+	if (status & XCSI_ISR_SPFIFONE) {
+		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
+				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
+	}
+
+	/* Short packet FIFO overflow */
+	if (status & XCSI_ISR_SPFIFOF)
+		dev_dbg_ratelimited(core->dev, "Short packet FIFO overflowed\n");
+
+	/*
+	 * Stream line buffer full
+	 * This means there is a backpressure from downstream IP
+	 */
+	if (status & XCSI_ISR_SLBF) {
+		dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
+		xcsi2rxss_stop_stream(state);
+		if (core->rst_gpio) {
+			gpiod_set_value(core->rst_gpio, 1);
+			/* minimum 40 dphy_clk_200M cycles */
+			ndelay(250);
+			gpiod_set_value(core->rst_gpio, 0);
+		}
+	}
+
+	/* Increment event counters */
+	if (status & XCSI_ISR_ALLINTR_MASK) {
+		unsigned int i;
+
+		for (i = 0; i < XCSI_NUM_EVENTS; i++) {
+			if (!(status & xcsi2rxss_events[i].mask))
+				continue;
+			core->events[i]++;
+			dev_dbg_ratelimited(core->dev, "%s: %d\n",
+					    xcsi2rxss_events[i].name,
+					    core->events[i]);
+		}
+
+		if (status & XCSI_ISR_VCXFE && core->en_vcx) {
+			u32 vcxstatus;
+
+			vcxstatus = xcsi2rxss_read(core, XCSI_VCXR_OFFSET);
+			vcxstatus &= XCSI_VCXR_VCERR;
+			for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++) {
+				if (!(vcxstatus & (1 << i)))
+					continue;
+				core->vcx_events[i]++;
+			}
+			xcsi2rxss_write(core, XCSI_VCXR_OFFSET, vcxstatus);
+		}
+	}
+
+	xcsi2rxss_write(core, XCSI_ISR_OFFSET, status);
+	return IRQ_HANDLED;
+}
+
+/**
+ * xcsi2rxss_s_stream - It is used to start/stop the streaming.
+ * @sd: V4L2 Sub device
+ * @enable: Flag (True / False)
+ *
+ * This function controls the start or stop of streaming for the
+ * Xilinx MIPI CSI-2 Rx Subsystem.
+ *
+ * Return: 0 on success, errors otherwise
+ */
+static int xcsi2rxss_s_stream(struct v4l2_subdev *sd, int enable)
+{
+	struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
+	int ret = 0;
+
+	mutex_lock(&xcsi2rxss->lock);
+
+	if (enable) {
+		if (!xcsi2rxss->streaming) {
+			/* reset the event counters */
+			xcsi2rxss_reset_event_counters(xcsi2rxss);
+			ret = xcsi2rxss_start_stream(xcsi2rxss);
+		}
+	} else {
+		if (xcsi2rxss->streaming) {
+			struct gpio_desc *rst = xcsi2rxss->core.rst_gpio;
+
+			xcsi2rxss_stop_stream(xcsi2rxss);
+			if (rst) {
+				gpiod_set_value_cansleep(rst, 1);
+				usleep_range(1, 2);
+				gpiod_set_value_cansleep(rst, 0);
+			}
+		}
+	}
+
+	mutex_unlock(&xcsi2rxss->lock);
+	return ret;
+}
+
+static struct v4l2_mbus_framefmt *
+__xcsi2rxss_get_pad_format(struct xcsi2rxss_state *xcsi2rxss,
+			   struct v4l2_subdev_pad_config *cfg,
+			   unsigned int pad, u32 which)
+{
+	switch (which) {
+	case V4L2_SUBDEV_FORMAT_TRY:
+		return v4l2_subdev_get_try_format(&xcsi2rxss->subdev, cfg, pad);
+	case V4L2_SUBDEV_FORMAT_ACTIVE:
+		return &xcsi2rxss->format;
+	default:
+		return NULL;
+	}
+}
+
+/**
+ * xcsi2rxss_get_format - Get the pad format
+ * @sd: Pointer to V4L2 Sub device structure
+ * @cfg: Pointer to sub device pad information structure
+ * @fmt: Pointer to pad level media bus format
+ *
+ * This function is used to get the pad format information.
+ *
+ * Return: 0 on success
+ */
+static int xcsi2rxss_get_format(struct v4l2_subdev *sd,
+				struct v4l2_subdev_pad_config *cfg,
+				struct v4l2_subdev_format *fmt)
+{
+	struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
+
+	mutex_lock(&xcsi2rxss->lock);
+	fmt->format = *__xcsi2rxss_get_pad_format(xcsi2rxss, cfg, fmt->pad,
+						  fmt->which);
+	mutex_unlock(&xcsi2rxss->lock);
+
+	return 0;
+}
+
+/**
+ * xcsi2rxss_set_format - This is used to set the pad format
+ * @sd: Pointer to V4L2 Sub device structure
+ * @cfg: Pointer to sub device pad information structure
+ * @fmt: Pointer to pad level media bus format
+ *
+ * This function is used to set the pad format. Since the pad format is fixed
+ * in hardware, it can't be modified on run time. So when a format set is
+ * requested by application, all parameters except the format type is saved
+ * for the pad and the original pad format is sent back to the application.
+ *
+ * Return: 0 on success
+ */
+static int xcsi2rxss_set_format(struct v4l2_subdev *sd,
+				struct v4l2_subdev_pad_config *cfg,
+				struct v4l2_subdev_format *fmt)
+{
+	struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
+	struct xcsi2rxss_core *core = &xcsi2rxss->core;
+	struct v4l2_mbus_framefmt *__format;
+
+	/* only sink pad format can be updated */
+	mutex_lock(&xcsi2rxss->lock);
+
+	/*
+	 * Only the format->code parameter matters for CSI as the
+	 * CSI format cannot be changed at runtime.
+	 * Ensure that format to set is copied to over to CSI pad format
+	 */
+	__format = __xcsi2rxss_get_pad_format(xcsi2rxss, cfg,
+					      fmt->pad, fmt->which);
+
+	if (fmt->pad == XVIP_PAD_SOURCE) {
+		fmt->format = *__format;
+		mutex_unlock(&xcsi2rxss->lock);
+		return 0;
+	}
+
+	/*
+	 * RAW8 is supported in all datatypes. So if requested media bus format
+	 * is of RAW8 type, then allow to be set. In case core is configured to
+	 * other RAW, YUV422 8/10 or RGB888, set appropriate media bus format.
+	 */
+	if (!((fmt->format.code == MEDIA_BUS_FMT_SBGGR8_1X8 ||
+	       fmt->format.code == MEDIA_BUS_FMT_SGBRG8_1X8 ||
+	       fmt->format.code == MEDIA_BUS_FMT_SGRBG8_1X8 ||
+	       fmt->format.code == MEDIA_BUS_FMT_SRGGB8_1X8) ||
+	      (core->datatype == XCSI_DT_RAW10 &&
+	       (fmt->format.code == MEDIA_BUS_FMT_SBGGR10_1X10 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGBRG10_1X10 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGRBG10_1X10 ||
+		fmt->format.code == MEDIA_BUS_FMT_SRGGB10_1X10)) ||
+	      (core->datatype == XCSI_DT_RAW12 &&
+	       (fmt->format.code == MEDIA_BUS_FMT_SBGGR12_1X12 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGBRG12_1X12 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGRBG12_1X12 ||
+		fmt->format.code == MEDIA_BUS_FMT_SRGGB12_1X12)) ||
+	      (core->datatype == XCSI_DT_RAW14 &&
+	       (fmt->format.code == MEDIA_BUS_FMT_SBGGR14_1X14 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGBRG14_1X14 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGRBG14_1X14 ||
+		fmt->format.code == MEDIA_BUS_FMT_SRGGB14_1X14)) ||
+	      (core->datatype == XCSI_DT_RAW16 &&
+	       (fmt->format.code == MEDIA_BUS_FMT_SBGGR16_1X16 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGBRG16_1X16 ||
+		fmt->format.code == MEDIA_BUS_FMT_SGRBG16_1X16 ||
+		fmt->format.code == MEDIA_BUS_FMT_SRGGB16_1X16)) ||
+	      (core->datatype == XCSI_DT_YUV4228B &&
+	       fmt->format.code == MEDIA_BUS_FMT_UYVY8_1X16) ||
+	      (core->datatype == XCSI_DT_YUV42210B &&
+	       fmt->format.code == MEDIA_BUS_FMT_UYVY10_1X20) ||
+	      (core->datatype == XCSI_DT_RGB888 &&
+	       fmt->format.code == MEDIA_BUS_FMT_RBG888_1X24))) {
+		/* Restore the original pad format code */
+		dev_dbg(core->dev, "Unsupported media bus format");
+		fmt->format.code = __format->code;
+	}
+
+	*__format = fmt->format;
+	mutex_unlock(&xcsi2rxss->lock);
+
+	return 0;
+}
+
+/*
+ * xcsi2rxss_enum_mbus_code - Handle pixel format enumeration
+ * @sd : pointer to v4l2 subdev structure
+ * @cfg: V4L2 subdev pad configuration
+ * @code : pointer to v4l2_subdev_mbus_code_enum structure
+ *
+ * Return: -EINVAL or zero on success
+ */
+int xcsi2rxss_enum_mbus_code(struct v4l2_subdev *sd,
+			     struct v4l2_subdev_pad_config *cfg,
+			     struct v4l2_subdev_mbus_code_enum *code)
+{
+	struct xcsi2rxss_state *state = to_xcsi2rxssstate(sd);
+
+	if (code->index >= state->mbus_fmts_count)
+		return -EINVAL;
+
+	code->code = state->mbus_fmts[code->index];
+
+	return 0;
+}
+
+/**
+ * xcsi2rxss_open - Called on v4l2_open()
+ * @sd: Pointer to V4L2 sub device structure
+ * @fh: Pointer to V4L2 File handle
+ *
+ * This function is called on v4l2_open(). It sets the default format
+ * for both pads.
+ *
+ * Return: 0 on success
+ */
+static int xcsi2rxss_open(struct v4l2_subdev *sd,
+			  struct v4l2_subdev_fh *fh)
+{
+	struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
+	struct v4l2_mbus_framefmt *format;
+	unsigned int i;
+
+	for (i = 0; i < XCSI_MEDIA_PADS; i++) {
+		format = v4l2_subdev_get_try_format(sd, fh->pad, i);
+		*format = xcsi2rxss->default_format;
+	}
+
+	return 0;
+}
+
+/* -----------------------------------------------------------------------------
+ * Media Operations
+ */
+
+static const struct media_entity_operations xcsi2rxss_media_ops = {
+	.link_validate = v4l2_subdev_link_validate
+};
+
+static const struct v4l2_subdev_core_ops xcsi2rxss_core_ops = {
+	.log_status = xcsi2rxss_log_status,
+};
+
+static const struct v4l2_subdev_video_ops xcsi2rxss_video_ops = {
+	.s_stream = xcsi2rxss_s_stream
+};
+
+static const struct v4l2_subdev_pad_ops xcsi2rxss_pad_ops = {
+	.get_fmt = xcsi2rxss_get_format,
+	.set_fmt = xcsi2rxss_set_format,
+	.enum_mbus_code = xcsi2rxss_enum_mbus_code,
+	.link_validate = v4l2_subdev_link_validate_default,
+};
+
+static const struct v4l2_subdev_ops xcsi2rxss_ops = {
+	.core = &xcsi2rxss_core_ops,
+	.video = &xcsi2rxss_video_ops,
+	.pad = &xcsi2rxss_pad_ops
+};
+
+static const struct v4l2_subdev_internal_ops xcsi2rxss_internal_ops = {
+	.open = xcsi2rxss_open,
+};
+
+static void xcsi2rxss_set_default_format(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+
+	memset(&state->default_format, 0, sizeof(state->default_format));
+
+	switch (core->datatype) {
+	case XCSI_DT_YUV4228B:
+		state->default_format.code = MEDIA_BUS_FMT_UYVY8_1X16;
+		break;
+	case XCSI_DT_RGB888:
+		state->default_format.code = MEDIA_BUS_FMT_RBG888_1X24;
+		break;
+	case XCSI_DT_YUV42210B:
+		state->default_format.code = MEDIA_BUS_FMT_UYVY10_1X20;
+		break;
+	case XCSI_DT_RAW10:
+		state->default_format.code = MEDIA_BUS_FMT_SRGGB10_1X10;
+		break;
+	case XCSI_DT_RAW12:
+		state->default_format.code = MEDIA_BUS_FMT_SRGGB12_1X12;
+		break;
+	case XCSI_DT_RAW14:
+		state->default_format.code = MEDIA_BUS_FMT_SRGGB14_1X14;
+		break;
+	case XCSI_DT_RAW16:
+		state->default_format.code = MEDIA_BUS_FMT_SRGGB16_1X16;
+		break;
+	case XCSI_DT_RAW8:
+	case XCSI_DT_RGB444:
+	case XCSI_DT_RGB555:
+	case XCSI_DT_RGB565:
+	case XCSI_DT_RGB666:
+		state->default_format.code = MEDIA_BUS_FMT_SRGGB8_1X8;
+		break;
+	}
+
+	state->default_format.field = V4L2_FIELD_NONE;
+	state->default_format.colorspace = V4L2_COLORSPACE_SRGB;
+	state->default_format.width = XCSI_DEFAULT_WIDTH;
+	state->default_format.height = XCSI_DEFAULT_HEIGHT;
+
+	dev_dbg(core->dev, "default mediabus format = 0x%x",
+		state->default_format.code);
+}
+
+static void xcsi2rxss_init_mbus_fmts(struct xcsi2rxss_state *state)
+{
+	struct xcsi2rxss_core *core = &state->core;
+
+	XADD_MBUS(state, MEDIA_BUS_FMT_SRGGB8_1X8);
+	XADD_MBUS(state, MEDIA_BUS_FMT_SBGGR8_1X8);
+	XADD_MBUS(state, MEDIA_BUS_FMT_SGRBG8_1X8);
+	XADD_MBUS(state, MEDIA_BUS_FMT_SGBRG8_1X8);
+
+	switch (core->datatype) {
+	case XCSI_DT_RAW10:
+		XADD_MBUS(state, MEDIA_BUS_FMT_SRGGB10_1X10);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SBGGR10_1X10);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGRBG10_1X10);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGBRG10_1X10);
+		break;
+	case XCSI_DT_RAW12:
+		XADD_MBUS(state, MEDIA_BUS_FMT_SRGGB12_1X12);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SBGGR12_1X12);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGRBG12_1X12);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGBRG12_1X12);
+		break;
+	case XCSI_DT_RAW14:
+		XADD_MBUS(state, MEDIA_BUS_FMT_SRGGB14_1X14);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SBGGR14_1X14);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGRBG14_1X14);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGBRG14_1X14);
+		break;
+	case XCSI_DT_RAW16:
+		XADD_MBUS(state, MEDIA_BUS_FMT_SRGGB16_1X16);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SBGGR16_1X16);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGRBG16_1X16);
+		XADD_MBUS(state, MEDIA_BUS_FMT_SGBRG16_1X16);
+		break;
+	case XCSI_DT_YUV4228B:
+		XADD_MBUS(state, MEDIA_BUS_FMT_UYVY8_1X16);
+		break;
+	case XCSI_DT_RGB888:
+		XADD_MBUS(state, MEDIA_BUS_FMT_RBG888_1X24);
+		break;
+	case XCSI_DT_YUV42210B:
+		XADD_MBUS(state, MEDIA_BUS_FMT_UYVY10_1X20);
+		break;
+	default:
+		dev_err(core->dev, "Invalid data type!\n");
+	}
+}
+
+static int xcsi2rxss_parse_of(struct xcsi2rxss_state *xcsi2rxss)
+{
+	struct xcsi2rxss_core *core = &xcsi2rxss->core;
+	struct device_node *node = xcsi2rxss->core.dev->of_node;
+	unsigned int nports, irq;
+	bool en_csi_v20, vfb;
+	int ret;
+
+	en_csi_v20 = of_property_read_bool(node, "xlnx,en-csi-v2-0");
+	if (en_csi_v20)
+		core->en_vcx = of_property_read_bool(node, "xlnx,en-vcx");
+
+	core->enable_active_lanes =
+		of_property_read_bool(node, "xlnx,en-active-lanes");
+
+	ret = of_property_read_u32(node, "xlnx,csi-pxl-format",
+				   &core->datatype);
+	if (ret < 0) {
+		dev_err(core->dev, "missing xlnx,csi-pxl-format property\n");
+		return ret;
+	}
+
+	switch (core->datatype) {
+	case XCSI_DT_YUV4228B:
+	case XCSI_DT_RGB444:
+	case XCSI_DT_RGB555:
+	case XCSI_DT_RGB565:
+	case XCSI_DT_RGB666:
+	case XCSI_DT_RGB888:
+	case XCSI_DT_RAW6:
+	case XCSI_DT_RAW7:
+	case XCSI_DT_RAW8:
+	case XCSI_DT_RAW10:
+	case XCSI_DT_RAW12:
+	case XCSI_DT_RAW14:
+		break;
+	case XCSI_DT_YUV42210B:
+	case XCSI_DT_RAW16:
+	case XCSI_DT_RAW20:
+		if (!en_csi_v20) {
+			ret = -EINVAL;
+			dev_dbg(core->dev, "enable csi v2 for this pixel format");
+		}
+		break;
+	default:
+		ret = -EINVAL;
+	}
+	if (ret < 0) {
+		dev_err(core->dev, "invalid csi-pxl-format property!\n");
+		return ret;
+	}
+
+	vfb = of_property_read_bool(node, "xlnx,vfb");
+	if (!vfb) {
+		dev_err(core->dev, "failed as VFB is disabled!\n");
+		return -EINVAL;
+	}
+
+	for (nports = 0; nports < XCSI_MEDIA_PADS; nports++) {
+		struct fwnode_handle *ep;
+		struct v4l2_fwnode_endpoint vep = {
+			.bus_type = V4L2_MBUS_CSI2_DPHY
+		};
+
+		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(core->dev),
+						     nports, 0,
+						     FWNODE_GRAPH_ENDPOINT_NEXT);
+		if (!ep)
+			break;
+		/*
+		 * since first port is sink port and it contains
+		 * all info about data-lanes and cfa-pattern,
+		 * don't parse second port but only check if exists
+		 */
+		if (nports == XVIP_PAD_SOURCE) {
+			dev_dbg(core->dev, "no need to parse source port");
+			fwnode_handle_put(ep);
+			continue;
+		}
+
+		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
+		if (ret) {
+			dev_err(core->dev, "error parsing sink port");
+			fwnode_handle_put(ep);
+			return ret;
+		}
+
+		dev_dbg(core->dev, "port %d bus type = %d\n", nports,
+			vep.bus_type);
+
+		if (vep.bus_type == V4L2_MBUS_CSI2_DPHY) {
+			dev_dbg(core->dev, "base.port = %d base.id = %d\n",
+				vep.base.port, vep.base.id);
+
+			dev_dbg(core->dev, "mipi number lanes = %d\n",
+				vep.bus.mipi_csi2.num_data_lanes);
+
+			core->max_num_lanes =
+				vep.bus.mipi_csi2.num_data_lanes;
+		}
+		fwnode_handle_put(ep);
+	}
+
+	if (nports != XCSI_MEDIA_PADS) {
+		dev_err(core->dev, "invalid number of ports %u\n", nports);
+		return -EINVAL;
+	}
+
+	/* Register interrupt handler */
+	irq = irq_of_parse_and_map(node, 0);
+	ret = devm_request_irq(core->dev, irq, xcsi2rxss_irq_handler,
+			       IRQF_SHARED, "xilinx-csi2rxss", xcsi2rxss);
+	if (ret) {
+		dev_err(core->dev, "Err = %d Interrupt handler reg failed!\n",
+			ret);
+		return ret;
+	}
+
+	xcsi2rxss_log_ipconfig(xcsi2rxss);
+
+	return 0;
+}
+
+static int xcsi2rxss_probe(struct platform_device *pdev)
+{
+	struct v4l2_subdev *subdev;
+	struct xcsi2rxss_state *xcsi2rxss;
+	struct xcsi2rxss_core *core;
+	struct resource *res;
+	int num_clks = ARRAY_SIZE(xcsi2rxss_clks);
+	int ret;
+
+	xcsi2rxss = devm_kzalloc(&pdev->dev, sizeof(*xcsi2rxss), GFP_KERNEL);
+	if (!xcsi2rxss)
+		return -ENOMEM;
+
+	core = &xcsi2rxss->core;
+	core->dev = &pdev->dev;
+
+	core->clks = devm_kmemdup(core->dev, xcsi2rxss_clks,
+				  sizeof(xcsi2rxss_clks), GFP_KERNEL);
+	if (!core->clks)
+		return -ENOMEM;
+
+	/* Reset GPIO */
+	core->rst_gpio = devm_gpiod_get_optional(core->dev, "reset",
+						 GPIOD_OUT_HIGH);
+	if (IS_ERR(core->rst_gpio)) {
+		if (PTR_ERR(core->rst_gpio) != -EPROBE_DEFER)
+			dev_err(core->dev, "Video Reset GPIO not setup in DT");
+		return PTR_ERR(core->rst_gpio);
+	}
+
+	mutex_init(&xcsi2rxss->lock);
+
+	ret = xcsi2rxss_parse_of(xcsi2rxss);
+	if (ret < 0)
+		return ret;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	core->iomem = devm_ioremap_resource(core->dev, res);
+	if (IS_ERR(core->iomem))
+		return PTR_ERR(core->iomem);
+
+	ret = clk_bulk_get(core->dev, num_clks, core->clks);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_prepare_enable(num_clks, core->clks);
+	if (ret)
+		goto err_clk_put;
+
+	if (core->rst_gpio) {
+		gpiod_set_value_cansleep(core->rst_gpio, 1);
+		/* minimum of 40 dphy_clk_200M cycles */
+		usleep_range(1, 2);
+		gpiod_set_value_cansleep(core->rst_gpio, 0);
+	}
+
+	xcsi2rxss_reset(core);
+
+	/* Initialize V4L2 subdevice and media entity */
+	xcsi2rxss->pads[XVIP_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
+	xcsi2rxss->pads[XVIP_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
+
+	/* Initialize the default format */
+	xcsi2rxss_set_default_format(xcsi2rxss);
+	xcsi2rxss->format = xcsi2rxss->default_format;
+
+	/* Initialize the mbus formats supported */
+	xcsi2rxss_init_mbus_fmts(xcsi2rxss);
+
+	/* Initialize V4L2 subdevice and media entity */
+	subdev = &xcsi2rxss->subdev;
+	v4l2_subdev_init(subdev, &xcsi2rxss_ops);
+	subdev->dev = &pdev->dev;
+	subdev->internal_ops = &xcsi2rxss_internal_ops;
+	strscpy(subdev->name, dev_name(&pdev->dev), sizeof(subdev->name));
+	subdev->flags |= V4L2_SUBDEV_FL_HAS_EVENTS | V4L2_SUBDEV_FL_HAS_DEVNODE;
+	subdev->entity.ops = &xcsi2rxss_media_ops;
+	v4l2_set_subdevdata(subdev, xcsi2rxss);
+
+	ret = media_entity_pads_init(&subdev->entity, XCSI_MEDIA_PADS,
+				     xcsi2rxss->pads);
+	if (ret < 0)
+		goto error;
+
+	platform_set_drvdata(pdev, xcsi2rxss);
+
+	ret = v4l2_async_register_subdev(subdev);
+	if (ret < 0) {
+		dev_err(core->dev, "failed to register subdev\n");
+		goto error;
+	}
+
+	dev_info(core->dev, "Xilinx CSI2 Rx Subsystem device found!\n");
+
+	return 0;
+error:
+	media_entity_cleanup(&subdev->entity);
+	mutex_destroy(&xcsi2rxss->lock);
+	clk_bulk_disable_unprepare(num_clks, core->clks);
+err_clk_put:
+	clk_bulk_put(num_clks, core->clks);
+	return ret;
+}
+
+static int xcsi2rxss_remove(struct platform_device *pdev)
+{
+	struct xcsi2rxss_state *xcsi2rxss = platform_get_drvdata(pdev);
+	struct xcsi2rxss_core *core = &xcsi2rxss->core;
+	struct v4l2_subdev *subdev = &xcsi2rxss->subdev;
+	int num_clks = ARRAY_SIZE(xcsi2rxss_clks);
+
+	v4l2_async_unregister_subdev(subdev);
+	media_entity_cleanup(&subdev->entity);
+	mutex_destroy(&xcsi2rxss->lock);
+	clk_bulk_disable_unprepare(num_clks, core->clks);
+	clk_bulk_put(num_clks, core->clks);
+
+	return 0;
+}
+
+static const struct of_device_id xcsi2rxss_of_id_table[] = {
+	{ .compatible = "xlnx,mipi-csi2-rx-subsystem-5.0", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, xcsi2rxss_of_id_table);
+
+static struct platform_driver xcsi2rxss_driver = {
+	.driver = {
+		.name		= "xilinx-csi2rxss",
+		.of_match_table	= xcsi2rxss_of_id_table,
+	},
+	.probe			= xcsi2rxss_probe,
+	.remove			= xcsi2rxss_remove,
+};
+
+module_platform_driver(xcsi2rxss_driver);
+
+MODULE_AUTHOR("Vishal Sagar <vsagar@xilinx.com>");
+MODULE_DESCRIPTION("Xilinx MIPI CSI2 Rx Subsystem Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
