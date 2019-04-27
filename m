Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78149B300
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 09:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Td8U5zYLG3zXx5RlqfdsncmLfHObq95rEKyGennnt7w=; b=VaX/qTMqxgK3Gdj5YCmeCa0loZ
	W0HaZbx/eIu5+/CJvFVMG589osh1k2EvUFVpPSLuvSL7El3klmRbppxwqisAP9yOODfzs7YfS3L4j
	seeNAOLI3birFZywsJ8I+pUbInmlfnNwAvxAEbgRSQf+bvr7UPCBZymxK4+0KU46uPplg+uDQeLIH
	8o41PMho3uOdwDNijXu3GCA9DG+IIjBZa7sQs/YU2+5BlJXR4yFCaKg4ngkrJUnkJsDHeHZVezO/X
	L8WtlS84oSDEcdijGcpytQMiFOw42L9ktDgsul+dMxCq6DzCKsCABkuN0bNPyvwkVtoZ56cCI/5bs
	ne6pvINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKHUi-00036A-0s; Sat, 27 Apr 2019 07:11:32 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKHTs-0002RF-Aj
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 07:10:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DFA2A1A002F;
 Sat, 27 Apr 2019 09:10:35 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D20831A000B;
 Sat, 27 Apr 2019 09:10:35 +0200 (CEST)
Received: from fsr-ub1864-101.ea.freescale.net
 (fsr-ub1864-101.ea.freescale.net [10.171.82.13])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 51C2C205ED;
 Sat, 27 Apr 2019 09:10:35 +0200 (CEST)
From: laurentiu.tudor@nxp.com
To: netdev@vger.kernel.org, madalin.bucur@nxp.com, roy.pledge@nxp.com,
 camelia.groza@nxp.com, leoyang.li@nxp.com
Subject: [PATCH v2 1/9] soc/fsl/qman: fixup liodns only on ppc targets
Date: Sat, 27 Apr 2019 10:10:23 +0300
Message-Id: <20190427071031.6563-2-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_001041_118272_7589E2E9 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

ARM SoCs use SMMU so the liodn fixup done in the qman driver is no
longer making sense and it also breaks the ICID settings inherited
from u-boot. Do the fixups only for PPC targets.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
---
 drivers/soc/fsl/qbman/qman_ccsr.c | 2 +-
 drivers/soc/fsl/qbman/qman_priv.h | 9 ++++++++-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qbman/qman_ccsr.c b/drivers/soc/fsl/qbman/qman_ccsr.c
index 109b38de3176..a6bb43007d03 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -596,7 +596,7 @@ static int qman_init_ccsr(struct device *dev)
 }
 
 #define LIO_CFG_LIODN_MASK 0x0fff0000
-void qman_liodn_fixup(u16 channel)
+void __qman_liodn_fixup(u16 channel)
 {
 	static int done;
 	static u32 liodn_offset;
diff --git a/drivers/soc/fsl/qbman/qman_priv.h b/drivers/soc/fsl/qbman/qman_priv.h
index 75a8f905f8f7..04515718cfd9 100644
--- a/drivers/soc/fsl/qbman/qman_priv.h
+++ b/drivers/soc/fsl/qbman/qman_priv.h
@@ -193,7 +193,14 @@ extern struct gen_pool *qm_cgralloc; /* CGR ID allocator */
 u32 qm_get_pools_sdqcr(void);
 
 int qman_wq_alloc(void);
-void qman_liodn_fixup(u16 channel);
+#ifdef CONFIG_FSL_PAMU
+#define qman_liodn_fixup __qman_liodn_fixup
+#else
+static inline void qman_liodn_fixup(u16 channel)
+{
+}
+#endif
+void __qman_liodn_fixup(u16 channel);
 void qman_set_sdest(u16 channel, unsigned int cpu_idx);
 
 struct qman_portal *qman_create_affine_portal(
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
