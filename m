Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F0FE6EE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1iqow8GEDPvk5dwNrFwyi8dQn3oEIhab3y++gn3lm4o=; b=rtL
	Mrwwdupg+JewyPUCrKg1cfyxklXrMOVZ6ht75ciiVtS5UWVck93GYDYvVluKvtDIc6qZUruUBoOU0
	+lJG1138GdRhvFDWA264FJKHkvi7nmm1uLbL3v3LFE8teWF4rUHgZWvXCe312mrsBAoy/ku1SqnpX
	kacztNFC0tckJmvAEKsp5eMz/9wXyGS+QLLuijEu7F7riEZA1UY9EBHGRLuh40hPP+aycXZUuNmsq
	HErZ4+/mA+0yikd97NTY70Pm6IYZALn6Y8jvI/u1f6KmUFlznAh9TQwffxuTlEtAZZ3yUHg90BsMz
	t2tFHgJXO+AY5NZYw9lpPxP0wU1prcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1BS-0004av-Ts; Mon, 28 Oct 2019 09:19:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1BH-0004aG-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:19:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 136412000A9;
 Mon, 28 Oct 2019 10:19:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A40420009D;
 Mon, 28 Oct 2019 10:19:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 069544029E;
 Mon, 28 Oct 2019 17:19:07 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] ARM: imx: Add serial number support for i.MX6/7 SoCs
Date: Mon, 28 Oct 2019 17:16:01 +0800
Message-Id: <1572254161-18914-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_021920_223908_809B6349 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

i.MX6/7 SoCs have a 64-bit SoC unique ID stored in OCOTP,
it can be used as SoC serial number, add this support for
i.MX6Q/6DL/6SL/6SX/6SLL/6UL/6ULL/6ULZ/7D, see below example
on i.MX6Q:

root@imx6qpdlsolox:~# cat /sys/devices/soc0/serial_number
240F31D4E1FDFCA7

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- squash the whole patch set into 1 patch for this special case.
---
 arch/arm/mach-imx/cpu.c | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 0b137ee..d811803 100644
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
@@ -119,30 +128,39 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX53";
 		break;
 	case MXC_CPU_IMX6SL:
+		ocotp_compat = "fsl,imx6sl-ocotp";
 		soc_id = "i.MX6SL";
 		break;
 	case MXC_CPU_IMX6DL:
+		ocotp_compat = "fsl,imx6q-ocotp";
 		soc_id = "i.MX6DL";
 		break;
 	case MXC_CPU_IMX6SX:
+		ocotp_compat = "fsl,imx6sx-ocotp";
 		soc_id = "i.MX6SX";
 		break;
 	case MXC_CPU_IMX6Q:
+		ocotp_compat = "fsl,imx6q-ocotp";
 		soc_id = "i.MX6Q";
 		break;
 	case MXC_CPU_IMX6UL:
+		ocotp_compat = "fsl,imx6ul-ocotp";
 		soc_id = "i.MX6UL";
 		break;
 	case MXC_CPU_IMX6ULL:
+		ocotp_compat = "fsl,imx6ul-ocotp";
 		soc_id = "i.MX6ULL";
 		break;
 	case MXC_CPU_IMX6ULZ:
+		ocotp_compat = "fsl,imx6ul-ocotp";
 		soc_id = "i.MX6ULZ";
 		break;
 	case MXC_CPU_IMX6SLL:
+		ocotp_compat = "fsl,imx6sll-ocotp";
 		soc_id = "i.MX6SLL";
 		break;
 	case MXC_CPU_IMX7D:
+		ocotp_compat = "fsl,imx7d-ocotp";
 		soc_id = "i.MX7D";
 		break;
 	case MXC_CPU_IMX7ULP:
@@ -153,18 +171,36 @@ struct device * __init imx_soc_device_init(void)
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
