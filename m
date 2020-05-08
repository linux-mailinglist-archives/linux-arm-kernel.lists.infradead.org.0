Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138741CA5AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Qbs0tvcoj4Flo2JpcK3glBGcfgWoiHPeAOduvHKvGg=; b=jgHIWynj2kPGe5
	Op1Va2MJymQ/eplszqUnIHxtEIKxvkuzJDIa1B3FqS6I5FzKwhyVD2TuNMoRYbznDx0tvCwdLtdu+
	XkOIR3p6tXT3lFZnPpRPV7otyihPLKQO06BDZi6hoNSypllM/BpsgfqgMiFmxY3/Y4yI46rhmQzh7
	nSM0pqguCXzF6uacUPj3UVj7m1NlS19HAtkujd2WLmjmiHx+CQq6vGko0R+bHXHe2KrMqArdcF74T
	fXm7vL1GpV0RW9TCeSxEABRitCHZHZbGGoFHmKsXigjn3AwVVDikt7nqJPkFSJJtDo7Mo6LT5tJ/n
	c0YMEu5vyGxZT8XTi6xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxz8-0001g9-Sl; Fri, 08 May 2020 08:03:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxx3-0008I4-05; Fri, 08 May 2020 08:01:46 +0000
X-UUID: 0ef9f5bfd095443c9e5d834328e2faa7-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=uGT7hSTUzH9ZKoRQUM/Tvp8FCrc2dsU2C85wx6zrn7c=; 
 b=jXappDhhT6v7+89hWqkMKS6/jweiyhR/macCNpBydYfSeFGDa5UkOJ7BDDO27f6M76jlElqkwtijSABhNScf78ey3im8UYPeZIHS4SAhr2uzFAQRS4kNciPwFEd1BKMFxigjO8wuQsxwaIpZFXCyVdRQdy7fnrAf79fMooDd26U=;
X-UUID: 0ef9f5bfd095443c9e5d834328e2faa7-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1762883254; Fri, 08 May 2020 00:01:28 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 01:01:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 16:01:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 8 May 2020 16:01:18 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v8 3/8] scsi: ufs: export ufs_fixup_device_setup() function
Date: Fri, 8 May 2020 16:01:10 +0800
Message-ID: <20200508080115.24233-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508080115.24233-1-stanley.chu@mediatek.com>
References: <20200508080115.24233-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 47C1EFE60891844C887843C26736B395BD6B73E41061F5077EBA054EDA9897692000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_010145_080944_9B033F88 
X-CRM114-Status: UNSURE (   9.21  )
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

Export ufs_fixup_device_setup() to allow vendors to re-use it for
fixing device quriks on specified UFS hosts.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 10 +++++++---
 drivers/scsi/ufs/ufshcd.h |  1 +
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 8d86d9a6a622..c0b2cec5dcd8 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6838,12 +6838,15 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 	hba->caps &= ~UFSHCD_CAP_WB_EN;
 }
 
-static void ufshcd_fixup_dev_quirks(struct ufs_hba *hba)
+void ufshcd_fixup_dev_quirks(struct ufs_hba *hba, struct ufs_dev_fix *fixups)
 {
 	struct ufs_dev_fix *f;
 	struct ufs_dev_info *dev_info = &hba->dev_info;
 
-	for (f = ufs_fixups; f->quirk; f++) {
+	if (!fixups)
+		return;
+
+	for (f = fixups; f->quirk; f++) {
 		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
 		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
 		     ((dev_info->model &&
@@ -6852,11 +6855,12 @@ static void ufshcd_fixup_dev_quirks(struct ufs_hba *hba)
 			hba->dev_quirks |= f->quirk;
 	}
 }
+EXPORT_SYMBOL_GPL(ufshcd_fixup_dev_quirks);
 
 static void ufs_fixup_device_setup(struct ufs_hba *hba)
 {
 	/* fix by general quirk table */
-	ufshcd_fixup_dev_quirks(hba);
+	ufshcd_fixup_dev_quirks(hba, ufs_fixups);
 
 	/* allow vendors to fix quirks */
 	ufshcd_vops_fixup_dev_quirks(hba);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 897338ba67aa..4d296acadd6f 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -952,6 +952,7 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
 
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
 void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
+void ufshcd_fixup_dev_quirks(struct ufs_hba *hba, struct ufs_dev_fix *fixups);
 #define SD_ASCII_STD true
 #define SD_RAW false
 int ufshcd_read_string_desc(struct ufs_hba *hba, u8 desc_index,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
