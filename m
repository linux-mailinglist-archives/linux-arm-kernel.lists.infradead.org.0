Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8784A7279A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 07:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBp70O9SvgldCDVHg2kA+ItFppJOIllThPDU4xjGkqI=; b=txVYoq3MwR7pwZ
	/t9JmPwIPZXbCW42u+dAzfZ450LgTK2OQajEC6rEWjQTl43zJmeQrgjBs2XPI9fgaRsSP1BXPAeQ+
	Kl4eTaeBRJW20UHDFJpgRCX9w2WkwlgTWSr09xm7q2OszVE7FHgwMnICMoNnwLzAu1sTvJ/fyI7zM
	DScubvF3FSQdDedWeGxljtfw+ltrVE9W4Yh962YLJT7c6z8xYQe5RxjHI6N1Un7JVMJfPVGgLwVO3
	jM6Rc26RzVS1XBgASU/VGCZJNHBq4qwzaIsMxyTogCCswDRVcwZ9EBew06BiT7oCVfLemejPMdVeF
	EE541kASDGs/3Zl3/XCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAC4-00079O-0U; Wed, 24 Jul 2019 05:52:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAAr-0006U7-PE; Wed, 24 Jul 2019 05:50:51 +0000
X-UUID: 7587757b08e544e987e67188a99fac60-20190723
X-UUID: 7587757b08e544e987e67188a99fac60-20190723
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1242917430; Tue, 23 Jul 2019 21:50:42 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 22:50:41 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 13:50:26 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 13:50:20 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v2 2/3] scsi: ufs: introduce ufshcd_tm_cmd_compl() to refactor
 task cleanup
Date: Wed, 24 Jul 2019 13:50:17 +0800
Message-ID: <1563947418-16394-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D701BA5A8A78953634D797ACCDCDFF18970D1593BE770D737F9A6BAB1F5FE6532000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_225050_018507_70497003 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce ufshcd_tm_cmd_compl() to re-factor taks cleanup jobs
to make code more readable and for future wider usage by task error
handling.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 66c8e7402001..114c15ed75f7 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5522,6 +5522,13 @@ static void ufshcd_check_errors(struct ufs_hba *hba)
 	 */
 }
 
+static void ufshcd_tm_cmd_compl(struct ufs_hba *hba, int tag)
+{
+	__clear_bit(tag, &hba->outstanding_tasks);
+	__clear_bit(tag, &hba->tm_condition);
+	ufshcd_put_tm_slot(hba, tag);
+}
+
 /**
  * ufshcd_tmc_handler - handle task management function completion
  * @hba: per adapter instance
@@ -5687,11 +5694,9 @@ static int __ufshcd_issue_tm_cmd(struct ufs_hba *hba,
 
 	if (likely(cleanup)) {
 		spin_lock_irqsave(hba->host->host_lock, flags);
-		__clear_bit(free_slot, &hba->outstanding_tasks);
+		ufshcd_tm_cmd_compl(hba, free_slot);
 		spin_unlock_irqrestore(hba->host->host_lock, flags);
 
-		clear_bit(free_slot, &hba->tm_condition);
-		ufshcd_put_tm_slot(hba, free_slot);
 		wake_up(&hba->tm_tag_wq);
 	}
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
