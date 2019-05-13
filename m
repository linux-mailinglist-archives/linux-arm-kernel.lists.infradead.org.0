Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C39E1B865
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9UFskSCYlnWwSTAdSvSS5jKz2gk14H3IbnjkYO1BK8=; b=p+jezUMyfHjzwf
	jby1keTT1ciOTYXmvs38+bFqcInabFpVjDGa2xk5si7T1BQecEZ8G/29zWqbg2+EVtQcJRzo1QDK/
	ELUa9ba/vpui7BZiGVSAHtvaqOHfpu/dtrZDBqKOfJaTklKwT4DJvlF5sOpOoBAKx8aQ9XltuRjQV
	iga9r3FiV4Ed6p5fV1GJmW7KCYy8ri5PYvC+0FT/yiYFVfOWcBFgKUtXkg05gYaZEwyHnYT/6I2qN
	xw3mFFw/1PufUhBlpBHcQrWegSPh2kBptwXEhb0XvLW2kTpsd0xDdxGWKpzPRdJIpXnvlJAen1EPh
	TWrmYhUPDB8o1+dz8atA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQC4M-0003k7-Bi; Mon, 13 May 2019 14:36:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQC4F-0003jF-5y; Mon, 13 May 2019 14:36:40 +0000
X-UUID: 12a735eafdb841c6adbcef1691d8b506-20190513
X-UUID: 12a735eafdb841c6adbcef1691d8b506-20190513
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1123437200; Mon, 13 May 2019 06:36:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 07:36:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 22:36:31 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 13 May 2019 22:36:31 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 1/3] scsi: ufs: do not overwrite auto-hibern8 timer
Date: Mon, 13 May 2019 22:36:24 +0800
Message-ID: <1557758186-18706-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_073639_293055_CE65E05D 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com, sayalil@codeaurora.org,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some vendor-specific initialization flow may set its own
auto-hibern8 timer. In this case, do not overwrite timer value
as "default value" in ufshcd_init().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index e040f9dd9ff3..1665820c22fd 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8309,7 +8309,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 						UIC_LINK_HIBERN8_STATE);
 
 	/* Set the default auto-hiberate idle timer value to 150 ms */
-	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
+	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT & !hba->ahit) {
 		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
 			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
 	}
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
