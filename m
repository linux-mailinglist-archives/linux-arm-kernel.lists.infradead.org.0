Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5431FAD1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NG0anIvy+GSyGjr0R6y3IDmFodB14h7BH5dzSgoEIuw=; b=Ee/O9AUAaE5SYb
	qTfHEnKVsGJmcKwOEPWzwGF9qUIAmqgWi5kJDqPNPmNaV1P+biQbnVZQyLwe/PtQUXne7tOGPXPqU
	WBmHJpBd9IUuLeTqvNtbrCAcy9SJZ6yy1V8f2DV/lDkHs5DKPoLkvW5X012HCEuQ1Xm4d4/URiQDo
	k5z5e/Rst3PzyL1iLEbSfiu1aLtGnrMXM6cHH8KkN1ezmotzOjy0Ck4ZM6FBDtrFK/3WDbfJG8WTo
	DCya/ikETMk6endLbc5fvsaBnfhSPfMXfz29EA7V0q9JZMcDK5hNE2UmccqfwNzLkScSNolWqF/Cw
	me3F6VnK3dMPG9KALk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8Fn-0004oZ-Nu; Tue, 16 Jun 2020 09:51:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8Ff-0004nI-Mv; Tue, 16 Jun 2020 09:51:32 +0000
X-UUID: 38caec1d4db34960a03bab1618a19f0e-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=PUmd0x9RibPQtgq71WhoBPwcOlI5fEGWCsbX2zCT6VQ=; 
 b=UEtOfsuq7DAjTXOjStRaimXdavQ70uYZhrfrMF/JC850yawuL0VNDaueBR8jq6YoQcClIGW1X4+7BnHLhI68YaERECB1gBD30a6PONW36gouybWqtqxxHnHmpC+csfIn3fIoA2QthvxmVKzmmMjF9J9sn1a3Bd62wiFCH+TvZSM=;
X-UUID: 38caec1d4db34960a03bab1618a19f0e-20200616
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1078669262; Tue, 16 Jun 2020 01:51:24 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 02:51:23 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 17:51:19 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 16 Jun 2020 17:51:19 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH] scsi: ufs-mediatek: Make ufs_mtk_wait_link_state as static
 function
Date: Tue, 16 Jun 2020 17:51:20 +0800
Message-ID: <20200616095120.14570-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_025131_751062_6804B186 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
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

Fix build warning reported by kernel test robot:
Make ufs_mtk_wait_link_state() as static functon.

Warning:
>> drivers/scsi/ufs/ufs-mediatek.c:181:5: warning: no previous prototype
>> for 'ufs_mtk_wait_link_state' [-Wmissing-prototypes]

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 9a4432c9f7dc..ad929235c193 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -185,8 +185,8 @@ static void ufs_mtk_setup_ref_clk_wait_us(struct ufs_hba *hba,
 	host->ref_clk_ungating_wait_us = ungating_us;
 }
 
-int ufs_mtk_wait_link_state(struct ufs_hba *hba, u32 state,
-			    unsigned long max_wait_ms)
+static int ufs_mtk_wait_link_state(struct ufs_hba *hba, u32 state,
+				   unsigned long max_wait_ms)
 {
 	ktime_t timeout, time_checked;
 	u32 val;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
