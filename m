Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957E31B869
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQ5Yc2kuKKQneuQRCXw70o23ptO7FmyD/AX9cuffwKw=; b=UcJAfIfCnBsn6+
	Od/xLls78elKezVyOPpA2eBVEY3DEC2Zk5EqzupU3MfuOyaGavTgivaMfCeaidRfxzYpLnO5p+tgC
	DcuJYVC4CF6bjqrcYFaz7Tu4fdNKHId5/6BhMqnzOQL1xCGjU593hqKM5tRhA1Avg+WCwkYnoOZqi
	Y6fuy5PD03qd4aaoVnHFu8C3C4gK1dD5TCHdnXMnWfXlF5eH58p29U1knHrLnKLObh25zgD1XshdY
	emAIEReKqMco9g0RHh9XSeNGaEXwRxyfnDDfNedoQc9cE+5cAjCB9g50LQkjzY2bxOjTP/QsCzrmu
	KAL2NaRdMZWfM2fLTj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQC4Y-0003rK-Rd; Mon, 13 May 2019 14:36:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQC4F-0003jG-Ad; Mon, 13 May 2019 14:36:40 +0000
X-UUID: ad514dde0fdb4aa0b65585b5d2a7fdcb-20190513
X-UUID: ad514dde0fdb4aa0b65585b5d2a7fdcb-20190513
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 250458146; Mon, 13 May 2019 06:36:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 07:36:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 22:36:31 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 13 May 2019 22:36:32 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 2/3] scsi: ufs: add error handling of auto-hibern8
Date: Mon, 13 May 2019 22:36:25 +0800
Message-ID: <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_073639_379433_CFBC3205 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com, sayalil@codeaurora.org,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently auto-hibern8 is activated if host supports
auto-hibern8 capability. However no error handlings are existed thus
this feature is kind of risky.

If "Hibernate Enter" or "Hibernate Exit" fail happens
during auto-hibern8 flow, the corresponding interrupt
"UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
according to UFS specification.

This patch adds auto-hibern8 error handlings:

- Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
  auto-hibern8 feature is activated.
- If fail happens, trigger error handlings just like "manual-hibernate"
  fail and use the same flow: Identify errors and schedule UFS error
  handler in ufshcd_check_errors(), and then do host reset and restore
  in UFS error handler.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 14 ++++++++++++++
 drivers/scsi/ufs/ufshcd.h | 13 +++++++++++++
 drivers/scsi/ufs/ufshci.h |  3 +++
 3 files changed, 30 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 1665820c22fd..e0e3930abc19 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5254,6 +5254,7 @@ static void ufshcd_err_handler(struct work_struct *work)
 			goto skip_err_handling;
 	}
 	if ((hba->saved_err & INT_FATAL_ERRORS) ||
+	    ufshcd_is_auto_hibern8_error(hba, hba->saved_err) ||
 	    ((hba->saved_err & UIC_ERROR) &&
 	    (hba->saved_uic_err & (UFSHCD_UIC_DL_PA_INIT_ERROR |
 				   UFSHCD_UIC_DL_NAC_RECEIVED_ERROR |
@@ -5431,6 +5432,15 @@ static void ufshcd_check_errors(struct ufs_hba *hba)
 			queue_eh_work = true;
 	}
 
+	if (ufshcd_is_auto_hibern8_error(hba, hba->errors)) {
+		dev_err(hba->dev,
+			"%s: Auto Hibern8 %s failed - status: 0x%08x, upmcrs: 0x%08x\n",
+			__func__, (hba->errors & UIC_HIBERNATE_ENTER) ?
+			"Enter" : "Exit",
+			hba->errors, ufshcd_get_upmcrs(hba));
+		queue_eh_work = true;
+	}
+
 	if (queue_eh_work) {
 		/*
 		 * update the transfer error masks to sticky bits, let's do this
@@ -5493,6 +5503,10 @@ static void ufshcd_tmc_handler(struct ufs_hba *hba)
 static void ufshcd_sl_intr(struct ufs_hba *hba, u32 intr_status)
 {
 	hba->errors = UFSHCD_ERROR_MASK & intr_status;
+
+	if (ufshcd_is_auto_hibern8_error(hba, intr_status))
+		hba->errors |= (UFSHCD_UIC_AH8_ERROR_MASK & intr_status);
+
 	if (hba->errors)
 		ufshcd_check_errors(hba);
 
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index ecfa898b9ccc..1bd9c8b61ed2 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -740,6 +740,19 @@ return true;
 #endif
 }
 
+static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
+{
+	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
+}
+
+static inline bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
+						u32 intr_mask)
+{
+	return (ufshcd_is_auto_hibern8_supported(hba) &&
+		!hba->uic_async_done &&
+		(intr_mask & UFSHCD_UIC_AH8_ERROR_MASK));
+}
+
 #define ufshcd_writel(hba, val, reg)	\
 	writel((val), (hba)->mmio_base + (reg))
 #define ufshcd_readl(hba, reg)	\
diff --git a/drivers/scsi/ufs/ufshci.h b/drivers/scsi/ufs/ufshci.h
index 6fa889de5ee5..4bcb205f2077 100644
--- a/drivers/scsi/ufs/ufshci.h
+++ b/drivers/scsi/ufs/ufshci.h
@@ -148,6 +148,9 @@ enum {
 				UIC_HIBERNATE_EXIT |\
 				UIC_POWER_MODE)
 
+#define UFSHCD_UIC_AH8_ERROR_MASK	(UIC_HIBERNATE_ENTER |\
+					UIC_HIBERNATE_EXIT)
+
 #define UFSHCD_UIC_MASK		(UIC_COMMAND_COMPL | UFSHCD_UIC_PWR_MASK)
 
 #define UFSHCD_ERROR_MASK	(UIC_ERROR |\
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
