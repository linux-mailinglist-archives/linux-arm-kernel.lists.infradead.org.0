Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF8F1F9ABD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJf9hnZUGs4UgOmC97VpwgwzPdxeEx6cdqXWTV9uP3I=; b=s5PQKQkSHbDcK8
	C3GU/p2/kZmEnFP/Y68Az1myENTQDjoHuarY7zwfdI3INHsO80UFH/+0+re+VFclSJvypgvCjzeZL
	oK2N38i8D5Tf49bAKsZuVUkzfwNEgkos9uUQfPosgtX122Q4wSxbFPFwkrjrSs3uBfW0P0kFVv21p
	VW2un2Li9U5I6kew1do5vj0AcNxNp8h9uLWmVkjWeVZN9FtdkzHN0j0myF6qXTSj45OFKOH3i79c9
	PkDo+YXWHzSlWym8RtD5M6QeiUqI2LgIRwT5TCj4UxLU3tCoq9GS1eRrGTxrJQazO5KUMBN91CDv9
	2K78rYcVGYi7v+LIAe1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqPL-0004cI-H9; Mon, 15 Jun 2020 14:48:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqPD-0004bi-AM; Mon, 15 Jun 2020 14:48:12 +0000
X-UUID: 441fc905e68f4c08b5968153ab3e5a81-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=omTxP510z3SeJM3158srmfQljfQpeJ6GXR7o8i88WeQ=; 
 b=kzf1P9ZuIYgprokM8jWU8qEWiL8zEx1ROosCU3gLlj3E2Hd/eSqgWu6bDAeJBMswRSo0PapkmPYlYkq6d5Luf5IqajA2IOXpY00CCXGQm7D0j8JAPpp0IKXOAT2A6NuhtzsjlmKT49cFBh31e5UdqUKo0rZsNHy4+UoY397IoJU=;
X-UUID: 441fc905e68f4c08b5968153ab3e5a81-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 886568649; Mon, 15 Jun 2020 06:48:08 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:48:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:48:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:48:03 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 2/3] scsi: ufs: Manage and export UFS debugging information
 dump
Date: Mon, 15 Jun 2020 22:48:04 +0800
Message-ID: <20200615144805.6921-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615144805.6921-1-stanley.chu@mediatek.com>
References: <20200615144805.6921-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074811_368714_3CEED184 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UFS has many functions to print different types of debugging
information. Some information is helpful for vendor drivers and
can be dumped if something wrong in vendor-specific flows.

To have minimum and most simple exported interface for vendor
drivers, create a single and unified entrance to most
debugging functions, and then export the entry function.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 49 +++++++++++++++++++++++----------------
 drivers/scsi/ufs/ufshcd.h |  8 +++++++
 2 files changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 152ae7f5ae86..5158c496cf95 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -573,6 +573,19 @@ static void ufshcd_print_pwr_info(struct ufs_hba *hba)
 		 hba->pwr_info.hs_rate);
 }
 
+void ufshcd_print_info(struct ufs_hba *hba, enum ufs_info_item flags)
+{
+	if (flags & UFS_INFO_HOST_STATE)
+		ufshcd_print_host_state(hba);
+	if (flags & UFS_INFO_HOST_REGS)
+		ufshcd_print_host_regs(hba);
+	if (flags & UFS_INFO_PWR)
+		ufshcd_print_pwr_info(hba);
+	if (flags & UFS_INFO_TMRS)
+		ufshcd_print_tmrs(hba, hba->outstanding_tasks);
+}
+EXPORT_SYMBOL_GPL(ufshcd_print_info);
+
 void ufshcd_delay_us(unsigned long us, unsigned long tolerance)
 {
 	if (!us)
@@ -3783,11 +3796,9 @@ static int ufshcd_uic_pwr_ctrl(struct ufs_hba *hba, struct uic_command *cmd)
 		ret = (status != PWR_OK) ? status : -1;
 	}
 out:
-	if (ret) {
-		ufshcd_print_host_state(hba);
-		ufshcd_print_pwr_info(hba);
-		ufshcd_print_host_regs(hba);
-	}
+	if (ret)
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
 
 	spin_lock_irqsave(hba->host->host_lock, flags);
 	hba->active_uic_cmd = NULL;
