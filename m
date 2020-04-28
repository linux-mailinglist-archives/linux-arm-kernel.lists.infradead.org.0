Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A231BBC27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T43noQqF3+0iESETczYDiEaYSwH7VnvvoSQxxC8etdM=; b=lEzos4ndGKLao/
	RWF2I9KHjynP8bVCvvleN7Sr5bB+tSVZSS/lEY/drM+NPW56e/5BSgPBG0HHo99jt77tr1YUrvBEI
	ibnvlEAd/cAUfVxaSUEwAgtvPH+aiwrYzknJDhuv3uh8QJk4i8OS1g/Uoig3n3UksFkNYIJANFpJi
	9L+shFu5lhsGSp5Kr+BNZ11vcjqUAb4pQ6FvtnW9gjizp7IDOCtcYq8ojX5IeleDTElKIz8gYG84Z
	odJRBwVsMZRapozBo+fsdncPvcoQor6/CodcjXlL8mpdpoBwJ/+/fGo+CxLHlT7hRksGZOfV9pvxt
	c37tF+iXuR6uSUM9bu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTODU-0002Fo-00; Tue, 28 Apr 2020 11:15:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOCW-0007mf-7R; Tue, 28 Apr 2020 11:14:57 +0000
X-UUID: 7e200f76f5924abcb60f58acf7273fe1-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=gOI57n0NCChF2mdMfypGPNHt6U2F7UjicizaaWMiXU8=; 
 b=XvUpf2WmYG5L8b/CX0IBLmFky2Yb92ymAhYSSV2AVf+QN7iD5KC0ugzRB1Fgf8vyHGpasw56eIHwB31HVrdS/IydKe9zqftEYj7i3IlA7Gyy+P4AzdJWyXDbpEUnCW9naBEOBHWAOeo2E1D7EkxVVXmh+sAw7gcjia8YYOb8k20=;
X-UUID: 7e200f76f5924abcb60f58acf7273fe1-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1359582461; Tue, 28 Apr 2020 03:14:48 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 04:14:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 19:13:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 19:13:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 1/4] scsi: ufs: allow legacy UFS devices to enable
 WriteBooster
Date: Tue, 28 Apr 2020 19:13:52 +0800
Message-ID: <20200428111355.1776-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200428111355.1776-1-stanley.chu@mediatek.com>
References: <20200428111355.1776-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AC2CEAEB40CCCB9E644C7A17A45E30E1A5213F587BCD3BC5704A675A73F2016B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041456_306992_1F4BAEF8 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WriteBooster feature may be supported by some legacy UFS devices
(i.e., < 3.1) by upgrading firmware.

To enable WriteBooster feature in such devices, relax the entrance
condition of ufshcd_wb_probe() to allow host driver to check those
devices' WriteBooster capability.

WriteBooster feature can be available if below both conditions are
satisfied,

1. Device descriptor has dExtendedUFSFeaturesSupport field.
2. WriteBooster support is specified in above field.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 915e963398c4..111812c5304a 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6800,9 +6800,16 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba *hba)
 
 static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 {
+	if (hba->desc_size.dev_desc <= DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
+		goto wb_disabled;
+
 	hba->dev_info.d_ext_ufs_feature_sup =
 		get_unaligned_be32(desc_buf +
 				   DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP);
+
+	if (!(hba->dev_info.d_ext_ufs_feature_sup & UFS_DEV_WRITE_BOOSTER_SUP))
+		goto wb_disabled;
+
 	/*
 	 * WB may be supported but not configured while provisioning.
 	 * The spec says, in dedicated wb buffer mode,
@@ -6818,11 +6825,12 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 	hba->dev_info.b_presrv_uspc_en =
 		desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
 
-	if (!((hba->dev_info.d_ext_ufs_feature_sup &
-		 UFS_DEV_WRITE_BOOSTER_SUP) &&
-		hba->dev_info.b_wb_buffer_type &&
+	if (!(hba->dev_info.b_wb_buffer_type &&
 	      hba->dev_info.d_wb_alloc_units))
-		hba->caps &= ~UFSHCD_CAP_WB_EN;
+		goto wb_disabled;
+
+wb_disabled:
+	hba->caps &= ~UFSHCD_CAP_WB_EN;
 }
 
 static int ufs_get_device_desc(struct ufs_hba *hba)
@@ -6862,8 +6870,7 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 
 	model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
 
-	/* Enable WB only for UFS-3.1 */
-	if (dev_info->wspecversion >= 0x310)
+	if (ufshcd_is_wb_allowed(hba))
 		ufshcd_wb_probe(hba, desc_buf);
 
 	err = ufshcd_read_string_desc(hba, model_index,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
