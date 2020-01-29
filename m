Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9EF14C911
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 11:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQkVTUMFss7jsHgcOZ/+Ok8LNjcQR13NirttSkK24Ts=; b=Reauht4etmxtU/
	nBH5iwZVDG3ZBSkuSa+Aq+SxtBIVBvljz8Bn3GWbag+Vj9m0oltUQVW9wS/0w951jfHTrrPi0RD+L
	6wnMS4yJq48/mCIEMm1ZGXhaBCpPCSqBbY2xJ1GsDQML2pSnYJUmvZc9lVSlWhopHeBeGbSsui6u8
	SPss9cx+f7VaaO1rl6/BKJIenQQBtugRa3CVJqqhqjSl5SzOWh89ve/mHYfQCmAXxQJ+EEq8L5BLK
	UpMETnzqZnDepHAgThakPsx4iMzDrlH6ZuQO4J8Sr4FWcTNs1hBS1aHXIn6Hiig1G8O1vfGtU6Ped
	BheYfu8Evcz93NzxBhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwkyQ-00045J-7i; Wed, 29 Jan 2020 10:53:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwkxu-0003ew-LB; Wed, 29 Jan 2020 10:53:00 +0000
X-UUID: 4c0be9c439db4ddea5291f479609be3c-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ihJg6nDDfiwxmrOIMOxnedl2OexPLbIqUMUcg8QFLQA=; 
 b=LIVUqA5rsg6BwvqJkFRLpEKQS21AfjCybP1q4Z49omySD9eTdninREET9XUR+EBdm1Z73qijaf0e7C98FXLOZxeQghRT+d5vdGq7bigq35gZ4pGPebgvpRv1fwknlrv7QVzSr0o9l0tlVI9ZicWHOYASWkGo/lLMOHjXuzmNqMk=;
X-UUID: 4c0be9c439db4ddea5291f479609be3c-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 691205215; Wed, 29 Jan 2020 02:52:56 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 02:54:08 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 18:52:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 Jan 2020 18:53:00 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH RESEND v3 4/4] scsi: ufs-mediatek: gate ref-clk during
 Auto-Hibern8
Date: Wed, 29 Jan 2020 18:52:51 +0800
Message-ID: <20200129105251.12466-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200129105251.12466-1-stanley.chu@mediatek.com>
References: <20200129105251.12466-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_025258_696520_83D175A1 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
