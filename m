Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ABAE6B5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SqgLs80e5OF3hwpOL0z+5RbnsoN3s4LE927KJjfY4x0=; b=DqX0sqvMuLCiqrmLguEjTpuUEw
	7BxEraDUDxlCgXzQYhTywdIKvpQHfdpyNlRL777mPYcufVDxtAKqDguXAUOulH3GiS3JBN/Ju0L2l
	YcoYwX1LtuiXuGYvOdmucs0W+tpuudYW09tkBHoFBAL2s8EQi8AIyO3jAKgmQSBSC9Q7XmnQwEZLw
	t26wpj7pCVhHRB/v0ySNtDwIgSekGN/7yXYy8bjKFgJngqhn1fP7IhHrCe1IQnzA1xOo0u8w1HwLO
	LhQ9BNIe8VCe/NPgcAcFwoYOx0VT5vhftucJz0l2kHsE9Vz0cSAag0GTM8KpJL8GA6x2OGsIN+ZBO
	l4b6cIpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvWK-0006X5-88; Mon, 28 Oct 2019 03:16:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvVq-0006HW-CN
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:16:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C4711A0A7B;
 Mon, 28 Oct 2019 04:16:07 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1A9A91A0B05;
 Mon, 28 Oct 2019 04:16:03 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8BF9D402FC;
 Mon, 28 Oct 2019 11:15:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] ARM: imx: Add serial number support for i.MX6Q
Date: Mon, 28 Oct 2019 11:12:42 +0800
Message-Id: <1572232370-31580-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
References: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201610_553371_CE8F0961 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6Q has a 64-bit SoC unique ID stored in OCOTP, it can be used
as SoC serial number, see below example:

root@imx6qpdlsolox:~# cat /sys/devices/soc0/serial_number
240F31D4E1FDFCA7

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 0b137ee..3293c1d 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -1,15 +1,20 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/err.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/regmap.h>
 #include <linux/slab.h>
 #include <linux/sys_soc.h>
 
 #include "hardware.h"
 #include "common.h"
 
+#define OCOTP_UID_H	0x420
+#define OCOTP_UID_L	0x410
+
 unsigned int __mxc_cpu_type;
 static unsigned int imx_soc_revision;
 
@@ -76,9 +81,13 @@ void __init imx_aips_allow_unprivileged_access(
 struct device * __init imx_soc_device_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
+	const char *ocotp_compat = NULL;
 	struct soc_device *soc_dev;
 	struct device_node *root;
+	struct regmap *ocotp;
 	const char *soc_id;
+	u64 soc_uid = 0;
+	u32 val;
 	int ret;
 
 	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
@@ -128,6 +137,7 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX6SX";
 		break;
 	case MXC_CPU_IMX6Q:
+		ocotp_compat = "fsl,imx6q-ocotp";
 		soc_id = "i.MX6Q";
 		break;
 	case MXC_CPU_IMX6UL:
@@ -153,18 +163,36 @@ struct device * __init imx_soc_device_init(void)
 	}
 	soc_dev_attr->soc_id = soc_id;
 
+	if (ocotp_compat) {
+		ocotp = syscon_regmap_lookup_by_compatible(ocotp_compat);
+		if (IS_ERR(ocotp))
+			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
+
+		regmap_read(ocotp, OCOTP_UID_H, &val);
+		soc_uid = val;
+		regmap_read(ocotp, OCOTP_UID_L, &val);
+		soc_uid <<= 32;
+		soc_uid |= val;
+	}
+
 	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
 					   (imx_soc_revision >> 4) & 0xf,
 					   imx_soc_revision & 0xf);
 	if (!soc_dev_attr->revision)
 		goto free_soc;
 
+	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", soc_uid);
+	if (!soc_dev_attr->serial_number)
+		goto free_rev;
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev))
-		goto free_rev;
+		goto free_serial_number;
 
 	return soc_device_to_device(soc_dev);
 
+free_serial_number:
+	kfree(soc_dev_attr->serial_number);
 free_rev:
 	kfree(soc_dev_attr->revision);
 free_soc:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
