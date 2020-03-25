Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EE0192409
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 10:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fJNC1GiUEwzsS/Dhjk/07YZ7kYL1XRbqdPeRGEB99j0=; b=UsEz4uqQvnaYOSyz2od3eQ1xEL
	z1Rxb1Htc87uC0nW3dssccUQLa8bz0yiRS2CczabAVQ4EKWD9y49oTHG6UhnIEkdRE653d4wNhm42
	pvb35GFwX/MRvNKNuMFPPv+i9r3UxZY3TD1XQ0AQQ2vjFyZUWyUH1L4BKADAfbBGtJu6c/vL6g9Lg
	nbjZUznrSjw5EJCh59qMLyzUsVHg7Mff+YEGKFAsaJL64QrkfV+k2+KWya+HkVjyan7Q87sDpOLs0
	kg429qMs/bCQIu6JKGoFPg5zvhN5BHLbznKum8XzYDcSp2dszctjV2nwGoUa7wXdYaOYggVcF+wph
	XFtmBI+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2NY-0006S0-Vq; Wed, 25 Mar 2020 09:31:17 +0000
Received: from labrats.qualcomm.com ([199.106.110.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2NQ-0006RU-DJ; Wed, 25 Mar 2020 09:31:09 +0000
IronPort-SDR: yZMJ6JjWQeGjfBCABy+Mg6DVJ764FG52ODPBJkbYnHraKNtEFvS856oOvJZjeH2dcWncTAr2Ep
 GTZ6cjf7NqfdT3wvzW8ZtkkUgC/sAFNoo/pdj6QwbakHh94+gF6oo/5Lvxb8J0O/RrXL5jqKAq
 4lU/7nXepRcyFB37dofXjLc2egmEUxP+wu54a2gQIf3mzTZJ6r0t1YbRWSNfPiGBroXK/wdN5F
 7QX4Rc7ld2tRUxzCXcYavUsz1lpjWwERRiG493Pwi3f8YBe7tRjMuMTu9KCLX284WWqgWJGaM4
 0Sc=
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; d="scan'208";a="28615552"
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by labrats.qualcomm.com with ESMTP; 25 Mar 2020 02:25:00 -0700
Received: from pacamara-linux.qualcomm.com ([192.168.140.135])
 by ironmsg05-sd.qualcomm.com with ESMTP; 25 Mar 2020 02:24:59 -0700
Received: by pacamara-linux.qualcomm.com (Postfix, from userid 359480)
 id A873A3A9C; Wed, 25 Mar 2020 02:24:59 -0700 (PDT)
From: Can Guo <cang@codeaurora.org>
To: asutoshd@codeaurora.org, nguyenb@codeaurora.org, hongwus@codeaurora.org,
 rnayak@codeaurora.org, linux-scsi@vger.kernel.org, kernel-team@android.com,
 saravanak@google.com, salyzyn@google.com, cang@codeaurora.org
Subject: [PATCH v5 2/2] scsi: ufs: Do not rely on prefetched data
Date: Wed, 25 Mar 2020 02:23:39 -0700
Message-Id: <1585128220-26128-3-git-send-email-cang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1585128220-26128-1-git-send-email-cang@codeaurora.org>
References: <1585128220-26128-1-git-send-email-cang@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_023108_473757_0367429A 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Avri Altman <avri.altman@wdc.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We were setting bActiveICCLevel attribute for UFS device only once but
type of this attribute has changed from persistent to volatile since UFS
device specification v2.1. This attribute is set to the default value after
power cycle or hardware reset event. It isn't safe to rely on prefetched
data (only used for bActiveICCLevel attribute now). Hence this change
removes the code related to data prefetching and set this parameter on
every attempt to probe the UFS device.

Signed-off-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
Tested-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 26 +++++++++++++++-----------
 drivers/scsi/ufs/ufshcd.h | 11 -----------
 2 files changed, 15 insertions(+), 22 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 9c26f82..b747c17 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6458,11 +6458,12 @@ static u32 ufshcd_find_max_sup_active_icc_level(struct ufs_hba *hba,
 	return icc_level;
 }
 
-static void ufshcd_init_icc_levels(struct ufs_hba *hba)
+static void ufshcd_set_active_icc_lvl(struct ufs_hba *hba)
 {
 	int ret;
 	int buff_len = hba->desc_size.pwr_desc;
 	u8 *desc_buf;
+	u32 icc_level;
 
 	desc_buf = kmalloc(buff_len, GFP_KERNEL);
 	if (!desc_buf)
@@ -6477,20 +6478,17 @@ static void ufshcd_init_icc_levels(struct ufs_hba *hba)
 		goto out;
 	}
 
-	hba->init_prefetch_data.icc_level =
-			ufshcd_find_max_sup_active_icc_level(hba,
-			desc_buf, buff_len);
-	dev_dbg(hba->dev, "%s: setting icc_level 0x%x",
-			__func__, hba->init_prefetch_data.icc_level);
+	icc_level = ufshcd_find_max_sup_active_icc_level(hba, desc_buf,
+							 buff_len);
+	dev_dbg(hba->dev, "%s: setting icc_level 0x%x", __func__, icc_level);
 
 	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
-		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0,
-		&hba->init_prefetch_data.icc_level);
+		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0, &icc_level);
 
 	if (ret)
 		dev_err(hba->dev,
 			"%s: Failed configuring bActiveICCLevel = %d ret = %d",
-			__func__, hba->init_prefetch_data.icc_level , ret);
+			__func__, icc_level, ret);
 
 out:
 	kfree(desc_buf);