@@ -4454,7 +4465,7 @@ static int ufshcd_link_startup(struct ufs_hba *hba)
 
 	/* Mark that link is up in PWM-G1, 1-lane, SLOW-AUTO mode */
 	ufshcd_init_pwr_info(hba);
-	ufshcd_print_pwr_info(hba);
+	ufshcd_print_info(hba, UFS_INFO_PWR);
 
 	if (hba->quirks & UFSHCD_QUIRK_BROKEN_LCC) {
 		ret = ufshcd_disable_device_tx_lcc(hba);
@@ -4471,9 +4482,8 @@ static int ufshcd_link_startup(struct ufs_hba *hba)
 out:
 	if (ret) {
 		dev_err(hba->dev, "link startup failed %d\n", ret);
-		ufshcd_print_host_state(hba);
-		ufshcd_print_pwr_info(hba);
-		ufshcd_print_host_regs(hba);
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
 	}
 	return ret;
 }
@@ -4817,8 +4827,8 @@ ufshcd_transfer_rsp_status(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
 		dev_err(hba->dev,
 				"OCS error from controller = %x for tag %d\n",
 				ocs, lrbp->task_tag);
-		ufshcd_print_host_regs(hba);
-		ufshcd_print_host_state(hba);
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS);
 		break;
 	} /* end of switch */
 
@@ -5801,9 +5811,9 @@ static irqreturn_t ufshcd_check_errors(struct ufs_hba *hba)
 					__func__, hba->saved_err,
 					hba->saved_uic_err);
 
-				ufshcd_print_host_regs(hba);
-				ufshcd_print_pwr_info(hba);
-				ufshcd_print_tmrs(hba, hba->outstanding_tasks);
+				ufshcd_print_info(hba, UFS_INFO_HOST_REGS |
+						  UFS_INFO_PWR |
+						  UFS_INFO_TMRS);
 				ufshcd_print_trs(hba, hba->outstanding_reqs,
 							pr_prdt);
 			}
@@ -6416,9 +6426,8 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
 	scsi_print_command(hba->lrb[tag].cmd);
 	if (!hba->req_abort_count) {
 		ufshcd_update_reg_hist(&hba->ufs_stats.task_abort, 0);
-		ufshcd_print_host_regs(hba);
-		ufshcd_print_host_state(hba);
-		ufshcd_print_pwr_info(hba);
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
 		ufshcd_print_trs(hba, 1 << tag, true);
 	} else {
 		ufshcd_print_trs(hba, 1 << tag, false);
@@ -7444,7 +7453,7 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool async)
 					__func__, ret);
 			goto out;
 		}
-		ufshcd_print_pwr_info(hba);
+		ufshcd_print_info(hba, UFS_INFO_PWR);
 	}
 
 	/*
@@ -8897,8 +8906,8 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 	err = ufshcd_hba_enable(hba);
 	if (err) {
 		dev_err(hba->dev, "Host controller enable failed\n");
-		ufshcd_print_host_regs(hba);
-		ufshcd_print_host_state(hba);
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS);
 		goto free_tmf_queue;
 	}
 
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 7fa35c78342b..3450d9589602 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -817,6 +817,13 @@ static inline void ufshcd_rmwl(struct ufs_hba *hba, u32 mask, u32 val, u32 reg)
 	ufshcd_writel(hba, tmp, reg);
 }
 
+enum ufs_info_item {
+	UFS_INFO_HOST_STATE = (1 << 0),
+	UFS_INFO_HOST_REGS  = (1 << 1),
+	UFS_INFO_PWR        = (1 << 2),
+	UFS_INFO_TMRS       = (1 << 3)
+};
+
 int ufshcd_alloc_host(struct device *, struct ufs_hba **);
 void ufshcd_dealloc_host(struct ufs_hba *);
 int ufshcd_hba_enable(struct ufs_hba *hba);
@@ -826,6 +833,7 @@ int ufshcd_make_hba_operational(struct ufs_hba *hba);
 void ufshcd_remove(struct ufs_hba *);
 int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
 void ufshcd_delay_us(unsigned long us, unsigned long tolerance);
+void ufshcd_print_info(struct ufs_hba *hba, enum ufs_info_item flags);
 int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
 				u32 val, unsigned long interval_us,
 				unsigned long timeout_ms);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
