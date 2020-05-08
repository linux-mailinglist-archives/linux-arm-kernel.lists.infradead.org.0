Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0D61CA0EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSndrtt/y1d4+jq8OJ45+J9qCreWgThn3SanbDfHIw8=; b=SYz/CxlRZDgZau
	z7cUv91uptHBBzDrXW4rGRYngSI1I77eUuCqW05EJsfzec20YE/9BvY5Lp5K5d7MzY7FkcGySxpWL
	AUUNSnuFcbTbSxK9Ebn/aitiEsZxBeMcTde4yZSoIz37pL3GrD3uMWZm5/ZcB7EEWaZh/HGjg72oQ
	GEheEpecYRFnwQ2xK95ZrVv5PYtX3hcp3hDYB7rOuZR1jXwUuFSXJxhR/9A6HC7cX2PoQPn8DdLea
	dGW0m8ejLVudDgpa90L7zEwCKeZ43rNUUUHavcGu7t7U9rm2Y8pqMY7WlX1Suz0lNcdYLBoxA+Ou8
	1SD0aPkSvh39C0cw2OCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsnH-0003cH-8z; Fri, 08 May 2020 02:31:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsmG-0002s5-BD; Fri, 08 May 2020 02:30:18 +0000
X-UUID: 9d5ff196f9e1431b8b8569747358e870-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=JBuZf0Qkj65b9uld8oTOWr8+VQkGT4GG8umDIgvSSr0=; 
 b=MeYlboo+DQFwJ9ZKtehayEmbSgTzhdghrHDnsLazQNmlFgRK/wbmyCsu5TfjUhtqMD2T6Jm3UtUtJew8DHiBT8z+6SMh/loPHOb4Z9eoDVYDDEBWmVDenUoXSrTfSMIvH6Duhk+s7yY1Bn7beSiG1ZeXTteeQ9GTTqU1Q2BfMuY=;
X-UUID: 9d5ff196f9e1431b8b8569747358e870-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 517626408; Thu, 07 May 2020 18:30:09 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 19:21:50 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:21:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 8 May 2020 10:21:41 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v7 1/8] scsi: ufs: enable WriteBooster on some pre-3.1 UFS
 devices
Date: Fri, 8 May 2020 10:21:34 +0800
Message-ID: <20200508022141.10783-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508022141.10783-1-stanley.chu@mediatek.com>
References: <20200508022141.10783-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E48BA401090DA8C8C8940FEABED170B25EEAC08AA5E75A9EB472EC0BAF9D4E4D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_193016_402520_92D8718D 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
3. The device descriptor shall have
   DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP field
4. WriteBooster support is specified in above field

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs_quirks.h |  7 ++++
 drivers/scsi/ufs/ufshcd.c     | 67 ++++++++++++++++++++++-------------
 2 files changed, 49 insertions(+), 25 deletions(-)

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
index 915e963398c4..a802c5f5ec7c 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6800,9 +6800,19 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	if (!ufshcd_is_wb_allowed(hba))
+		return;
+
+	if (hba->desc_size.dev_desc < DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP + 4)
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
@@ -6818,11 +6828,29 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
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
@@ -6862,10 +6890,6 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 
 	model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
 
-	/* Enable WB only for UFS-3.1 */
-	if (dev_info->wspecversion >= 0x310)
-		ufshcd_wb_probe(hba, desc_buf);
-
 	err = ufshcd_read_string_desc(hba, model_index,
 				      &dev_info->model, SD_ASCII_STD);
 	if (err < 0) {
@@ -6874,6 +6898,16 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 		goto out;
 	}
 
+	ufs_fixup_device_setup(hba);
+
+	/*
+	 * Probe WB only for UFS-3.1 devices or UFS devices with quirk
+	 * UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
+	 */
+	if (dev_info->wspecversion >= 0x310 ||
+	    (hba->dev_quirks & UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES))
+		ufshcd_wb_probe(hba, desc_buf);
+
 	/*
 	 * ufshcd_read_string_desc returns size of the string
 	 * reset the error value
@@ -6893,21 +6927,6 @@ static void ufs_put_device_desc(struct ufs_hba *hba)
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
@@ -7244,8 +7263,6 @@ static int ufshcd_device_params_init(struct ufs_hba *hba)
 
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
