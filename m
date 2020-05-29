Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6B1E795A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fU4AdFSUgP4jbPzxLztRyfX0yHrjr2qQKh88wF2McpQ=; b=BkX/NRKL+VtbPr
	IX4J8Zbw7VZ0LtFgcvpUzqLeKohTbSLpZ3zpHsp6d1bH2MYigp0ikWagAYLIQKNx1EJuDVzCAfuUV
	+8MfYHHsmlIh1rz665ItoVLs2+iTIN70fUi/pZeoh8sT4YIQpf0WiIRobGhsVar1kTH/E1o/sbJrZ
	4daF2RiolcROol4yDm/gF3DMs710f2m0C6Z/kmiF75qK5Oog+yhRpLymPa/T2XqaMQq3aBsWdYPAk
	UOdNm6XYJZpYwqzBnvtlhCO5e0uxJeIgpcKEFon7SVgrOAloGwdLiM2xWx1ouNu7G1oaHfGetHRm9
	k6BdpA8eT5+bQuG7c5Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebGS-0006kp-Nv; Fri, 29 May 2020 09:25:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebEd-0005Or-DM; Fri, 29 May 2020 09:23:30 +0000
X-UUID: 1df8e41fff034a30aea51c50945ffc18-20200529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=NOKlv7zM4LRTruut6jgdhOjKQWFJHmbjuA06RuI5wcQ=; 
 b=GQgGtA2y+2a6srv8ldiq1g47YvQxUB5fqMKbjAE7fE7jc9Z0A920YW63wNAiBq7cCJQzGepW/zyhJbtxkTSsv8m5AIXVBa7mPrrbfENcr+XFVx28dNov42ThCTdi16+lo+cXr6V9XKbqZx5nh9euHX0i8iLYMZ7OnhaLiXzyZDQ=;
X-UUID: 1df8e41fff034a30aea51c50945ffc18-20200529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 924117970; Fri, 29 May 2020 01:23:15 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 02:23:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 17:23:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 29 May 2020 17:23:10 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 4/5] scsi: ufs-mediatek: Fix unbalanced clock on/off
Date: Fri, 29 May 2020 17:23:09 +0800
Message-ID: <20200529092310.1106-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200529092310.1106-1-stanley.chu@mediatek.com>
References: <20200529092310.1106-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 83DAA400323415FEC60197EA0FAEFFA75DFAD431B49159932AD28C3CD9C819842000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_022327_462005_4CDEC515 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: pengshun.zhao@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
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
 drivers/scsi/ufs/ufs-mediatek.c | 56 +++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 24 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 5f41b7b7db8f..de9e643fb8dd 100644
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
@@ -228,25 +245,24 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 		return 0;
 
 	if (!on && status == PRE_CHANGE) {
-		if (!ufshcd_is_link_active(hba)) {
-			ufs_mtk_setup_ref_clk(hba, on);
-			ret = phy_power_off(host->mphy);
-		} else {
-			/*
-			 * Gate ref-clk if link state is in Hibern8
-			 * triggered by Auto-Hibern8.
-			 */
-			if (!ufshcd_can_hibern8_during_gating(hba) &&
-			    ufshcd_is_auto_hibern8_enabled(hba)) {
-				ret = ufs_mtk_wait_link_state(hba,
-							      VS_LINK_HIBERN8,
-							      15);
-				if (!ret)
-					ufs_mtk_setup_ref_clk(hba, on);
+		/*
+		 * Gate ref-clk and poweroff mphy if link state is in OFF
+		 * or Hibern8 by either ufshcd_link_state_transition() or
+		 * Auto-Hibern8.
+		 */
+		if (!ufshcd_is_link_active(hba) ||
+			(!ufshcd_can_hibern8_during_gating(hba) &&
+			ufshcd_is_auto_hibern8_enabled(hba))) {
+			ret = ufs_mtk_wait_link_state(hba,
+						      VS_LINK_HIBERN8,
+						      15);
+			if (!ret) {
+				ufs_mtk_setup_ref_clk(hba, on);
+				ufs_mtk_mphy_power_on(hba, on);
 			}
 		}
 	} else if (on && status == POST_CHANGE) {
-		ret = phy_power_on(host->mphy);
+		ufs_mtk_mphy_power_on(hba, on);
 		ufs_mtk_setup_ref_clk(hba, on);
 	}
 
@@ -538,7 +554,6 @@ static void ufs_mtk_vreg_set_lpm(struct ufs_hba *hba, bool lpm)
 static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	int err;
-	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 
 	if (ufshcd_is_link_hibern8(hba)) {
 		err = ufs_mtk_link_set_lpm(hba);
@@ -559,20 +574,13 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
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
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
