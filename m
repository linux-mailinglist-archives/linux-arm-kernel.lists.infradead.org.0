Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4AA1EA22E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HjCVZmx/5DnWSgjXKPoMzDhHxflTufQVQK0v9aSBCQ=; b=EjSNq5ztXzDqak
	48jCEry0hp9O1Cq9COBB98EW/l914jRS8CTUE+2IMTpSZtcjAiu1iaZkYx8QLTJ+X1OfSWg4tS120
	xPmyLtxRAgEYMufpimIkJFcYPD2os+wE7X0bMhvgaGwuFsOlWP/niEnJ4P+SxSKjs3g3BpXtxol9l
	52/7eNEKV6wN626wDnfqaHmhsYmUsUTQRHb0IRV3XqRH3Hx4s1bXZu6Gdol4SzMeepYLYja3D8UNG
	ze+7tB8yOxXUcavH7PauQ/9SKVbC0McJD8hPdM31t3C/9mviagpqOsspWqbRbCEU0Wdl65F/I9bic
	Lenl93tWUzsmE+7ixmiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhzj-0001Qi-8x; Mon, 01 Jun 2020 10:48:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhyB-0008Tr-DO; Mon, 01 Jun 2020 10:47:05 +0000
X-UUID: aa2590a2777c44f984e25ded2697b0ba-20200601
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ew+RGCuaV2Y1qHcybtLqf6q5Y9tu1r8jPZYZhoV+ToI=; 
 b=A7SGOhvht8wg2PLc3KmLquUNvZkUAe0xivrZoBQTKyf0lXl/uu6Qba4BlrVx4AdRLS+l5FERi3m50Mly/90752MweMcSg+n5EKwPPKpjWhXDpO3P88DpzdpK2SJqmhW/kGefAtQeCwESpORnQj0m/THGDF5ywBQDzmUgINptH44=;
X-UUID: aa2590a2777c44f984e25ded2697b0ba-20200601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 984776720; Mon, 01 Jun 2020 02:46:52 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 03:46:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 18:46:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 1 Jun 2020 18:46:45 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 2/5] scsi: ufs-mediatek: Do not gate clocks if auto-hibern8
 is not entered yet
Date: Mon, 1 Jun 2020 18:46:43 +0800
Message-ID: <20200601104646.15436-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200601104646.15436-1-stanley.chu@mediatek.com>
References: <20200601104646.15436-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: A3A38F099F244B213021D7716C53E5E2CFB044CE2A7C2B50457DA796582604B42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_034703_467080_8C1E0643 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
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
