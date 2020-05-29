Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1471E7955
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HjCVZmx/5DnWSgjXKPoMzDhHxflTufQVQK0v9aSBCQ=; b=UW/EoXb88C7HsG
	8kDhPiVX3CWl7xWmbcRaKeSQp1/7n6maTKmi5NNXpiaIdbukDrwd5+YkJVwUArDCzQiP7IbM5ABOo
	gng3FvkzhAOUgYoakzmcfRkzvHqQj+7T5C3ed5Frvz0BT5grWjJEQfF5N8CEywpBokcQJyEp1/Yjy
	6LMRwdofx4Bq391jhZ0fAjsZJzkktgkSAzcR/Al/OyINE2DVuuLcc7Mk2C12+PNIM6laeMZui5WyU
	WpT0f2gK1eaRoi0udM3BIDCaK0LsujXuHDrgojgKztn96xWlin082diqkJJmr5NnI6BfmUneUblno
	+kIKSHMSAqvH9uBzyMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebG0-0006Sm-JQ; Fri, 29 May 2020 09:24:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebEe-0005Ne-CT; Fri, 29 May 2020 09:23:30 +0000
X-UUID: 233e7edc789245459d2c0c8e500eea86-20200529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ew+RGCuaV2Y1qHcybtLqf6q5Y9tu1r8jPZYZhoV+ToI=; 
 b=uX2clnuHFeTnEABY73ouX/22G12TdLGnSzsxsTAAl0A++gCX6UKLBna06mmK1MeiuabF6x9VCvZfkzyx7dMW4qffuWutCXtV/1FGpxfdMRzZhjKS622gF4/O3rpTqYkVr3CsdcINRgG0/1Dqo0CADBIwfOYMIr/RIrvH5/7Q8Z8=;
X-UUID: 233e7edc789245459d2c0c8e500eea86-20200529
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1096569329; Fri, 29 May 2020 01:23:13 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 02:23:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 17:23:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 29 May 2020 17:23:10 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 2/5] scsi: ufs-mediatek: Do not gate clocks if auto-hibern8
 is not entered yet
Date: Fri, 29 May 2020 17:23:07 +0800
Message-ID: <20200529092310.1106-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200529092310.1106-1-stanley.chu@mediatek.com>
References: <20200529092310.1106-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 179AB46C744F75B7EDC9180CC11DB5285C4CC2C633C70B26C2D576272C883EEC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_022328_431612_F77F0353 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: pengshun.zhao@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some chances that link enters hibern8 lately by auto-hibern8
scheme during the clock-gating flow. Clocks shall not be gated if link
is still active otherwise host or device may hang.

Fix this by returning error code to the caller __ufshcd_setup_clocks()
to skip gating clocks there if link is not confirmed in hibern8
state yet.

Also allow some waiting time for the hibern8 state transition.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Andy Teng <andy.teng@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 36 ++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 523ee5573921..3c85f5e97dea 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -178,15 +178,30 @@ static void ufs_mtk_setup_ref_clk_wait_us(struct ufs_hba *hba,
 	host->ref_clk_ungating_wait_us = ungating_us;
 }
 
-static u32 ufs_mtk_link_get_state(struct ufs_hba *hba)
+int ufs_mtk_wait_link_state(struct ufs_hba *hba, u32 state,
+			    unsigned long max_wait_ms)
 {
+	ktime_t timeout, time_checked;
 	u32 val;
 
-	ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
-	val = ufshcd_readl(hba, REG_UFS_PROBE);
-	val = val >> 28;
+	timeout = ktime_add_us(ktime_get(), ms_to_ktime(max_wait_ms));
+	do {
+		time_checked = ktime_get();
+		ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
+		val = ufshcd_readl(hba, REG_UFS_PROBE);
+		val = val >> 28;
+
+		if (val == state)
+			return 0;
 
-	return val;
+		/* Sleep for max. 200us */
+		usleep_range(100, 200);
+	} while (ktime_before(time_checked, timeout));
+
+	if (val == state)
+		return 0;
+
+	return -ETIMEDOUT;
 }
 
 /**
@@ -221,10 +236,13 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 			 * triggered by Auto-Hibern8.
 			 */
 			if (!ufshcd_can_hibern8_during_gating(hba) &&
-			    ufshcd_is_auto_hibern8_enabled(hba) &&
-			    ufs_mtk_link_get_state(hba) ==
-			    VS_LINK_HIBERN8)
-				ufs_mtk_setup_ref_clk(hba, on);
+			    ufshcd_is_auto_hibern8_enabled(hba)) {
+				ret = ufs_mtk_wait_link_state(hba,
+							      VS_LINK_HIBERN8,
+							      15);
+				if (!ret)
+					ufs_mtk_setup_ref_clk(hba, on);
+			}
 		}
 	} else if (on && status == POST_CHANGE) {
 		ret = phy_power_on(host->mphy);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
