Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B61C2A4E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 08:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrR5HcNtQW9eOJ/V4IRkV8NfHJUmg7+wqhZo2hWfEOQ=; b=BhlEyZF222UXJg
	fpbFYrhUI5uQIUYj8WEDC5Ugu5tLffVn0Q0ISYzG09oY2jUUeMchSNTjwvOsMxUi5iT8IOfmiFU4J
	/mB7FnNzMa0eC6Xq3H7nPELUo5Rz1mDtTlSet2FbNEF1EuTwSVi7PUldH/DlFb7WsfbnTqMsh3mXZ
	prqt0HKCYSYdk9H1Ytz5i3EZF1A2RlLRJCJNhKN9i0WAWdrkjza0ALTnsG91clnZi1SNJHI8nLEKc
	KsGelEh5yWUwow/X6dHtijN8yC9/QY0MeaGBvK2PWWW8HF2OFT2saK2JvXIhsai5UUxBVe2yV1xhP
	L9cOIgmpCnAgs12yFFLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV7kg-0002yA-5O; Sun, 03 May 2020 06:05:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7jY-000262-80; Sun, 03 May 2020 06:04:14 +0000
X-UUID: 60550f9eed5c4e40ba4bcd13e98fc97a-20200502
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=v7bzIt6FbMqNxzzK05aI6D5qi1uwWl7jSYZU5TgeLwQ=; 
 b=BDfp66HXRmR1/Wzyl5PnztxLwKVLYsFC5TOcgmsBQdqAmjJ+9J6GSuZx2Ub7WnviH8YpH+zlurgFW3A2hCbqp8sZw6wkkdlwvsMC0OTmXWBd99c1HM6btb1duOYNIbCnqvR9gSCb+7lAxXB8KdzumK37oFnMdMRgnZLzK01GbFs=;
X-UUID: 60550f9eed5c4e40ba4bcd13e98fc97a-20200502
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 50652005; Sat, 02 May 2020 22:03:59 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 2 May 2020 23:03:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 3 May 2020 14:03:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sun, 3 May 2020 14:03:55 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v4 6/8] scsi: ufs: add LU Dedicated buffer mode support for
 WriteBooster
Date: Sun, 3 May 2020 14:03:49 +0800
Message-ID: <20200503060351.10572-7-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200503060351.10572-1-stanley.chu@mediatek.com>
References: <20200503060351.10572-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_230412_290589_9EC43B9E 
X-CRM114-Status: GOOD (  15.18  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
buffer mode.

Note that according to UFS 3.1 specification, the valid value of
bDeviceMaxWriteBoosterLUs parameter in Geometry Descriptor is 1,
which means at most one LUN can have WriteBooster buffer in "LU
dedicated buffer mode". Therefore this patch supports only one
LUN with WriteBooster enabled. All WriteBooster related sysfs nodes
are specifically mapped to the LUN with WriteBooster enabled in
LU Dedicated buffer mode.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 11 +++++++-
 drivers/scsi/ufs/ufs.h       |  7 +++++
 drivers/scsi/ufs/ufshcd.c    | 52 ++++++++++++++++++++++++++++--------
 drivers/scsi/ufs/ufshcd.h    |  7 +++++
 4 files changed, 65 insertions(+), 12 deletions(-)

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
index daac5053b850..eb3d3cebc87d 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -330,6 +330,12 @@ enum health_desc_param {
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
@@ -559,6 +565,7 @@ struct ufs_dev_info {
 	bool is_lu_power_on_wp;
 	/* Maximum number of general LU supported by the UFS device */
 	u8 max_lu_supported;
+	u8 wb_dedicated_lu;
 	u16 wmanufacturerid;
 	/*UFS device Product Name */
 	u8 *model;
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index d4a9c479294c..fe093207cc45 100644
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
@@ -6802,6 +6811,10 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	int ret;
+	u8 lun;
+	u32 d_lu_wb_buf_alloc = 0;
+
 	if (!ufshcd_is_wb_allowed(hba))
 		return;
 
@@ -6824,16 +6837,33 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
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
