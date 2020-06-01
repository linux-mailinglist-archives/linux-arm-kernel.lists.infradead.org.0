Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A618E1EA22B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f9Ws0rd3uxnw7CmA2QbPYiMc+RK8modF6wni80aXzM=; b=ocyJ/82Qvtxu0f
	AKSHq5qhUyM9oRueX2sNWwrK0UqPLBWiugj8YmL7zb2/84Am3KkDF+chcWnsjeVYoeqmEdkOqnE7b
	baPv2xDGZt4VYgvMSGW6kYIvf9aJF/fPtiwdHKCgZsee7ljIeP1Y+ziyh0N+aDfzaRW+JTuMFffDN
	ji7gzP8M4NFObboJsKf+WUMdraq9LGZAlWKtGKrYO5DpIYA8SGQriYF9y4Oz7sqOm3hpAB4Kh/Hmf
	AuhPhEnpFuzdOASAnuAd+laFbzdivaXmjhi/WnhLAiTh/EowbP/Q918uW4o6ZdIER2sz8X5peIfPl
	Hp39xF9WJot/PvYPYDOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhzQ-00019L-Lm; Mon, 01 Jun 2020 10:48:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhyB-0008U6-DO; Mon, 01 Jun 2020 10:47:05 +0000
X-UUID: 279fbd99eefd4d4e916d08cceac89461-20200601
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ffvmQC8t/hn3+jnrp17+5Ooh5VVEaAxae4PFdHA2xRE=; 
 b=rsZ05fmHpOwcDjggbiz5R/eIbtWkvbp43DuOvfeO8r7e2TBpeVrUCvtlrAxyDDTEqmiBO6H26xHvQbGEJ+OhvayASzTC0OjVBMxOtrKGgtVZubFp3mta2HniCezqzu7sXXEF3pgtO9/EIQ4J1iC3mPlPwlwpaSsjzdrjUMtL5Hk=;
X-UUID: 279fbd99eefd4d4e916d08cceac89461-20200601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1811915542; Mon, 01 Jun 2020 02:46:52 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 03:46:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 18:46:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 1 Jun 2020 18:46:46 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 4/5] scsi: ufs-mediatek: Fix unbalanced clock on/off
Date: Mon, 1 Jun 2020 18:46:45 +0800
Message-ID: <20200601104646.15436-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200601104646.15436-1-stanley.chu@mediatek.com>
References: <20200601104646.15436-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3B690E7BA8B2E87E504F51C7332648DAE36C3531BDA6C53F261C0676475742F02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_034703_497296_1ECEAAD9 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek UFS clocks are separated to two parts and controlled
by different modules: ufs-mediatek and phy-ufs-mediatek.

If both Auto-Hibern8 and clk-gating feature are enabled, mphy
power control is not balanced thus unbalanced control also
happens to the clocks probed by phy-ufs-mediatek module.

Fix this issue by

- Promise usage of phy_power_on/off balanced

- Remove phy_power_on/off control in suspend/resume vops since
  both can be handled in setup_clock vops only

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Peter Wang <peter.wang@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 60 ++++++++++++++++++++-------------
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 2 files changed, 38 insertions(+), 23 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 5f41b7b7db8f..1cc7bea1468b 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -205,6 +205,23 @@ int ufs_mtk_wait_link_state(struct ufs_hba *hba, u32 state,
 	return -ETIMEDOUT;
 }
 
+static void ufs_mtk_mphy_power_on(struct ufs_hba *hba, bool on)
+{
+	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
+	struct phy *mphy = host->mphy;
+
+	if (!mphy)
+		return;
+
+	if (on && !host->mphy_powered_on)
+		phy_power_on(mphy);
+	else if (!on && host->mphy_powered_on)
+		phy_power_off(mphy);
+	else
+		return;
+	host->mphy_powered_on = on;
+}
+
 /**
  * ufs_mtk_setup_clocks - enables/disable clocks
  * @hba: host controller instance
@@ -218,6 +235,7 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 	int ret = 0;
+	bool clk_pwr_off = false;
 
 	/*
 	 * In case ufs_mtk_init() is not yet done, simply ignore.
@@ -228,25 +246,29 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 		return 0;
 
 	if (!on && status == PRE_CHANGE) {
-		if (!ufshcd_is_link_active(hba)) {
-			ufs_mtk_setup_ref_clk(hba, on);
-			ret = phy_power_off(host->mphy);
-		} else {
+		if (ufshcd_is_link_off(hba)) {
+			clk_pwr_off = true;
+		} else if (ufshcd_is_link_hibern8(hba) ||
+			 (!ufshcd_can_hibern8_during_gating(hba) &&
+			 ufshcd_is_auto_hibern8_enabled(hba))) {
 			/*
-			 * Gate ref-clk if link state is in Hibern8
-			 * triggered by Auto-Hibern8.
+			 * Gate ref-clk and poweroff mphy if link state is in
+			 * OFF or Hibern8 by either Auto-Hibern8 or
+			 * ufshcd_link_state_transition().
 			 */
-			if (!ufshcd_can_hibern8_during_gating(hba) &&
-			    ufshcd_is_auto_hibern8_enabled(hba)) {
-				ret = ufs_mtk_wait_link_state(hba,
-							      VS_LINK_HIBERN8,
-							      15);
-				if (!ret)
-					ufs_mtk_setup_ref_clk(hba, on);
-			}
+			ret = ufs_mtk_wait_link_state(hba,
+						      VS_LINK_HIBERN8,
+						      15);
+			if (!ret)
+				clk_pwr_off = true;
+		}
+
+		if (clk_pwr_off) {
+			ufs_mtk_setup_ref_clk(hba, on);
+			ufs_mtk_mphy_power_on(hba, on);
 		}
 	} else if (on && status == POST_CHANGE) {
-		ret = phy_power_on(host->mphy);
+		ufs_mtk_mphy_power_on(hba, on);
 		ufs_mtk_setup_ref_clk(hba, on);
 	}
 
@@ -538,7 +560,6 @@ static void ufs_mtk_vreg_set_lpm(struct ufs_hba *hba, bool lpm)
 static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	int err;
-	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 
 	if (ufshcd_is_link_hibern8(hba)) {
 		err = ufs_mtk_link_set_lpm(hba);
@@ -559,20 +580,13 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 		ufs_mtk_vreg_set_lpm(hba, true);
 	}
 
-	if (!ufshcd_is_link_active(hba))
-		phy_power_off(host->mphy);
-
 	return 0;
 }
 
 static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
-	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 	int err;
 
-	if (!ufshcd_is_link_active(hba))
-		phy_power_on(host->mphy);
-
 	if (ufshcd_is_link_hibern8(hba)) {
 		ufs_mtk_vreg_set_lpm(hba, false);
 		err = ufs_mtk_link_set_hpm(hba);
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index fc42dcbfd800..6052ec105aba 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -91,6 +91,7 @@ enum {
 struct ufs_mtk_host {
 	struct ufs_hba *hba;
 	struct phy *mphy;
+	bool mphy_powered_on;
 	bool unipro_lpm;
 	bool ref_clk_enabled;
 	u16 ref_clk_ungating_wait_us;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
