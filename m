Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4921402B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 05:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/raBgF8+5tpoeAN0WiZY6YX3UVPh1pFEduVgNYY/Gmc=; b=s+J8JjTMyJPWO3
	oLfccPJbf2zVHm0fB7td2U6qZCE3eGD2BVlogTiCZWftwsBBD2g4zTQy9FkzzyQ9fHpAAcIkJkitT
	u2Y+7jvzvKuFbCsnf5NfLJTunpwhz+FXwMuOwP1InfMmdaO5qYIOWgx+ic/y4CG4cb4CRwHpN29nD
	U3RhLmLglAhqj0YyCpGNSxj/jKMtCgrR4WwEV+kl/gZd7DLo2W/A+umUZ4PDx34dfg+HHwUgX/3R7
	zkEWD7iA0CxHDTQE51VP4zs9tgdJnCuOJrP5lfaT4nIExjNDJpqqZE0TGm//Lt31c8BBNMOBzAKu6
	y+A9/SMwhhquN19rzPVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIo4-0000hP-E8; Fri, 17 Jan 2020 04:00:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isInq-0008Fn-VD; Fri, 17 Jan 2020 04:00:12 +0000
X-UUID: 2da4ce407e684cca9d856ae426d92b0d-20200116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/Tv3CvUdL0cbJHISgpyLZ+7IuIGSsxLCnYDqwGEOaBs=; 
 b=rvplpR1JfivdffFglUShM2drhBOlb/0qrtb1WPkHzAHaILdSqR2BG7uzmw13U2bYu//SibXNAmaFrJO8NjYNlnC+1ElWDe9iCLCzUu8MOCVSYvp1tbu0epOrTArY76bgCPjxxSN/ppTTKRSMfH0axSa9snBrlmTz7fOjdIGgzi4=;
X-UUID: 2da4ce407e684cca9d856ae426d92b0d-20200116
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1760969697; Thu, 16 Jan 2020 20:00:00 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 Jan 2020 19:52:08 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 Jan 2020 11:51:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 17 Jan 2020 11:51:09 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 1/3] scsi: ufs-mediatek: add dbg_register_dump
 implementation
Date: Fri, 17 Jan 2020 11:51:06 +0800
Message-ID: <20200117035108.19699-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200117035108.19699-1-stanley.chu@mediatek.com>
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_200011_019154_AE707B9D 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dbg_register_dump variant vendor implementation in MediaTek
UFS driver.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 16 ++++++++++++++++
 drivers/scsi/ufs/ufs-mediatek.h |  5 +++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 8d999c0e60fe..d5194d0c4ef5 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -406,6 +406,21 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	return 0;
 }
 
+static void ufs_mtk_dbg_register_dump(struct ufs_hba *hba)
+{
+	ufshcd_dump_regs(hba, REG_UFS_REFCLK_CTRL, 0x4, "Ref-Clk Ctrl ");
+
+	ufshcd_dump_regs(hba, REG_UFS_EXTREG, 0x4, "Ext Reg ");
+
+	ufshcd_dump_regs(hba, REG_UFS_MPHYCTRL,
+			 REG_UFS_REJECT_MON - REG_UFS_MPHYCTRL + 4,
+			 "MPHY Ctrl ");
+
+	/* Direct debugging information to REG_MTK_PROBE */
+	ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
+	ufshcd_dump_regs(hba, REG_UFS_PROBE, 0x4, "Debug Probe ");
+}
+
 static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba,
 				    struct ufs_dev_desc *card)
 {
@@ -430,6 +445,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
 	.suspend             = ufs_mtk_suspend,
 	.resume              = ufs_mtk_resume,
+	.dbg_register_dump   = ufs_mtk_dbg_register_dump,
 	.device_reset        = ufs_mtk_device_reset,
 };
 
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index 31b7fead19eb..fccdd979d6fb 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -13,6 +13,11 @@
  * Vendor specific UFSHCI Registers
  */
 #define REG_UFS_REFCLK_CTRL         0x144
+#define REG_UFS_EXTREG              0x2100
+#define REG_UFS_MPHYCTRL            0x2200
+#define REG_UFS_REJECT_MON          0x22AC
+#define REG_UFS_DEBUG_SEL           0x22C0
+#define REG_UFS_PROBE               0x22C8
 
 /*
  * Ref-clk control
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
