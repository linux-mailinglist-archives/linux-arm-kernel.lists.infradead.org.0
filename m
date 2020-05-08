Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF01CA5A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8byDAlvONz0+pDBpKkjadH6AsiISMa8g4G8iIUg9FJo=; b=WtG9Wj3athIPdt
	DaMzGyltW+3bxjHQRZOA30jwhqRoRLQRIGY4dmojEczsbdUWZ22bUd/6N3lhKcoAjbpVVaMfjTKDj
	TE1oLSEpe/qZP+rYk6YIIjfl6oq5WdRbk/YY2hvWMEoiu9XAljFbbJRH1pHC6vRR5gyOQMej/h9F2
	tk7iPPutrWW8ugK2s+2UoOOXHfftl4dHFXFkIOcFG4/CZ0A0n7QfhqJuLmy2+AtpuJD/1Hjj8s9B8
	jSVG3mFJymK5a7/KwbzUMGv4I0z+40/ldsnAU6clWgpSU8ibFaWc62e+FafAdgu6Nn7Xo0494be0f
	y3/1pb4F5Jg/IPs4m25g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxyV-00019P-NU; Fri, 08 May 2020 08:03:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxwx-0008By-IX; Fri, 08 May 2020 08:01:42 +0000
X-UUID: 4c9775e129a34789ac684d1da1c0089f-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=q+D8lWgNofGBMYTXXM90LaMcVAa6n+6Bx9Wpo3J/w3E=; 
 b=UBrnebH8IGKd3kjE9Oo1DcLqNrAU/Oxqk+MG5UcuF8jMv2nLA9lLP530fz6iF54jwH/2F1o32zu6GrRXRFtEefo66VOnwoxSAUPRo5UIu1xBe7vEybaUQu6vlJr1N9SlWrDnzk9Yi7efyelvfno3XJR2Oe3938AZyc1fb04vcUU=;
X-UUID: 4c9775e129a34789ac684d1da1c0089f-20200508
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 590591257; Fri, 08 May 2020 00:01:29 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 01:01:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 16:01:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 8 May 2020 16:01:18 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v8 5/8] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
Date: Fri, 8 May 2020 16:01:12 +0800
Message-ID: <20200508080115.24233-6-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508080115.24233-1-stanley.chu@mediatek.com>
References: <20200508080115.24233-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: A30A8F7A944B757371FA36D419A3BC6EF06FFAE249BC5738014C8643171662212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_010139_786858_6CC9BA14 
X-CRM114-Status: GOOD (  12.44  )
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
index c0b2cec5dcd8..4053d24eaafc 100644
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
@@ -7277,7 +7279,7 @@ static int ufshcd_device_params_init(struct ufs_hba *hba)
 	ufshcd_get_ref_clk_gating_wait(hba);
 
 	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
-			QUERY_FLAG_IDN_PWR_ON_WPE, &flag))
+			QUERY_FLAG_IDN_PWR_ON_WPE, 0, &flag))
 		hba->dev_info.f_power_on_wp_en = flag;
 
 	/* Probe maximum power mode co-supported by both UFS host and device */
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 4d296acadd6f..8262a48eb9eb 100644
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
