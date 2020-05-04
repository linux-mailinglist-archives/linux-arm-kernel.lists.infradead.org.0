Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFEE1C3DC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/3OLvjJPjngvWLldwtSCR5Z/3jlLfwQe+jcFlCvwpY=; b=dxKQmeNU6yg7+n
	LMlUPLIfXfdtqxHb6qpVo3+hDVt3dwFTNozbOV2JPB4AExfMKhWYIK58wbvjHWJ5m4FkwzG5k0GXq
	Y0Edml8Dm4y+pZi3jkIUKpxdcwStQCXLUb0q+IPbIjhtVlgn16BO2aepFIpuHuGwHqbzbbpguYYjy
	7OAGDqrAfCFFGMfXm1qgVyROQUXDvh6OGJ+4pb2g3pX0mR8uBeMgEt9v/NgxyTWRTNGIHjLvWOLUL
	uxSTEB91Z65QDhKPBlN0e0KaCumbVjo82jtr5dd/OETGp8GGQMO623QGQyo2j2tCvjaj3za2oEuRT
	b3PIKqHI/4vAiHxJVWsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcX5-0003pM-CA; Mon, 04 May 2020 14:57:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcWK-0003BK-LH; Mon, 04 May 2020 14:56:38 +0000
X-UUID: 0ad25c1c242c43a79f8a8c26166080f0-20200504
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=tgkuciEhA0pxDaMKQxuPUnqf6SDgdahspHQPNkaXsLU=; 
 b=PkEaIIXOHJmJiaM1YazXWPV/2W3AqxAPkQ9qLBhL45172BrHmYNogmknsr9BteGmyK9DVaLEmeQx62EZqUXqIFEBWbnu3aa635NtNlqu8kjDLsxCzYlNV/m1i4FFUDBJExrcxCJ4e2b2VWY4QUjG01apVAiIEEFVHQ5eHFfwQCw=;
X-UUID: 0ad25c1c242c43a79f8a8c26166080f0-20200504
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1280791250; Mon, 04 May 2020 06:56:26 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 07:56:28 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 22:56:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 4 May 2020 22:56:27 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v6 6/8] scsi: ufs: add LU Dedicated buffer mode support for
 WriteBooster
Date: Mon, 4 May 2020 22:56:20 +0800
Message-ID: <20200504145622.13895-7-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200504145622.13895-1-stanley.chu@mediatek.com>
References: <20200504145622.13895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_075636_703307_BFB0EFF1 
X-CRM114-Status: GOOD (  14.78  )
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
buffer mode.

Note that according to UFS 3.1 specification, the valid value of
bDeviceMaxWriteBoosterLUs parameter in Geometry Descriptor is 1,
which means at most one LUN can have WriteBooster buffer in "LU
dedicated buffer mode". Therefore this patch supports only one
LUN with WriteBooster enabled. All WriteBooster related sysfs nodes
are specifically mapped to the LUN with WriteBooster enabled in
LU Dedicated buffer mode.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 11 +++++++-
 drivers/scsi/ufs/ufs.h       | 10 ++++++++
 drivers/scsi/ufs/ufshcd.c    | 50 ++++++++++++++++++++++++++++--------
 drivers/scsi/ufs/ufshcd.h    |  7 +++++
 4 files changed, 66 insertions(+), 12 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index b86b6a40d7e6..a0b3763e1dc2 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -622,16 +622,25 @@ static const struct attribute_group ufs_sysfs_string_descriptors_group = {
 	.attrs = ufs_sysfs_string_descriptors,
 };
 
