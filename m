Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE20F2005C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R35seYTggFNjQGYguKEuGpBvKhXMsfUd2UfSwrzO0wk=; b=YYdPQv7OTLnYcF
	tJGos6LoFuHSYDCCKqjtxCIRtOrsvABWkGJHBpODJP48huG371+3ncCoY5V3EZY72zEehiE6/O8Ae
	3Y+8p8ebXU/eafUpJdq13HiSfy2r4kPiH8v7rxiAvfrY2PP6+q8DcN+cWBKNhygHvbV1F3rHFc+PD
	y0cDRke7HGyqlupdH6ZxFC7yZTaR2Brc0Ad9zxPcFubzm3I0BAYQu7yS+H3eB2YZLHCSUpBluFQ1Z
	BfngJXbuat5dGwpjn/aTxbqQmHMgprOSJRdkwitNeZCZNfn7tPRsEd9mPyKBlGyF0l7b+aJNDBdyl
	H2qFUfJ56ATQVjbZyhNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDgQ-0005MQ-RZ; Fri, 19 Jun 2020 09:51:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDfk-00056o-3n; Fri, 19 Jun 2020 09:51:00 +0000
X-UUID: 505ecbfd68ed4db4835c4a837dedc3f6-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xmg1w3ypX4AvT1+i24MnshAnpwzBsGKjigr9tp4Uf7E=; 
 b=lxIKatnx5Z+RsisdwUs86yNdT7R3ChAuisRRAcOSmvnPyuuGdgnr4UO3QWqb8HbOjDkAlGmqqzypQ7vQHixlMEMa7PE1R74yvwld494sLB5Acbs2noDI8lXgEm0jAx5llt+CrQ8PGJaXs6oMuPKO9y849qgBwTkdJ+Cn604xiK0=;
X-UUID: 505ecbfd68ed4db4835c4a837dedc3f6-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1307300018; Fri, 19 Jun 2020 01:51:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 02:42:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 17:42:03 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 17:42:02 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
Date: Fri, 19 Jun 2020 17:42:00 +0800
Message-ID: <1592559720-8482-3-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592559720-8482-1-git-send-email-neal.liu@mediatek.com>
References: <1592559720-8482-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E0B163962F1135967F8C685B03557F40BC5F0C13593F6F8072F8DD8B2E6A36CD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_025056_186851_6F4A0387 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT6873 bus frabric provides TrustZone security support and data
protection to prevent slaves from being accessed by unexpected
masters.
The security violations are logged and sent to the processor for
further analysis or countermeasures.

Any occurrence of security violation would raise an interrupt, and
it will be handled by devapc-mt6873 driver. The violation
information is printed in order to find the murderer.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 drivers/soc/mediatek/Kconfig                      |    6 +
 drivers/soc/mediatek/Makefile                     |    1 +
 drivers/soc/mediatek/devapc/Kconfig               |   25 +
 drivers/soc/mediatek/devapc/Makefile              |   13 +
 drivers/soc/mediatek/devapc/devapc-mt6873.c       | 1652 +++++++++++++++++++++
 drivers/soc/mediatek/devapc/devapc-mt6873.h       |  111 ++
 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c |  756 ++++++++++
 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h |  182 +++
 8 files changed, 2746 insertions(+)
 create mode 100644 drivers/soc/mediatek/devapc/Kconfig
 create mode 100644 drivers/soc/mediatek/devapc/Makefile
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.h
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h

diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
index 59a56cd..2c9ad1f 100644
--- a/drivers/soc/mediatek/Kconfig
+++ b/drivers/soc/mediatek/Kconfig
@@ -51,4 +51,10 @@ config MTK_MMSYS
 	  Say yes here to add support for the MediaTek Multimedia
 	  Subsystem (MMSYS).
 
+menu "Security"
+
+source "drivers/soc/mediatek/devapc/Kconfig"
+
+endmenu # Security
+
 endmenu
diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
index 01f9f87..d6717a81 100644
--- a/drivers/soc/mediatek/Makefile
+++ b/drivers/soc/mediatek/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
+obj-$(CONFIG_MTK_DEVAPC) += devapc/
 obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
 obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
 obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
