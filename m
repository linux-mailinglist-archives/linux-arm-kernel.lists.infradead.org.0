Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812F514C938
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 12:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRz9Gds5da1x/JjCznL+8+H2nm8ayHPXLrEQKsG/iDE=; b=ZEj4jd61KEKp4N
	XeaE0bwt4/JhAJ1FDjOBiec/mTo+sg98Y0EWCzMkTd734lryZX3Fwcp9jUJtKMfaR4bqkRfAxAHoJ
	PMoPdj7gSkc6JKlLuickz1Rd5OxKpc7JmDKjoeY2e4GxYecgNRzh/GucSsQ3bGdzJflCmjZ4RiWOD
	4NyGufYpwmcHmEXva0yAQOT/GTDlm7MTQXalF8HCOgmSdZIn1/gJ/mhScDGSnJDhsVTbwwnR9vQgA
	9hRQ85ZR/WO2Gt34OyyzweB6bvOfwknxiTWr15vSW106nfjTAkfCLODpw6pBkB9aoCwSrFvbf2vY/
	aQPxLIwFMEpFZqIRIHZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwl7u-0007yr-KI; Wed, 29 Jan 2020 11:03:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwl7h-0007xF-UQ; Wed, 29 Jan 2020 11:03:07 +0000
X-UUID: 68575a524d1b46d5bd58cf1b2fa39b30-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=On3ymt2nIzso/VupG3uq3vXt9HiMtRzJKLdz08bIXPs=; 
 b=d4uPOyytD6ZfR4ey2Yg5Mrq5s05ZrIkpNH3wuXaPINdSpi+V4p36y8OdS1SNVSi6/l/xssfbcK4nRpBIz6prwYGCxzWZ0rFhz8AUtXUOSmNpuMfv1/XFWHG7cqjIru2rJ6qVcYokP85DEifotSInvw9nnE526mWH6xNdt+exzOA=;
X-UUID: 68575a524d1b46d5bd58cf1b2fa39b30-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 598524992; Wed, 29 Jan 2020 03:03:02 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 02:53:07 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 18:53:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 Jan 2020 18:52:59 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH RESEND v3 3/4] scsi: ufs: fix Auto-Hibern8 error detection
Date: Wed, 29 Jan 2020 18:52:50 +0800
Message-ID: <20200129105251.12466-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200129105251.12466-1-stanley.chu@mediatek.com>
References: <20200129105251.12466-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_030305_993810_F42E411C 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Auto-Hibern8 may be disabled by some vendors or sysfs
in runtime even if Auto-Hibern8 capability is supported
by host. If Auto-Hibern8 capability is supported by host
but not actually enabled, Auto-Hibern8 error shall not happen.

To fix this, provide a way to detect if Auto-Hibern8 is
actually enabled first, and bypass Auto-Hibern8 disabling
case in ufshcd_is_auto_hibern8_error().

Fixes: 821744403913 ("scsi: ufs: Add error-handling of Auto-Hibernate")
Cc: stable@vger.kernel.org
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 drivers/scsi/ufs/ufshcd.h | 6 ++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index abd0e6b05f79..214a3f373dd8 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5479,7 +5479,8 @@ static irqreturn_t ufshcd_update_uic_error(struct ufs_hba *hba)
 static bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
 					 u32 intr_mask)
 {
-	if (!ufshcd_is_auto_hibern8_supported(hba))
+	if (!ufshcd_is_auto_hibern8_supported(hba) ||
+	    !ufshcd_is_auto_hibern8_enabled(hba))
 		return false;
 
 	if (!(intr_mask & UFSHCD_UIC_HIBERN8_MASK))
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 2ae6c7c8528c..81c71a3e3474 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -55,6 +55,7 @@
 #include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/regulator/consumer.h>
+#include <linux/bitfield.h>
 #include "unipro.h"
 
 #include <asm/irq.h>
@@ -773,6 +774,11 @@ static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
 	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
 }
 
+static inline bool ufshcd_is_auto_hibern8_enabled(struct ufs_hba *hba)
+{
+	return FIELD_GET(UFSHCI_AHIBERN8_TIMER_MASK, hba->ahit) ? true : false;
+}
+
 #define ufshcd_writel(hba, val, reg)	\
 	writel((val), (hba)->mmio_base + (reg))
 #define ufshcd_readl(hba, reg)	\
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
