Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA531C17FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFE3oHK2GN+lyvHlR3VFYqs1YvvWNpaaHdc2rf4mEmI=; b=WJqN0WmZhu6T+2
	J8fI4iMKu3S2hQpw605F2f3xZKi2nPXUFffAVqJzypCAOLt5QEyCI/50CobzWU/ii42UXCFbsTBr/
	N4qvC7bHbC9DKK6ckbaCkg+I7nZlXwdYkUk5832yREwO85hKhyWtTWccDcTk8imSjixA+bCFoCpws
	+Zj/q4IJoRAoXrQQwKfoIjragbyVow6Q+TUm+JNqEK6ms0NMkWto8KdWdC9oEvm1X6u+2ek8/IlOS
	w1unDtY0QkiBybxZyDZ/SJZo97FnienhXaToO81HBuBM/+htC+LHGETY8SDpuqPQ6lvgjlIQ/GYDq
	Q1unByXnskhePz7/frlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWqB-00046F-Pk; Fri, 01 May 2020 14:40:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWoa-0000IR-7P; Fri, 01 May 2020 14:38:58 +0000
X-UUID: 59e652d544f54bc492599be84076e710-20200501
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=evW9M5xH2hSwwDxvwZiNYpsh4mIH0v4sdQGB+gToaUI=; 
 b=vDhiT4frFxhi5TgTmpe5GquHYUWVE9Ty8qPwDz2qGQLcOFn20+TkulcmkY8V2h1ST8cPXVgut6sL4sTkcSfaw/v8h8hs3b6n83sds/8JLkG9RRs6Lllu8S4Jf34dL9uLEokjJvlHVZMxmEYTDTXOLt+uZM+zZFk0PLqn01vODDE=;
X-UUID: 59e652d544f54bc492599be84076e710-20200501
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 440201989; Fri, 01 May 2020 06:38:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 1 May 2020 07:38:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 1 May 2020 22:38:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 1 May 2020 22:38:34 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v3 1/5] scsi: ufs: enable WriteBooster on some pre-3.1 UFS
 devices
