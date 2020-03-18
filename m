Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F6C1899B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7kxv59uh4VAW/FFhQKaRUi6Y2iSZ/vygNij3jD5nB8=; b=IIOeWR2rk5lsLy
	v+k1nReE13b0sK1vpAB864UnA/7u2ZENA+GIyTGHOKZVrigXuIQK1g9JxD+fY49d4/+/kQVHpKPkK
	jBeDAMiRxw1Od9mCbtioVe+xv2t6yg7xVgw7TKr+L/msmfx6ERnII3K1dgH3pSUhjxboERJZll1LI
	0LXsosu7QKDK4Q+FaNjH7Yk+awyzg5e3dOXSWJd8wFXzMW1QuJqyg/vr7aurE24uY+Vo42+PKNbgD
	k3NbwwBlzmjeEoYfaIenCbRaFzS2LLUBGniuEGHE50qwmFXweIfdnTNEYU05QyLPd3mAORybpbnmp
	2dSFo5bsAlxLmMUB7zBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEW8L-00009w-Qc; Wed, 18 Mar 2020 10:41:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEW7e-0008Dr-LV; Wed, 18 Mar 2020 10:40:28 +0000
X-UUID: 2fe4eaba36744769a1e4e867ccb5df91-20200318
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=dnaSBK+72fnD5GyHY2aq/bAt/ZnYmT7UNcTU1nsG078=; 
 b=KEMe7Gj8TSKdDlTTGYESPtjUlXBt5NhbvmL5Oy3nD9fLFfpFXWNmDxNXXtEmNXFZfHzvJmLgtM+EV+k6OtTPKyhLTxn7TApiCPAqyHGX5b5m7E8e/iKFjb+1LMmZRHz6VzVb8M5jujr1jwLKpxjSv9I6dKjekEhX3wMFNUUXy2E=;
X-UUID: 2fe4eaba36744769a1e4e867ccb5df91-20200318
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1448410426; Wed, 18 Mar 2020 02:40:23 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 03:40:55 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 18:39:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Mar 2020 18:40:31 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <bvanassche@acm.org>
Subject: [PATCH v7 7/7] scsi: ufs-mediatek: customize the delay for host
 enabling
Date: Wed, 18 Mar 2020 18:40:16 +0800
Message-ID: <20200318104016.28049-8-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200318104016.28049-1-stanley.chu@mediatek.com>
References: <20200318104016.28049-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7E6F8BFA6B3F39D2107586FB052DAB7D9B93DE6EAE31C102D80358A06156AE8D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_034026_719297_DD461FBE 
X-CRM114-Status: GOOD (  14.17  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek platform and UFS controller can dynamically customize
the delay for host enabling according to different scenarios.

For example, if UniPro enters lower-power mode, such delay can
be minimized, otherwise longer delay shall be expected.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 43 ++++++++++++++++++++++++++-------
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 2 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 73bd4c245f4a..40a66b31b31f 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -30,11 +30,6 @@
 #define ufs_mtk_device_reset_ctrl(high, res) \
 	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
 
-#define ufs_mtk_unipro_powerdown(hba, powerdown) \
-	ufshcd_dme_set(hba, \
-		       UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0), \
-		       powerdown)
-
 static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 {
 	u32 tmp;
@@ -71,6 +66,21 @@ static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 	}
 }
 
+static int ufs_mtk_hce_enable_notify(struct ufs_hba *hba,
+				     enum ufs_notify_change_status status)
+{
+	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
+
+	if (status == PRE_CHANGE) {
+		if (host->unipro_lpm)
+			hba->hba_enable_delay_us = 0;
+		else
+			hba->hba_enable_delay_us = 600;
+	}
+
+	return 0;
+}
+
 static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
@@ -324,12 +334,26 @@ static int ufs_mtk_pwr_change_notify(struct ufs_hba *hba,
 	return ret;
 }
 
+static int ufs_mtk_unipro_set_pm(struct ufs_hba *hba, u32 lpm)
+{
+	int ret;
+	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
+
+	ret = ufshcd_dme_set(hba,
+			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
+			     lpm);
+	if (!ret)
+		host->unipro_lpm = lpm;
+
+	return ret;
+}
+
 static int ufs_mtk_pre_link(struct ufs_hba *hba)
 {
 	int ret;
 	u32 tmp;
 
-	ufs_mtk_unipro_powerdown(hba, 0);
+	ufs_mtk_unipro_set_pm(hba, 0);
 
 	/*
 	 * Setting PA_Local_TX_LCC_Enable to 0 before link startup
@@ -437,7 +461,7 @@ static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
 	if (err)
 		return err;
 
-	err = ufs_mtk_unipro_powerdown(hba, 0);
+	err = ufs_mtk_unipro_set_pm(hba, 0);
 	if (err)
 		return err;
 
@@ -458,10 +482,10 @@ static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
 {
 	int err;
 
-	err = ufs_mtk_unipro_powerdown(hba, 1);
+	err = ufs_mtk_unipro_set_pm(hba, 1);
 	if (err) {
 		/* Resume UniPro state for following error recovery */
-		ufs_mtk_unipro_powerdown(hba, 0);
+		ufs_mtk_unipro_set_pm(hba, 0);
 		return err;
 	}
 
@@ -552,6 +576,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.name                = "mediatek.ufshci",
 	.init                = ufs_mtk_init,
 	.setup_clocks        = ufs_mtk_setup_clocks,
+	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
 	.link_startup_notify = ufs_mtk_link_startup_notify,
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index 4c787b99fe41..5bbd3e9cbae2 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -91,6 +91,7 @@ enum {
 struct ufs_mtk_host {
 	struct ufs_hba *hba;
 	struct phy *mphy;
+	bool unipro_lpm;
 	bool ref_clk_enabled;
 	u16 ref_clk_ungating_wait_us;
 	u16 ref_clk_gating_wait_us;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
