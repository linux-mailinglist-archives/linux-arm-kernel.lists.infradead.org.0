Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89E18312D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:24:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZSVic0QkXm6KygxzKkzVHsjJSiHJSqjXPV59aDsloU=; b=qGlbqxSz1o1iCG
	xJfKwJ7tAXBQ2Ifg0WknvuJ3WRM7OLSy2f1LTxFoEVNuzpvY12MdzZLISgSLd9WtpQS9ubpCyxU+S
	E69AwRrgk0s7GsQ0lh2DrcCBMxvgEzwA4grwh3KGCs0g+mU6GhEF8VSsd941tEIm8TQUnrZyNhK1P
	xIHUjNWEvndRZvT1udGKL2NMql+M5CRLFNpJLY4H6DpgWn/2B1/p2BpaIUHgwcQi+SEH3aqsXb0Hj
	ZugoVGaff/1qOuShWyVhEsK5TvSh8wOlxz1vGoaYPKpt8EUf6FU13SI0veF0Rw6pxL+WRjQl5c941
	ZRLZK67gWsfoav5sbH+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNot-0005G4-7X; Thu, 12 Mar 2020 13:24:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNod-0005Dl-Tu; Thu, 12 Mar 2020 13:24:01 +0000
X-UUID: 2df339d19946437299b3870935ab7898-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=V0NA4KPO9Qx6CWFwXlXwaAgsNy5l/HosjCAdNi25TcM=; 
 b=PyjpsZIQvhTCsIDavHa5LWp3HnhUGTSwoycCKh15fxrCEthEADXatTImVcs0xKKI3N0unqAxUYdOWp9laqS4de3HLpWc9ceGpJtZn9NckNoAKhAxwgR27BkaZF6USBY955amFM5IDwoA11gLpJJF72hXH+OKX10n4F2WadkPIy8=;
X-UUID: 2df339d19946437299b3870935ab7898-20200312
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1354140953; Thu, 12 Mar 2020 05:23:55 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 06:23:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 21:22:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 21:21:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 3/8] scsi: ufs: use an enum for host capabilities
Date: Thu, 12 Mar 2020 21:23:45 +0800
Message-ID: <20200312132350.18061-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312132350.18061-1-stanley.chu@mediatek.com>
References: <20200312132350.18061-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0BEB4D93DAC092F45A1519B6385E4B70DB87E75A0CB19D3376E0ED452461A4382000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062400_139961_E66BFC8F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 5cf79d2319a6..fec004cd8054 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -501,6 +501,43 @@ enum ufshcd_quirks {
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
@@ -653,34 +690,6 @@ struct ufs_hba {
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
