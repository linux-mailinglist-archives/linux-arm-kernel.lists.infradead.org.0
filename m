Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F92B1BBC2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofJoUm5M+PT6RuUpEGJZMX/xBRk3EWBxrSMQwLIOK2o=; b=KDEVq1+iOM1hZr
	+1cLSMEIVG/7gwRu7P3EEzLf3TBDIHinMC6voI6n2LwoDM/zbIyC0RMiQhKCnVB/GBWdr02Nt+g71
	kEd1eK8yiM4na4HUN7hNecfu0tTC6ZbLIXmXrzsrYUiMyYD1I3oNWxfIWaKH56LglS7qmNrN8lPqC
	YEV5ghjDSt8mvE0opjmrMIR+nJEdk6Ibe/RlykUpX+kNJWIJ1j+x0QS7upLTX3nuBqkfBel2uFSfL
	b+bu1K78RGwVS+fsaYux0tFNyHKbvqi5dU3P9pwKgS0LyB7vnbBp9dgQ6+U5gY/XXgG3vFqbAUnau
	OIMBXe0jKQ7anXr2liJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTODi-0002WJ-Uv; Tue, 28 Apr 2020 11:16:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOCX-0007np-J5; Tue, 28 Apr 2020 11:15:00 +0000
X-UUID: 7f8652466a6c4b15a88ff49b8e1855c0-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=VNQAMi60E+ntVEA/XaL054Zfx9hWSG5xRZvMVQJkYKE=; 
 b=bFpS/CSyJp6Xq0lSBrsNqoLEKrZxOSWbv8XiV8Us5pTyG++DeuYAS0f+nTNU1rwKJd7kGpVUM4hI8vOhLD9x4YIEsGaD4ZNiGAQcFk9Zm7MBHooqxyDFhskmlnLBufhyQC3wM879IlN7OG50Qr+haZXIj5vedkKz1kFbR81qn7k=;
X-UUID: 7f8652466a6c4b15a88ff49b8e1855c0-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 305614468; Tue, 28 Apr 2020 03:14:48 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 04:13:55 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 19:13:56 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 19:13:54 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 3/4] scsi: ufs: add LU Dedicated buffer type support for
 WriteBooster
Date: Tue, 28 Apr 2020 19:13:54 +0800
Message-ID: <20200428111355.1776-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200428111355.1776-1-stanley.chu@mediatek.com>
References: <20200428111355.1776-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041457_723596_E0F3307F 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

According to UFS specification, there are two WriteBooster mode of
operations: "LU dedicated buffer" mode and "shared buffer" mode.
In the "LU dedicated buffer" mode, the WriteBooster Buffer is
dedicated to a logical unit.

If the device supports the "LU dedicated buffer" mode, this mode is
configured by setting bWriteBoosterBufferType to 00h. The logical
unit WriteBooster Buffer size is configured by setting the
dLUNumWriteBoosterBufferAllocUnits field of the related Unit
Descriptor. Only a value greater than zero enables the WriteBooster
feature in the logical unit.

Modify ufshcd_wb_probe() as above description to support LU Dedicated
buffer type.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs.h    |  7 +++++
 drivers/scsi/ufs/ufshcd.c | 63 ++++++++++++++++++++++++++++++++-------
 2 files changed, 59 insertions(+), 11 deletions(-)

diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index daac5053b850..0dcb22bd46b9 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -330,6 +330,12 @@ enum health_desc_param {
 	HEALTH_DESC_PARAM_LIFE_TIME_EST_B	= 0x4,
 };
 
+/* WriteBooster buffer type */
+enum {
+	WB_TYPE_LU_DEDICATED	= 0x0,
+	WB_TYPE_SINGLE_SHARED	= 0x1
+};
+
 /*
  * Logical Unit Write Protect
  * 00h: LU not write protected
@@ -559,6 +565,7 @@ struct ufs_dev_info {
 	bool is_lu_power_on_wp;
 	/* Maximum number of general LU supported by the UFS device */
 	u8 max_lu_supported;
+	u8 wb_dedicated_lu;
 	u16 wmanufacturerid;
 	/*UFS device Product Name */
 	u8 *model;
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 465ee023ea4b..a665586e047b 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5202,9 +5202,18 @@ static bool ufshcd_wb_sup(struct ufs_hba *hba)
 	return ufshcd_is_wb_allowed(hba);
 }
 