@@ -6996,8 +6994,6 @@ static int ufshcd_add_lus(struct ufs_hba *hba)
 {
 	int ret;
 
-	ufshcd_init_icc_levels(hba);
-
 	/* Add required well known logical units to scsi mid layer */
 	ret = ufshcd_scsi_add_wlus(hba);
 	if (ret)
@@ -7095,6 +7091,14 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool async)
 		}
 	}
 
+	/*
+	 * bActiveICCLevel is volatile for UFS device (as per latest v2.1 spec)
+	 * and for removable UFS card as well, hence always set the parameter.
+	 * Note: Error handler may issue the device reset hence resetting
+	 * bActiveICCLevel as well so it is always safe to set this here.
+	 */
+	ufshcd_set_active_icc_lvl(hba);
+
 	/* set the state as operational after switching to desired gear */
 	hba->ufshcd_state = UFSHCD_STATE_OPERATIONAL;
 
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index d45a044..5652d39 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -404,15 +404,6 @@ struct ufs_clk_scaling {
 	bool is_suspended;
 };
 
-/**
- * struct ufs_init_prefetch - contains data that is pre-fetched once during
- * initialization
- * @icc_level: icc level which was read during initialization
- */
-struct ufs_init_prefetch {
-	u32 icc_level;
-};
-
 #define UFS_ERR_REG_HIST_LENGTH 8
 /**
  * struct ufs_err_reg_hist - keeps history of errors
@@ -544,7 +535,6 @@ enum ufshcd_quirks {
  * @intr_mask: Interrupt Mask Bits
  * @ee_ctrl_mask: Exception event control mask
  * @is_powered: flag to check if HBA is powered
- * @init_prefetch_data: data pre-fetched during initialization
  * @eh_work: Worker to handle UFS errors that require s/w attention
  * @eeh_work: Worker to handle exception events
  * @errors: HBA errors
@@ -632,7 +622,6 @@ struct ufs_hba {
 	u32 intr_mask;
 	u16 ee_ctrl_mask;
 	bool is_powered;
-	struct ufs_init_prefetch init_prefetch_data;
 
 	/* Work Queues */
 	struct work_struct eh_work;
-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
