Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ADCB3849
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q3k7jEb559T5Abvf5ezh/yylWtlE747BY3v8eqIclZc=; b=dbI
	NlYNim7OWdcTVYVEQjpKlzKtHOmUgWk/Z75BXcerh5A+ywbUAwAmOUzIFw6igEdzxAO6kT1MSTBhS
	6zXN8iRw2Vi+z8YPFo9dZpp/EU3sUklp19SQ6sRA8qA5gIuSmYqKfIic/iL2Z0vxaMYmreUHE6sx3
	uX+4Vx8xiqdJZq//+9at0dtUyqh4PUxvjtPkW4pK8eQB8t2uGTlZZIP3dN1Pyy7lU97Qay6msHIJq
	x3wUYDwMA1t3bZ8EKhumb/kjzwyD2Yz4dVselZkpbN6VlSBscRXOzA5wUQXDZseJFVodx0hm33Q80
	IxlWvoEp32q/n2I+ILSGXY9nV6oKklA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oO0-0005q5-8O; Mon, 16 Sep 2019 10:37:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oMs-0005Np-RL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:36:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6520C1A0572;
 Mon, 16 Sep 2019 12:36:21 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 22DBD1A0207;
 Mon, 16 Sep 2019 12:36:17 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 92EDF402BF;
 Mon, 16 Sep 2019 18:36:11 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: leoyang.li@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [1/3] soc: fsl: fix that flextimer cannot wakeup system in deep sleep
 on LS1021A
Date: Mon, 16 Sep 2019 18:25:54 +0800
Message-Id: <20190916102556.16655-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_033627_132774_CF5BE9F7 
X-CRM114-Status: GOOD (  11.71  )
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

Why:
    - Cannot write register RCPM_IPPDEXPCR1 on LS1021A,
      Register RCPM_IPPDEXPCR1's default value is zero.
      So the register value that reading from register
      RCPM_IPPDEXPCR1 is always zero.

How:
    - Save register RCPM_IPPDEXPCR1's value to
      register SCFG_SPARECR8.(uboot's psci also
      need reading value from the register SCFG_SPARECR8
      to set register RCPM_IPPDEXPCR1)

Signed-off-by: Biwen Li <biwen.li@nxp.com>
---
 drivers/soc/fsl/rcpm.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
index 82c0ad5e663e..2bf37d38efe5 100644
--- a/drivers/soc/fsl/rcpm.c
+++ b/drivers/soc/fsl/rcpm.c
@@ -13,6 +13,8 @@
 #include <linux/slab.h>
 #include <linux/suspend.h>
 #include <linux/kernel.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
 
 #define RCPM_WAKEUP_CELL_MAX_SIZE	7
 
@@ -63,6 +65,33 @@ static int rcpm_pm_prepare(struct device *dev)
 					tmp |= value[i + 1];
 					iowrite32be(tmp, rcpm->ippdexpcr_base + i * 4);
 				}
+				#ifdef CONFIG_SOC_LS1021A
+				/* Workaround: There is a bug of register ippdexpcr1,
+				 * cannot write it but can read it.Tt's default value is zero,
+				 * then read it will always returns zero.
+				 * So save ippdexpcr1's value to register SCFG_SPARECR8.
+				 * And the value of ippdexpcr1 will be read from SCFG_SPARECR8.
+				 */
+				{
+					struct regmap * rcpm_scfg_regmap = NULL;
+					u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
+					u32 reg_value = 0;
+
+					rcpm_scfg_regmap = syscon_regmap_lookup_by_phandle(np, "fsl,rcpm-scfg");
+					if (rcpm_scfg_regmap) {
+						if (of_property_read_u32_array(dev->of_node,
+						    "fsl,rcpm-scfg", reg_offset, rcpm->wakeup_cells + 1)) {
+							rcpm_scfg_regmap = NULL;
+							continue;
+						}
+						regmap_read(rcpm_scfg_regmap, reg_offset[i + 1], &reg_value);
+						/* Write value to register SCFG_SPARECR8 */
+						regmap_write(rcpm_scfg_regmap, reg_offset[i + 1], tmp | reg_value);
+					}
+				}
+				#endif
+
+
 			}
 		}
 	} while (ws = wakeup_source_get_next(ws));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
