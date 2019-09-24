Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5C3BC084
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A+1TH4ZSsxQfPyqeVFKH72O7egHOwrVtFM+WKLUeCJo=; b=V5r
	O5rkUrDMzGQ5y8Yyi9hvYEPUS885QFWgYrhGz4Q3HMN9zRuxU2wLx8nsZ+LlQmXSSY8g8gsxbtEjt
	eAtRz23KqSz1WvoQgdU2Oy6s6D8SPWVKwR7M0QNR+JTv6zsktWPey+Yr79SU7wcCtf9sfAfbye09e
	jfsKiDRq9/MCBCPyo8rMVmuWzBZyECZyK5narG3Xt/aWDpjzWbrcOpvELwt5l0lQCDpK5paFQ/ygz
	UlAws73HGgpuiol4ZvJfq0nbRAMofUdtZMjVPeTTSQPFFBuTiFgcnY28zpwoSwdiSLReUH/hwaKxY
	KRJXUmJ9a6+GvmmFQJF+nxB+wsoYJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCb0S-0007A3-U8; Tue, 24 Sep 2019 02:56:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCb06-0006xj-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:56:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A7A28200386;
 Tue, 24 Sep 2019 04:56:21 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0D92320021A;
 Tue, 24 Sep 2019 04:56:17 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7BA284029F;
 Tue, 24 Sep 2019 10:56:11 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: leoyang.li@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, ran.wang_1@nxp.com
Subject: [v3,1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Date: Tue, 24 Sep 2019 10:45:46 +0800
Message-Id: <20190924024548.4356-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_195627_956609_4843AFE2 
X-CRM114-Status: GOOD (  11.44  )
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
Change in v3:
	- update commit message
	- rename property name
	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr

Change in v2:
	- fix stype problems

 drivers/soc/fsl/rcpm.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
index 82c0ad5e663e..7f42b17d3f29 100644
--- a/drivers/soc/fsl/rcpm.c
+++ b/drivers/soc/fsl/rcpm.c
@@ -13,6 +13,8 @@
 #include <linux/slab.h>
 #include <linux/suspend.h>
 #include <linux/kernel.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
 
 #define RCPM_WAKEUP_CELL_MAX_SIZE	7
 
@@ -29,6 +31,9 @@ static int rcpm_pm_prepare(struct device *dev)
 	struct rcpm		*rcpm;
 	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
 	int i, ret, idx;
+	struct regmap * scfg_addr_regmap = NULL;
+	u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
+	u32 reg_value = 0;
 
 	rcpm = dev_get_drvdata(dev);
 	if (!rcpm)
@@ -63,6 +68,22 @@ static int rcpm_pm_prepare(struct device *dev)
 					tmp |= value[i + 1];
 					iowrite32be(tmp, rcpm->ippdexpcr_base + i * 4);
 				}
+				/* Workaround of errata A-008646 on SoC LS1021A: There is a bug of
+				 * register ippdexpcr1. Reading configuration register RCPM_IPPDEXPCR1
+				 * always return zero. So save ippdexpcr1's value to register SCFG_SPARECR8.
+				 * And the value of ippdexpcr1 will be read from SCFG_SPARECR8.
+				 */
+				scfg_addr_regmap = syscon_regmap_lookup_by_phandle(np, "fsl,ippdexpcr-alt-addr");
+				if (scfg_addr_regmap) {
+					if (of_property_read_u32_array(dev->of_node,
+					    "fsl,ippdexpcr-alt-addr", reg_offset, rcpm->wakeup_cells + 1)) {
+						scfg_addr_regmap = NULL;
+						continue;
+					}
+					regmap_read(scfg_addr_regmap, reg_offset[i + 1], &reg_value);
+					/* Write value to register SCFG_SPARECR8 */
+					regmap_write(scfg_addr_regmap, reg_offset[i + 1], tmp | reg_value);
+				}
 			}
 		}
 	} while (ws = wakeup_source_get_next(ws));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
