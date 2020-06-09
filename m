Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB191F3FA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uNJZTZY88mWdUmQp7boK+LXMc0gzLAGIXXkSsyzm7b8=; b=G2Kl8DQnfcLIin
	3rNuLZInSyQdmBBHt7WBoiuXxNWGDIfPEDeR5yBMf37cANGfonTXta0236rB1V4gMB9EmxlRxjJ0T
	Qq8zxDfDgyOUrb73b620GPKsqRxX8Wu7c9IDDOMshzCuGVAkxUEXpmjNaPQsoAa7jEiEfTsCeIKCD
	gGc3EIJNT76aMlcpjkPKl/UiUIX3qTbvQoSwsQhtPKnOHner6j2MZRftFsvD3F53tekO43OWSLTwG
	0flHuFvjLz9hLA0+xnkO97iozUFyRNkM2M/957kZH5S2fmWqFMCQjCos1G6EI/bvMI3vNohnl+RSJ
	TsXSXifEHaJ+HG1MkHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigN0-0004VM-Fo; Tue, 09 Jun 2020 15:40:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigMn-0004Tr-DQ; Tue, 09 Jun 2020 15:40:46 +0000
X-UUID: c2c22693b02c4add8b3e1c0ac994171e-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=gz9jHrd19tMvfltELFNEZu5vfsrGH8nrJcXFS/mzO2E=; 
 b=cma5uxGUd077/+2UxsRe+VmTuJtu1JMw9k9F9JvC13QIKHJffg3bQO0YjHioBxHmLoV2Bij9SjwQQBwiF6WZgjyMPnFviS3t95HLVS1SFKBqdmfKd+rAQxC8qezonM0yYdgCiF4rCzD6bcm3EnOayaE4PgfuYGMKDAG+pOJlYX4=;
X-UUID: c2c22693b02c4add8b3e1c0ac994171e-20200609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 876993373; Tue, 09 Jun 2020 07:40:44 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 08:40:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 23:40:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 23:40:33 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2] scsi: ufs: Fix imprecise time in devfreq window
Date: Tue, 9 Jun 2020 23:40:35 +0800
Message-ID: <20200609154035.1950-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_084045_461756_CF2ACA6B 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Promise precision of devfreq windows by

1. Align time base of both devfreq_dev_status.total_time and
   devfreq_dev_status.busy_time to ktime-based time.

2. Align below timelines,
   - The beginning of devfreq window
   - The beginning of busy time in new window
   - The end of busy time in current window

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ad4fc829cbb2..04b79ca66fdf 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -1314,6 +1314,7 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	unsigned long flags;
 	struct list_head *clk_list = &hba->clk_list_head;
 	struct ufs_clk_info *clki;
+	ktime_t curr_t;
 
 	if (!ufshcd_is_clkscaling_supported(hba))
 		return -EINVAL;
@@ -1321,6 +1322,7 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	memset(stat, 0, sizeof(*stat));
 
 	spin_lock_irqsave(hba->host->host_lock, flags);
+	curr_t = ktime_get();
 	if (!scaling->window_start_t)
 		goto start_window;
 
@@ -1332,18 +1334,17 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	 */
 	stat->current_frequency = clki->curr_freq;
 	if (scaling->is_busy_started)
-		scaling->tot_busy_t += ktime_to_us(ktime_sub(ktime_get(),
+		scaling->tot_busy_t += ktime_to_us(ktime_sub(curr_t,
 					scaling->busy_start_t));
 
-	stat->total_time = jiffies_to_usecs((long)jiffies -
-				(long)scaling->window_start_t);
+	stat->total_time = ktime_to_us(curr_t) - scaling->window_start_t;
 	stat->busy_time = scaling->tot_busy_t;
 start_window:
-	scaling->window_start_t = jiffies;
+	scaling->window_start_t = ktime_to_us(curr_t);
 	scaling->tot_busy_t = 0;
 
 	if (hba->outstanding_reqs) {
-		scaling->busy_start_t = ktime_get();
+		scaling->busy_start_t = curr_t;
 		scaling->is_busy_started = true;
 	} else {
 		scaling->busy_start_t = 0;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
