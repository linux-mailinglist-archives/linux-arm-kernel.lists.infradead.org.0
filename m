Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C80D1899BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx6U18y6eADTGtlz2d6JJ/432aKM6Crwsd3wpP0vrQI=; b=uMpL6zEkGlVmjl
	sM9OvHbrQWiqyuoUsYliD/Jv+0FL6iD+hwTFgKkOexte01gmbUmuFbtqhI/zj6JLmLi+pzGZYzyVA
	B5LDCXbk8rVU11KVxd++ZPx/KBkdWYQAGXtbI4DPISckcV2TrQotPzEMgvcFxn+gsB1LzmVMtOPgn
	DUoWMa7iN0hkIb7YF40QnMdKk9iU7JcPGWPBSbys6sWMKAdDqgADv/xjbnNhGaXfV2oNdFlOTGDKk
	xDbjK5vdP+2JoYJTDlJ6rfoaHYzSA2htwj8KRCXq1oYY21V+kpAOBgEGSjd9PFWK0w4jt0aLqAL9L
	0maH0fnKlsq+mHUFT8Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEW9B-0000z0-Of; Wed, 18 Mar 2020 10:42:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEW7k-0008JT-3V; Wed, 18 Mar 2020 10:40:37 +0000
X-UUID: 868d4e69ceb143f794f022035b4201bc-20200318
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8CsnDEoht1HR62sbtRaos/Ikmqwn0aOPwl68cKdnFtk=; 
 b=DUrJ08qkdvqofy1Ee+ifC6zrTfvtU883/E187P30p/rnkB3DQJ7xxrpYIiKnpalGnJNFLj7qNgaweaEnpXkNL149r+ZrdimqVvB2Lm+94lq5x3HYDMWLMOXCA7CetwpIyS1Rd9rSZ1a5ZhiL1MHgYnGU1gqMQC+03WP0B+bNhP8=;
X-UUID: 868d4e69ceb143f794f022035b4201bc-20200318
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1180875787; Wed, 18 Mar 2020 02:40:29 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 03:41:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 18:37:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Mar 2020 18:40:30 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <bvanassche@acm.org>
Subject: [PATCH v7 2/7] scsi: ufs: use an enum for host capabilities
Date: Wed, 18 Mar 2020 18:40:11 +0800
Message-ID: <20200318104016.28049-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200318104016.28049-1-stanley.chu@mediatek.com>
References: <20200318104016.28049-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B5F6A90A8B5F0220DF009EF9DA5A32DEC1080D3166FEEFC9EBC5D1180162BAA52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_034032_266945_54CAA3A9 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
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
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 5c10777154fc..52425371082a 100644
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
@@ -664,34 +701,6 @@ struct ufs_hba {
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
