Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58181552B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pn/Yy0qgt+V8HiyP1flM/YE7jrGQNEiqw+OCw1vZ3xY=; b=HJebSrzf6fLbmF
	92FeAS95ajyIn2McuLQ4fKpgKLgBKgUfKKaV92QsUZ8SOaMq+RzPDa6tE4ppzzpr9Z9ATwcz/gEck
	Z6AQ/Dx8cIGisWSMrj1r19CECRKJNTdp7lk3l0XHNqsFUZmHH8eABO78PABrQeXWymgrxGYC4qhlM
	pMMpBDTaS/RnhhyleGmhzJmGUmsYSBpkKbi97tl9oQ9whY1FAgFbaj0G4MMwmCWU+U4wWMzITjqfA
	+HdpMvFHgs1gCb5Pp7kgQzOa1SAkO4sfs4t+UAys1pyTZhXzGJcaAZ6ykOh7OdMGX60+nwDqGJhb1
	F87wLOJboKOQUdvES/2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxh2-0005mM-9F; Fri, 07 Feb 2020 07:04:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxgX-0005So-Qu; Fri, 07 Feb 2020 07:04:19 +0000
X-UUID: 94a8ee89964446e38dd5f1110cb2243b-20200206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=5HvzdlfZTx72XjylW/wDM1/cgbzDal8HbcC73gtLS5I=; 
 b=X6N5ujWEQJWf8eWPMF//rRdl4bdWz1lRYuIW3PjErtA21bDWt0ztIzIj7Wmq1tWClRmEjyQxn+1agU8mQuAHPF5+yxYc05/D/8QuCz8cfxsMp1TobP+laKszf+aNdygbBUUlAmYWK5MersZ+7ALuQYLKtrAEREA5Cz5caTZ4JP4=;
X-UUID: 94a8ee89964446e38dd5f1110cb2243b-20200206
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 552046680; Thu, 06 Feb 2020 23:04:14 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Feb 2020 23:04:12 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 15:02:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 7 Feb 2020 15:04:28 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH v1 1/2] scsi: ufs: ufs-mediatek: fix TX LCC disabling timing
Date: Fri, 7 Feb 2020 15:03:56 +0800
Message-ID: <20200207070357.17169-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200207070357.17169-1-stanley.chu@mediatek.com>
References: <20200207070357.17169-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CCF22BD2D5023F448DCF45E9C134A9B5F693F4DF05BCEC3FF893F596DE7ED9352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_230418_017510_5BBF87B2 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek UFS host requires TX LCC to be disabled in both host
and device sides. This can be done by disabling host's local TX LCC
before link startup. Correct TX LCC disabling timing in MediaTek
UFS driver.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 0ce08872d671..8f73c860f423 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -313,6 +313,15 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
 
 	ufs_mtk_unipro_powerdown(hba, 0);
 
+	/*
+	 * Setting PA_Local_TX_LCC_Enable to 0 before link startup
+	 * to make sure that both host and device TX LCC are disabled
+	 * once link startup is completed.
+	 */
+	ret = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
+	if (ret)
+		return ret;
+
 	/* disable deep stall */
 	ret = ufshcd_dme_get(hba, UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
 	if (ret)
@@ -344,9 +353,6 @@ static void ufs_mtk_setup_clk_gating(struct ufs_hba *hba)
 
 static int ufs_mtk_post_link(struct ufs_hba *hba)
 {
-	/* disable device LCC */
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
-
 	/* enable unipro clock gating feature */
 	ufs_mtk_cfg_unipro_cg(hba, true);
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