Date: Fri, 1 May 2020 22:38:31 +0800
Message-ID: <20200501143835.26032-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200501143835.26032-1-stanley.chu@mediatek.com>
References: <20200501143835.26032-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_073856_287323_F9443204 
X-CRM114-Status: GOOD (  15.36  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WriteBooster feature can be supported by some pre-3.1 UFS devices
by upgrading firmware.

To enable WriteBooster feature in such devices, introduce a device
quirk to relax the entrance condition of ufshcd_wb_probe() to allow
host driver to check those devices' WriteBooster capability.

WriteBooster feature can be available if below all conditions are
satisfied,

1. Host enables WriteBooster capability
2. UFS 3.1 device or UFS pre-3.1 device with quirk
   UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
3. Device descriptor has dExtendedUFSFeaturesSupport field
4. WriteBooster support is specified in above field

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs_quirks.h |  7 ++++
 drivers/scsi/ufs/ufshcd.c     | 66 ++++++++++++++++++++++-------------
 2 files changed, 48 insertions(+), 25 deletions(-)

diff --git a/drivers/scsi/ufs/ufs_quirks.h b/drivers/scsi/ufs/ufs_quirks.h
index df7a1e6805a3..e3175a63c676 100644
--- a/drivers/scsi/ufs/ufs_quirks.h
+++ b/drivers/scsi/ufs/ufs_quirks.h
@@ -101,4 +101,11 @@ struct ufs_dev_fix {
  */
 #define UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME	(1 << 9)
 
+/*
+ * Some pre-3.1 UFS devices can support extended features by upgrading
+ * the firmware. Enable this quirk to make UFS core driver probe and enable
+ * supported features on such devices.
+ */
+#define UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES (1 << 10)
+
 #endif /* UFS_QUIRKS_H_ */
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 915e963398c4..c6668799d956 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -229,6 +229,8 @@ static struct ufs_dev_fix ufs_fixups[] = {
 		UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME),
 	UFS_FIX(UFS_VENDOR_SKHYNIX, "hB8aL1" /*H28U62301AMR*/,
 		UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME),
+	UFS_FIX(UFS_VENDOR_SKHYNIX, "H9HQ21AFAMZDAR",
+		UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES),
 
 	END_FIX
 };
@@ -6800,9 +6802,19 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	if (!ufshcd_is_wb_allowed(hba))
+		return;
+
+	if (hba->desc_size.dev_desc <= DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
+		goto wb_disabled;
+
 	hba->dev_info.d_ext_ufs_feature_sup =
 		get_unaligned_be32(desc_buf +
 				   DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP);
+
+	if (!(hba->dev_info.d_ext_ufs_feature_sup & UFS_DEV_WRITE_BOOSTER_SUP))
+		goto wb_disabled;
+
 	/*
 	 * WB may be supported but not configured while provisioning.
 	 * The spec says, in dedicated wb buffer mode,
@@ -6818,11 +6830,29 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 	hba->dev_info.b_presrv_uspc_en =
 		desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
 
-	if (!((hba->dev_info.d_ext_ufs_feature_sup &
-		 UFS_DEV_WRITE_BOOSTER_SUP) &&
-		hba->dev_info.b_wb_buffer_type &&
+	if (!(hba->dev_info.b_wb_buffer_type &&
 	      hba->dev_info.d_wb_alloc_units))
-		hba->caps &= ~UFSHCD_CAP_WB_EN;
+		goto wb_disabled;
+
+	return;
+
+wb_disabled:
+	hba->caps &= ~UFSHCD_CAP_WB_EN;
+}
+
+static void ufs_fixup_device_setup(struct ufs_hba *hba)
+{
+	struct ufs_dev_fix *f;
+	struct ufs_dev_info *dev_info = &hba->dev_info;
+
+	for (f = ufs_fixups; f->quirk; f++) {
+		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
+		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
+		     ((dev_info->model &&
+		       STR_PRFX_EQUAL(f->model, dev_info->model)) ||
+		      !strcmp(f->model, UFS_ANY_MODEL)))
+			hba->dev_quirks |= f->quirk;
+	}
 }
 
 static int ufs_get_device_desc(struct ufs_hba *hba)
@@ -6862,10 +6892,6 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 
 	model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
 
-	/* Enable WB only for UFS-3.1 */
-	if (dev_info->wspecversion >= 0x310)
-		ufshcd_wb_probe(hba, desc_buf);
-
 	err = ufshcd_read_string_desc(hba, model_index,
 				      &dev_info->model, SD_ASCII_STD);
 	if (err < 0) {
@@ -6874,6 +6900,13 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 		goto out;
 	}
 
+	ufs_fixup_device_setup(hba);
+
+	/* Enable WB only for UFS-3.1 */
+	if (dev_info->wspecversion >= 0x310 ||
+	    (hba->dev_quirks & UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES))
+		ufshcd_wb_probe(hba, desc_buf);
+
 	/*
 	 * ufshcd_read_string_desc returns size of the string
 	 * reset the error value
@@ -6893,21 +6926,6 @@ static void ufs_put_device_desc(struct ufs_hba *hba)
 	dev_info->model = NULL;
 }
 
-static void ufs_fixup_device_setup(struct ufs_hba *hba)
-{
-	struct ufs_dev_fix *f;
-	struct ufs_dev_info *dev_info = &hba->dev_info;
-
-	for (f = ufs_fixups; f->quirk; f++) {
-		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
-		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
-		     ((dev_info->model &&
-		       STR_PRFX_EQUAL(f->model, dev_info->model)) ||
-		      !strcmp(f->model, UFS_ANY_MODEL)))
-			hba->dev_quirks |= f->quirk;
-	}
-}
-
 /**
  * ufshcd_tune_pa_tactivate - Tunes PA_TActivate of local UniPro
  * @hba: per-adapter instance
@@ -7244,8 +7262,6 @@ static int ufshcd_device_params_init(struct ufs_hba *hba)
 
 	ufshcd_get_ref_clk_gating_wait(hba);
 
-	ufs_fixup_device_setup(hba);
-
 	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
 			QUERY_FLAG_IDN_PWR_ON_WPE, &flag))
 		hba->dev_info.f_power_on_wp_en = flag;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
