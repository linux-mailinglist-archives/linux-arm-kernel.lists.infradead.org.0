Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3F22484E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncRB+F9QVgMPXatOpNtAgODrfgAd8UStRgQok4vyqRw=; b=HlMpHN2GAnIzBY
	Q6rm989UOQwKMYHDViNl5VxDWCmvHNcAi0Ykq3R8ALtXlYenP7I6Oq9lXETmXG/1zCrFSrWxEIBzZ
	Vv1ABl6VDXbOsduXHNrfO7IvUSzn2Z797nk+ez8f/PKn/sK9QSJ/2l6QNONhGH2ZScfRbCkxRLjMC
	qKF5NDNH6CrlxF7l8o0eGQ8aqU2qT6E23qyvZfk+iWRFI0P8rSMjiv36OFmvecBmYVU81z5eWjSaK
	N7J5+nC6sKnKrZltUDzwDNQshe00jFlKcObfQprH65IEGhLAo2vtISgt4+6b72qK8nFu2YDCtjISS
	BYcrf+yswuBCy0SrugLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyWp-0000kK-OQ; Tue, 21 May 2019 06:45:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyWi-0000jA-4w; Tue, 21 May 2019 06:45:33 +0000
X-UUID: 381ac8fb45984be7abfd5ff7b053a1f6-20190520
X-UUID: 381ac8fb45984be7abfd5ff7b053a1f6-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1760941141; Mon, 20 May 2019 22:45:08 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 23:45:06 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 14:45:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 14:45:05 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v5 2/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
Date: Tue, 21 May 2019 14:44:53 +0800
Message-ID: <1558421094-3182-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
References: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234532_197884_B35D3D7D 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some vendor-specific initialization flow may set its own
auto-hibernate timer. In this case, do not overwrite timer value
as "default value" in ufshcd_init().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 0cf698d05426..7cd757558203 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8312,7 +8312,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 						UIC_LINK_HIBERN8_STATE);
 
 	/* Set the default auto-hiberate idle timer value to 150 ms */
-	if (ufshcd_is_auto_hibern8_supported(hba)) {
+	if (ufshcd_is_auto_hibern8_supported(hba) && !hba->ahit) {
 		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
 			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
 	}
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