+static int ufshcd_wb_get_index(struct ufs_hba *hba)
+{
+	if (hba->dev_info.b_wb_buffer_type == WB_TYPE_LU_DEDICATED)
+		return hba->dev_info.wb_dedicated_lu;
+	else
+		return 0;
+}
+
 static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 {
 	int ret;
+	u8 index;
 	enum query_opcode opcode;
 
 	if (!ufshcd_wb_sup(hba))
@@ -5217,8 +5226,9 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 	else
 		opcode = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
+	index = ufshcd_wb_get_index(hba);
 	ret = ufshcd_query_flag_retry(hba, opcode,
-				      QUERY_FLAG_IDN_WB_EN, 0, NULL);
+				      QUERY_FLAG_IDN_WB_EN, index, NULL);
 	if (ret) {
 		dev_err(hba->dev, "%s write booster %s failed %d\n",
 			__func__, enable ? "enable" : "disable", ret);
@@ -5235,15 +5245,17 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 static int ufshcd_wb_toggle_flush_during_h8(struct ufs_hba *hba, bool set)
 {
 	int val;
+	u8 index;
 
 	if (set)
 		val =  UPIU_QUERY_OPCODE_SET_FLAG;
 	else
 		val = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
+	index = ufshcd_wb_get_index(hba);
 	return ufshcd_query_flag_retry(hba, val,
-			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8, 0,
-				       NULL);
+				QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8,
+				index, NULL);
 }
 
 static inline void ufshcd_wb_toggle_flush(struct ufs_hba *hba, bool enable)
@@ -5258,13 +5270,15 @@ static inline void ufshcd_wb_toggle_flush(struct ufs_hba *hba, bool enable)
 static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 {
 	int ret;
+	u8 index;
 
 	if (!ufshcd_wb_sup(hba) || hba->wb_buf_flush_enabled)
 		return 0;
 
+	index = ufshcd_wb_get_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
 				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
-				      0, NULL);
+				      index, NULL);
 	if (ret)
 		dev_err(hba->dev, "%s WB - buf flush enable failed %d\n",
 			__func__, ret);
@@ -5278,12 +5292,15 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
 {
 	int ret;
+	u8 index;
 
 	if (!ufshcd_wb_sup(hba) || !hba->wb_buf_flush_enabled)
 		return 0;
 
+	index = ufshcd_wb_get_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
-				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, 0, NULL);
+				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
+				      index, NULL);
 	if (ret) {
 		dev_warn(hba->dev, "%s: WB - buf flush disable failed %d\n",
 			 __func__, ret);
@@ -6802,6 +6819,10 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	int ret;
+	u8 lun;
+	u32 d_lu_wb_buf_alloc = 0;
+
 	if (hba->desc_size.dev_desc <= DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
 		goto wb_disabled;
 
@@ -6821,15 +6842,35 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 	hba->dev_info.b_wb_buffer_type =
 		desc_buf[DEVICE_DESC_PARAM_WB_TYPE];
 
-	hba->dev_info.d_wb_alloc_units =
-		get_unaligned_be32(desc_buf +
-				   DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
 	hba->dev_info.b_presrv_uspc_en =
 		desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
 
-	if (!(hba->dev_info.b_wb_buffer_type &&
-	      hba->dev_info.d_wb_alloc_units))
-		goto wb_disabled;
+	if (hba->dev_info.b_wb_buffer_type == WB_TYPE_SINGLE_SHARED) {
+		hba->dev_info.d_wb_alloc_units =
+		get_unaligned_be32(desc_buf +
+				   DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
+		if (!hba->dev_info.d_wb_alloc_units)
+			goto wb_disabled;
+	} else {
+		for (lun = 0; lun < hba->dev_info.max_lu_supported; lun++) {
+			ret = ufshcd_read_unit_desc_param(hba,
+					lun,
+					UNIT_DESC_PARAM_WB_BUF_ALLOC_UNITS,
+					(u8 *)&d_lu_wb_buf_alloc,
+					sizeof(d_lu_wb_buf_alloc));
+			if (ret)
+				goto wb_disabled;
+			if (d_lu_wb_buf_alloc) {
+				hba->dev_info.wb_dedicated_lu = lun;
+				break;
+			}
+		}
+
+		if (!d_lu_wb_buf_alloc)
+			goto wb_disabled;
+	}
+
+	return;
 
 wb_disabled:
 	hba->caps &= ~UFSHCD_CAP_WB_EN;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