+static inline bool ufshcd_is_wb_flags(enum flag_idn idn)
+{
+	return ((idn >= QUERY_FLAG_IDN_WB_EN) &&
+		(idn <= QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8));
+}
+
 #define UFS_FLAG(_name, _uname)						\
 static ssize_t _name##_show(struct device *dev,				\
 	struct device_attribute *attr, char *buf)			\
 {									\
 	bool flag;							\
+	u8 index = 0;							\
 	int ret;							\
 	struct ufs_hba *hba = dev_get_drvdata(dev);			\
+	if (ufshcd_is_wb_flags(QUERY_FLAG_IDN##_uname))			\
+		index = ufshcd_wb_get_flag_index(hba);			\
 	pm_runtime_get_sync(hba->dev);					\
 	ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,	\
-		QUERY_FLAG_IDN##_uname, 0, &flag);			\
+		QUERY_FLAG_IDN##_uname, index, &flag);			\
 	pm_runtime_put_sync(hba->dev);					\
 	if (ret)							\
 		return -EINVAL;						\
diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index daac5053b850..b3135344ab3f 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -64,6 +64,9 @@
 #define UFS_MAX_LUNS		(SCSI_W_LUN_BASE + UFS_UPIU_MAX_UNIT_NUM_ID)
 #define UFS_UPIU_WLUN_ID	(1 << 7)
 
+/* WriteBooster buffer is available only for the logical unit from 0 to 7 */
+#define UFS_UPIU_MAX_WB_LUN_ID	8
+
 /* Well known logical unit id in LUN field of UPIU */
 enum {
 	UFS_UPIU_REPORT_LUNS_WLUN	= 0x81,
@@ -330,6 +333,12 @@ enum health_desc_param {
 	HEALTH_DESC_PARAM_LIFE_TIME_EST_B	= 0x4,
 };
 
+/* WriteBooster buffer mode */
+enum {
+	WB_BUF_MODE_LU_DEDICATED	= 0x0,
+	WB_BUF_MODE_SHARED		= 0x1,
+};
+
 /*
  * Logical Unit Write Protect
  * 00h: LU not write protected
@@ -559,6 +568,7 @@ struct ufs_dev_info {
 	bool is_lu_power_on_wp;
 	/* Maximum number of general LU supported by the UFS device */
 	u8 max_lu_supported;
+	u8 wb_dedicated_lu;
 	u16 wmanufacturerid;
 	/*UFS device Product Name */
 	u8 *model;
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index f35304a9741a..c77c5f4de7c0 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5205,6 +5205,7 @@ static bool ufshcd_wb_sup(struct ufs_hba *hba)
 static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 {
 	int ret;
+	u8 index;
 	enum query_opcode opcode;
 
 	if (!ufshcd_wb_sup(hba))
@@ -5217,8 +5218,9 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 	else
 		opcode = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
+	index = ufshcd_wb_get_flag_index(hba);
 	ret = ufshcd_query_flag_retry(hba, opcode,
-				      QUERY_FLAG_IDN_WB_EN, 0, NULL);
+				      QUERY_FLAG_IDN_WB_EN, index, NULL);
 	if (ret) {
 		dev_err(hba->dev, "%s write booster %s failed %d\n",
 			__func__, enable ? "enable" : "disable", ret);
@@ -5235,15 +5237,17 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 static int ufshcd_wb_toggle_flush_during_h8(struct ufs_hba *hba, bool set)
 {
 	int val;
+	u8 index;
 
 	if (set)
 		val =  UPIU_QUERY_OPCODE_SET_FLAG;
 	else
 		val = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
+	index = ufshcd_wb_get_flag_index(hba);
 	return ufshcd_query_flag_retry(hba, val,
-			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8, 0,
-				       NULL);
+				QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8,
+				index, NULL);
 }
 
 static inline void ufshcd_wb_toggle_flush(struct ufs_hba *hba, bool enable)
@@ -5258,13 +5262,15 @@ static inline void ufshcd_wb_toggle_flush(struct ufs_hba *hba, bool enable)
 static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 {
 	int ret;
+	u8 index;
 
 	if (!ufshcd_wb_sup(hba) || hba->wb_buf_flush_enabled)
 		return 0;
 
+	index = ufshcd_wb_get_flag_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
 				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
-				      0, NULL);
+				      index, NULL);
 	if (ret)
 		dev_err(hba->dev, "%s WB - buf flush enable failed %d\n",
 			__func__, ret);
@@ -5278,12 +5284,15 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
 {
 	int ret;
+	u8 index;
 
 	if (!ufshcd_wb_sup(hba) || !hba->wb_buf_flush_enabled)
 		return 0;
 
+	index = ufshcd_wb_get_flag_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
-				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, 0, NULL);
+				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
+				      index, NULL);
 	if (ret) {
 		dev_warn(hba->dev, "%s: WB - buf flush disable failed %d\n",
 			 __func__, ret);
@@ -6802,6 +6811,9 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	u8 lun;
+	u32 d_lu_wb_buf_alloc;
+
 	if (!ufshcd_is_wb_allowed(hba))
 		return;
 
@@ -6821,16 +6833,32 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
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
+	if (hba->dev_info.b_wb_buffer_type == WB_BUF_MODE_SHARED) {
+		hba->dev_info.d_wb_alloc_units =
+		get_unaligned_be32(desc_buf +
+				   DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
+		if (!hba->dev_info.d_wb_alloc_units)
+			goto wb_disabled;
+	} else {
+		for (lun = 0; lun < UFS_UPIU_MAX_WB_LUN_ID; lun++) {
+			d_lu_wb_buf_alloc = 0;
+			ufshcd_read_unit_desc_param(hba,
+					lun,
+					UNIT_DESC_PARAM_WB_BUF_ALLOC_UNITS,
+					(u8 *)&d_lu_wb_buf_alloc,
+					sizeof(d_lu_wb_buf_alloc));
+			if (d_lu_wb_buf_alloc) {
+				hba->dev_info.wb_dedicated_lu = lun;
+				break;
+			}
+		}
 
+		if (!d_lu_wb_buf_alloc)
+			goto wb_disabled;
+	}
 	return;
 
 wb_disabled:
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 898883058e3a..f232a67fd9b3 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -861,6 +861,13 @@ static inline bool ufshcd_keep_autobkops_enabled_except_suspend(
 	return hba->caps & UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND;
 }
 
+static inline u8 ufshcd_wb_get_flag_index(struct ufs_hba *hba)
+{
+	if (hba->dev_info.b_wb_buffer_type == WB_BUF_MODE_LU_DEDICATED)
+		return hba->dev_info.wb_dedicated_lu;
+	return 0;
+}
+
 extern int ufshcd_runtime_suspend(struct ufs_hba *hba);
 extern int ufshcd_runtime_resume(struct ufs_hba *hba);
 extern int ufshcd_runtime_idle(struct ufs_hba *hba);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
