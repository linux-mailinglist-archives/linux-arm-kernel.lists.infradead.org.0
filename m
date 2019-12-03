Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65C910FD9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c2F1gDUsW7F4enmQ8/uv11Gfzafhhc95geTy5pBogNQ=; b=n6q
	s+NlltNn4MAb8pHerDcX8p1oPvyXTLl3UC8de81WehRa909uOCE1eSeLuvuCgPjXQ4r2kupgFJNi5
	6SVFFwsxMABsHriBnf4yWb+TqHt/mZMkBE1GMHMnw2a6e4k5zwXg0J13gMaMvYzA4KYkWqnoeli24
	NUHe5uYrbQ+vS4ow136n8K1cPN3YDHhA7i7v/x8WRyxvsnkUgXt+8+ho2D1Da+caAvvQf/PjdblUP
	V2gDGthZ8gU76/SvQdqYdJXHQ3W7xfXhbFbyo9XkbPkJkGrH3+aftkePwGDoQka+f8ssWDJ1AuJui
	SV1oEx/SvOWY+He1guOgHphWiYwvnyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7Is-0007iQ-4P; Tue, 03 Dec 2019 12:29:18 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Ii-0007hW-Fs
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:29:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 882F51A1340;
 Tue,  3 Dec 2019 13:29:06 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C7F6A1A0383;
 Tue,  3 Dec 2019 13:29:01 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 77C614028F;
 Tue,  3 Dec 2019 20:28:55 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: leoyang.li@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, ran.wang_1@nxp.com
Subject: [v5 1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Date: Tue,  3 Dec 2019 20:28:16 +0800
Message-Id: <20191203122818.21941-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_042908_813045_1D5D7C0A 
X-CRM114-Status: GOOD (  13.12  )
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
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Biwen Li <biwen.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Description:
	- Reading configuration register RCPM_IPPDEXPCR1
	  always return zero

Workaround:
	- Save register RCPM_IPPDEXPCR1's value to
	  register SCFG_SPARECR8.(uboot's psci also
	  need reading value from the register SCFG_SPARECR8
	  to set register RCPM_IPPDEXPCR1)

Impact:
	- FlexTimer module will cannot wakeup system in
	  deep sleep on SoC LS1021A

Signed-off-by: Biwen Li <biwen.li@nxp.com>
---
Change in v5:
	- update the patch, because of rcpm driver has updated.

Change in v4:
	- rename property name
	  fsl,ippdexpcr-alt-addr -> fsl,ippdexpcr1-alt-addr

Change in v3:
	- update commit message
	- rename property name
	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr

Change in v2:
  	- fix stype problems

 drivers/soc/fsl/rcpm.c | 47 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
index a093dbe6d2cb..775c618f0456 100644
--- a/drivers/soc/fsl/rcpm.c
+++ b/drivers/soc/fsl/rcpm.c
@@ -6,13 +6,16 @@
 //
 // Author: Ran Wang <ran.wang_1@nxp.com>
 
+#include <linux/acpi.h>
 #include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/platform_device.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/slab.h>
 #include <linux/suspend.h>
-#include <linux/kernel.h>
 
 #define RCPM_WAKEUP_CELL_MAX_SIZE	7
 
@@ -37,6 +40,9 @@ static int rcpm_pm_prepare(struct device *dev)
 	struct device_node	*np = dev->of_node;
 	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
 	u32 setting[RCPM_WAKEUP_CELL_MAX_SIZE] = {0};
+	struct regmap *scfg_addr_regmap = NULL;
+	u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
+	u32 reg_value = 0;
 
 	rcpm = dev_get_drvdata(dev);
 	if (!rcpm)
@@ -90,6 +96,43 @@ static int rcpm_pm_prepare(struct device *dev)
 			tmp |= ioread32be(address);
 			iowrite32be(tmp, address);
 		}
+		/*
+		 * Workaround of errata A-008646 on SoC LS1021A:
+		 * There is a bug of register ippdexpcr1.
+		 * Reading configuration register RCPM_IPPDEXPCR1
+		 * always return zero. So save ippdexpcr1's value
+		 * to register SCFG_SPARECR8.And the value of
+		 * ippdexpcr1 will be read from SCFG_SPARECR8.
+		 */
+		if (device_property_present(dev, "fsl,ippdexpcr1-alt-addr")) {
+			if (dev_of_node(dev)) {
+				scfg_addr_regmap = syscon_regmap_lookup_by_phandle(np,
+										   "fsl,ippdexpcr1-alt-addr");
+			} else if (is_acpi_node(dev->fwnode)) {
+				dev_err(dev, "not support acpi for rcpm\n");
+				continue;
+			}
+
+			if (scfg_addr_regmap && (i == 1)) {
+				if (device_property_read_u32_array(dev,
+				    "fsl,ippdexpcr1-alt-addr",
+				    reg_offset,
+				    1 + sizeof(u64)/sizeof(u32))) {
+					scfg_addr_regmap = NULL;
+					continue;
+				}
+				/* Read value from register SCFG_SPARECR8 */
+				regmap_read(scfg_addr_regmap,
+					    (u32)(((u64)(reg_offset[1] << (sizeof(u32) * 8) |
+					    reg_offset[2])) & 0xffffffff),
+					    &reg_value);
+				/* Write value to register SCFG_SPARECR8 */
+				regmap_write(scfg_addr_regmap,
+					     (u32)(((u64)(reg_offset[1] << (sizeof(u32) * 8) |
+					     reg_offset[2])) & 0xffffffff),
+					     tmp | reg_value);
+			}
+		}
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
