Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DF1552B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgNSCwbFVFw7qQV01wN5Qkm8unAiEySwA62gWb5iFj0=; b=KipSfEZ7tFn5y8
	LjKoOqt8SgtSCTtlRCVHPiSuROkDbEj0tQtG+B7hfO36n2S+Hl6U2ihlBB/JGbISxAUp9D8r8m7yh
	dxZXj13wtFV/46w8PhwN0NOVGF7ypWWVgfSOLM0/MJYSotjlvv4lGLVhmRvyyeD17Cf3oKoBNZjLt
	zZT2LCft+qYStWqbajNRc3a/DVcHeOytW5DusYY/P9W1rS0mtJl205YjSdBSdR4VGvNUtui8dpiwm
	ueSwqrb4I6C0m9cdp8Y7wJcW19QeAzHj/IhzBawLZBdWbR5oSIvgoQmBSCGs9FKTADE/a1jJDInjJ
	8SReJ1CefFSExXa07JPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxgj-0005Q9-HY; Fri, 07 Feb 2020 07:04:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxgL-0005I7-WE; Fri, 07 Feb 2020 07:04:07 +0000
X-UUID: 45292e0e3fe94d3d99ea0416fd57c0cd-20200206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=6jM/oR06razYnFBu9+gewGY3eZHYhaG1HA0jqsKM5V0=; 
 b=IDDf/v7qRZ49wRCyJyBLD3I7xIp+7uXiIecE3zVt8vnkCZwYZILvjE8S/1gqiUr1V3kKHCpfNTDY4+wbwY2PvtiCEi5xcs0uENPZRlOm6rl2PVW3IL5aYR8Wn4FLNjr7aOy0hIeCE4tDrzMMHu97XEU9uJrZ36aUBRZqmv1HNfc=;
X-UUID: 45292e0e3fe94d3d99ea0416fd57c0cd-20200206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 132922902; Thu, 06 Feb 2020 23:04:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Feb 2020 23:04:42 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 15:02:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 7 Feb 2020 15:04:28 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH v1 2/2] scsi: ufs: introduce common function to disable host
 TX LCC
Date: Fri, 7 Feb 2020 15:03:57 +0800
Message-ID: <20200207070357.17169-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200207070357.17169-1-stanley.chu@mediatek.com>
References: <20200207070357.17169-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_230406_036390_9088D049 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Many vendors would like to disable host TX LCC during initialization
flow. Introduce a common function for all users to make drivers easier to
read and maintained. This patch does not change any functionality.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/cdns-pltfrm.c  | 2 +-
 drivers/scsi/ufs/ufs-hisi.c     | 2 +-
 drivers/scsi/ufs/ufs-mediatek.c | 2 +-
 drivers/scsi/ufs/ufs-qcom.c     | 4 +---
 drivers/scsi/ufs/ufshcd-pci.c   | 2 +-
 drivers/scsi/ufs/ufshcd.h       | 5 +++++
 6 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/ufs/cdns-pltfrm.c b/drivers/scsi/ufs/cdns-pltfrm.c
index 56a6a1ed5ec2..da065a259f6e 100644
--- a/drivers/scsi/ufs/cdns-pltfrm.c
+++ b/drivers/scsi/ufs/cdns-pltfrm.c
@@ -192,7 +192,7 @@ static int cdns_ufs_link_startup_notify(struct ufs_hba *hba,
 	 * and device TX LCC are disabled once link startup is
 	 * completed.
 	 */
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
+	ufshcd_disable_host_tx_lcc(hba);
 
 	/*
 	 * Disabling Autohibern8 feature in cadence UFS
diff --git a/drivers/scsi/ufs/ufs-hisi.c b/drivers/scsi/ufs/ufs-hisi.c
index 5d6487350a6c..074a6a055a4c 100644
--- a/drivers/scsi/ufs/ufs-hisi.c
+++ b/drivers/scsi/ufs/ufs-hisi.c
@@ -235,7 +235,7 @@ static int ufs_hisi_link_startup_pre_change(struct ufs_hba *hba)
 	ufshcd_writel(hba, reg, REG_AUTO_HIBERNATE_IDLE_TIMER);
 
 	/* Unipro PA_Local_TX_LCC_Enable */
-	ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x155E, 0x0), 0x0);
+	ufshcd_disable_host_tx_lcc(hba);
 	/* close Unipro VS_Mk2ExtnSupport */
 	ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), 0x0);
 	ufshcd_dme_get(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), &value);
diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 8f73c860f423..9d05962feb15 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -318,7 +318,7 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
 	 * to make sure that both host and device TX LCC are disabled
 	 * once link startup is completed.
 	 */
-	ret = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
+	ret = ufshcd_disable_host_tx_lcc(hba);
 	if (ret)
 		return ret;
 
diff --git a/drivers/scsi/ufs/ufs-qcom.c b/drivers/scsi/ufs/ufs-qcom.c
index c69c29a1ceb9..c2e703d58f63 100644
--- a/drivers/scsi/ufs/ufs-qcom.c
+++ b/drivers/scsi/ufs/ufs-qcom.c
@@ -554,9 +554,7 @@ static int ufs_qcom_link_startup_notify(struct ufs_hba *hba,
 		 * completed.
 		 */
 		if (ufshcd_get_local_unipro_ver(hba) != UFS_UNIPRO_VER_1_41)
-			err = ufshcd_dme_set(hba,
-					UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE),
-					0);
+			err = ufshcd_disable_host_tx_lcc(hba);
 
 		break;
 	case POST_CHANGE:
diff --git a/drivers/scsi/ufs/ufshcd-pci.c b/drivers/scsi/ufs/ufshcd-pci.c
index 3b19de3ae9a3..8f78a8151499 100644
--- a/drivers/scsi/ufs/ufshcd-pci.c
+++ b/drivers/scsi/ufs/ufshcd-pci.c
@@ -44,7 +44,7 @@ static int ufs_intel_disable_lcc(struct ufs_hba *hba)
 
 	ufshcd_dme_get(hba, attr, &lcc_enable);
 	if (lcc_enable)
-		ufshcd_dme_set(hba, attr, 0);
+		ufshcd_disable_host_tx_lcc(hba);
 
 	return 0;
 }
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 81c71a3e3474..8f516b205c32 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -914,6 +914,11 @@ static inline bool ufshcd_is_hs_mode(struct ufs_pa_layer_attr *pwr_info)
 		pwr_info->pwr_tx == FASTAUTO_MODE);
 }
 
+static inline int ufshcd_disable_host_tx_lcc(struct ufs_hba *hba)
+{
+	return ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
+}
+
 /* Expose Query-Request API */
 int ufshcd_query_descriptor_retry(struct ufs_hba *hba,
 				  enum query_opcode opcode,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
