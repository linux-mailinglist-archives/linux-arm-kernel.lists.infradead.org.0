Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29EF2C0F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5y5bG9iaUgkW42b7gzrJuUrml/G3pKrlTWiXH6i+k28=; b=dSvV+OS/iy2faV
	i6N3TUJ9bNb28w48JgXF47Yj4maoBVGNoFot9mAI/jMeEwsyeNx1MQge9HsALugtO0Zdsdlg9v1pw
	pl1A/KqSqopoXusJGObGjy2Mvx/d+kdYliBhQ/QsUxc/t476JrZldhd29aTjmgJS7C/qgZVQi9/hW
	N6FtQF6PnwikaNWS+wwrohnd+LvzgYnkS5oyd3Ygy4GJB2skQP/36fBHa2F1HIkt4xM7jh/bHJdZa
	AeuYyjEY8QfWAizmr5HOQdWv6FoX+NXvL2peAm8hOX8y2yOuyitDHPkH07Mg0h4i5Y2/tAawNrkoG
	CrGlk4wUC72Ejo/rua4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXDx-0006GY-5u; Tue, 28 May 2019 08:12:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXDp-0006DL-FA; Tue, 28 May 2019 08:12:38 +0000
X-UUID: 204a2809b9dc4543acc4e344f5a8e4db-20190528
X-UUID: 204a2809b9dc4543acc4e344f5a8e4db-20190528
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1883501474; Tue, 28 May 2019 00:12:13 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 01:12:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 16:12:10 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 28 May 2019 16:12:10 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH] scsi: ufs: Use pm_runtime_get_sync in shutdown flow
Date: Tue, 28 May 2019 16:12:06 +0800
Message-ID: <1559031126-6587-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_011237_509075_8D87AD07 
X-CRM114-Status: UNSURE (   9.59  )
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

There might be a racing issue between UFS shutdown and runtime resume
flow described as below,

Thread #1: In UFS shutdown flow with ufshcd_shutdown() is running.
Thread #2: In UFS runtime-resume flow which invokes
           ufshcd_runtime_resume() because UFS was in runtime-suspended
           state while an I/O request was issued.

In this scenario, racing may happen and possibly lead to system hang
if Thread #2 accesses UFS host's register map after host's resource,
like power or clocks, are disabled by Thread #1.

To avoid this racing, use PM public function pm_runtime_get_sync() in
shutdown flow instead of internal function ufshcd_runtime_resume() for
consolidated control of RPM status.

One concern is that pm_runtime_get_sync() may be better paired with
pm_runtime_put_sync(), however shutdown could be one-way path thus the
pairing is not required.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Signed-off-by: Peter Wang <peter.wang@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a208589426b1..cce7303f8653 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8095,11 +8095,8 @@ int ufshcd_shutdown(struct ufs_hba *hba)
 	if (ufshcd_is_ufs_dev_poweroff(hba) && ufshcd_is_link_off(hba))
 		goto out;
 
-	if (pm_runtime_suspended(hba->dev)) {
-		ret = ufshcd_runtime_resume(hba);
-		if (ret)
-			goto out;
-	}
+	if (pm_runtime_get_sync(hba->dev) < 0)
+		goto out;
 
 	ret = ufshcd_suspend(hba, UFS_SHUTDOWN_PM);
 out:
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
