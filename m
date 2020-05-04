Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975E61C3DC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMJUbuBkbZaPZkFGwJhKXBr4kjeGkZJ8EP/dIpQEnjQ=; b=jz7+zOisRsNI/G
	+bY6eJkvbIOxNMq95Umuk/erx2Os3e+sA8VeRe04PkQzpJ3R67g0g/nVkxqbLdATuQplkSdzYCf+d
	nHx8ko1EidByrNRaHs+OI/esbLSSIEv+4omC027DMziyRY+nDOl1XR6gJ6NDecooNeeExMcnFX/g1
	GPtNEw4xskkOpwl8WXs2kgXNDc6ZRIRcYg6ivguAEc7CcnBMNWp9wT9lBAf8jRfWaOz2PJb173Ph4
	3B9pjERiTkfG76lClymaffczPvFFPg2E8+cpJl4bCiSR1w4q6btbbKVCKsa7jna+BCIRzhdBKbIDE
	7FfHM0mJ+LfrLtXlcYnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcWo-0003XN-Bd; Mon, 04 May 2020 14:57:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcWJ-0003Bi-Hp; Mon, 04 May 2020 14:56:37 +0000
X-UUID: 63140739c86443449a81b960afcaf672-20200504
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=cOJedPMxuSmZGwkR3OqxW4OX9KiE+dvYr162A7JgN0Y=; 
 b=ilqMXXDWfdJj72sNyOovK9mpqj9o/87N/OkYuNpsyMEnrtlrvYw0yysGnAoVKuxcKrUs69Xm8Bphq3MxfcdNRqX2AwAcmo2gtEiJjK9qFbWrEc3rT9Ze3kUqT3OC9vEnJLwuNgt5mnhp1w8VGHMjv/GYTQo29XWUrxjGpVr6+bM=;
X-UUID: 63140739c86443449a81b960afcaf672-20200504
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 412555035; Mon, 04 May 2020 06:56:26 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 07:56:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 22:56:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 4 May 2020 22:56:27 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v6 5/8] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
Date: Mon, 4 May 2020 22:56:19 +0800
Message-ID: <20200504145622.13895-6-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200504145622.13895-1-stanley.chu@mediatek.com>
References: <20200504145622.13895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_075635_597709_2687ED76 
X-CRM114-Status: GOOD (  11.89  )
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

For preparation of LU Dedicated buffer mode support on WriteBooster
feature, "index" parameter shall be added and allowed to be specified
by callers.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufs-sysfs.c |  2 +-
 drivers/scsi/ufs/ufshcd.c    | 28 +++++++++++++++-------------
 drivers/scsi/ufs/ufshcd.h    |  2 +-
 3 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index 93484408bc40..b86b6a40d7e6 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -631,7 +631,7 @@ static ssize_t _name##_show(struct device *dev,				\
 	struct ufs_hba *hba = dev_get_drvdata(dev);			\
 	pm_runtime_get_sync(hba->dev);					\
 	ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,	\
