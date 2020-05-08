Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB441CA0E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltVRc8AKjLPBn+mBL6Tc/Db73ocCzvt4MLjofELbJNk=; b=He7fEf8PKAQia6
	ac7Q11Ne3McYEIwMcZR6skQfYcTOiVvWBbgAF+hTdJOXo3PyKFI6SqT0GLEvK7cwBQk8JEdK9EySF
	EXE0VIEh3LSTu4fw9sajOcZRPW3+FdYePqmpMiOb6wi6PfRjWYm7Qv0dUkljajMZY5AXV51M9rK5M
	i13CJvbpfixilv9QzucAFcBAiL7o89T60SlwBp+fkG5J8/CW4MheHRyr+0Fbrk+I7PTGwtUm/FZ1k
	uWa/Dr7Mqn1tZwQPAgr30459tS1fsh4IZsN82voQxUOigNXdI1a35lhfwHg/ud4TBDoe7eyQF0YJ1
	BfKmnJnXHw1Gqvwu3FKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsmQ-0002tO-3H; Fri, 08 May 2020 02:30:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsmE-0002s5-Pl; Fri, 08 May 2020 02:30:16 +0000
X-UUID: d533795a91bd4654b5f5af6d0aaf8003-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zX9LXOY/O270hUPX2+GL3UKkBmewuNRKxd0VGBvTLxQ=; 
 b=Vm9xp1GjBhjDi07XYe6cw+Uh/S+5P7c2KsRg+w/A9eY7WBB5IRTSkn1A4YhyzR954w7fxNOQNS/X7IYAqeP8xyFhWRtQ/fQMGIUn7SZ9PCsUy+XJc2h81mNi9NEVgbP4hPTbyPi2/l61Cmjwz7FpkV/qehOFdgj/AQZwqRG2Ijg=;
X-UUID: d533795a91bd4654b5f5af6d0aaf8003-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1895336907; Thu, 07 May 2020 18:30:09 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 19:21:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:21:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 8 May 2020 10:21:42 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v7 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Date: Fri, 8 May 2020 10:21:37 +0800
Message-ID: <20200508022141.10783-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508022141.10783-1-stanley.chu@mediatek.com>
References: <20200508022141.10783-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 543113DA99EBE97E4204572D429B3314DD54CD3592D334F077A5E5D085514FE02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_193014_852944_DD66B27D 
X-CRM114-Status: UNSURE (   9.69  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add fixup_dev_quirk vops in MediaTek UFS platforms and provide
an initial vendor-specific device quirk table.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 673c16596fb2..1898f1269ac5 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -30,6 +30,12 @@
 #define ufs_mtk_device_reset_ctrl(high, res) \
 	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
 
+static struct ufs_dev_fix ufs_mtk_dev_fixups[] = {
+	UFS_FIX(UFS_VENDOR_SKHYNIX, "H9HQ21AFAMZDAR",
+		UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES),
+	END_FIX
+};
+
 static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 {
 	u32 tmp;
@@ -555,10 +561,8 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba)
 	struct ufs_dev_info *dev_info = &hba->dev_info;
 	u16 mid = dev_info->wmanufacturerid;
 
-	if (mid == UFS_VENDOR_SAMSUNG) {
-		hba->dev_quirks &= ~UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE;
+	if (mid == UFS_VENDOR_SAMSUNG)
 		ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TACTIVATE), 6);
-	}
 
 	/*
 	 * Decide waiting time before gating reference clock and
@@ -575,6 +579,17 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba)
 	return 0;
 }
 
+void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
+{
+	struct ufs_dev_info *dev_info = &hba->dev_info;
+	u16 mid = dev_info->wmanufacturerid;
+
+	ufshcd_fixup_dev_quirks(hba, ufs_mtk_dev_fixups);
+
+	if (mid == UFS_VENDOR_SAMSUNG)
+		hba->dev_quirks &= ~UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE;
+}
+
 /**
  * struct ufs_hba_mtk_vops - UFS MTK specific variant operations
  *
@@ -589,6 +604,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.link_startup_notify = ufs_mtk_link_startup_notify,
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
+	.fixup_dev_quirks    = ufs_mtk_fixup_dev_quirks,
 	.suspend             = ufs_mtk_suspend,
 	.resume              = ufs_mtk_resume,
 	.dbg_register_dump   = ufs_mtk_dbg_register_dump,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
