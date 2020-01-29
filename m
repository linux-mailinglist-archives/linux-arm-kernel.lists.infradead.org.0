Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110EC14C70A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 08:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGPZra5YhAkNDgkoSG/nGx4zdSXMxhXO1baBoh0OGRA=; b=GkofYd+zoh5KFQ
	13sAh+/QZ3u3T34YJaatq7x51rtlGNk6M2bEVIPiA0Ra5L13lJJGeQRA46dEdpGpshIJ2xy6xdqDc
	kv8dv2lHBbLbBbaLdmMiLHkuOw9V24QLCXV3TUWyYZPJF5/WtxnvXcJvumdMp9zdio65UDdfFJeFl
	PaKb99fiac4rgVp5qNvcw/xSNFYQIOPIcxYniGoII5Vl2R7u1GddJuiGI+/IkWpmJwAJvo+5xBn6c
	Qb3+0YRUMTN+i9AzCf5N1bvPwLowrDNtgjmQqbHa3WUX5LDisKZHDCuVZfcZvOP5rAR9Jlt30lDrD
	AOyOB8NFnHF6rpYKXAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwi6U-0004v3-EZ; Wed, 29 Jan 2020 07:49:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwi64-0004lt-N9; Wed, 29 Jan 2020 07:49:14 +0000
X-UUID: 9cf618ac6c9e44dbadeba9ee896b42a4-20200128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=YOeqNnQON0pZMvJ2TpcgdJrhCqwz0qDgTvW6jd4cUGg=; 
 b=uwhjJM78Mgoym4qWYTQNIAN8hn7SkXvCXqD67rERbdth76sMZKtcbwmCeQov07Eznd9nsuHgZsol1/N3fRPl1W9ZI1F8p96txiylQSwmUR+YNKBbtgiHVG+WyUOiFZplk3YTDf8NfhJO9SFn/FeOWTmAWBx+KhFqrJH4o6mmNXA=;
X-UUID: 9cf618ac6c9e44dbadeba9ee896b42a4-20200128
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1209114373; Tue, 28 Jan 2020 23:49:07 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 Jan 2020 23:39:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 15:38:21 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 Jan 2020 15:39:12 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH v3 2/4] scsi: ufs-mediatek: support linkoff state during
 suspend
Date: Wed, 29 Jan 2020 15:39:00 +0800
Message-ID: <20200129073902.5786-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200129073902.5786-1-stanley.chu@mediatek.com>
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_234912_768771_FF35BCDB 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If system suspend or runtime suspend mode is configured as
linkoff state, phy can be powered off and reference clock
can be gated in MediaTek Chipsets.

In the same time, remove redundant reference clock control
in suspend and resume callbacks because such control can be
well-handled in setup_clocks callback..

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 7ac838cc15d1..d78897a14905 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -167,7 +167,7 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
 
 	switch (status) {
 	case PRE_CHANGE:
-		if (!on) {
+		if (!on && !ufshcd_is_link_active(hba)) {
 			ufs_mtk_setup_ref_clk(hba, on);
 			ret = phy_power_off(host->mphy);
 		}
@@ -437,10 +437,11 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 		err = ufs_mtk_link_set_lpm(hba);
 		if (err)
 			return -EAGAIN;
-		phy_power_off(host->mphy);
-		ufs_mtk_setup_ref_clk(hba, false);
 	}
 
+	if (!ufshcd_is_link_active(hba))
+		phy_power_off(host->mphy);
+
 	return 0;
 }
 
@@ -449,9 +450,10 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 	int err;
 
-	if (ufshcd_is_link_hibern8(hba)) {
-		ufs_mtk_setup_ref_clk(hba, true);
+	if (!ufshcd_is_link_active(hba))
 		phy_power_on(host->mphy);
+
+	if (ufshcd_is_link_hibern8(hba)) {
 		err = ufs_mtk_link_set_hpm(hba);
 		if (err)
 			return err;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
