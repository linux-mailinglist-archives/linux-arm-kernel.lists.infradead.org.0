Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1538915F962
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 23:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5zaWx4Mng8ewCcSfX6x6YLnFD+ehvLXUlS019mL5dnY=; b=A+2
	wAr20Lnx1l+RDzI0UpyZJj7zkkr3POrqC1rEXnuj8pYSAB6xLbex1Os1yEY5QzjgwpkJBiyRmILqm
	KcQUSfTiG/YvFPZsytjPywH3HrQgohVVxlf/4YQFemi4xN9krJXbkTctoWtPZfZ4YhrRIjGvaOOUm
	BtLiRC5jJHLL1wOnGClCyuCpZuYaXfUQqKy2/wawyLM1qyrtBT4vkzqNhCz2Uj/i5FP4Ic0V9JjBR
	Vj9L8+5Mqj7M8Y2zkaLgNOo0vu7Z/zJL6gf/lpUeCKGCsGVkmsXLuAkQyCGPxnueRIURJ2aWnOz3i
	SDqWC7D4ntgdIyjjKEli+SuCasNrt9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2jQM-0004ZR-A0; Fri, 14 Feb 2020 22:27:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2jQG-0004Yx-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 22:26:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 40D4B20AC81;
 Fri, 14 Feb 2020 23:26:45 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0388A20AC7D;
 Fri, 14 Feb 2020 23:26:45 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 2B20640A63; Fri, 14 Feb 2020 15:26:44 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH] iommu/arm-smmu: fix module name for parameters
Date: Fri, 14 Feb 2020 16:26:27 -0600
Message-Id: <1581719188-8682-1-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_142656_506098_3F9B52C0 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
introduced a side effect that changed the module name from arm-smmu to
arm-smmu-mod.  This breaks the users of kernel parameters for the driver
(e.g. arm-smmu.disable_bypass).  This patch changes the module name for
parameters back to arm-smmu to be consistent with older kernel.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/iommu/arm-smmu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..8d5a19bfde5c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -58,6 +58,8 @@
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
 
+#undef MODULE_PARAM_PREFIX
+#define MODULE_PARAM_PREFIX "arm-smmu."
 static int force_stage;
 module_param(force_stage, int, S_IRUGO);
 MODULE_PARM_DESC(force_stage,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
