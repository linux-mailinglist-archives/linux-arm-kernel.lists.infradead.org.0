Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B78312CCF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 06:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ExsR2b0XaDeNM56XlXyE/agy5339bVmpFq3R732wN4=; b=FGmC4OC0pWF3J+
	s/uHJ9iBEkflpPVueoThLLK77V98dxfp+j9r04WCWa0CqyxuM4PulsHppiA+L+pH6eamV8tsbV77B
	Xnu943Nbu4FIxAE5Qh1z/RRzf59rQ6ucL4Pjy3ndkIHCmrnJu+qOMZg+8FrDevtC934mrfK3njIlD
	ZoUA0+fIfftJg8cAICqr/Iy3QdMnheie5PCSdxp1p0jhjnexW08gE2pYafeg92P6CdGUc3bWDBvXa
	M2c9CGHXBBxAvpsln+4eTtwX4rk5JEZn4eG6cc9kylx2QkXLR6RtnddAAKcQ7fdxBuiGx6HYu5yQe
	8kD2laXJey8c1oydI6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilngK-0007OB-H9; Mon, 30 Dec 2019 05:33:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnfl-00075E-GR; Mon, 30 Dec 2019 05:32:58 +0000
X-UUID: 7bf22d85387046e4a09d4d8b665aba6b-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=yGl3I6EQWhbqyWZgGCMVIQJKwtaCk4587bmdbeAAhak=; 
 b=UkeGjux86RvFTMOcRARh+Z4au3EPZvLZye0c3cUSs7gmpf+dVx/YoutRD5XflLZrJR9t9a85HnDq/hhC+ejcK3MtUqMA2XMapPzNmN8bhA995SscxJe/aM9c57/noVzFJ6AKZFJrm5UxlQj1yUXgDQGUX5rgc+aiqUKB8q7/kUs=;
X-UUID: 7bf22d85387046e4a09d4d8b665aba6b-20191229
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1478423663; Sun, 29 Dec 2019 21:32:54 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 21:33:09 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 13:32:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Dec 2019 13:31:37 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <bvanassche@acm.org>, <f.fainelli@gmail.com>
Subject: [PATCH v2 4/6] scsi: ufs: export ufshcd_auto_hibern8_update for
 vendor usage
Date: Mon, 30 Dec 2019 13:32:28 +0800
Message-ID: <1577683950-1702-5-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
References: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 97CF5BE00D11748E05E5C3E33B6C4B8E66E050C1BF8D0689055532E9B369AA932000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_213257_555993_C24DE6FC 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export ufshcd_auto_hibern8_update to allow vendors to use common
interface to customize auto-hibernate timer.

Cc: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Avri Altman <avri.altman@wdc.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Bean Huo <beanhuo@micron.com>
Cc: Can Guo <cang@codeaurora.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 20 --------------------
 drivers/scsi/ufs/ufshcd.c    | 18 ++++++++++++++++++
 drivers/scsi/ufs/ufshcd.h    |  1 +
 3 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index ad2abc96c0f1..720be3f64be7 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -118,26 +118,6 @@ static ssize_t spm_target_link_state_show(struct device *dev,
 				ufs_pm_lvl_states[hba->spm_lvl].link_state));
 }
 
-static void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
-{
-	unsigned long flags;
-
-	if (!ufshcd_is_auto_hibern8_supported(hba))
-		return;
-
-	spin_lock_irqsave(hba->host->host_lock, flags);
-	if (hba->ahit != ahit)
-		hba->ahit = ahit;
-	spin_unlock_irqrestore(hba->host->host_lock, flags);
-	if (!pm_runtime_suspended(hba->dev)) {
-		pm_runtime_get_sync(hba->dev);
-		ufshcd_hold(hba, false);
-		ufshcd_auto_hibern8_enable(hba);
-		ufshcd_release(hba);
-		pm_runtime_put(hba->dev);
-	}
-}
-
 /* Convert Auto-Hibernate Idle Timer register value to microseconds */
 static int ufshcd_ahit_to_us(u32 ahit)
 {
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a6936bebb513..ed02a704c1c2 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3893,6 +3893,24 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
 	return ret;
 }
 
+void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
+{
+	unsigned long flags;
+
+	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
+		return;
+
+	spin_lock_irqsave(hba->host->host_lock, flags);
+	if (hba->ahit == ahit)
+		goto out_unlock;
+	hba->ahit = ahit;
+	if (!pm_runtime_suspended(hba->dev))
+		ufshcd_writel(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
+out_unlock:
+	spin_unlock_irqrestore(hba->host->host_lock, flags);
+}
+EXPORT_SYMBOL_GPL(ufshcd_auto_hibern8_update);
+
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba)
 {
 	unsigned long flags;
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index b536a26d665e..e05cafddc87b 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -923,6 +923,7 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
 	enum flag_idn idn, bool *flag_res);
 
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
+void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
 
 #define SD_ASCII_STD true
 #define SD_RAW false
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
