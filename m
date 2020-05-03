Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265DC1C2BBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 13:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiCSz/nGjfmje8V+58RtELRY3Iv1sRSIlAgr55qL8OI=; b=nQ323qnPZXIiHj
	C9qg+J67qrEMZWaRN1HfAUmatyjg5zjim7pHhg/09hJz8V6FOYS44S2QGhIx9YApqR9hOKkVg9HY6
	UKGPJ+k3eIFzEeTtTTOmN9+HhNpN9qbJIh66y2/Ic/VTZ0FygE7ej5oIhrEbBAvw/o/kbSM4sW8Xm
	+/qN/7a0Fq2BctSOWiZmhE7VEKtZQM1KOll4+e9tYiAVClADTJghI8RnITU6TE5JpwRso94YTb/Ou
	fBXAv+tRF2dF2sNzQ+qNRcbEDoAANLEaw+j6ECTgSy138qt16WEZ5gk3y8YCjqOu0w40lq3EtgP1W
	SlKVG7PUQgGD9XvBEU3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVCtV-0004ZS-EI; Sun, 03 May 2020 11:34:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVCt6-0004PM-ES; Sun, 03 May 2020 11:34:25 +0000
X-UUID: 55818c0b9bad45798db8edb7ac4ccee8-20200503
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=RwWwztEBbiyjxSB8QrGttzWlqnVEq1p4co7X3k1H76g=; 
 b=NP5B7L8YBamoU756Cdw0Api/MJbelBu28PVyNbMxzv0EaH3rAq8sFBapvUcCDivUPAXMNVwMhYqKEy/F1UM5mOK42wqIusDzbpncYp6oIs/t6oCRD2x01obj63olHA3JVSyf6JZxUEn0cKgQh9e9ALOQa3PKRdRjeLUAsCYDhQ4=;
X-UUID: 55818c0b9bad45798db8edb7ac4ccee8-20200503
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1792894481; Sun, 03 May 2020 03:34:24 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 3 May 2020 04:34:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 3 May 2020 19:34:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sun, 3 May 2020 19:34:17 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v5 8/8] scsi: ufs: cleanup WriteBooster feature
Date: Sun, 3 May 2020 19:34:15 +0800
Message-ID: <20200503113415.21034-9-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200503113415.21034-1-stanley.chu@mediatek.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_043424_495787_97194496 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Small cleanup as below items,

1. Use ufshcd_is_wb_allowed() directly instead of ufshcd_wb_sup()
   since ufshcd_wb_sup() just returns the result of
   ufshcd_is_wb_allowed().

2. In ufshcd_suspend(), "else if (!ufshcd_is_runtime_pm(pm_op))
   can be simplified to "else" since both have the same meaning.

This patch does not change any functionality.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 49391bc1ef21..6425b7afd890 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -253,7 +253,6 @@ static int ufshcd_scale_clks(struct ufs_hba *hba, bool scale_up);
 static irqreturn_t ufshcd_intr(int irq, void *__hba);
 static int ufshcd_change_power_mode(struct ufs_hba *hba,
 			     struct ufs_pa_layer_attr *pwr_mode);
-static bool ufshcd_wb_sup(struct ufs_hba *hba);
 static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba);
 static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba);
 static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable);
@@ -285,7 +284,7 @@ static inline void ufshcd_wb_config(struct ufs_hba *hba)
 {
 	int ret;
 
-	if (!ufshcd_wb_sup(hba))
+	if (!ufshcd_is_wb_allowed(hba))
 		return;
 
 	ret = ufshcd_wb_ctrl(hba, true);
@@ -5197,18 +5196,13 @@ static void ufshcd_bkops_exception_event_handler(struct ufs_hba *hba)
 				__func__, err);
 }
 
-static bool ufshcd_wb_sup(struct ufs_hba *hba)
-{
-	return ufshcd_is_wb_allowed(hba);
-}
-
 static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 {
 	int ret;
 	u8 index;
 	enum query_opcode opcode;
 
-	if (!ufshcd_wb_sup(hba))
+	if (!ufshcd_is_wb_allowed(hba))
 		return 0;
 
 	if (!(enable ^ hba->wb_enabled))
@@ -5264,7 +5258,7 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 	int ret;
 	u8 index;
 
-	if (!ufshcd_wb_sup(hba) || hba->wb_buf_flush_enabled)
+	if (!ufshcd_is_wb_allowed(hba) || hba->wb_buf_flush_enabled)
 		return 0;
 
 	index = ufshcd_wb_get_flag_index(hba);
@@ -5286,7 +5280,7 @@ static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
 	int ret;
 	u8 index;
 
-	if (!ufshcd_wb_sup(hba) || !hba->wb_buf_flush_enabled)
+	if (!ufshcd_is_wb_allowed(hba) || !hba->wb_buf_flush_enabled)
 		return 0;
 
 	index = ufshcd_wb_get_flag_index(hba);
@@ -5336,7 +5330,7 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
 	int ret;
 	u32 avail_buf;
 
-	if (!ufshcd_wb_sup(hba))
+	if (!ufshcd_is_wb_allowed(hba))
 		return false;
 	/*
 	 * The ufs device needs the vcc to be ON to flush.
@@ -8225,12 +8219,12 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 		 * configured WB type is 70% full, keep vcc ON
 		 * for the device to flush the wb buffer
 		 */
-		if ((hba->auto_bkops_enabled && ufshcd_wb_sup(hba)) ||
+		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
 		    ufshcd_wb_keep_vcc_on(hba))
 			hba->dev_info.keep_vcc_on = true;
 		else
 			hba->dev_info.keep_vcc_on = false;
-	} else if (!ufshcd_is_runtime_pm(pm_op)) {
+	} else {
 		hba->dev_info.keep_vcc_on = false;
 	}
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
