Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A1912CD8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 09:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv+aaBq3zw6V3KWgwwn2hvjrbuEkZRSq/vYuD8b9LD4=; b=J/EMXmRJ+KLym7
	QhS22CKKo/CNXuUA/GcUSwdDAXKy9wvEW4BYoLh/khaiHLPK8k2I5un5OWNGI7xBXOHRelzyLwSG+
	kUcCKg9JVB1e0GL1FcLJXePvnOau84smL820lBbXNpsDdHR/7YZ9m24CZ5FBRNmwtq7z1bGLEUL19
	OoLKG09chC4h7BiqSD5BQatP0W7hFBnlzSQZwqInp7tgGgNeqzkVV7xt5aTQYDT6PsRNkz6IIuORp
	0jB0actomeoFBlwdU17KXwQ5ggA7kB7BRi937qZ5KLLdGn1ziJ1qTcG8CHnEkV3OSiHniLZOSWDS+
	+1LEkucl7m76msjDSZQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqJP-00041T-Ca; Mon, 30 Dec 2019 08:22:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqJC-00040K-ED; Mon, 30 Dec 2019 08:21:51 +0000
X-UUID: d45579a75ee345dcb69f50d72223f7f7-20191230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=5R6N7XJB2+tt8KF/gBYonmpANV9A07p3yQjPCAKO6yg=; 
 b=XBrCAvj1Y7v/dHdJfMKsAXYfnMrqUs6JqpkhGnp/MW3C/mKEw4LvObiMIzhT3rHflsi6uRQiz0g7bf1bTnUB6ISykKtsNjZKaMkUPsuTCcFoocOY75+FbEhuBkzBX/qDPfY8+eqf4RBi12pHXsP6uE5Z7p93AoIXkKsFS6wdptI=;
X-UUID: d45579a75ee345dcb69f50d72223f7f7-20191230
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 633997492; Mon, 30 Dec 2019 00:21:48 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 00:12:50 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 16:11:42 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Dec 2019 16:12:01 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <bvanassche@acm.org>, <subhashj@codeaurora.org>
Subject: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
Date: Mon, 30 Dec 2019 16:12:25 +0800
Message-ID: <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002150_485428_774987BA 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently ufshcd_probe_hba() always sets device status as "active".
This shall be by an assumption that device is already in active state
during the boot stage before kernel.

However, if link is configured as "off" state and device is requested
to enter "sleep" or "powerdown" power mode during suspend flow, device
will NOT be waken up to "active" power mode during resume flow because
device is already set as "active" power mode in ufhcd_probe_hba().

Fix it by setting device as default active power mode during
initialization only, and skipping changing mode during PM flow
in ufshcd_probe_hba().

Fixes: 7caf489b99a4 (scsi: ufs: issue link starup 2 times if device isn't active)
Cc: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Avri Altman <avri.altman@wdc.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Bean Huo <beanhuo@micron.com>
Cc: Can Guo <cang@codeaurora.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Subhash Jadavani <subhashj@codeaurora.org>
Cc: stable@vger.kernel.org
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ed02a704c1c2..9abb7085a5d0 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6986,7 +6986,8 @@ static int ufshcd_probe_hba(struct ufs_hba *hba)
 	ufshcd_tune_unipro_params(hba);
 
 	/* UFS device is also active now */
-	ufshcd_set_ufs_dev_active(hba);
+	if (!hba->pm_op_in_progress)
+		ufshcd_set_ufs_dev_active(hba);
 	ufshcd_force_reset_auto_bkops(hba);
 	hba->wlun_dev_clr_ua = true;
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
