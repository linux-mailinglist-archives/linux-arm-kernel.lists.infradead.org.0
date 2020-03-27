Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3112E1954B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5u1cqZvRNO96a5xH/cVSdjJ6gmpVGVctDfUXZWNAoU=; b=KL95txOUb/1t/a
	134dipcRMga7OBf5q0Fff4qOuZsqbD/o8Wt/nXuqNAb+3mt6u2nHGyhZmq/1SGfxG9fOHYSbxB8v2
	JPdnPIg//aCePm1RHactkzH7whmTFuWHJfeSeOg4gqo1T5+mOBpyxw7AGiE7sc/9w8voThWFdrExb
	059sz2SU3RR/AAYDg4te0UGWwfStWF3qkdG8X1n+ox5TeTxmoOYrE32itaL6b9JnDn9cqAy2n/C5u
	IaYmHswoGgnY57/tGrpFk21yL/+d8N+RAqqysClTDQNlwzRcSDJDnPOb4hTC8sFCdzeHF5ESExZYt
	b4vQW9LiDg9vBygKw44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlnY-0000vl-LD; Fri, 27 Mar 2020 10:01:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlmc-0007zr-S1; Fri, 27 Mar 2020 10:00:15 +0000
X-UUID: 5d1753f0dc3f4f1cb00a144f2a30bdfc-20200327
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=X65KhStxBXm6tC9CI8ImCK/G24gu+sDu1lPtIdSpMxY=; 
 b=KUG0oKg0QJqdYbm1dzR5NyuVycOTFoTvook9jaL7ZMTNzbr53I1f44sYBD5b2j50Tp2MbpG5TtYYzgou5UiCXcK99WZwvaDhSTG5L09jwFm/nek6dV6vNcOijW5j1KPYx4sKVsHueu28pEjNgAzuT+jsKSEvGx7lf0mV3DcbvXg=;
X-UUID: 5d1753f0dc3f4f1cb00a144f2a30bdfc-20200327
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 500816332; Fri, 27 Mar 2020 02:00:05 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 02:53:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 17:53:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Mar 2020 17:53:30 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 2/2] scsi: ufs-mediatek: add error recovery for suspend and
 resume
Date: Fri, 27 Mar 2020 17:53:29 +0800
Message-ID: <20200327095329.10083-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200327095329.10083-1-stanley.chu@mediatek.com>
References: <20200327095329.10083-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_030011_471346_2BB239D9 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Once fail happens during suspend and resume flow if the desired low
power link state is H8, link recovery is required for MediaTek UFS
controller.

For resume flow, since power and clocks are already enabled before
invoking vendor's resume callback, simply using ufshcd_link_recovery()
inside callback is fine.

For suspend flow, the device power enters low power mode or is disabled
before suspend callback, thus ufshcd_link_recovery() can not be directly
used in vendor callback. One solution is to set the link to off state
and then ufshcd_host_reset_and_restore() will be executed by ufshcd_suspend().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 40a66b31b31f..673c16596fb2 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -499,8 +499,15 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 
 	if (ufshcd_is_link_hibern8(hba)) {
 		err = ufs_mtk_link_set_lpm(hba);
-		if (err)
+		if (err) {
+			/*
+			 * Set link as off state enforcedly to trigger
+			 * ufshcd_host_reset_and_restore() in ufshcd_suspend()
+			 * for completed host reset.
+			 */
+			ufshcd_set_link_off(hba);
 			return -EAGAIN;
+		}
 	}
 
 	if (!ufshcd_is_link_active(hba))
@@ -519,8 +526,10 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 
 	if (ufshcd_is_link_hibern8(hba)) {
 		err = ufs_mtk_link_set_hpm(hba);
-		if (err)
+		if (err) {
+			err = ufshcd_link_recovery(hba);
 			return err;
+		}
 	}
 
 	return 0;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
