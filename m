Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003D61954DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E4NgyEibCuLexjnC2B1J+gbQ2gyhiajDmZD6Ueh0iE0=; b=HbYPV1LVyboTPq
	Z3ePN7+VvKa27HlGRPPUtMiqCKFkRapZZk1uPBp6/54V0sgrTrA7FXvXZXFNji6kjPhBwScOyPoGS
	y/1/0eQPgYoMbmBBSpD6YJOD+9p83Xoo1lhvWI9nH3ZE1QNXnJqpHyeh8NTrchwLcy/onG5vsApqN
	Z0LOxh31UNZPy66oGmPvDHHB8JbswyIJk55le5M6LGqSuQzHecdAXwNZbw3BB3zH1Ns3oAvtGtIp2
	VgymzHmRlf+0sctmax/65wS9QqPMf/04MTyAa6nkhCECue63iFZX+bN0mJTzQ48PG25jedQiC/D1J
	9TjpOXqg1PiG551G9JnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlv8-0003Qs-87; Fri, 27 Mar 2020 10:08:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHluz-0003QR-CN; Fri, 27 Mar 2020 10:08:50 +0000
X-UUID: b63c526b7d004feabeb3e0a5765a11f8-20200327
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XvMgTRarhYjvy31eOrL8qWKvV+LoDQUZ6Y/LzdVLi0s=; 
 b=OssNNdmi8gzqWtSJCr29WTyaehWsUt2Pp6mP0ELQYndd1QNc/guloHxn2s/z8GQEhBnrZF9TVSOylIGO2ibCLvNF7vaCCWsllJwP9da3Sf0mExtlHU28Wrkfpnm9ukrGzDeIe9tay5g0TsslKz4PC5L3mi7mbM+TxcpvN7U39eo=;
X-UUID: b63c526b7d004feabeb3e0a5765a11f8-20200327
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1373330433; Fri, 27 Mar 2020 02:08:47 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 02:58:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 17:58:35 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Mar 2020 17:58:35 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 1/1] scsi: ufs: set device as active power mode after
 resetting device
Date: Fri, 27 Mar 2020 17:58:35 +0800
Message-ID: <20200327095835.10293-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 51B629C57321E8224197746DE299EA04D736E0A923D7FF8BAF8247DCEF92CBA82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_030849_430525_04319106 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently ufshcd driver assumes that bInitPowerMode parameter
is not changed by any vendors thus device power mode can be set as
"Active" during initialization.

According to UFS JEDEC specification, device power mode shall be
"Active" after HW Reset is triggered if the bInitPowerMode parameter
in Device Descriptor is default value.

By above description, we can set device power mode as "Active" after
device reset is triggered by vendor's callback. With this change,
the link startup performance can be improved in some cases
by not setting link_startup_again as true in ufshcd_link_startup().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 13 -------------
 drivers/scsi/ufs/ufshcd.h | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 227660a1a446..f0a35b289b7c 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -171,19 +171,6 @@ enum {
 #define ufshcd_clear_eh_in_progress(h) \
 	((h)->eh_flags &= ~UFSHCD_EH_IN_PROGRESS)
 
-#define ufshcd_set_ufs_dev_active(h) \
-	((h)->curr_dev_pwr_mode = UFS_ACTIVE_PWR_MODE)
-#define ufshcd_set_ufs_dev_sleep(h) \
-	((h)->curr_dev_pwr_mode = UFS_SLEEP_PWR_MODE)
-#define ufshcd_set_ufs_dev_poweroff(h) \
-	((h)->curr_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE)
-#define ufshcd_is_ufs_dev_active(h) \
-	((h)->curr_dev_pwr_mode == UFS_ACTIVE_PWR_MODE)
-#define ufshcd_is_ufs_dev_sleep(h) \
-	((h)->curr_dev_pwr_mode == UFS_SLEEP_PWR_MODE)
-#define ufshcd_is_ufs_dev_poweroff(h) \
-	((h)->curr_dev_pwr_mode == UFS_POWERDOWN_PWR_MODE)
-
 struct ufs_pm_lvl_states ufs_pm_lvl_states[] = {
 	{UFS_ACTIVE_PWR_MODE, UIC_LINK_ACTIVE_STATE},
 	{UFS_ACTIVE_PWR_MODE, UIC_LINK_HIBERN8_STATE},
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index b7bd81795c24..7a9d1d170719 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -129,6 +129,19 @@ enum uic_link_state {
 #define ufshcd_set_link_hibern8(hba) ((hba)->uic_link_state = \
 				    UIC_LINK_HIBERN8_STATE)
 
+#define ufshcd_set_ufs_dev_active(h) \
+	((h)->curr_dev_pwr_mode = UFS_ACTIVE_PWR_MODE)
+#define ufshcd_set_ufs_dev_sleep(h) \
+	((h)->curr_dev_pwr_mode = UFS_SLEEP_PWR_MODE)
+#define ufshcd_set_ufs_dev_poweroff(h) \
+	((h)->curr_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE)
+#define ufshcd_is_ufs_dev_active(h) \
+	((h)->curr_dev_pwr_mode == UFS_ACTIVE_PWR_MODE)
+#define ufshcd_is_ufs_dev_sleep(h) \
+	((h)->curr_dev_pwr_mode == UFS_SLEEP_PWR_MODE)
+#define ufshcd_is_ufs_dev_poweroff(h) \
+	((h)->curr_dev_pwr_mode == UFS_POWERDOWN_PWR_MODE)
+
 /*
  * UFS Power management levels.
  * Each level is in increasing order of power savings.
@@ -1091,6 +1104,7 @@ static inline void ufshcd_vops_device_reset(struct ufs_hba *hba)
 {
 	if (hba->vops && hba->vops->device_reset) {
 		hba->vops->device_reset(hba);
+		ufshcd_set_ufs_dev_active(hba);
 		ufshcd_update_reg_hist(&hba->ufs_stats.dev_reset, 0);
 	}
 }
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
