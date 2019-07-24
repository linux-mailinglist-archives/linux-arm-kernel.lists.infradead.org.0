Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2FC72791
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 07:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rCX3PdMTRlzREYl1e8z++MXreTg8a1GRh2iCOwlDsA=; b=XwrE4HEPvpUma6
	Q4FYZDWYL9EMPg+MLiAgIivBgySgYD1kWuVLfgV5fU2ITQP6OOdZjmE2xXlhgMR57ZDJYXKk+A4u+
	nLz+e537TvxMIOGjMut6qHRjukKInocDB2SPzUnd182gPChALGZQ229y7hciJ6HdQKHjqB//As6CS
	u4I0KwlGFnJ9O+/tDfVaBwvA4b8fM/OUguCQsxRX4vZKOpr9EdgY0aawJtRe1h+KR8AWUVZsW6I2M
	+9DYhr0wQnBKU7VI3BK3L0jWhVPdtBmz7vtrNm6dwfZ+omkssAHCrQe+S7zwWhILuvEbGQDbpy+lt
	D0W2DUo6J++VRdOqHB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAB1-0006KP-7M; Wed, 24 Jul 2019 05:50:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAAZ-0006Gv-7o; Wed, 24 Jul 2019 05:50:32 +0000
X-UUID: 6ac57a6b11fa4d4d8f0c19ac1470ba0a-20190723
X-UUID: 6ac57a6b11fa4d4d8f0c19ac1470ba0a-20190723
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 583997347; Tue, 23 Jul 2019 21:50:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 22:50:28 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 13:50:27 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 13:50:27 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v2 3/3] scsi: ufs: fix broken hba->outstanding_tasks
Date: Wed, 24 Jul 2019 13:50:18 +0800
Message-ID: <1563947418-16394-4-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_225031_447622_062C995F 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Currently bits in hba->outstanding_tasks are cleared only after their
corresponding task management commands are successfully done by
__ufshcd_issue_tm_cmd().

If timeout happens in a task management command, its corresponding
bit in hba->outstanding_tasks will not be cleared until next task
management command with the same tag used successfully finishes.

This is wrong and can lead to some issues, like power issue.
For example, ufshcd_release() and ufshcd_gate_work() will do nothing
if hba->outstanding_tasks is not zero even if both UFS host and devices
are actually idle.

Referring to error handling flow of hba->outstanding_reqs, all timed-out
bits will be cleared by
ufshcd_reset_and_restore() => ufshcd_transfer_req_compl()
after reset is done. Therefore similar handling for hba->outstanding_tasks
could be applied, for example, by
ufshcd_reset_and_restore() => ufshcd_tmc_handler().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 114c15ed75f7..3cb942ef64e2 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5535,11 +5535,25 @@ static void ufshcd_tm_cmd_compl(struct ufs_hba *hba, int tag)
  */
 static void ufshcd_tmc_handler(struct ufs_hba *hba)
 {
-	u32 tm_doorbell;
+	u32 tm_doorbell, tag;
 
 	tm_doorbell = ufshcd_readl(hba, REG_UTP_TASK_REQ_DOOR_BELL);
 	hba->tm_condition = tm_doorbell ^ hba->outstanding_tasks;
+
+	/*
+	 * resource of timed-out tasks shall be cleaned.
+	 * No effect for normal tasks.
+	 */
+	for_each_set_bit(tag, &hba->tm_condition, hba->nutmrs)
+		ufshcd_tm_cmd_compl(hba, tag);
+
 	wake_up(&hba->tm_wq);
+
+	/*
+	 * If a timed-out task is cleaned done above,
+	 * free tag is available now for waiters.
+	 */
+	wake_up(&hba->tm_tag_wq);
 }
 
 /**
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
