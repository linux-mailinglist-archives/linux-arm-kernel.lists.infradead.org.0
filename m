Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2398E179E90
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 05:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOWsaPMi8m9yvkbx24Ujw70ZYrj4zWwZkflVJ/RoRwY=; b=TW3nohpBAlgOPK
	yFfpFEk1gztjGAZ86nvgRXebtsSV4kQiCqojpRFW1kqfBlhVdqAgLThCn8woWWITTP/ZxuUTdERWW
	uiM0mDSUmTKS/gvjtw3rzM8dfxgErjJ+g9/i0b6mQTGt07UFxIchdw2i6eE8u4pMDWabx2EXgPYXP
	8gJp9mf5vfk4zSMiRCJCwW69P64QcsemFoNaDHIhNzhKfKRRIsYnAYCUPeeow1fJYp0C4z99YyXH7
	rWgVz4DzhyjnCeX+BHJCm+cTDDkHa0gXafa6WVoPx5p8txV4GNhtvTeyRpN8RmZCg2bkw+sRVqHHq
	sBIrdmvQORtL4SHYKEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hqj-0004mi-FZ; Thu, 05 Mar 2020 04:11:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hqH-0004c0-PM; Thu, 05 Mar 2020 04:10:39 +0000
X-UUID: c9066949629541df9b473d9743815720-20200304
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=j4nSuYPozmP9Ve1URoWtgPyLgtJxDtwpFHY2z+VU3bI=; 
 b=EIJZZFxhurw7kFeEUrW8BXvW0ObagqSxfqvaKdjmPQGUykDBpb5qPMFRK60zWl5/aYkwDM6NGCfnCVAy0uxsGgZJRmzsyWqCa2HNOBYNELqKt3lXO0HM/XYFr+rtxIhfPV66O0K9pXhXc9APp6g5Vm4G3jvfr9hVysRwuUTGrAg=;
X-UUID: c9066949629541df9b473d9743815720-20200304
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1913557365; Wed, 04 Mar 2020 20:10:33 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 20:08:01 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 12:05:57 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 5 Mar 2020 12:06:20 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 2/4] scsi: ufs: use an enum for host capabilities
Date: Thu, 5 Mar 2020 12:07:02 +0800
Message-ID: <20200305040704.10645-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200305040704.10645-1-stanley.chu@mediatek.com>
References: <20200305040704.10645-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_201037_833335_605F7526 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use an enum to specify the host capabilities instead of #defines inside the
structure definition.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 4e235cef99bc..49ade1bfd085 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -510,6 +510,43 @@ enum ufshcd_quirks {
 	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
 };
 
+enum ufshcd_caps {
+	/* Allow dynamic clk gating */
+	UFSHCD_CAP_CLK_GATING				= 1 << 0,
+
+	/* Allow hiberb8 with clk gating */
+	UFSHCD_CAP_HIBERN8_WITH_CLK_GATING		= 1 << 1,
+
+	/* Allow dynamic clk scaling */
+	UFSHCD_CAP_CLK_SCALING				= 1 << 2,
+
+	/* Allow auto bkops to enabled during runtime suspend */
+	UFSHCD_CAP_AUTO_BKOPS_SUSPEND			= 1 << 3,
+
+	/*
+	 * This capability allows host controller driver to use the UFS HCI's
+	 * interrupt aggregation capability.
+	 * CAUTION: Enabling this might reduce overall UFS throughput.
+	 */
+	UFSHCD_CAP_INTR_AGGR				= 1 << 4,
+
+	/*
+	 * This capability allows the device auto-bkops to be always enabled
+	 * except during suspend (both runtime and suspend).
+	 * Enabling this capability means that device will always be allowed
+	 * to do background operation when it's active but it might degrade
+	 * the performance of ongoing read/write operations.
+	 */
+	UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND = 1 << 5,
+
+	/*
+	 * This capability allows host controller driver to automatically
+	 * enable runtime power management by itself instead of waiting
+	 * for userspace to control the power management.
+	 */
+	UFSHCD_CAP_RPM_AUTOSUSPEND			= 1 << 6,
+};
+
 /**
  * struct ufs_hba - per adapter private structure
  * @mmio_base: UFSHCI base register address
@@ -662,34 +699,6 @@ struct ufs_hba {
 	struct ufs_clk_gating clk_gating;
 	/* Control to enable/disable host capabilities */
 	u32 caps;
-	/* Allow dynamic clk gating */
-#define UFSHCD_CAP_CLK_GATING	(1 << 0)
-	/* Allow hiberb8 with clk gating */
-#define UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (1 << 1)
-	/* Allow dynamic clk scaling */
-#define UFSHCD_CAP_CLK_SCALING	(1 << 2)
-	/* Allow auto bkops to enabled during runtime suspend */
-#define UFSHCD_CAP_AUTO_BKOPS_SUSPEND (1 << 3)
-	/*
-	 * This capability allows host controller driver to use the UFS HCI's
-	 * interrupt aggregation capability.
-	 * CAUTION: Enabling this might reduce overall UFS throughput.
-	 */
-#define UFSHCD_CAP_INTR_AGGR (1 << 4)
-	/*
-	 * This capability allows the device auto-bkops to be always enabled
-	 * except during suspend (both runtime and suspend).
-	 * Enabling this capability means that device will always be allowed
-	 * to do background operation when it's active but it might degrade
-	 * the performance of ongoing read/write operations.
-	 */
-#define UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND (1 << 5)
-	/*
-	 * This capability allows host controller driver to automatically
-	 * enable runtime power management by itself instead of waiting
-	 * for userspace to control the power management.
-	 */
-#define UFSHCD_CAP_RPM_AUTOSUSPEND (1 << 6)
 
 	struct devfreq *devfreq;
 	struct ufs_clk_scaling clk_scaling;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
