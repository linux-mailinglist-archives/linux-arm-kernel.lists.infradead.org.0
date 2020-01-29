Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD5B14C6FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 08:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQkVTUMFss7jsHgcOZ/+Ok8LNjcQR13NirttSkK24Ts=; b=SzLdWWYxdikd50
	bJFQtxgDNfuZUebc8dgbyg+QHbQq2wsE438BAlUY0bFAcYA3Myqh1HnB4eKXcHhQOFZ7Dn/Lj3249
	fB4yYWhKaq9vxVWxfd/OiY0wQSVtZ/EAQGlpjkrY0Jyk0V719mAXtvYDfMTEVyG6OG4e0UD49dJ4m
	2B/PLIqm60wqVyzOax0tcoS07mXJvG5gbser/5i/XEcUMiO2V4UI6T4Bz+k6TQs5e9cEe0rrfJx4b
	Pgn/GWyGNFC8cwzmAbXcC2oR3sCDC2hSqM+Nrm5k4+kCX3tmMq6V6g9+Z8w0LlNzp+zrNPeWiAX93
	RQ9erQONc2dR4wQEdPsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwhx0-00016E-JF; Wed, 29 Jan 2020 07:39:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwhwZ-0000uD-1k; Wed, 29 Jan 2020 07:39:26 +0000
X-UUID: 0e62cf1759c8454ca129a2fb177955a2-20200128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ihJg6nDDfiwxmrOIMOxnedl2OexPLbIqUMUcg8QFLQA=; 
 b=SCBPwcpcolSaFPCrFKTMHaZ7FCb3H6BfW2x1QLm2jwZrEvbQpnlb8zmQgwbVelZSqA2QZE/5kMVdWdFsOV4/Y2jNGHW9nIk+viZ8l/nVevhRvMOx1w1d5wdC4B5PdUztwhs/itRbg2JOu5QTK/pYCbYnu+fDo0RZ7A5VnX/NpnY=;
X-UUID: 0e62cf1759c8454ca129a2fb177955a2-20200128
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1323122115; Tue, 28 Jan 2020 23:39:19 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 Jan 2020 23:40:32 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 15:37:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 Jan 2020 15:39:12 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH v3 4/4] scsi: ufs-mediatek: gate ref-clk during Auto-Hibern8
Date: Wed, 29 Jan 2020 15:39:02 +0800
Message-ID: <20200129073902.5786-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200129073902.5786-1-stanley.chu@mediatek.com>
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 93F3D5635F3DD161DD5DA950D7204A42ABF40BAE1E4F29319C737A0899891C622000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_233923_093497_EF2326F3 
X-CRM114-Status: GOOD (  12.75  )
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In current UFS driver design, hba->uic_link_state will not
be changed after link enters Hibern8 state by Auto-Hibern8 mechanism.
In this case, reference clock gating will be skipped unless special
handling is implemented in vendor's callbacks.

Support reference clock gating during Auto-Hibern8 period in
MediaTek Chipsets: If link state is already in Hibern8 while
Auto-Hibern8 feature is enabled, gate reference clock in
setup_clocks callback.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 38 +++++++++++++++++++++++----------
 drivers/scsi/ufs/ufs-mediatek.h | 12 +++++++++++
 2 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index d78897a14905..0ce08872d671 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -143,6 +143,17 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 	return 0;
 }
 
+static u32 ufs_mtk_link_get_state(struct ufs_hba *hba)
+{
+	u32 val;
+
+	ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
+	val = ufshcd_readl(hba, REG_UFS_PROBE);
+	val = val >> 28;
+
+	return val;
+}
+
 /**
  * ufs_mtk_setup_clocks - enables/disable clocks
  * @hba: host controller instance
@@ -155,7 +166,7 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 				enum ufs_notify_change_status status)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
-	int ret = -EINVAL;
+	int ret = 0;
 
 	/*
 	 * In case ufs_mtk_init() is not yet done, simply ignore.
@@ -165,19 +176,24 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 	if (!host)
 		return 0;
 
-	switch (status) {
-	case PRE_CHANGE:
-		if (!on && !ufshcd_is_link_active(hba)) {
+	if (!on && status == PRE_CHANGE) {
+		if (!ufshcd_is_link_active(hba)) {
 			ufs_mtk_setup_ref_clk(hba, on);
 			ret = phy_power_off(host->mphy);
+		} else {
+			/*
+			 * Gate ref-clk if link state is in Hibern8
+			 * triggered by Auto-Hibern8.
+			 */
+			if (!ufshcd_can_hibern8_during_gating(hba) &&
+			    ufshcd_is_auto_hibern8_enabled(hba) &&
+			    ufs_mtk_link_get_state(hba) ==
+			    VS_LINK_HIBERN8)
+				ufs_mtk_setup_ref_clk(hba, on);
 		}
-		break;
-	case POST_CHANGE:
-		if (on) {
-			ret = phy_power_on(host->mphy);
-			ufs_mtk_setup_ref_clk(hba, on);
-		}
-		break;
+	} else if (on && status == POST_CHANGE) {
+		ret = phy_power_on(host->mphy);
+		ufs_mtk_setup_ref_clk(hba, on);
 	}
 
 	return ret;
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index fccdd979d6fb..492414e5f481 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -53,6 +53,18 @@
 #define VS_SAVEPOWERCONTROL         0xD0A6
 #define VS_UNIPROPOWERDOWNCONTROL   0xD0A8
 
+/*
+ * Vendor specific link state
+ */
+enum {
+	VS_LINK_DISABLED            = 0,
+	VS_LINK_DOWN                = 1,
+	VS_LINK_UP                  = 2,
+	VS_LINK_HIBERN8             = 3,
+	VS_LINK_LOST                = 4,
+	VS_LINK_CFG                 = 5,
+};
+
 /*
  * SiP commands
  */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
