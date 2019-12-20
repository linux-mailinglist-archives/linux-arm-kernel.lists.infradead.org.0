Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C348D127775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4IEQLG7A1LbvWO1eY6opeL0+yU5hd1m14T6KaPJong=; b=JuYuXQmN9toATI
	Sm0MYAMMEoCrmXo1Aerhh5aJ4SXpYLu4AwKTx/G9YKAgej0TelsN5FnU7D3964vJhgwfjmAlQ3fHp
	EF9vBlp0BwhII+TekWKYDtuZFVT55IgBW5dZUAz/riEV3oZSYVku7ONqY/VZD6tYKmywelVi18bCF
	/Zt0SCAQvjqBDRtZKDdGHG/2Too57M5JYRW9IO6XKYKOsgGVqisea3Zi1v/+fALrpqDDqRB1cofQa
	rwVskTcKoBC7p7FUN5R1x7ZXsNZIM658LbWshzhSt6iG0/CpBMiBtWw2lKsbPlr8ZkUSAfPZaxA95
	gW0xr61FjF5n42JaQLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDwq-0005HW-Pp; Fri, 20 Dec 2019 08:47:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDvi-0004Tm-Nn; Fri, 20 Dec 2019 08:46:40 +0000
X-UUID: b258954cf4544505997651add69dcfd7-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=FQ9iJGiHG3tZx1pkXd4zqWoMs5/8XtOFzIai6fL+Jjs=; 
 b=uQwfVO/ghclJh1xap9nNHFy0FEPrnt7hhpewz4BoQODRk0bxxRDVW/V1WErS/blS+c+hjOGCIHp4ZLaFPbHeeS36xPt6VKSEi2kDxbh+APLeLDUM/qWj63b3akI5tWQWhVwpbPyvKnPaPvDS4Vh353GbVplEY9aJSEXfdY05aVM=;
X-UUID: b258954cf4544505997651add69dcfd7-20191220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 532760001; Fri, 20 Dec 2019 00:46:35 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 00:36:56 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 16:35:58 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Dec 2019 16:35:38 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v1 3/6] scsi: ufs-mediatek: introduce reference clock control
Date: Fri, 20 Dec 2019 16:36:25 +0800
Message-ID: <1576830988-22435-4-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
References: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004638_778045_6509597C 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce reference clock control in MediaTek Chipset in order
to disable it if it is not necessary by UFS device to save system power.

Currently reference clock can be disabled during system suspend, runtime
suspend and clock-gating after link enters hibernate state.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 64 ++++++++++++++++++++++++++++++---
 drivers/scsi/ufs/ufs-mediatek.h | 20 +++++++++--
 2 files changed, 78 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 6a3ec11b16db..690483c78212 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -18,6 +18,11 @@
 #include "unipro.h"
 #include "ufs-mediatek.h"
 
+#define ufs_mtk_ref_clk_notify(on, res) \
+	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
+		      UFS_MTK_SIP_REF_CLK_NOTIFICATION, \
+		      on, 0, 0, 0, 0, 0, &(res))
+
 static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 {
 	u32 tmp;
@@ -83,6 +88,49 @@ static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 	return err;
 }
 
+static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
+{
+	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
+	struct arm_smccc_res res;
+	unsigned long timeout;
+	u32 value;
+
+	if (host->ref_clk_enabled == on)
+		return 0;
+
+	if (on) {
+		ufs_mtk_ref_clk_notify(on, res);
+		ufshcd_writel(hba, REFCLK_REQUEST, REG_UFS_REFCLK_CTRL);
+	} else {
+		ufshcd_writel(hba, REFCLK_RELEASE, REG_UFS_REFCLK_CTRL);
+	}
+
+	/* Wait for ack */
+	timeout = jiffies + msecs_to_jiffies(REFCLK_REQ_TIMEOUT_MS);
+	do {
+		value = ufshcd_readl(hba, REG_UFS_REFCLK_CTRL);
+
+		/* Wait until ack bit equals to req bit */
+		if (((value & REFCLK_ACK) >> 1) == (value & REFCLK_REQUEST))
+			goto out;
+
+		usleep_range(100, 200);
+	} while (time_before(jiffies, timeout));
+
+	dev_err(hba->dev, "missing ack of refclk req, reg: 0x%x\n", value);
+
+	ufs_mtk_ref_clk_notify(host->ref_clk_enabled, res);
+
+	return -ETIMEDOUT;
+
+out:
+	host->ref_clk_enabled = on;
+	if (!on)
+		ufs_mtk_ref_clk_notify(on, res);
+
+	return 0;
+}
+
 /**
  * ufs_mtk_setup_clocks - enables/disable clocks
  * @hba: host controller instance
@@ -107,12 +155,16 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 
 	switch (status) {
 	case PRE_CHANGE:
-		if (!on)
+		if (!on) {
+			ufs_mtk_setup_ref_clk(hba, on);
 			ret = phy_power_off(host->mphy);
+		}
 		break;
 	case POST_CHANGE:
-		if (on)
+		if (on) {
 			ret = phy_power_on(host->mphy);
+			ufs_mtk_setup_ref_clk(hba, on);
+		}
 		break;
 	}
 
@@ -299,8 +351,10 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 
-	if (ufshcd_is_link_hibern8(hba))
+	if (ufshcd_is_link_hibern8(hba)) {
 		phy_power_off(host->mphy);
+		ufs_mtk_setup_ref_clk(hba, false);
+	}
 
 	return 0;
 }
@@ -309,8 +363,10 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 
-	if (ufshcd_is_link_hibern8(hba))
+	if (ufshcd_is_link_hibern8(hba)) {
+		ufs_mtk_setup_ref_clk(hba, true);
 		phy_power_on(host->mphy);
+	}
 
 	return 0;
 }
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index b03f601d3a9e..14f8a8357c09 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -6,7 +6,21 @@
 #ifndef _UFS_MEDIATEK_H
 #define _UFS_MEDIATEK_H
 
-#include <linux/bitops.h>
+/*
+ * Vendor specific UFSHCI Registers
+ */
+#define REG_UFS_REFCLK_CTRL         0x144
+
+/*
+ * Ref-clk control
+ *
+ * Values for register REG_UFS_REFCLK_CTRL
+ */
+#define REFCLK_RELEASE              0x0
+#define REFCLK_REQUEST              BIT(0)
+#define REFCLK_ACK                  BIT(1)
+
+#define REFCLK_REQ_TIMEOUT_MS       3
 
 /*
  * Vendor specific pre-defined parameters
@@ -34,7 +48,8 @@
 /*
  * SiP commands
  */
-#define UFS_MTK_SIP_DEVICE_RESET    BIT(1)
+#define UFS_MTK_SIP_DEVICE_RESET          BIT(1)
+#define UFS_MTK_SIP_REF_CLK_NOTIFICATION  BIT(3)
 
 /*
  * VS_DEBUGCLOCKENABLE
@@ -55,6 +70,7 @@ enum {
 struct ufs_mtk_host {
 	struct ufs_hba *hba;
 	struct phy *mphy;
+	bool ref_clk_enabled;
 };
 
 #endif /* !_UFS_MEDIATEK_H */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
