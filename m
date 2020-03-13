Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ED9184320
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7r6aHCM0mIi96DfWcdtJlK5D1iA68Md5vZqPs2ZqwU=; b=OuP1S1W2OmcTUD
	SUyKsn948qp6RXqdVBAKO5LNjCfF6IblfUCT+njWPy0Gi272HT8ZdsqL2EGvifunc9k3sOMnABNhr
	e1Gq1LF+yITE1lmaWK1MoySzjR7vh87NGYb8GW0J27NIqDu8fP9+7hMlzpxMieTF3O6fj+LIIWD9k
	YvFyjFruRf2i/qdjzJoBXqoDA+VAcNjkTOCHed6SkG+s0z/ThLNaygDcqGE93+y/q2KxBYgcv56Od
	OxJwjto0/VoOpqv1imCql5/WauNIZ/IzXgIg9rlT+Hm15WUke6oSPl4meiIui1WIMmv0qM3mMy2Ew
	D/V4zEafdq5aUAXdbysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgCe-00072V-Iy; Fri, 13 Mar 2020 09:02:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgCP-00070w-25; Fri, 13 Mar 2020 09:01:46 +0000
X-UUID: 55a2ef177b0343f2949a2fc28cc537f1-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=I8phTj8vSF1fe+J716x8hj/ZioJ6jrLjTdm6bhX9zHs=; 
 b=Ty2H8F+2rogx+NE+I2bKD19DQK/GCxhnO0RWBV6Wzh2V5EFix6vCOLRVDLHvmORA0YjWkifbnPJiESwxLHotU7T67+q2ArbNR67oYrO9Ub3Dxk5wJEeVrSkyrOYALDz3RI7akiqbpN2tw0WeSdJ6beIBCHbRsUosI27RXEi0P9A=;
X-UUID: 55a2ef177b0343f2949a2fc28cc537f1-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1523958438; Fri, 13 Mar 2020 01:01:43 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:01:57 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 16:59:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:00:32 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v4 2/8] scsi: ufs: remove init_prefetch_data in struct ufs_hba
Date: Fri, 13 Mar 2020 17:00:57 +0800
Message-ID: <20200313090103.15390-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200313090103.15390-1-stanley.chu@mediatek.com>
References: <20200313090103.15390-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5C00A21E5443A66BB293CDCB1977EABB39E0836C01EAB006CF04BE5D27D6568C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020145_112481_8DF79070 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Struct init_prefetch_data currently is used privately in
ufshcd_init_icc_levels(), thus it can be removed from struct ufs_hba.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.c | 15 ++++++---------
 drivers/scsi/ufs/ufshcd.h | 11 -----------
 2 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 314e808b0d4e..b4988b9ee36c 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6501,6 +6501,7 @@ static void ufshcd_init_icc_levels(struct ufs_hba *hba)
 {
 	int ret;
 	int buff_len = hba->desc_size.pwr_desc;
+	u32 icc_level;
 	u8 *desc_buf;
 
 	desc_buf = kmalloc(buff_len, GFP_KERNEL);
@@ -6516,21 +6517,17 @@ static void ufshcd_init_icc_levels(struct ufs_hba *hba)
 		goto out;
 	}
 
-	hba->init_prefetch_data.icc_level =
-			ufshcd_find_max_sup_active_icc_level(hba,
-			desc_buf, buff_len);
-	dev_dbg(hba->dev, "%s: setting icc_level 0x%x",
-			__func__, hba->init_prefetch_data.icc_level);
+	icc_level =
+		ufshcd_find_max_sup_active_icc_level(hba, desc_buf, buff_len);
+	dev_dbg(hba->dev, "%s: setting icc_level 0x%x",	__func__, icc_level);
 
 	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
-		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0,
-		&hba->init_prefetch_data.icc_level);
+		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0, &icc_level);
 
 	if (ret)
 		dev_err(hba->dev,
 			"%s: Failed configuring bActiveICCLevel = %d ret = %d",
-			__func__, hba->init_prefetch_data.icc_level , ret);
-
+			__func__, icc_level, ret);
 out:
 	kfree(desc_buf);
 }
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 5c10777154fc..5cf79d2319a6 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -402,15 +402,6 @@ struct ufs_clk_scaling {
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
@@ -541,7 +532,6 @@ enum ufshcd_quirks {
  * @intr_mask: Interrupt Mask Bits
  * @ee_ctrl_mask: Exception event control mask
  * @is_powered: flag to check if HBA is powered
- * @init_prefetch_data: data pre-fetched during initialization
  * @eh_work: Worker to handle UFS errors that require s/w attention
  * @eeh_work: Worker to handle exception events
  * @errors: HBA errors
@@ -627,7 +617,6 @@ struct ufs_hba {
 	u32 intr_mask;
 	u16 ee_ctrl_mask;
 	bool is_powered;
-	struct ufs_init_prefetch init_prefetch_data;
 
 	/* Work Queues */
 	struct work_struct eh_work;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