diff --git a/drivers/soc/mediatek/devapc/Kconfig b/drivers/soc/mediatek/devapc/Kconfig
new file mode 100644
index 0000000..9428360
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/Kconfig
@@ -0,0 +1,25 @@
+config MTK_DEVAPC
+	tristate "Mediatek Device APC Support"
+	help
+	  Device APC is a kernel driver controlling internal device security.
+	  If someone tries to access a device, which is not allowed by the
+	  device, it cannot access the device and will get a violation
+	  interrupt. Device APC prevents malicious access to internal devices.
+
+config DEVAPC_ARCH_MULTI
+	tristate "Mediatek Device APC driver architecture multi"
+	help
+	  Say yes here to enable support Mediatek
+	  Device APC driver which is based on Infra
+	  architecture.
+	  This architecture supports multiple Infra AO.
+
+config DEVAPC_MT6873
+	tristate "Mediatek MT6873 Device APC driver"
+	select MTK_DEVAPC
+	select DEVAPC_ARCH_MULTI
+	help
+	  Say yes here to enable support Mediatek MT6873
+	  Device APC driver.
+	  This driver is combined with DEVAPC_ARCH_MULTI for
+	  common handle flow.
diff --git a/drivers/soc/mediatek/devapc/Makefile b/drivers/soc/mediatek/devapc/Makefile
new file mode 100644
index 0000000..bd471f2
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/Makefile
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+
+ifeq ($(CONFIG_MTK_GCOV_KERNEL),y)
+GCOV_PROFILE := y
+endif
+
+obj-$(CONFIG_MTK_DEVAPC) := devapc.o
+
+# Core
+devapc-$(CONFIG_DEVAPC_ARCH_MULTI) += devapc-mtk-multi-ao.o
+
+# Platform
+devapc-$(CONFIG_DEVAPC_MT6873) += devapc-mt6873.o
diff --git a/drivers/soc/mediatek/devapc/devapc-mt6873.c b/drivers/soc/mediatek/devapc/devapc-mt6873.c
new file mode 100644
index 0000000..75a2140
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/devapc-mt6873.c
@@ -0,0 +1,1652 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#include <linux/bug.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <asm-generic/io.h>
+
+#include "devapc-mt6873.h"
+#include "devapc-mtk-multi-ao.h"
+
+static struct mtk_device_info mt6873_devices_infra[] = {
+	/* sys_idx, ctrl_idx, vio_idx */
+	/* 0 */
+	{0, 0, 0},
+	{0, 1, 1},
+	{0, 2, 2},
+	{0, 3, 3},
+	{0, 4, 4},
+	{0, 5, 5},
+	{0, 6, 6},
+	{0, 7, 7},
+	{0, 8, 8},
+	{0, 9, 9},
+
+	/* 10 */
+	{0, 10, 10},
+	{0, 11, 11},
+	{0, 12, 12},
+	{0, 13, 13},
+	{0, 14, 14},
+	{0, 15, 15},
+	{0, 16, 16},
+	{0, 17, 17},
+	{0, 18, 18},
+	{0, 19, 19},
+
+	/* 20 */
+	{0, 20, 20},
+	{0, 21, 21},
+	{0, 22, 352},
+	{1, 0, 22},
+	{1, 1, 23},
+	{1, 2, 24},
+	{1, 3, 25},
+	{1, 4, 26},
+	{1, 5, 27},
+	{1, 6, 28},
+
+	/* 30 */
+	{1, 7, 29},
+	{1, 8, 30},
+	{1, 9, 31},
+	{1, 10, 32},
+	{1, 11, 33},
+	{1, 12, 34},
+	{1, 13, 35},
+	{1, 14, 36},
+	{1, 15, 37},
+	{1, 16, 38},
+
+	/* 40 */
+	{1, 17, 39},
+	{1, 18, 40},
+	{1, 19, 41},
+	{1, 20, 42},
+	{1, 21, 43},
+	{1, 22, 44},
+	{1, 23, 45},
+	{1, 24, 46},
+	{1, 25, 47},
+	{1, 26, 48},
+
+	/* 50 */
+	{1, 27, 49},
+	{1, 28, 50},
+	{1, 29, 51},
+	{1, 30, 52},
+	{1, 31, 53},
+	{1, 32, 54},
+	{1, 33, 55},
+	{1, 34, 56},
+	{1, 35, 57},
+	{1, 36, 58},
+
+	/* 60 */
+	{1, 37, 59},
+	{1, 38, 60},
+	{1, 39, 61},
+	{1, 40, 62},
+	{1, 41, 63},
+	{1, 42, 64},
+	{1, 43, 65},
+	{1, 44, 66},
+	{1, 45, 67},
+	{1, 46, 68},
+
+	/* 70 */
+	{1, 47, 69},
+	{1, 48, 70},
+	{1, 49, 71},
+	{1, 50, 72},
+	{1, 51, 73},
+	{1, 52, 74},
+	{1, 53, 75},
+	{1, 54, 76},
+	{1, 55, 77},
+	{1, 56, 78},
+
+	/* 80 */
+	{1, 57, 79},
+	{1, 58, 80},
+	{1, 59, 81},
+	{1, 60, 82},
+	{1, 61, 83},
+	{1, 62, 84},
+	{1, 63, 85},
+	{1, 64, 86},
+	{1, 65, 87},
+	{1, 66, 88},
+
+	/* 90 */
+	{1, 67, 89},
+	{1, 68, 90},
+	{1, 69, 91},
+	{1, 70, 92},
+	{1, 71, 93},
+	{1, 72, 94},
+	{1, 73, 95},
+	{1, 74, 96},
+	{1, 75, 97},
+	{1, 76, 98},
+
+	/* 100 */
+	{1, 77, 99},
+	{1, 78, 100},
+	{1, 79, 101},
+	{1, 80, 102},
+	{1, 81, 103},
+	{1, 82, 104},
+	{1, 83, 105},
+	{1, 84, 106},
+	{1, 85, 107},
+	{1, 86, 108},
+
+	/* 110 */
+	{1, 87, 109},
+	{1, 88, 110},
+	{1, 89, 111},
+	{1, 90, 112},
+	{1, 91, 113},
+	{1, 92, 114},
+	{1, 93, 115},
+	{1, 94, 116},
+	{1, 95, 117},
+	{1, 96, 118},
+
+	/* 120 */
+	{1, 97, 119},
+	{1, 98, 120},
+	{1, 99, 121},
+	{1, 100, 122},
+	{1, 101, 123},
+	{1, 102, 124},
+	{1, 103, 125},
+	{1, 104, 126},
+	{1, 105, 127},
+	{1, 106, 128},
+
+	/* 130 */
+	{1, 107, 129},
+	{1, 108, 130},
+	{1, 109, 131},
+	{1, 110, 132},
+	{1, 111, 133},
+	{1, 112, 134},
+	{1, 113, 135},
+	{1, 114, 136},
+	{1, 115, 137},
+	{1, 116, 138},
+
+	/* 140 */
+	{1, 117, 139},
+	{1, 118, 140},
+	{1, 119, 141},
+	{1, 120, 142},
+	{1, 121, 143},
+	{1, 122, 144},
+	{1, 123, 145},
+	{1, 124, 146},
+	{1, 125, 147},
+	{1, 126, 148},
+
+	/* 150 */
+	{1, 127, 149},
+	{1, 128, 150},
+	{1, 129, 151},
+	{1, 130, 152},
+	{1, 131, 153},
+	{1, 132, 154},
+	{1, 133, 155},
+	{1, 134, 156},
+	{1, 135, 157},
+	{1, 136, 158},
+
+	/* 160 */
+	{1, 137, 159},
+	{1, 138, 160},
+	{1, 139, 161},
+	{1, 140, 162},
+	{1, 141, 163},
+	{1, 142, 164},
+	{1, 143, 165},
+	{1, 144, 166},
+	{1, 145, 167},
+	{1, 146, 168},
+
+	/* 170 */
+	{1, 147, 169},
+	{1, 148, 170},
+	{1, 149, 171},
+	{1, 150, 172},
+	{1, 151, 173},
+	{1, 152, 174},
+	{1, 153, 175},
+	{1, 154, 176},
+	{1, 155, 177},
+	{1, 156, 178},
+
+	/* 180 */
+	{1, 157, 179},
+	{1, 158, 180},
+	{1, 159, 181},
+	{1, 160, 182},
+	{1, 161, 183},
+	{1, 162, 184},
+	{1, 163, 185},
+	{1, 164, 186},
+	{1, 165, 187},
+	{1, 166, 188},
+
+	/* 190 */
+	{1, 167, 189},
+	{1, 168, 190},
+	{1, 169, 191},
+	{1, 170, 192},
+	{1, 171, 193},
+	{1, 172, 194},
+	{1, 173, 195},
+	{1, 174, 196},
+	{1, 175, 197},
+	{1, 176, 198},
+
+	/* 200 */
+	{1, 177, 199},
+	{1, 178, 200},
+	{1, 179, 201},
+	{1, 180, 202},
+	{1, 181, 203},
+	{1, 182, 204},
+	{1, 183, 205},
+	{1, 184, 206},
+	{1, 185, 207},
+	{1, 186, 208},
+
+	/* 210 */
+	{1, 187, 209},
+	{1, 188, 210},
+	{1, 189, 211},
+	{1, 190, 212},
+	{1, 191, 213},
+	{1, 192, 214},
+	{1, 193, 215},
+	{1, 194, 216},
+	{1, 195, 217},
+	{1, 196, 218},
+
+	/* 220 */
+	{1, 197, 219},
+	{1, 198, 220},
+	{1, 199, 221},
+	{1, 200, 222},
+	{1, 201, 223},
+	{1, 202, 224},
+	{1, 203, 225},
+	{1, 204, 226},
+	{1, 205, 227},
+	{1, 206, 228},
+
+	/* 230 */
+	{1, 207, 229},
+	{1, 208, 230},
+	{1, 209, 231},
+	{1, 210, 232},
+	{1, 211, 233},
+	{1, 212, 234},
+	{1, 213, 235},
+	{1, 214, 236},
+	{1, 215, 237},
+	{1, 216, 238},
+
+	/* 240 */
+	{1, 217, 239},
+	{1, 218, 240},
+	{1, 219, 241},
+	{1, 220, 242},
+	{1, 221, 243},
+	{1, 222, 244},
+	{1, 223, 245},
+	{1, 224, 246},
+	{1, 225, 247},
+	{1, 226, 248},
+
+	/* 250 */
+	{1, 227, 249},
+	{1, 228, 250},
+	{1, 229, 251},
+	{1, 230, 252},
+	{1, 231, 253},
+	{1, 232, 254},
+	{1, 233, 255},
+	{1, 234, 256},
+	{1, 235, 257},
+	{1, 236, 258},
+
+	/* 260 */
+	{1, 237, 259},
+	{1, 238, 260},
+	{1, 239, 261},
+	{1, 240, 262},
+	{1, 241, 263},
+	{1, 242, 264},
+	{1, 243, 265},
+	{1, 244, 266},
+	{1, 245, 267},
+	{1, 246, 268},
+
+	/* 270 */
+	{1, 247, 269},
+	{1, 248, 270},
+	{1, 249, 271},
+	{1, 250, 272},
+	{1, 251, 273},
+	{1, 252, 274},
+	{1, 253, 275},
+	{1, 254, 276},
+	{1, 255, 277},
+	{2, 0, 278},
+
+	/* 280 */
+	{2, 1, 279},
+	{2, 2, 280},
+	{2, 3, 281},
+	{2, 4, 282},
+	{2, 5, 283},
+	{2, 6, 284},
+	{2, 7, 285},
+	{2, 8, 286},
+	{2, 9, 287},
+	{2, 10, 288},
+
+	/* 290 */
+	{2, 11, 289},
+	{2, 12, 290},
+	{2, 13, 291},
+	{2, 14, 292},
+	{2, 15, 293},
+	{2, 16, 294},
+	{2, 17, 295},
+	{2, 18, 296},
+	{2, 19, 297},
+	{2, 20, 298},
+
+	/* 300 */
+	{2, 21, 299},
+	{2, 22, 300},
+	{2, 23, 301},
+	{2, 24, 302},
+	{2, 25, 303},
+	{2, 26, 304},
+	{2, 27, 305},
+	{2, 28, 306},
+	{2, 29, 307},
+	{2, 30, 308},
+
+	/* 310 */
+	{2, 31, 309},
+	{2, 32, 310},
+	{2, 33, 311},
+	{2, 34, 312},
+	{2, 35, 313},
+	{2, 36, 314},
+	{2, 37, 315},
+	{2, 38, 316},
+	{2, 39, 317},
+	{2, 40, 318},
+
+	/* 320 */
+	{2, 41, 319},
+	{2, 42, 320},
+	{2, 43, 321},
+	{2, 44, 322},
+	{2, 45, 323},
+	{2, 46, 324},
+	{2, 47, 325},
+	{2, 48, 326},
+	{2, 49, 327},
+	{2, 50, 328},
+
+	/* 330 */
+	{2, 51, 329},
+	{2, 52, 330},
+	{2, 53, 331},
+	{2, 54, 332},
+	{2, 55, 333},
+	{2, 56, 334},
+	{2, 57, 335},
+	{2, 58, 336},
+	{2, 59, 337},
+	{2, 60, 338},
+
+	/* 340 */
+	{2, 61, 339},
+	{2, 62, 340},
+	{2, 63, 341},
+	{2, 64, 342},
+	{2, 65, 343},
+	{2, 66, 344},
+	{2, 67, 345},
+	{2, 68, 346},
+	{2, 69, 347},
+	{-1, -1, 355},
+
+	/* 350 */
+	{-1, -1, 356},
+	{-1, -1, 357},
+	{-1, -1, 358},
+	{-1, -1, 359},
+	{-1, -1, 360},
+	{-1, -1, 361},
+	{-1, -1, 362},
+	{-1, -1, 363},
+	{-1, -1, 364},
+	{-1, -1, 365},
+
+	/* 360 */
+	{-1, -1, 366},
+	{-1, -1, 367},
+	{-1, -1, 368},
+	{-1, -1, 369},
+	{-1, -1, 370},
+	{-1, -1, 371},
+
+};
+
+static struct mtk_device_info mt6873_devices_peri[] = {
+	/* sys_idx, ctrl_idx, vio_idx */
+	/* 0 */
+	{0, 0, 0},
+	{0, 1, 1},
+	{0, 2, 2},
+	{0, 3, 3},
+	{0, 4, 4},
+	{0, 5, 5},
+	{0, 6, 6},
+	{0, 7, 7},
+	{0, 8, 8},
+	{0, 9, 9},
+
+	/* 10 */
+	{0, 10, 10},
+	{0, 11, 11},
+	{0, 12, 13},
+	{0, 13, 14},
+	{0, 14, 15},
+	{0, 15, 16},
+	{0, 16, 17},
+	{0, 17, 18},
+	{0, 18, 19},
+	{0, 19, 20},
+
+	/* 20 */
+	{0, 20, 21},
+	{0, 21, 23},
+	{0, 22, 24},
+	{0, 23, 25},
+	{0, 24, 26},
+	{0, 25, 27},
+	{0, 26, 28},
+	{0, 27, 29},
+	{0, 28, 30},
+	{0, 29, 31},
+
+	/* 30 */
+	{0, 30, 32},
+	{0, 31, 33},
+	{0, 32, 34},
+	{0, 33, 35},
+	{0, 34, 36},
+	{0, 35, 37},
+	{0, 36, 38},
+	{0, 37, 62},
+	{0, 38, 63},
+	{0, 39, 64},
+
+	/* 40 */
+	{0, 40, 65},
+	{0, 41, 66},
+	{0, 42, 67},
+	{0, 43, 68},
+	{0, 44, 69},
+	{0, 45, 70},
+	{0, 46, 71},
+	{0, 47, 72},
+	{0, 48, 73},
+	{0, 49, 74},
+
+	/* 50 */
+	{0, 50, 119},
+	{0, 51, 120},
+	{0, 52, 121},
+	{0, 53, 122},
+	{0, 54, 123},
+	{0, 55, 124},
+	{0, 56, 125},
+	{0, 57, 126},
+	{0, 58, 127},
+	{0, 59, 128},
+
+	/* 60 */
+	{0, 60, 129},
+	{0, 61, 130},
+	{0, 62, 137},
+	{0, 63, 143},
+	{0, 64, 144},
+	{0, 65, 145},
+	{0, 66, 146},
+	{0, 67, 147},
+	{0, 68, 148},
+	{0, 69, 149},
+
+	/* 70 */
+	{0, 70, 150},
+	{0, 71, 151},
+	{0, 72, 152},
+	{0, 73, 153},
+	{0, 74, 154},
+	{0, 75, 155},
+	{0, 76, 156},
+	{0, 77, 157},
+	{0, 78, 158},
+	{0, 79, 159},
+
+	/* 80 */
+	{0, 80, 160},
+	{0, 81, 161},
+	{0, 82, 162},
+	{0, 83, 163},
+	{0, 84, 164},
+	{0, 85, 165},
+	{0, 86, 166},
+	{0, 87, 167},
+	{0, 88, 168},
+	{0, 89, 169},
+
+	/* 90 */
+	{0, 90, 170},
+	{0, 91, 171},
+	{0, 92, 174},
+	{0, 93, 175},
+	{0, 94, 176},
+	{0, 95, 177},
+	{0, 96, 178},
+	{0, 97, 179},
+	{0, 98, 180},
+	{0, 99, 181},
+
+	/* 100 */
+	{0, 100, 182},
+	{0, 101, 183},
+	{0, 102, 184},
+	{0, 103, 185},
+	{0, 104, 186},
+	{1, 0, 39},
+	{1, 1, 40},
+	{1, 2, 41},
+	{1, 3, 42},
+	{1, 4, 43},
+
+	/* 110 */
+	{1, 5, 44},
+	{1, 6, 45},
+	{1, 7, 46},
+	{1, 8, 47},
+	{1, 9, 48},
+	{1, 10, 49},
+	{1, 11, 50},
+	{1, 12, 51},
+	{1, 13, 52},
+	{1, 14, 53},
+
+	/* 120 */
+	{1, 15, 54},
+	{1, 16, 55},
+	{1, 17, 56},
+	{1, 18, 57},
+	{1, 19, 58},
+	{1, 20, 59},
+	{1, 21, 60},
+	{1, 22, 61},
+	{1, 23, 76},
+	{1, 24, 77},
+
+	/* 130 */
+	{1, 25, 78},
+	{1, 26, 79},
+	{1, 27, 80},
+	{1, 28, 81},
+	{1, 29, 82},
+	{1, 30, 83},
+	{1, 31, 84},
+	{1, 32, 85},
+	{1, 33, 86},
+	{1, 34, 87},
+
+	/* 140 */
+	{1, 35, 88},
+	{1, 36, 89},
+	{1, 37, 90},
+	{1, 38, 91},
+	{1, 39, 92},
+	{1, 40, 93},
+	{1, 41, 94},
+	{1, 42, 95},
+	{1, 43, 96},
+	{1, 44, 97},
+
+	/* 150 */
+	{1, 45, 98},
+	{1, 46, 99},
+	{1, 47, 100},
+	{1, 48, 101},
+	{1, 49, 102},
+	{1, 50, 103},
+	{1, 51, 104},
+	{1, 52, 105},
+	{1, 53, 106},
+	{1, 54, 107},
+
+	/* 160 */
+	{1, 55, 108},
+	{1, 56, 109},
+	{1, 57, 110},
+	{1, 58, 111},
+	{1, 59, 112},
+	{1, 60, 113},
+	{1, 61, 114},
+	{1, 62, 115},
+	{1, 63, 116},
+	{1, 64, 117},
+
+	/* 170 */
+	{1, 65, 118},
+	{2, 0, 75},
+	{-1, -1, 187},
+	{-1, -1, 188},
+	{-1, -1, 189},
+	{-1, -1, 190},
+	{-1, -1, 191},
+	{-1, -1, 192},
+	{-1, -1, 193},
+	{-1, -1, 194},
+
+	/* 180 */
+	{-1, -1, 195},
+	{-1, -1, 196},
+	{-1, -1, 197},
+	{-1, -1, 198},
+	{-1, -1, 199},
+	{-1, -1, 200},
+	{-1, -1, 201},
+	{-1, -1, 202},
+	{-1, -1, 203},
+	{-1, -1, 204},
+
+	/* 190 */
+	{-1, -1, 205},
+	{-1, -1, 206},
+	{-1, -1, 207},
+	{-1, -1, 208},
+	{-1, -1, 209},
+	{-1, -1, 210},
+	{-1, -1, 211},
+	{-1, -1, 212},
+	{-1, -1, 213},
+	{-1, -1, 214},
+
+	/* 200 */
+	{-1, -1, 215},
+	{-1, -1, 216},
+	{-1, -1, 217},
+	{-1, -1, 218},
+	{-1, -1, 219},
+	{-1, -1, 220},
+	{-1, -1, 221},
+	{-1, -1, 222},
+	{-1, -1, 223},
+	{-1, -1, 224},
+
+	/* 210 */
+	{-1, -1, 225},
+	{-1, -1, 226},
+	{-1, -1, 227},
+	{-1, -1, 228},
+	{-1, -1, 229},
+	{-1, -1, 230},
+	{-1, -1, 231},
+	{-1, -1, 232},
+	{-1, -1, 233},
+	{-1, -1, 234},
+
+	/* 220 */
+	{-1, -1, 235},
+	{-1, -1, 236},
+	{-1, -1, 237},
+	{-1, -1, 238},
+	{-1, -1, 239},
+	{-1, -1, 240},
+	{-1, -1, 241},
+	{-1, -1, 242},
+	{-1, -1, 243},
+	{-1, -1, 244},
+
+	/* 230 */
+	{-1, -1, 245},
+	{-1, -1, 246},
+	{-1, -1, 247},
+	{-1, -1, 248},
+	{-1, -1, 249},
+	{-1, -1, 250},
+	{-1, -1, 251},
+	{-1, -1, 252},
+	{-1, -1, 253},
+	{-1, -1, 254},
+
+	/* 240 */
+	{-1, -1, 255},
+	{-1, -1, 256},
+	{-1, -1, 257},
+	{-1, -1, 258},
+	{-1, -1, 259},
+	{-1, -1, 260},
+	{-1, -1, 261},
+	{-1, -1, 262},
+	{-1, -1, 263},
+	{-1, -1, 264},
+
+	/* 250 */
+	{-1, -1, 265},
+	{-1, -1, 266},
+	{-1, -1, 267},
+	{-1, -1, 268},
+	{-1, -1, 269},
+	{-1, -1, 270},
+	{-1, -1, 271},
+	{-1, -1, 272},
+	{-1, -1, 273},
+	{-1, -1, 274},
+
+	/* 260 */
+	{-1, -1, 275},
+	{-1, -1, 276},
+	{-1, -1, 277},
+	{-1, -1, 278},
+	{-1, -1, 279},
+	{-1, -1, 280},
+	{-1, -1, 281},
+	{-1, -1, 282},
+	{-1, -1, 283},
+	{-1, -1, 284},
+
+	/* 270 */
+	{-1, -1, 285},
+	{-1, -1, 286},
+	{-1, -1, 287},
+	{-1, -1, 288},
+	{-1, -1, 289},
+	{-1, -1, 290},
+	{-1, -1, 291},
+	{-1, -1, 292},
+	{-1, -1, 293},
+	{-1, -1, 294},
+
+	/* 280 */
+	{-1, -1, 295},
+	{-1, -1, 296},
+	{-1, -1, 297},
+	{-1, -1, 298},
+
+};
+
+static struct mtk_device_info mt6873_devices_peri2[] = {
+	/* sys_idx, ctrl_idx, vio_idx */
+	/* 0 */
+	{0, 0, 0},
+	{0, 1, 1},
+	{0, 2, 2},
+	{0, 3, 3},
+	{0, 4, 4},
+	{0, 5, 5},
+	{0, 6, 6},
+	{0, 7, 7},
+	{0, 8, 8},
+	{0, 9, 9},
+
+	/* 10 */
+	{0, 10, 10},
+	{0, 11, 11},
+	{0, 12, 12},
+	{0, 13, 13},
+	{0, 14, 14},
+	{0, 15, 15},
+	{0, 16, 16},
+	{0, 17, 17},
+	{0, 18, 18},
+	{0, 19, 19},
+
+	/* 20 */
+	{0, 20, 20},
+	{0, 21, 21},
+	{0, 22, 22},
+	{0, 23, 23},
+	{0, 24, 24},
+	{0, 25, 25},
+	{0, 26, 26},
+	{0, 27, 27},
+	{0, 28, 28},
+	{0, 29, 29},
+
+	/* 30 */
+	{0, 30, 30},
+	{0, 31, 31},
+	{0, 32, 32},
+	{0, 33, 33},
+	{0, 34, 34},
+	{0, 35, 35},
+	{0, 36, 36},
+	{0, 37, 37},
+	{0, 38, 38},
+	{0, 39, 39},
+
+	/* 40 */
+	{0, 40, 40},
+	{0, 41, 41},
+	{0, 42, 42},
+	{0, 43, 43},
+	{0, 44, 44},
+	{0, 45, 45},
+	{0, 46, 46},
+	{0, 47, 47},
+	{0, 48, 48},
+	{0, 49, 49},
+
+	/* 50 */
+	{0, 50, 50},
+	{0, 51, 51},
+	{0, 52, 52},
+	{0, 53, 53},
+	{0, 54, 54},
+	{0, 55, 55},
+	{0, 56, 56},
+	{0, 57, 57},
+	{0, 58, 58},
+	{0, 59, 59},
+
+	/* 60 */
+	{0, 60, 60},
+	{0, 61, 61},
+	{0, 62, 62},
+	{0, 63, 63},
+	{0, 64, 64},
+	{0, 65, 65},
+	{0, 66, 66},
+	{0, 67, 67},
+	{0, 68, 68},
+	{0, 69, 69},
+
+	/* 70 */
+	{0, 70, 70},
+	{0, 71, 71},
+	{0, 72, 72},
+	{0, 73, 73},
+	{0, 74, 74},
+	{0, 75, 75},
+	{0, 76, 76},
+	{0, 77, 77},
+	{0, 78, 78},
+	{0, 79, 79},
+
+	/* 80 */
+	{0, 80, 80},
+	{0, 81, 81},
+	{0, 82, 82},
+	{0, 83, 83},
+	{0, 84, 84},
+	{0, 85, 85},
+	{0, 86, 86},
+	{0, 87, 87},
+	{0, 88, 88},
+	{0, 89, 89},
+
+	/* 90 */
+	{0, 90, 90},
+	{0, 91, 91},
+	{0, 92, 92},
+	{0, 93, 93},
+	{0, 94, 94},
+	{0, 95, 95},
+	{0, 96, 96},
+	{0, 97, 97},
+	{0, 98, 98},
+	{0, 99, 99},
+
+	/* 100 */
+	{0, 100, 100},
+	{0, 101, 103},
+	{0, 102, 104},
+	{0, 103, 105},
+	{0, 104, 106},
+	{0, 105, 107},
+	{0, 106, 108},
+	{0, 107, 109},
+	{0, 108, 110},
+	{0, 109, 111},
+
+	/* 110 */
+	{0, 110, 112},
+	{0, 111, 113},
+	{0, 112, 114},
+	{0, 113, 115},
+	{0, 114, 116},
+	{-1, -1, 117},
+	{-1, -1, 118},
+	{-1, -1, 119},
+	{-1, -1, 120},
+	{-1, -1, 121},
+
+	/* 120 */
+	{-1, -1, 122},
+	{-1, -1, 123},
+	{-1, -1, 124},
+	{-1, -1, 125},
+	{-1, -1, 126},
+	{-1, -1, 127},
+	{-1, -1, 128},
+	{-1, -1, 129},
+	{-1, -1, 130},
+	{-1, -1, 131},
+
+	/* 130 */
+	{-1, -1, 132},
+	{-1, -1, 133},
+	{-1, -1, 134},
+	{-1, -1, 135},
+	{-1, -1, 136},
+	{-1, -1, 137},
+	{-1, -1, 138},
+	{-1, -1, 139},
+	{-1, -1, 140},
+	{-1, -1, 141},
+
+	/* 140 */
+	{-1, -1, 142},
+	{-1, -1, 143},
+	{-1, -1, 144},
+	{-1, -1, 145},
+	{-1, -1, 146},
+	{-1, -1, 147},
+	{-1, -1, 148},
+	{-1, -1, 149},
+	{-1, -1, 150},
+	{-1, -1, 151},
+
+	/* 150 */
+	{-1, -1, 152},
+	{-1, -1, 153},
+	{-1, -1, 154},
+	{-1, -1, 155},
+	{-1, -1, 156},
+	{-1, -1, 157},
+	{-1, -1, 158},
+	{-1, -1, 159},
+	{-1, -1, 160},
+	{-1, -1, 161},
+
+	/* 160 */
+	{-1, -1, 162},
+	{-1, -1, 163},
+	{-1, -1, 164},
+	{-1, -1, 165},
+	{-1, -1, 166},
+	{-1, -1, 167},
+	{-1, -1, 168},
+	{-1, -1, 169},
+	{-1, -1, 170},
+	{-1, -1, 171},
+
+	/* 170 */
+	{-1, -1, 172},
+	{-1, -1, 173},
+	{-1, -1, 174},
+	{-1, -1, 175},
+	{-1, -1, 176},
+	{-1, -1, 177},
+	{-1, -1, 178},
+	{-1, -1, 179},
+	{-1, -1, 180},
+	{-1, -1, 181},
+
+	/* 180 */
+	{-1, -1, 182},
+	{-1, -1, 183},
+	{-1, -1, 184},
+	{-1, -1, 185},
+	{-1, -1, 186},
+	{-1, -1, 187},
+	{-1, -1, 188},
+	{-1, -1, 189},
+	{-1, -1, 190},
+	{-1, -1, 191},
+
+	/* 190 */
+	{-1, -1, 192},
+	{-1, -1, 193},
+	{-1, -1, 194},
+	{-1, -1, 195},
+	{-1, -1, 196},
+	{-1, -1, 197},
+	{-1, -1, 198},
+	{-1, -1, 199},
+	{-1, -1, 200},
+	{-1, -1, 201},
+
+	/* 200 */
+	{-1, -1, 202},
+	{-1, -1, 203},
+	{-1, -1, 204},
+	{-1, -1, 205},
+	{-1, -1, 206},
+	{-1, -1, 207},
+	{-1, -1, 208},
+	{-1, -1, 209},
+	{-1, -1, 210},
+	{-1, -1, 211},
+
+	/* 210 */
+	{-1, -1, 212},
+	{-1, -1, 213},
+	{-1, -1, 214},
+	{-1, -1, 215},
+	{-1, -1, 216},
+	{-1, -1, 217},
+	{-1, -1, 218},
+	{-1, -1, 219},
+	{-1, -1, 220},
+	{-1, -1, 221},
+
+	/* 220 */
+	{-1, -1, 222},
+	{-1, -1, 223},
+	{-1, -1, 224},
+	{-1, -1, 225},
+	{-1, -1, 226},
+	{-1, -1, 227},
+	{-1, -1, 228},
+	{-1, -1, 229},
+	{-1, -1, 230},
+	{-1, -1, 231},
+
+	/* 230 */
+	{-1, -1, 232},
+	{-1, -1, 233},
+	{-1, -1, 234},
+	{-1, -1, 235},
+	{-1, -1, 236},
+	{-1, -1, 237},
+	{-1, -1, 238},
+	{-1, -1, 239},
+	{-1, -1, 240},
+	{-1, -1, 241},
+
+	/* 240 */
+	{-1, -1, 242},
+	{-1, -1, 243},
+	{-1, -1, 244},
+	{-1, -1, 245},
+	{-1, -1, 246},
+	{-1, -1, 247},
+	{-1, -1, 248},
+
+};
+
+static struct mtk_device_info mt6873_devices_peri_par[] = {
+	/* sys_idx, ctrl_idx, vio_idx */
+	/* 0 */
+	{0, 0, 0},
+	{0, 1, 1},
+	{0, 2, 2},
+	{0, 3, 3},
+	{0, 4, 4},
+	{0, 5, 5},
+	{0, 6, 6},
+	{0, 7, 7},
+	{0, 8, 8},
+	{0, 9, 9},
+
+	/* 10 */
+	{0, 10, 10},
+	{0, 11, 11},
+	{0, 12, 12},
+	{0, 13, 13},
+	{0, 14, 14},
+	{0, 15, 15},
+	{0, 16, 16},
+	{0, 17, 17},
+	{0, 18, 18},
+	{0, 19, 19},
+
+	/* 20 */
+	{0, 20, 20},
+	{0, 21, 21},
+	{0, 22, 22},
+	{0, 23, 23},
+	{0, 24, 24},
+	{0, 25, 25},
+	{0, 26, 26},
+	{-1, -1, 27},
+	{-1, -1, 28},
+	{-1, -1, 29},
+
+	/* 30 */
+	{-1, -1, 30},
+	{-1, -1, 31},
+	{-1, -1, 32},
+	{-1, -1, 33},
+	{-1, -1, 34},
+	{-1, -1, 35},
+	{-1, -1, 36},
+	{-1, -1, 37},
+	{-1, -1, 38},
+	{-1, -1, 39},
+
+	/* 40 */
+	{-1, -1, 40},
+	{-1, -1, 41},
+	{-1, -1, 42},
+	{-1, -1, 43},
+	{-1, -1, 44},
+	{-1, -1, 45},
+	{-1, -1, 46},
+	{-1, -1, 47},
+	{-1, -1, 48},
+	{-1, -1, 49},
+
+	/* 50 */
+	{-1, -1, 50},
+	{-1, -1, 51},
+	{-1, -1, 52},
+	{-1, -1, 53},
+	{-1, -1, 54},
+	{-1, -1, 55},
+	{-1, -1, 56},
+	{-1, -1, 57},
+
+};
+
+static struct mtk_device_num mtk6873_devices_num[] = {
+	{SLAVE_TYPE_INFRA, VIO_SLAVE_NUM_INFRA},
+	{SLAVE_TYPE_PERI, VIO_SLAVE_NUM_PERI},
+	{SLAVE_TYPE_PERI2, VIO_SLAVE_NUM_PERI2},
+	{SLAVE_TYPE_PERI_PAR, VIO_SLAVE_NUM_PERI_PAR},
+};
+
+static struct INFRAAXI_ID_INFO peri_mi_id_to_master[] = {
+	{"THERM2",    0x0, 0x7},
+	{"SPM",       0x2, 0x7},
+	{"CCU",       0x4, 0x7},
+	{"THERM",     0x6, 0x7},
+	{"SPM_DRAMC", 0x3, 0x7},
+};
+
+static struct INFRAAXI_ID_INFO infra_mi_id_to_master[] = {
+	{"CONNSYS_WFDMA",   0x0,    0x3fff},
+	{"CONNSYS_ICAP",    0x10,   0x3fff},
+	{"CONNSYS_MCU_SYS", 0x20,   0x3fff},
+	{"CONNSYS_GPS",     0x30,   0x3fff},
+	{"Tinysys",         0x2,    0x3c0f},
+	{"CQ_DMA",          0x4,    0x3c7f},
+	{"DebugTop",        0x14,   0x3f7f},
+	{"SSUSB",           0x24,   0xfff},
+	{"SSUSB2",          0x424,  0xfff},
+	{"NOR",             0x824,  0xfff},
+	{"PWM",             0xc24,  0x3fff},
+	{"SPI6",            0x2c24, 0x3fff},
+	{"SPI0",            0x3c24, 0x3fff},
+	{"APU",             0xa4,   0x33ff},
+	{"SPI2",            0x124,  0x3fff},
+	{"SPI3",            0x524,  0x3fff},
+	{"SPI4",            0x924,  0x3fff},
+	{"SPI5",            0xd24,  0x3fff},
+	{"SPI7",            0x1a4,  0x3fff},
+	{"Audio",           0x9a4,  0x3fff},
+	{"SPI1",            0xda4,  0x3fff},
+	{"AP_DMA_EXT",      0x224,  0x23ff},
+	{"THERM2",          0x2a4,  0x3fff},
+	{"SPM",             0x6a4,  0x3fff},
+	{"CCU",             0xaa4,  0x3fff},
+	{"THERM",           0xea4,  0x3fff},
+	{"DX_CC",           0x34,   0x387f},
+	{"GCE",             0x44,   0x3e7f},
+	{"PCIE",            0x64,   0x307f},
+	{"DPMAIF",          0x6,    0x3f0f},
+	{"SSPM",            0x8,    0x3f8f},
+	{"UFS",             0xa,    0x3f9f},
+	{"MSDC0",           0x1a,   0x3fff},
+	{"MSDC1",           0x3a,   0x3fff},
+	{"MSDC2",           0x7a,   0x3fff},
+	{"CPUEB",           0xc,    0x3c0f},
+	{"APMCU_write",     0x1,    0x3fe1},
+	{"APMCU_write",     0x81,   0x3fe1},
+	{"APMCU_write",     0x201,  0x3e01},
+	{"APMCU_read",      0x1,    0x3fe1},
+	{"APMCU_read",      0x81,   0x3fe1},
+	{"APMCU_read",      0x101,  0x3ffd},
+	{"APMCU_read",      0x105,  0x3ffd},
+	{"APMCU_read",      0x201,  0x3e01},
+	{"APMCU_read",      0x401,  0x3c01},
+};
+
+static const char *infra_mi_trans(u32 bus_id)
+{
+	int master_count = ARRAY_SIZE(infra_mi_id_to_master);
+	const char *master = "UNKNOWN_MASTER_FROM_INFRA";
+	int i;
+
+	for (i = 0; i < master_count; i++) {
+		if ((bus_id & infra_mi_id_to_master[i].mask) ==
+		    infra_mi_id_to_master[i].bus_id)
+			master = infra_mi_id_to_master[i].master;
+	}
+
+	return master;
+}
+
+static const char *peri_mi_trans(u32 bus_id)
+{
+	int master_count = ARRAY_SIZE(peri_mi_id_to_master);
+	const char *master = "UNKNOWN_MASTER_FROM_PERI";
+	int i;
+
+	if ((bus_id & 0x3) == 0x0)
+		return infra_mi_trans(bus_id >> 2);
+	else if ((bus_id & 0x3) == 0x2)
+		return "MD_AP_M";
+	else if ((bus_id & 0x3) == 0x3)
+		return "AP_DMA_M";
+
+	bus_id = bus_id >> 2;
+
+	for (i = 0 ; i < master_count; i++) {
+		if ((bus_id & peri_mi_id_to_master[i].mask) ==
+		    peri_mi_id_to_master[i].bus_id)
+			master = infra_mi_id_to_master[i].master;
+	}
+
+	return master;
+}
+
+static const char *mt6873_bus_id_to_master(u32 bus_id, u32 vio_addr,
+					   int slave_type, int shift_sta_bit,
+					   int domain)
+{
+	u8 h_1byte;
+
+	if (bus_id == 0x0 && vio_addr == 0x0)
+		return NULL;
+
+	h_1byte = (vio_addr >> 24) & 0xFF;
+
+	if (slave_type == SLAVE_TYPE_INFRA) {
+		if (vio_addr <= 0x1FFFFF) {
+			if ((bus_id & 0x1) == 0)
+				return "EMI_L2C_M";
+
+			return infra_mi_trans(bus_id >> 1);
+
+		} else if (shift_sta_bit == 3) {
+			if ((bus_id & 0x1) == 0)
+				return "EMI_L2C_M";
+
+			return infra_mi_trans(bus_id >> 1);
+
+		} else if (shift_sta_bit == 4) {
+			if ((bus_id & 0x1) == 1)
+				return "GCE_M";
+
+			return infra_mi_trans(bus_id >> 1);
+		}
+
+		return infra_mi_trans(bus_id);
+
+	} else if (slave_type == SLAVE_TYPE_PERI) {
+		if ((h_1byte >= 0x14 && h_1byte < 0x18) ||
+		    (h_1byte >= 0x1A && h_1byte < 0x1C) ||
+		    (h_1byte >= 0x1F && h_1byte < 0x20)) {
+			if ((bus_id & 0x1) == 1)
+				return "GCE_M";
+
+			return infra_mi_trans(bus_id >> 1);
+		}
+
+		if (shift_sta_bit == 3 || shift_sta_bit == 4 ||
+		    shift_sta_bit == 8) {
+			if ((bus_id & 0x1) == 0)
+				return "MD_AP_M";
+
+			return peri_mi_trans(bus_id >> 1);
+		}
+		return peri_mi_trans(bus_id);
+
+	} else if (slave_type == SLAVE_TYPE_PERI2) {
+		return peri_mi_trans(bus_id);
+
+	} else if (slave_type == SLAVE_TYPE_PERI_PAR) {
+		return peri_mi_trans(bus_id);
+	}
+
+	return "UNKNOWN_MASTER";
+}
+
+static void mm2nd_vio_handler(void __iomem *infracfg,
+			      struct mtk_devapc_vio_info *vio_info,
+			      bool mdp_vio, bool disp2_vio, bool mmsys_vio)
+{
+	u32 vio_sta, vio_dbg, rw;
+	u32 vio_sta_num;
+	u32 vio0_offset;
+	char mm_str[64] = {0};
+	void __iomem *reg;
+	int i;
+
+	if (!infracfg)
+		return;
+
+	if (mdp_vio) {
+		vio_sta_num = INFRACFG_MDP_VIO_STA_NUM;
+		vio0_offset = INFRACFG_MDP_SEC_VIO0_OFFSET;
+
+		strncpy(mm_str, "INFRACFG_MDP_SEC_VIO",
+			sizeof("INFRACFG_MDP_SEC_VIO"));
+
+	} else if (mmsys_vio) {
+		vio_sta_num = INFRACFG_MM_VIO_STA_NUM;
+		vio0_offset = INFRACFG_MM_SEC_VIO0_OFFSET;
+
+		strncpy(mm_str, "INFRACFG_MM_SEC_VIO",
+			sizeof("INFRACFG_MM_SEC_VIO"));
+
+	} else {
+		pr_err(PFX "%s: param check failed, mdp_vio:%s, disp2_vio:%s, mmsys_vio:%s\n",
+		       __func__, mdp_vio ? "true" : "false",
+		       disp2_vio ? "true" : "false",
+		       mmsys_vio ? "true" : "false");
+		return;
+	}
+
+	/* Get mm2nd violation status */
+	for (i = 0; i < vio_sta_num; i++) {
+		reg = infracfg + vio0_offset + i * 4;
+		vio_sta = readl(reg);
+		if (vio_sta)
+			pr_info(PFX "MM 2nd violation: %s%d:0x%x\n",
+				mm_str, i, vio_sta);
+	}
+
+	/* Get mm2nd violation address */
+	reg = infracfg + vio0_offset + i * 4;
+	vio_info->vio_addr = readl(reg);
+
+	/* Get mm2nd violation information */
+	reg = infracfg + vio0_offset + (i + 1) * 4;
+	vio_dbg = readl(reg);
+
+	vio_info->domain_id = (vio_dbg & INFRACFG_MM2ND_VIO_DOMAIN_MASK) >>
+		INFRACFG_MM2ND_VIO_DOMAIN_SHIFT;
+
+	vio_info->master_id = (vio_dbg & INFRACFG_MM2ND_VIO_ID_MASK) >>
+		INFRACFG_MM2ND_VIO_ID_SHIFT;
+
+	rw = (vio_dbg & INFRACFG_MM2ND_VIO_RW_MASK) >>
+		INFRACFG_MM2ND_VIO_RW_SHIFT;
+	vio_info->read = (rw == 0);
+	vio_info->write = (rw == 1);
+}
+
+static u32 mt6873_shift_group_get(int slave_type, u32 vio_idx)
+{
+	if (slave_type == SLAVE_TYPE_INFRA) {
+		if ((vio_idx >= 0 && vio_idx <= 8) || vio_idx == 355)
+			return 0;
+		else if ((vio_idx >= 9 && vio_idx <= 14) || vio_idx == 356)
+			return 1;
+		else if ((vio_idx >= 15 && vio_idx <= 19) || vio_idx == 357)
+			return 2;
+		else if ((vio_idx >= 20 && vio_idx <= 21) || vio_idx == 358)
+			return 3;
+		else if (vio_idx >= 22 && vio_idx <= 347)
+			return 4;
+		else if ((vio_idx >= 348 && vio_idx <= 354) ||
+			 (vio_idx >= 359 && vio_idx <= 365) ||
+			 vio_idx == 366)
+			return 5;
+
+		pr_err(PFX "%s:%d Wrong vio_idx:0x%x\n",
+		       __func__, __LINE__, vio_idx);
+
+	} else if (slave_type == SLAVE_TYPE_PERI) {
+		if (vio_idx >= 0 && vio_idx <= 4)
+			return 0;
+		else if (vio_idx >= 5 && vio_idx <= 6)
+			return 1;
+		else if ((vio_idx >= 7 && vio_idx <= 38) || vio_idx == 187 ||
+			 (vio_idx >= 188 && vio_idx <= 219) ||
+			 vio_idx == 286)
+			return 2;
+		else if ((vio_idx >= 39 && vio_idx <= 61) || vio_idx == 220)
+			return 3;
+		else if ((vio_idx >= 62 && vio_idx <= 72) || vio_idx == 221)
+			return 4;
+		else if ((vio_idx >= 73 && vio_idx <= 74) || vio_idx == 222)
+			return 5;
+		else if (vio_idx == 75 || vio_idx == 223)
+			return 6;
+		else if ((vio_idx >= 76 && vio_idx <= 118) || vio_idx == 224)
+			return 7;
+		else if ((vio_idx >= 119 && vio_idx <= 121) || vio_idx == 225)
+			return 8;
+		if (vio_idx >= 122 && vio_idx <= 125)
+			return 9;
+		else if (vio_idx == 126 || (vio_idx >= 226 && vio_idx <= 227) ||
+			 vio_idx == 287)
+			return 10;
+		if (vio_idx >= 127 && vio_idx <= 128)
+			return 11;
+		if (vio_idx >= 129 && vio_idx <= 130)
+			return 12;
+		else if ((vio_idx >= 131 && vio_idx <= 141) ||
+			 (vio_idx >= 228 && vio_idx <= 238) ||
+			 vio_idx == 288)
+			return 13;
+		else if ((vio_idx >= 142 && vio_idx <= 143) ||
+			 (vio_idx >= 239 && vio_idx <= 240) ||
+			 vio_idx == 289)
+			return 14;
+		else if ((vio_idx >= 144 && vio_idx <= 173) || vio_idx == 241 ||
+			 (vio_idx >= 242 && vio_idx <= 271) ||
+			 vio_idx == 290)
+			return 15;
+		else if ((vio_idx >= 174 && vio_idx <= 186) || vio_idx == 272 ||
+			 (vio_idx >= 273 && vio_idx <= 285) ||
+			 vio_idx == 291)
+			return 16;
+
+		pr_err(PFX "%s:%d Wrong vio_idx:0x%x\n",
+		       __func__, __LINE__, vio_idx);
+
+	} else if (slave_type == SLAVE_TYPE_PERI2) {
+		if ((vio_idx >= 0 && vio_idx <= 12) || vio_idx == 117 ||
+		    (vio_idx >= 118 && vio_idx <= 130) ||
+		    vio_idx == 234)
+			return 0;
+		else if (vio_idx >= 13 && vio_idx <= 16)
+			return 1;
+		else if (vio_idx >= 17 && vio_idx <= 20)
+			return 2;
+		else if ((vio_idx >= 21 && vio_idx <= 36) || vio_idx == 131 ||
+			 (vio_idx >= 132 && vio_idx <= 147) ||
+			 vio_idx == 235)
+			return 3;
+		else if ((vio_idx >= 37 && vio_idx <= 44) || vio_idx == 148 ||
+			 (vio_idx >= 149 && vio_idx <= 156) ||
+			 vio_idx == 236)
+			return 4;
+		else if ((vio_idx >= 45 && vio_idx <= 60) || vio_idx == 157 ||
+			 (vio_idx >= 158 && vio_idx <= 173) ||
+			 vio_idx == 237)
+			return 5;
+		else if ((vio_idx >= 61 && vio_idx <= 76) || vio_idx == 174 ||
+			 (vio_idx >= 175 && vio_idx <= 190) ||
+			 vio_idx == 238)
+			return 6;
+		else if ((vio_idx >= 77 && vio_idx <= 84) || vio_idx == 191 ||
+			 (vio_idx >= 192 && vio_idx <= 199) ||
+			 vio_idx == 239)
+			return 7;
+		else if ((vio_idx >= 85 && vio_idx <= 105) || vio_idx == 200 ||
+			 (vio_idx >= 201 && vio_idx <= 221) ||
+			 vio_idx == 240)
+			return 8;
+		else if ((vio_idx >= 106 && vio_idx <= 116) || vio_idx == 222 ||
+			 (vio_idx >= 223 && vio_idx <= 233) ||
+			 vio_idx == 241)
+			return 9;
+
+		pr_err(PFX "%s:%d Wrong vio_idx:0x%x\n",
+		       __func__, __LINE__, vio_idx);
+
+	} else if (slave_type == SLAVE_TYPE_PERI_PAR) {
+		if ((vio_idx >= 0 && vio_idx <= 23) || vio_idx == 27 ||
+		    (vio_idx >= 28 && vio_idx <= 51) ||
+		    vio_idx == 56)
+			return 0;
+		else if ((vio_idx >= 24 && vio_idx <= 26) || vio_idx == 52 ||
+			 (vio_idx >= 53 && vio_idx <= 55) ||
+			 vio_idx == 57)
+			return 1;
+
+		pr_err(PFX "%s:%d Wrong vio_idx:0x%x\n",
+		       __func__, __LINE__, vio_idx);
+
+	} else {
+		pr_err(PFX "%s:%d Wrong slave_type:0x%x\n",
+		       __func__, __LINE__, slave_type);
+	}
+
+	return 31;
+}
+
+static struct mtk_devapc_dbg_status mt6873_devapc_dbg_stat = {
+	.enable_ut = PLAT_DBG_UT_DEFAULT,
+	.enable_dapc = PLAT_DBG_DAPC_DEFAULT,
+};
+
+static const char * const slave_type_to_str[] = {
+	"SLAVE_TYPE_INFRA",
+	"SLAVE_TYPE_PERI",
+	"SLAVE_TYPE_PERI2",
+	"SLAVE_TYPE_PERI_PAR",
+	"WRONG_SLAVE_TYPE",
+};
+
+static int mtk_vio_mask_sta_num[] = {
+	VIO_MASK_STA_NUM_INFRA,
+	VIO_MASK_STA_NUM_PERI,
+	VIO_MASK_STA_NUM_PERI2,
+	VIO_MASK_STA_NUM_PERI_PAR,
+};
+
+static struct mtk_devapc_vio_info mt6873_devapc_vio_info = {
+	.vio_mask_sta_num = mtk_vio_mask_sta_num,
+	.sramrom_vio_idx = SRAMROM_VIO_INDEX,
+	.mdp_vio_idx = MDP_VIO_INDEX,
+	.disp2_vio_idx = MDP_VIO_INDEX,
+	.mmsys_vio_idx = MMSYS_VIO_INDEX,
+	.sramrom_slv_type = SRAMROM_SLAVE_TYPE,
+	.mm2nd_slv_type = MM2ND_SLAVE_TYPE,
+};
+
+static const struct mtk_infra_vio_dbg_desc mt6873_vio_dbgs = {
+	.vio_dbg_mstid = INFRA_VIO_DBG_MSTID,
+	.vio_dbg_mstid_start_bit = INFRA_VIO_DBG_MSTID_START_BIT,
+	.vio_dbg_dmnid = INFRA_VIO_DBG_DMNID,
+	.vio_dbg_dmnid_start_bit = INFRA_VIO_DBG_DMNID_START_BIT,
+	.vio_dbg_w_vio = INFRA_VIO_DBG_W_VIO,
+	.vio_dbg_w_vio_start_bit = INFRA_VIO_DBG_W_VIO_START_BIT,
+	.vio_dbg_r_vio = INFRA_VIO_DBG_R_VIO,
+	.vio_dbg_r_vio_start_bit = INFRA_VIO_DBG_R_VIO_START_BIT,
+	.vio_addr_high = INFRA_VIO_ADDR_HIGH,
+	.vio_addr_high_start_bit = INFRA_VIO_ADDR_HIGH_START_BIT,
+};
+
+static const struct mtk_sramrom_sec_vio_desc mt6873_sramrom_sec_vios = {
+	.vio_id_mask = SRAMROM_SEC_VIO_ID_MASK,
+	.vio_id_shift = SRAMROM_SEC_VIO_ID_SHIFT,
+	.vio_domain_mask = SRAMROM_SEC_VIO_DOMAIN_MASK,
+	.vio_domain_shift = SRAMROM_SEC_VIO_DOMAIN_SHIFT,
+	.vio_rw_mask = SRAMROM_SEC_VIO_RW_MASK,
+	.vio_rw_shift = SRAMROM_SEC_VIO_RW_SHIFT,
+};
+
+static const u32 mt6873_devapc_pds[] = {
+	PD_VIO_MASK_OFFSET,
+	PD_VIO_STA_OFFSET,
+	PD_VIO_DBG0_OFFSET,
+	PD_VIO_DBG1_OFFSET,
+	PD_VIO_DBG2_OFFSET,
+	PD_APC_CON_OFFSET,
+	PD_SHIFT_STA_OFFSET,
+	PD_SHIFT_SEL_OFFSET,
+	PD_SHIFT_CON_OFFSET,
+};
+
+static struct mtk_devapc_soc mt6873_data = {
+	.dbg_stat = &mt6873_devapc_dbg_stat,
+	.slave_type_arr = slave_type_to_str,
+	.slave_type_num = SLAVE_TYPE_NUM,
+	.device_info[SLAVE_TYPE_INFRA] = mt6873_devices_infra,
+	.device_info[SLAVE_TYPE_PERI] = mt6873_devices_peri,
+	.device_info[SLAVE_TYPE_PERI2] = mt6873_devices_peri2,
+	.device_info[SLAVE_TYPE_PERI_PAR] = mt6873_devices_peri_par,
+	.ndevices = mtk6873_devices_num,
+	.vio_info = &mt6873_devapc_vio_info,
+	.vio_dbgs = &mt6873_vio_dbgs,
+	.sramrom_sec_vios = &mt6873_sramrom_sec_vios,
+	.devapc_pds = mt6873_devapc_pds,
+	.master_get = &mt6873_bus_id_to_master,
+	.mm2nd_vio_handler = &mm2nd_vio_handler,
+	.shift_group_get = mt6873_shift_group_get,
+};
+
+static const struct of_device_id mt6873_devapc_dt_match[] = {
+	{ .compatible = "mediatek,mt6873-devapc" },
+	{},
+};
+
+static int mt6873_devapc_probe(struct platform_device *pdev)
+{
+	return mtk_devapc_probe(pdev, &mt6873_data);
+}
+
+static int mt6873_devapc_remove(struct platform_device *dev)
+{
+	return mtk_devapc_remove(dev);
+}
+
+static struct platform_driver mt6873_devapc_driver = {
+	.probe = mt6873_devapc_probe,
+	.remove = mt6873_devapc_remove,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = mt6873_devapc_dt_match,
+	},
+};
+
+module_platform_driver(mt6873_devapc_driver);
+
+MODULE_DESCRIPTION("Mediatek MT6873 Device APC Driver");
+MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/soc/mediatek/devapc/devapc-mt6873.h b/drivers/soc/mediatek/devapc/devapc-mt6873.h
new file mode 100644
index 0000000..16be09e
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/devapc-mt6873.h
@@ -0,0 +1,111 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#ifndef __DEVAPC_MT6873_H__
+#define __DEVAPC_MT6873_H__
+
+/******************************************************************************
+ * VARIABLE DEFINITION
+ ******************************************************************************/
+/* dbg status default setting */
+#define PLAT_DBG_UT_DEFAULT		false
+#define PLAT_DBG_DAPC_DEFAULT		false
+
+/******************************************************************************
+ * STRUCTURE DEFINITION
+ ******************************************************************************/
+enum DEVAPC_SLAVE_TYPE {
+	SLAVE_TYPE_INFRA = 0,
+	SLAVE_TYPE_PERI,
+	SLAVE_TYPE_PERI2,
+	SLAVE_TYPE_PERI_PAR,
+	SLAVE_TYPE_NUM,
+};
+
+enum DEVAPC_VIO_MASK_STA_NUM {
+	VIO_MASK_STA_NUM_INFRA = 12,
+	VIO_MASK_STA_NUM_PERI = 10,
+	VIO_MASK_STA_NUM_PERI2 = 8,
+	VIO_MASK_STA_NUM_PERI_PAR = 2,
+};
+
+enum DEVAPC_VIO_SLAVE_NUM {
+	VIO_SLAVE_NUM_INFRA = 366,
+	VIO_SLAVE_NUM_PERI = 284,
+	VIO_SLAVE_NUM_PERI2 = 247,
+	VIO_SLAVE_NUM_PERI_PAR = 58,
+};
+
+enum DEVAPC_PD_OFFSET {
+	PD_VIO_MASK_OFFSET = 0x0,
+	PD_VIO_STA_OFFSET = 0x400,
+	PD_VIO_DBG0_OFFSET = 0x900,
+	PD_VIO_DBG1_OFFSET = 0x904,
+	PD_VIO_DBG2_OFFSET = 0x908,
+	PD_APC_CON_OFFSET = 0xF00,
+	PD_SHIFT_STA_OFFSET = 0xF20,
+	PD_SHIFT_SEL_OFFSET = 0xF30,
+	PD_SHIFT_CON_OFFSET = 0xF10,
+};
+
+#define SRAMROM_SLAVE_TYPE	SLAVE_TYPE_INFRA	/* Infra */
+#define MM2ND_SLAVE_TYPE	SLAVE_TYPE_PERI		/* Peri */
+
+enum OTHER_TYPES_INDEX {
+	SRAMROM_VIO_INDEX = 367,
+	CONN_VIO_INDEX = 75, /* starts from 0x18 */
+	MDP_VIO_INDEX = 292,
+	MMSYS_VIO_INDEX = 294,
+};
+
+enum INFRACFG_MM2ND_VIO_NUM {
+	INFRACFG_MM_VIO_STA_NUM = 2,
+	INFRACFG_MDP_VIO_STA_NUM = 8,
+};
+
+enum INFRACFG_MM2ND_OFFSET {
+	INFRACFG_MM_SEC_VIO0_OFFSET = 0xB30,
+	INFRACFG_MDP_SEC_VIO0_OFFSET = 0xB40,
+};
+
+struct INFRAAXI_ID_INFO {
+	const char	*master;
+	u32		bus_id;
+	u32		mask;
+};
+
+/******************************************************************************
+ * PLATFORM DEFINATION
+ ******************************************************************************/
+
+/* For Infra VIO_DBG */
+#define INFRA_VIO_DBG_MSTID			0xFFFFFFFF
+#define INFRA_VIO_DBG_MSTID_START_BIT		0
+#define INFRA_VIO_DBG_DMNID			0x0000003F
+#define INFRA_VIO_DBG_DMNID_START_BIT		0
+#define INFRA_VIO_DBG_W_VIO			0x00000040
+#define INFRA_VIO_DBG_W_VIO_START_BIT		6
+#define INFRA_VIO_DBG_R_VIO			0x00000080
+#define INFRA_VIO_DBG_R_VIO_START_BIT		7
+#define INFRA_VIO_ADDR_HIGH			0x00000F00
+#define INFRA_VIO_ADDR_HIGH_START_BIT		8
+
+/* For SRAMROM VIO */
+#define SRAMROM_SEC_VIO_ID_MASK			0x00FFFF00
+#define SRAMROM_SEC_VIO_ID_SHIFT		8
+#define SRAMROM_SEC_VIO_DOMAIN_MASK		0x0F000000
+#define SRAMROM_SEC_VIO_DOMAIN_SHIFT		24
+#define SRAMROM_SEC_VIO_RW_MASK			0x80000000
+#define SRAMROM_SEC_VIO_RW_SHIFT		31
+
+/* For MM 2nd VIO */
+#define INFRACFG_MM2ND_VIO_DOMAIN_MASK		0x00000030
+#define INFRACFG_MM2ND_VIO_DOMAIN_SHIFT		4
+#define INFRACFG_MM2ND_VIO_ID_MASK		0x00FFFF00
+#define INFRACFG_MM2ND_VIO_ID_SHIFT		8
+#define INFRACFG_MM2ND_VIO_RW_MASK		0x01000000
+#define INFRACFG_MM2ND_VIO_RW_SHIFT		24
+
+#endif /* __DEVAPC_MT6873_H__ */
diff --git a/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c b/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c
new file mode 100644
index 0000000..6c4a8ec
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c
@@ -0,0 +1,756 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+#include <linux/fs.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of_irq.h>
+#include <linux/of_address.h>
+#include <linux/sched/debug.h>
+#include <linux/uaccess.h>
+#include <linux/soc/mediatek/mtk_sip_svc.h>
+#include "devapc-mtk-multi-ao.h"
+
+/*
+ * mtk_devapc_pd_get - get devapc pd_types of register address.
+ *
+ * Returns the value of reg addr
+ */
+static void __iomem *mtk_devapc_pd_get(struct mtk_devapc_context *devapc_ctx,
+				       int slave_type,
+				       enum DEVAPC_PD_REG_TYPE pd_reg_type,
+				       u32 index)
+{
+	struct mtk_devapc_vio_info *vio_info = devapc_ctx->soc->vio_info;
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	const u32 *devapc_pds = devapc_ctx->soc->devapc_pds;
+	void __iomem *reg;
+
+	if (!devapc_pds)
+		return NULL;
+
+	if ((slave_type < slave_type_num &&
+	     index < vio_info->vio_mask_sta_num[slave_type]) &&
+	    pd_reg_type < PD_REG_TYPE_NUM) {
+		reg = devapc_ctx->devapc_pd_base[slave_type] +
+			devapc_pds[pd_reg_type];
+
+		if (pd_reg_type == VIO_MASK || pd_reg_type == VIO_STA)
+			reg += 0x4 * index;
+
+	} else {
+		pr_err(PFX "Out Of Boundary, slave_type:0x%x/pd_reg_type:0x%x/index:0x%x\n",
+		       slave_type, pd_reg_type, index);
+		return NULL;
+	}
+
+	return reg;
+}
+
+/*
+ * sramrom_vio_handler - clean sramrom violation & print violation information
+ *			 for debugging.
+ */
+static void sramrom_vio_handler(struct mtk_devapc_context *devapc_ctx)
+{
+	const struct mtk_sramrom_sec_vio_desc *sramrom_vios;
+	struct mtk_devapc_vio_info *vio_info;
+	struct arm_smccc_res res;
+	size_t sramrom_vio_sta;
+	int sramrom_vio;
+	u32 rw;
+
+	sramrom_vios = devapc_ctx->soc->sramrom_sec_vios;
+	vio_info = devapc_ctx->soc->vio_info;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_CLR_SRAMROM_VIO,
+		      0, 0, 0, 0, 0, 0, 0, &res);
+
+	sramrom_vio = res.a0;
+	sramrom_vio_sta = res.a1;
+	vio_info->vio_addr = res.a2;
+
+	if (sramrom_vio == SRAM_VIOLATION)
+		pr_info(PFX "SRAM violation is triggered\n");
+	else if (sramrom_vio == ROM_VIOLATION)
+		pr_info(PFX "ROM violation is triggered\n");
+	else
+		return;
+
+	vio_info->master_id = (sramrom_vio_sta & sramrom_vios->vio_id_mask)
+			>> sramrom_vios->vio_id_shift;
+	vio_info->domain_id = (sramrom_vio_sta & sramrom_vios->vio_domain_mask)
+			>> sramrom_vios->vio_domain_shift;
+	rw = (sramrom_vio_sta & sramrom_vios->vio_rw_mask) >>
+			sramrom_vios->vio_rw_shift;
+
+	if (rw)
+		vio_info->write = 1;
+	else
+		vio_info->read = 1;
+
+	pr_info(PFX "%s: master_id:0x%x, domain_id:0x%x, rw:%s, vio_addr:0x%x\n",
+		__func__, vio_info->master_id, vio_info->domain_id,
+		rw ? "Write" : "Read", vio_info->vio_addr);
+}
+
+static void mask_module_irq(struct mtk_devapc_context *devapc_ctx,
+			    int slave_type, u32 module, bool mask)
+{
+	struct mtk_devapc_vio_info *vio_info = devapc_ctx->soc->vio_info;
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	u32 apc_register_index;
+	u32 apc_set_index;
+	void __iomem *reg;
+
+	apc_register_index = module / (MOD_NO_IN_1_DEVAPC * 2);
+	apc_set_index = module % (MOD_NO_IN_1_DEVAPC * 2);
+
+	if (slave_type < slave_type_num &&
+	    apc_register_index < vio_info->vio_mask_sta_num[slave_type]) {
+		reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_MASK,
+					apc_register_index);
+
+		if (mask)
+			writel(readl(reg) | (1 << apc_set_index), reg);
+		else
+			writel(readl(reg) & (~(1 << apc_set_index)), reg);
+
+	} else {
+		pr_err(PFX "%s: Out Of Boundary, slave_type:0x%x, module_index:0x%x, mask:%s\n",
+		       __func__, slave_type, module, mask ? "true" : "false");
+	}
+}
+
+static int check_vio_mask(struct mtk_devapc_context *devapc_ctx, int slave_type,
+			  u32 module)
+{
+	struct mtk_devapc_vio_info *vio_info = devapc_ctx->soc->vio_info;
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	u32 apc_register_index;
+	u32 apc_set_index;
+	void __iomem *reg;
+
+	apc_register_index = module / (MOD_NO_IN_1_DEVAPC * 2);
+	apc_set_index = module % (MOD_NO_IN_1_DEVAPC * 2);
+
+	if (slave_type < slave_type_num &&
+	    apc_register_index < vio_info->vio_mask_sta_num[slave_type])
+		reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_MASK,
+					apc_register_index);
+	else
+		return -EOVERFLOW;
+
+	if (readl(reg) & (0x1 << apc_set_index))
+		return VIOLATION_MASKED;
+
+	return 0;
+}
+
+static int32_t check_vio_status(struct mtk_devapc_context *devapc_ctx,
+				int slave_type, u32 module)
+{
+	struct mtk_devapc_vio_info *vio_info = devapc_ctx->soc->vio_info;
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	u32 apc_register_index;
+	u32 apc_set_index;
+	void __iomem *reg;
+
+	apc_register_index = module / (MOD_NO_IN_1_DEVAPC * 2);
+	apc_set_index = module % (MOD_NO_IN_1_DEVAPC * 2);
+
+	if (slave_type < slave_type_num &&
+	    apc_register_index < vio_info->vio_mask_sta_num[slave_type]) {
+		reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_STA,
+					apc_register_index);
+
+	} else {
+		pr_err(PFX "%s: Out Of Boundary, slave_type:0x%x, module_index:0x%x\n",
+		       __func__, slave_type, module);
+		return -EOVERFLOW;
+	}
+
+	if (readl(reg) & (0x1 << apc_set_index))
+		return VIOLATION_TRIGGERED;
+
+	return 0;
+}
+
+static int32_t clear_vio_status(struct mtk_devapc_context *devapc_ctx,
+				int slave_type, u32 module)
+{
+	struct mtk_devapc_vio_info *vio_info = devapc_ctx->soc->vio_info;
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	u32 apc_register_index;
+	u32 apc_set_index;
+	void __iomem *reg;
+
+	apc_register_index = module / (MOD_NO_IN_1_DEVAPC * 2);
+	apc_set_index = module % (MOD_NO_IN_1_DEVAPC * 2);
+
+	if (slave_type < slave_type_num &&
+	    apc_register_index < vio_info->vio_mask_sta_num[slave_type]) {
+		reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_STA,
+					apc_register_index);
+		writel(0x1 << apc_set_index, reg);
+
+	} else {
+		pr_err(PFX "%s: Out Of Boundary, slave_type:0x%x, module_index:0x%x\n",
+		       __func__, slave_type, module);
+		return -EOVERFLOW;
+	}
+
+	if (check_vio_status(devapc_ctx, slave_type, module))
+		return -EIO;
+
+	return 0;
+}
+
+static void devapc_vio_info_print(struct mtk_devapc_context *devapc_ctx)
+{
+	struct mtk_devapc_vio_info *vio_info;
+
+	vio_info = devapc_ctx->soc->vio_info;
+
+	/* Print violation information */
+	if (vio_info->write)
+		pr_info(PFX "Write Violation\n");
+	else if (vio_info->read)
+		pr_info(PFX "Read Violation\n");
+
+	pr_info(PFX "%s%x, %s%x, %s%x, %s%x\n",
+		"Vio Addr:0x", vio_info->vio_addr,
+		"High:0x", vio_info->vio_addr_high,
+		"Bus ID:0x", vio_info->master_id,
+		"Dom ID:0x", vio_info->domain_id);
+}
+
+/*
+ * check_type2_vio_status - there are type 2 slaves which violation information
+ *			    is stored in different register bank.
+ *
+ * Returns true if type2 violation is triggered.
+ */
+static bool check_type2_vio_status(struct mtk_devapc_context *devapc_ctx,
+				   int slave_type, int *vio_idx, int *index)
+{
+	u32 sramrom_vio_idx, mdp_vio_idx, disp2_vio_idx, mmsys_vio_idx;
+	const struct mtk_device_info **device_info;
+	const struct mtk_device_num *ndevices;
+	int sramrom_slv_type, mm2nd_slv_type;
+	bool mdp_vio, disp2_vio, mmsys_vio;
+	int i;
+
+	sramrom_slv_type = devapc_ctx->soc->vio_info->sramrom_slv_type;
+	sramrom_vio_idx = devapc_ctx->soc->vio_info->sramrom_vio_idx;
+
+	mm2nd_slv_type = devapc_ctx->soc->vio_info->mm2nd_slv_type;
+	mdp_vio_idx = devapc_ctx->soc->vio_info->mdp_vio_idx;
+	disp2_vio_idx = devapc_ctx->soc->vio_info->disp2_vio_idx;
+	mmsys_vio_idx = devapc_ctx->soc->vio_info->mmsys_vio_idx;
+
+	device_info = devapc_ctx->soc->device_info;
+	ndevices = devapc_ctx->soc->ndevices;
+
+	/* check SRAMROM violation */
+	if (slave_type == sramrom_slv_type &&
+	    check_vio_status(devapc_ctx, slave_type, sramrom_vio_idx)) {
+		pr_info(PFX "SRAMROM violation is triggered\n");
+		sramrom_vio_handler(devapc_ctx);
+
+		*vio_idx = sramrom_vio_idx;
+		for (i = 0; i < ndevices[slave_type].vio_slave_num; i++) {
+			if (device_info[slave_type][i].vio_index == *vio_idx)
+				*index = i;
+		}
+
+		return true;
+	}
+
+	/* check MM 2nd level violation */
+	if (slave_type == mm2nd_slv_type) {
+		mdp_vio = check_vio_status(devapc_ctx, slave_type,
+					   mdp_vio_idx) ==
+					   VIOLATION_TRIGGERED;
+		disp2_vio = check_vio_status(devapc_ctx, slave_type,
+					     disp2_vio_idx) ==
+					     VIOLATION_TRIGGERED;
+		mmsys_vio = check_vio_status(devapc_ctx, slave_type,
+					     mmsys_vio_idx) ==
+					     VIOLATION_TRIGGERED;
+
+		if (mdp_vio || disp2_vio || mmsys_vio) {
+			pr_info(PFX "MM2nd violation is triggered\n");
+			devapc_ctx->soc->mm2nd_vio_handler
+				(devapc_ctx->infracfg_base,
+				 devapc_ctx->soc->vio_info,
+				 mdp_vio,
+				 disp2_vio,
+				 mmsys_vio);
+		} else {
+			return false;
+		}
+
+		if (mdp_vio)
+			*vio_idx = mdp_vio_idx;
+		else if (disp2_vio)
+			*vio_idx = disp2_vio_idx;
+		else if (mmsys_vio)
+			*vio_idx = mmsys_vio_idx;
+
+		for (i = 0; i < ndevices[slave_type].vio_slave_num; i++) {
+			if (device_info[slave_type][i].vio_index == *vio_idx)
+				*index = i;
+		}
+
+		devapc_vio_info_print(devapc_ctx);
+		return true;
+	}
+
+	return false;
+}
+
+/*
+ * sync_vio_dbg - start to get violation information by selecting violation
+ *		  group and enable violation shift.
+ *
+ * Returns sync done or not
+ */
+static u32 sync_vio_dbg(struct mtk_devapc_context *devapc_ctx, int slave_type,
+			u32 shift_bit)
+{
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	void __iomem *pd_vio_shift_sta_reg;
+	void __iomem *pd_vio_shift_sel_reg;
+	void __iomem *pd_vio_shift_con_reg;
+	u32 shift_count;
+	u32 sync_done;
+
+	if (slave_type >= slave_type_num ||
+	    shift_bit >= (MOD_NO_IN_1_DEVAPC * 2)) {
+		pr_err(PFX "param check failed, slave_type:0x%x, shift_bit:0x%x\n",
+		       slave_type, shift_bit);
+		return 0;
+	}
+
+	pd_vio_shift_sta_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+						 VIO_SHIFT_STA, 0);
+	pd_vio_shift_sel_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+						 VIO_SHIFT_SEL, 0);
+	pd_vio_shift_con_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+						 VIO_SHIFT_CON, 0);
+
+	writel(0x1 << shift_bit, pd_vio_shift_sel_reg);
+	writel(0x1, pd_vio_shift_con_reg);
+
+	for (shift_count = 0; (shift_count < 100) &&
+	     ((readl(pd_vio_shift_con_reg) & 0x3) != 0x3);
+	     ++shift_count)
+		;
+
+	if ((readl(pd_vio_shift_con_reg) & 0x3) == 0x3)
+		sync_done = 1;
+	else
+		sync_done = 0;
+
+	/* Disable shift mechanism */
+	writel(0x0, pd_vio_shift_con_reg);
+	writel(0x0, pd_vio_shift_sel_reg);
+	writel(0x1 << shift_bit, pd_vio_shift_sta_reg);
+
+	return sync_done;
+}
+
+static const char * const perm_to_str[] = {
+	"NO_PROTECTION",
+	"SECURE_RW_ONLY",
+	"SECURE_RW_NS_R_ONLY",
+	"FORBIDDEN",
+	"NO_PERM_CTRL"
+};
+
+static const char *perm_to_string(u8 perm)
+{
+	if (perm < PERM_TYPE_NUM)
+		return perm_to_str[perm];
+	else
+		return perm_to_str[PERM_TYPE_NUM];
+}
+
+static void devapc_vio_reason(u8 perm)
+{
+	pr_info(PFX "Permission setting: %s\n", perm_to_string(perm));
+
+	if (perm == NO_PROTECTION || perm >= PERM_TYPE_NUM)
+		pr_info(PFX "Reason: power/clock is not enabled\n");
+	else if (perm == SEC_RW_ONLY ||
+		 perm == SEC_RW_NS_R ||
+		 perm == FORBIDDEN)
+		pr_info(PFX "Reason: might be permission denied\n");
+}
+
+/*
+ * get_permission - get slave's access permission of domain id.
+ *
+ * Returns the value of access permission
+ */
+static u8 get_permission(struct mtk_devapc_context *devapc_ctx, int slave_type,
+			 int module_index, int domain)
+{
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	const struct mtk_device_info **device_info;
+	const struct mtk_device_num *ndevices;
+	int sys_index, ctrl_index, vio_index;
+	struct arm_smccc_res res;
+	u32 ret, apc_set_index;
+
+	ndevices = devapc_ctx->soc->ndevices;
+
+	if (slave_type >= slave_type_num ||
+	    module_index >= ndevices[slave_type].vio_slave_num) {
+		pr_err(PFX "%s: param check failed, slave_type:0x%x, module_index:0x%x\n",
+		       __func__, slave_type, module_index);
+		return 0xFF;
+	}
+
+	device_info = devapc_ctx->soc->device_info;
+
+	sys_index = device_info[slave_type][module_index].sys_index;
+	ctrl_index = device_info[slave_type][module_index].ctrl_index;
+	vio_index = device_info[slave_type][module_index].vio_index;
+
+	if (sys_index == -1 || ctrl_index == -1)
+		return 0xFF;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_DAPC_PERM_GET, slave_type, sys_index,
+		      domain, ctrl_index, vio_index, 0, 0, &res);
+	ret = res.a0;
+
+	if (ret == DEAD) {
+		pr_err(PFX "permission get failed, ret:0x%x\n", ret);
+		return 0xFF;
+	}
+
+	apc_set_index = ctrl_index % MOD_NO_IN_1_DEVAPC;
+	ret = (ret & (0x3 << (apc_set_index * 2))) >> (apc_set_index * 2);
+
+	return (ret & 0x3);
+}
+
+/*
+ * mtk_devapc_vio_check - check violation shift status is raised or not.
+ *
+ * Returns the value of violation shift status reg
+ */
+static void mtk_devapc_vio_check(struct mtk_devapc_context *devapc_ctx,
+				 int slave_type, int *shift_bit)
+{
+	struct mtk_devapc_vio_info *vio_info;
+	u32 vio_shift_sta;
+	int i;
+
+	vio_info = devapc_ctx->soc->vio_info;
+	vio_shift_sta = readl(mtk_devapc_pd_get(devapc_ctx, slave_type,
+						VIO_SHIFT_STA, 0));
+
+	if (!vio_shift_sta) {
+		pr_info(PFX "violation is triggered before. shift_bit:0x%x\n",
+			*shift_bit);
+
+	} else if (vio_shift_sta & (0x1UL << *shift_bit)) {
+		pr_debug(PFX "vio_shift_sta:0x%x is matched with shift_bit:%d\n",
+			 vio_shift_sta, *shift_bit);
+
+	} else {
+		pr_info(PFX "vio_shift_sta:0x%x is not matched with shift_bit:%d\n",
+			vio_shift_sta, *shift_bit);
+
+		for (i = 0; i < MOD_NO_IN_1_DEVAPC * 2; i++) {
+			if (vio_shift_sta & (0x1 << i)) {
+				*shift_bit = i;
+				break;
+			}
+		}
+	}
+
+	vio_info->shift_sta_bit = *shift_bit;
+}
+
+static void devapc_extract_vio_dbg(struct mtk_devapc_context *devapc_ctx,
+				   int slave_type)
+{
+	void __iomem *vio_dbg0_reg, *vio_dbg1_reg, *vio_dbg2_reg;
+	const struct mtk_infra_vio_dbg_desc *vio_dbgs;
+	struct mtk_devapc_vio_info *vio_info;
+	u32 dbg0;
+
+	vio_dbg0_reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_DBG0, 0);
+	vio_dbg1_reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_DBG1, 0);
+	vio_dbg2_reg = mtk_devapc_pd_get(devapc_ctx, slave_type, VIO_DBG2, 0);
+
+	vio_dbgs = devapc_ctx->soc->vio_dbgs;
+	vio_info = devapc_ctx->soc->vio_info;
+
+	/* Extract violation information */
+	dbg0 = readl(vio_dbg0_reg);
+	vio_info->master_id = readl(vio_dbg1_reg);
+	vio_info->vio_addr = readl(vio_dbg2_reg);
+
+	vio_info->domain_id = (dbg0 & vio_dbgs->vio_dbg_dmnid)
+		>> vio_dbgs->vio_dbg_dmnid_start_bit;
+	vio_info->write = ((dbg0 & vio_dbgs->vio_dbg_w_vio)
+			>> vio_dbgs->vio_dbg_w_vio_start_bit) == 1;
+	vio_info->read = ((dbg0 & vio_dbgs->vio_dbg_r_vio)
+			>> vio_dbgs->vio_dbg_r_vio_start_bit) == 1;
+	vio_info->vio_addr_high = (dbg0 & vio_dbgs->vio_addr_high)
+		>> vio_dbgs->vio_addr_high_start_bit;
+
+	devapc_vio_info_print(devapc_ctx);
+}
+
+/*
+ * mtk_devapc_dump_vio_dbg - shift & dump the violation debug information.
+ */
+static bool mtk_devapc_dump_vio_dbg(struct mtk_devapc_context *devapc_ctx,
+				    int slave_type, int *vio_idx, int *index)
+{
+	const struct mtk_device_info **device_info;
+	const struct mtk_device_num *ndevices;
+	void __iomem *pd_vio_shift_sta_reg;
+	u32 shift_bit;
+	int i;
+
+	if (!vio_idx)
+		return NULL;
+
+	device_info = devapc_ctx->soc->device_info;
+	ndevices = devapc_ctx->soc->ndevices;
+
+	pd_vio_shift_sta_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+						 VIO_SHIFT_STA, 0);
+
+	for (i = 0; i < ndevices[slave_type].vio_slave_num; i++) {
+		*vio_idx = device_info[slave_type][i].vio_index;
+
+		if (check_vio_mask(devapc_ctx, slave_type, *vio_idx))
+			continue;
+
+		if (check_vio_status(devapc_ctx, slave_type, *vio_idx) !=
+				VIOLATION_TRIGGERED)
+			continue;
+
+		shift_bit = devapc_ctx->soc->shift_group_get(slave_type,
+							     *vio_idx);
+
+		mtk_devapc_vio_check(devapc_ctx, slave_type, &shift_bit);
+
+		if (!sync_vio_dbg(devapc_ctx, slave_type, shift_bit))
+			continue;
+
+		devapc_extract_vio_dbg(devapc_ctx, slave_type);
+		*index = i;
+
+		return true;
+	}
+
+	return false;
+}
+
+/*
+ * start_devapc - initialize devapc status and start receiving interrupt
+ *		  while devapc violation is triggered.
+ */
+static void start_devapc(struct mtk_devapc_context *devapc_ctx)
+{
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	const struct mtk_device_info **device_info;
+	const struct mtk_device_num *ndevices;
+	void __iomem *pd_vio_shift_sta_reg;
+	void __iomem *pd_apc_con_reg;
+	int slave_type, i, vio_idx, index;
+	u32 vio_shift_sta;
+
+	ndevices = devapc_ctx->soc->ndevices;
+
+	device_info = devapc_ctx->soc->device_info;
+
+	for (slave_type = 0; slave_type < slave_type_num; slave_type++) {
+		pd_apc_con_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+						   APC_CON, 0);
+		pd_vio_shift_sta_reg = mtk_devapc_pd_get(devapc_ctx, slave_type,
+							 VIO_SHIFT_STA, 0);
+
+		if (!pd_apc_con_reg || !pd_vio_shift_sta_reg || !device_info)
+			return;
+
+		/* Clear DEVAPC violation status */
+		writel(BIT(31), pd_apc_con_reg);
+
+		/* Clear violation shift status */
+		vio_shift_sta = readl(pd_vio_shift_sta_reg);
+		if (vio_shift_sta)
+			writel(vio_shift_sta, pd_vio_shift_sta_reg);
+
+		/* Clear type 2 violation status */
+		check_type2_vio_status(devapc_ctx, slave_type, &vio_idx, &i);
+
+		/* Clear violation status */
+		for (i = 0; i < ndevices[slave_type].vio_slave_num; i++) {
+			vio_idx = device_info[slave_type][i].vio_index;
+			if ((check_vio_status(devapc_ctx, slave_type, vio_idx)
+					      == VIOLATION_TRIGGERED) &&
+			     clear_vio_status(devapc_ctx, slave_type,
+					      vio_idx)) {
+				pr_warn(PFX "Clear vio status failed, slave_type:0x%x, vio_index:0x%x\n",
+					slave_type, vio_idx);
+
+				index = i;
+				mtk_devapc_dump_vio_dbg(devapc_ctx, slave_type,
+							&vio_idx, &index);
+				i = index - 1;
+			}
+
+			mask_module_irq(devapc_ctx, slave_type, vio_idx, false);
+		}
+	}
+}
+
+static DEFINE_SPINLOCK(devapc_lock);
+
+/*
+ * devapc_violation_irq - the devapc Interrupt Service Routine (ISR) will dump
+ *			  violation information including which master violates
+ *			  access slave.
+ */
+static irqreturn_t devapc_violation_irq(int irq_number,
+					struct mtk_devapc_context *devapc_ctx)
+{
+	u32 slave_type_num = devapc_ctx->soc->slave_type_num;
+	const struct mtk_device_info **device_info;
+	struct mtk_devapc_vio_info *vio_info;
+	int slave_type, vio_idx, index;
+	const char *vio_master;
+	unsigned long flags;
+	u8 perm;
+
+	spin_lock_irqsave(&devapc_lock, flags);
+
+	device_info = devapc_ctx->soc->device_info;
+	vio_info = devapc_ctx->soc->vio_info;
+	vio_idx = -1;
+	index = -1;
+
+	/* There are multiple DEVAPC_PD */
+	for (slave_type = 0; slave_type < slave_type_num; slave_type++) {
+		if (!check_type2_vio_status(devapc_ctx, slave_type, &vio_idx,
+					    &index))
+			if (!mtk_devapc_dump_vio_dbg(devapc_ctx, slave_type,
+						     &vio_idx, &index))
+				continue;
+
+		/* Ensure that violation info are written before
+		 * further operations
+		 */
+		smp_mb();
+
+		mask_module_irq(devapc_ctx, slave_type, vio_idx, true);
+
+		clear_vio_status(devapc_ctx, slave_type, vio_idx);
+
+		perm = get_permission(devapc_ctx, slave_type, index,
+				      vio_info->domain_id);
+
+		vio_master = devapc_ctx->soc->master_get
+			(vio_info->master_id,
+			 vio_info->vio_addr,
+			 slave_type,
+			 vio_info->shift_sta_bit,
+			 vio_info->domain_id);
+
+		if (!vio_master)
+			vio_master = "UNKNOWN_MASTER";
+
+		pr_info(PFX "Violation - slave_type:0x%x, sys_index:0x%x, ctrl_index:0x%x, vio_index:0x%x\n",
+			slave_type,
+			device_info[slave_type][index].sys_index,
+			device_info[slave_type][index].ctrl_index,
+			device_info[slave_type][index].vio_index);
+
+		pr_info(PFX "Violation Master: %s\n", vio_master);
+
+		devapc_vio_reason(perm);
+
+		mask_module_irq(devapc_ctx, slave_type, vio_idx, false);
+	}
+
+	spin_unlock_irqrestore(&devapc_lock, flags);
+	return IRQ_HANDLED;
+}
+
+int mtk_devapc_probe(struct platform_device *pdev, struct mtk_devapc_soc *soc)
+{
+	struct device_node *node = pdev->dev.of_node;
+	struct mtk_devapc_context *devapc_ctx;
+	u32 slave_type_num;
+	int slave_type;
+	int ret;
+
+	if (IS_ERR(node))
+		return -ENODEV;
+
+	devapc_ctx = devm_kzalloc(&pdev->dev, sizeof(struct mtk_devapc_context),
+				  GFP_KERNEL);
+	if (!devapc_ctx)
+		return -ENOMEM;
+
+	devapc_ctx->soc = soc;
+	slave_type_num = devapc_ctx->soc->slave_type_num;
+
+	for (slave_type = 0; slave_type < slave_type_num; slave_type++) {
+		devapc_ctx->devapc_pd_base[slave_type] =
+			of_iomap(node, slave_type);
+		if (!devapc_ctx->devapc_pd_base[slave_type])
+			return -EINVAL;
+	}
+
+	devapc_ctx->infracfg_base = of_iomap(node, slave_type_num + 1);
+	if (!devapc_ctx->infracfg_base)
+		return -EINVAL;
+
+	devapc_ctx->devapc_irq = irq_of_parse_and_map(node, 0);
+	if (!devapc_ctx->devapc_irq)
+		return -EINVAL;
+
+	/* CCF (Common Clock Framework) */
+	devapc_ctx->devapc_infra_clk = devm_clk_get(&pdev->dev,
+						    "devapc-infra-clock");
+
+	if (IS_ERR(devapc_ctx->devapc_infra_clk))
+		return -EINVAL;
+
+	if (clk_prepare_enable(devapc_ctx->devapc_infra_clk))
+		return -EINVAL;
+
+	start_devapc(devapc_ctx);
+
+	ret = devm_request_irq(&pdev->dev, devapc_ctx->devapc_irq,
+			       (irq_handler_t)devapc_violation_irq,
+			       IRQF_TRIGGER_NONE, "devapc", devapc_ctx);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+int mtk_devapc_remove(struct platform_device *dev)
+{
+	return 0;
+}
+
+MODULE_DESCRIPTION("Mediatek Device APC Driver");
+MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h b/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h
new file mode 100644
index 0000000..1e58a3e
--- /dev/null
+++ b/drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h
@@ -0,0 +1,182 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#ifndef __DEVAPC_MTK_MULTI_AO_H__
+#define __DEVAPC_MTK_MULTI_AO_H__
+
+#include <linux/platform_device.h>
+#include <linux/types.h>
+
+/******************************************************************************
+ * VARIABLE DEFINATION
+ ******************************************************************************/
+#define MOD_NO_IN_1_DEVAPC	16
+#define VIOLATION_TRIGGERED	1
+#define VIOLATION_MASKED	1
+#define DEAD			0xdeadbeaf
+#define PFX			"[DEVAPC]: "
+#define SLAVE_TYPE_NUM_MAX	5
+
+#define devapc_log(p, s, fmt, args...) \
+	do { \
+		typeof(p) (_p) = (p); \
+		((_p) += scnprintf(_p, sizeof(s) - strlen(s), fmt, ##args)); \
+	} while (0)
+
+#define UNUSED(x)		(void)(x)
+
+/******************************************************************************
+ * DATA STRUCTURE & FUNCTION DEFINATION
+ ******************************************************************************/
+enum DEVAPC_PD_REG_TYPE {
+	VIO_MASK = 0,
+	VIO_STA,
+	VIO_DBG0,
+	VIO_DBG1,
+	VIO_DBG2,
+	APC_CON,
+	VIO_SHIFT_STA,
+	VIO_SHIFT_SEL,
+	VIO_SHIFT_CON,
+	PD_REG_TYPE_NUM,
+};
+
+enum DEVAPC_UT_CMD {
+	DEVAPC_UT_DAPC_VIO = 1,
+	DEVAPC_UT_SRAM_VIO,
+};
+
+enum DEVAPC_DOM_ID {
+	DOMAIN_0 = 0,
+	DOMAIN_1,
+	DOMAIN_2,
+	DOMAIN_3,
+	DOMAIN_4,
+	DOMAIN_5,
+	DOMAIN_6,
+	DOMAIN_7,
+	DOMAIN_8,
+	DOMAIN_9,
+	DOMAIN_10,
+	DOMAIN_11,
+	DOMAIN_12,
+	DOMAIN_13,
+	DOMAIN_14,
+	DOMAIN_15,
+	DOMAIN_OTHERS,
+};
+
+enum SRAMROM_VIO {
+	ROM_VIOLATION = 0,
+	SRAM_VIOLATION,
+};
+
+enum DEVAPC_PERM_TYPE {
+	NO_PROTECTION = 0,
+	SEC_RW_ONLY,
+	SEC_RW_NS_R,
+	FORBIDDEN,
+	PERM_TYPE_NUM,
+};
+
+struct mtk_devapc_dbg_status {
+	bool enable_ut;
+	bool enable_dapc; /* dump APC */
+};
+
+struct mtk_device_info {
+	int sys_index;
+	int ctrl_index;
+	int vio_index;
+};
+
+struct mtk_device_num {
+	int slave_type;
+	u32 vio_slave_num;
+};
+
+struct mtk_devapc_vio_info {
+	bool read;
+	bool write;
+	u32 vio_addr;
+	u32 vio_addr_high;
+	u32 master_id;
+	u32 domain_id;
+	int *vio_mask_sta_num;
+	int sramrom_slv_type;
+	int sramrom_vio_idx;
+	int mm2nd_slv_type;
+	int mdp_vio_idx;
+	int disp2_vio_idx;
+	int mmsys_vio_idx;
+	int shift_sta_bit;
+};
+
+struct mtk_infra_vio_dbg_desc {
+	u32 vio_dbg_mstid;
+	u8 vio_dbg_mstid_start_bit;
+	u32 vio_dbg_dmnid;
+	u8 vio_dbg_dmnid_start_bit;
+	u32 vio_dbg_w_vio;
+	u8 vio_dbg_w_vio_start_bit;
+	u32 vio_dbg_r_vio;
+	u8 vio_dbg_r_vio_start_bit;
+	u32 vio_addr_high;
+	u8 vio_addr_high_start_bit;
+};
+
+struct mtk_sramrom_sec_vio_desc {
+	u32 vio_id_mask;
+	u8 vio_id_shift;
+	u32 vio_domain_mask;
+	u8 vio_domain_shift;
+	u32 vio_rw_mask;
+	u8 vio_rw_shift;
+};
+
+struct mtk_devapc_pd_desc {
+	u32 pd_vio_mask_offset;
+	u32 pd_vio_sta_offset;
+	u32 pd_vio_dbg0_offset;
+	u32 pd_vio_dbg1_offset;
+	u32 pd_apc_con_offset;
+	u32 pd_shift_sta_offset;
+	u32 pd_shift_sel_offset;
+	u32 pd_shift_con_offset;
+};
+
+struct mtk_devapc_soc {
+	struct mtk_devapc_dbg_status *dbg_stat;
+	const char * const *slave_type_arr;
+	u32 slave_type_num;
+	const struct mtk_device_info *device_info[SLAVE_TYPE_NUM_MAX];
+	const struct mtk_device_num *ndevices;
+	struct mtk_devapc_vio_info *vio_info;
+	const struct mtk_infra_vio_dbg_desc *vio_dbgs;
+	const struct mtk_sramrom_sec_vio_desc *sramrom_sec_vios;
+	const u32 *devapc_pds;
+
+	/* platform specific operations */
+	const char* (*master_get)(u32 bus_id, u32 vio_addr,
+				  int slave_type, int shift_sta_bit,
+				  int domain);
+	void (*mm2nd_vio_handler)(void __iomem *infracfg,
+				  struct mtk_devapc_vio_info *vio_info,
+				  bool mdp_vio, bool disp2_vio, bool mmsys_vio);
+	u32 (*shift_group_get)(int slave_type, u32 vio_index);
+};
+
+struct mtk_devapc_context {
+	struct clk *devapc_infra_clk;
+	u32 devapc_irq;
+	void __iomem *devapc_pd_base[4];
+	void __iomem *infracfg_base;
+	struct mtk_devapc_soc *soc;
+};
+
+int mtk_devapc_probe(struct platform_device *pdev, struct mtk_devapc_soc *soc);
+int mtk_devapc_remove(struct platform_device *dev);
+
+#endif /* __DEVAPC_MTK_MULTI_AO_H__ */
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
