Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22947DAAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CbwWWDZDuvq7m7nKjFVzIlPjbMtFn62xIXkbD8bivFs=; b=GasiKcH446Dm0dQd8Kri0HzPEF
	vvGcPP3f6BqhBr5NiBFZ2SD+WZ8uSdEmuQeHaT+0E8KIpJcf77Qyon01Rn0Ko+1SP3GfamOeR2fRq
	PJpL/u/fpNJE85r0mUiVinrpI70+NXYth78Oy1laudccpKhTfrgnjsDO/LqAGnDbG88DUGVJP7f1N
	8SBgNaAaNYiiWLeflL0nf14l66RtcXLdH01qg+Hygixa8PYCpkZ2/2KqcRTF3caW2eeui3ovYQkno
	bIosGTy8bqTVF7PGaLrZTf5UmYM8eo2qKQT64osRiRUeimzcGt5By3ODlYNtg7FPUhMbQIWBqq5+0
	0r0ed30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9eB-00022X-7d; Thu, 01 Aug 2019 11:53:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9dg-0001nb-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:52:58 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E3FD1A02A9;
 Thu,  1 Aug 2019 13:52:55 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 715C61A01FC;
 Thu,  1 Aug 2019 13:52:55 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0C39C205E3;
 Thu,  1 Aug 2019 13:52:55 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v5 2/5] enetc: Clean up makefile
Date: Thu,  1 Aug 2019 14:52:50 +0300
Message-Id: <1564660373-4607-3-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564660373-4607-1-git-send-email-claudiu.manoil@nxp.com>
References: <1564660373-4607-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_045256_841513_80FE44C9 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clean up overcomplicated makefile to make it more maintainable.
Basically, there's a set of common objects shared between
the PF and VF driver modules.  This can be implemented in a
simpler way, without conditionals, less repetition, allowing
also for easier updates in the future.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
v5 - added this patch

 drivers/net/ethernet/freescale/enetc/Makefile | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/Makefile b/drivers/net/ethernet/freescale/enetc/Makefile
index 7139e414dccf..164453a5dc1d 100644
--- a/drivers/net/ethernet/freescale/enetc/Makefile
+++ b/drivers/net/ethernet/freescale/enetc/Makefile
@@ -1,19 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0
+
+common-objs := enetc.o enetc_cbdr.o enetc_ethtool.o
+
 obj-$(CONFIG_FSL_ENETC) += fsl-enetc.o
-fsl-enetc-$(CONFIG_FSL_ENETC) += enetc.o enetc_cbdr.o enetc_ethtool.o \
-				 enetc_mdio.o
+fsl-enetc-y := enetc_pf.o enetc_mdio.o $(common-objs)
 fsl-enetc-$(CONFIG_PCI_IOV) += enetc_msg.o
-fsl-enetc-objs := enetc_pf.o $(fsl-enetc-y)
 
 obj-$(CONFIG_FSL_ENETC_VF) += fsl-enetc-vf.o
-
-ifeq ($(CONFIG_FSL_ENETC)$(CONFIG_FSL_ENETC_VF), yy)
-fsl-enetc-vf-objs := enetc_vf.o
-else
-fsl-enetc-vf-$(CONFIG_FSL_ENETC_VF) += enetc.o enetc_cbdr.o \
-				       enetc_ethtool.o
-fsl-enetc-vf-objs := enetc_vf.o $(fsl-enetc-vf-y)
-endif
+fsl-enetc-vf-y := enetc_vf.o $(common-objs)
 
 obj-$(CONFIG_FSL_ENETC_PTP_CLOCK) += fsl-enetc-ptp.o
-fsl-enetc-ptp-$(CONFIG_FSL_ENETC_PTP_CLOCK) += enetc_ptp.o
+fsl-enetc-ptp-y := enetc_ptp.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