-		QUERY_FLAG_IDN##_uname, &flag);				\
+		QUERY_FLAG_IDN##_uname, 0, &flag);			\
 	pm_runtime_put_sync(hba->dev);					\
 	if (ret)							\
 		return -EINVAL;						\
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ba8185625109..f35304a9741a 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -2782,13 +2782,13 @@ static inline void ufshcd_init_query(struct ufs_hba *hba,
 }
 
 static int ufshcd_query_flag_retry(struct ufs_hba *hba,
-	enum query_opcode opcode, enum flag_idn idn, bool *flag_res)
+	enum query_opcode opcode, enum flag_idn idn, u8 index, bool *flag_res)
 {
 	int ret;
 	int retries;
 
 	for (retries = 0; retries < QUERY_REQ_RETRIES; retries++) {
-		ret = ufshcd_query_flag(hba, opcode, idn, flag_res);
+		ret = ufshcd_query_flag(hba, opcode, idn, index, flag_res);
 		if (ret)
 			dev_dbg(hba->dev,
 				"%s: failed with error %d, retries %d\n",
@@ -2809,16 +2809,17 @@ static int ufshcd_query_flag_retry(struct ufs_hba *hba,
  * @hba: per-adapter instance
  * @opcode: flag query to perform
  * @idn: flag idn to access
+ * @index: flag index to access
  * @flag_res: the flag value after the query request completes
  *
  * Returns 0 for success, non-zero in case of failure
  */
 int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
-			enum flag_idn idn, bool *flag_res)
+			enum flag_idn idn, u8 index, bool *flag_res)
 {
 	struct ufs_query_req *request = NULL;
 	struct ufs_query_res *response = NULL;
-	int err, index = 0, selector = 0;
+	int err, selector = 0;
 	int timeout = QUERY_REQ_TIMEOUT;
 
 	BUG_ON(!hba);
@@ -4175,7 +4176,7 @@ static int ufshcd_complete_dev_init(struct ufs_hba *hba)
 	bool flag_res = true;
 
 	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
-		QUERY_FLAG_IDN_FDEVICEINIT, NULL);
+		QUERY_FLAG_IDN_FDEVICEINIT, 0, NULL);
 	if (err) {
 		dev_err(hba->dev,
 			"%s setting fDeviceInit flag failed with error %d\n",
@@ -4186,7 +4187,7 @@ static int ufshcd_complete_dev_init(struct ufs_hba *hba)
 	/* poll for max. 1000 iterations for fDeviceInit flag to clear */
 	for (i = 0; i < 1000 && !err && flag_res; i++)
 		err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
-			QUERY_FLAG_IDN_FDEVICEINIT, &flag_res);
+			QUERY_FLAG_IDN_FDEVICEINIT, 0, &flag_res);
 
 	if (err)
 		dev_err(hba->dev,
@@ -5001,7 +5002,7 @@ static int ufshcd_enable_auto_bkops(struct ufs_hba *hba)
 		goto out;
 
 	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
-			QUERY_FLAG_IDN_BKOPS_EN, NULL);
+			QUERY_FLAG_IDN_BKOPS_EN, 0, NULL);
 	if (err) {
 		dev_err(hba->dev, "%s: failed to enable bkops %d\n",
 				__func__, err);
@@ -5051,7 +5052,7 @@ static int ufshcd_disable_auto_bkops(struct ufs_hba *hba)
 	}
 
 	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
-			QUERY_FLAG_IDN_BKOPS_EN, NULL);
+			QUERY_FLAG_IDN_BKOPS_EN, 0, NULL);
 	if (err) {
 		dev_err(hba->dev, "%s: failed to disable bkops %d\n",
 				__func__, err);
@@ -5217,7 +5218,7 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 		opcode = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
 	ret = ufshcd_query_flag_retry(hba, opcode,
-				      QUERY_FLAG_IDN_WB_EN, NULL);
+				      QUERY_FLAG_IDN_WB_EN, 0, NULL);
 	if (ret) {
 		dev_err(hba->dev, "%s write booster %s failed %d\n",
 			__func__, enable ? "enable" : "disable", ret);
@@ -5241,7 +5242,7 @@ static int ufshcd_wb_toggle_flush_during_h8(struct ufs_hba *hba, bool set)
 		val = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
 	return ufshcd_query_flag_retry(hba, val,
-			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8,
+			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8, 0,
 				       NULL);
 }
 
@@ -5262,7 +5263,8 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 		return 0;
 
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
-				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, NULL);
+				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
+				      0, NULL);
 	if (ret)
 		dev_err(hba->dev, "%s WB - buf flush enable failed %d\n",
 			__func__, ret);
@@ -5281,7 +5283,7 @@ static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
 		return 0;
 
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
-				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, NULL);
+				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, 0, NULL);
 	if (ret) {
 		dev_warn(hba->dev, "%s: WB - buf flush disable failed %d\n",
 			 __func__, ret);
@@ -7263,7 +7265,7 @@ static int ufshcd_device_params_init(struct ufs_hba *hba)
 	ufshcd_get_ref_clk_gating_wait(hba);
 
 	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
-			QUERY_FLAG_IDN_PWR_ON_WPE, &flag))
+			QUERY_FLAG_IDN_PWR_ON_WPE, 0, &flag))
 		hba->dev_info.f_power_on_wp_en = flag;
 
 	/* Probe maximum power mode co-supported by both UFS host and device */
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index f34601121880..898883058e3a 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -948,7 +948,7 @@ int ufshcd_read_desc_param(struct ufs_hba *hba,
 int ufshcd_query_attr(struct ufs_hba *hba, enum query_opcode opcode,
 		      enum attr_idn idn, u8 index, u8 selector, u32 *attr_val);
 int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
-	enum flag_idn idn, bool *flag_res);
+	enum flag_idn idn, u8 index, bool *flag_res);
 
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
 void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
