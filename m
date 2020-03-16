Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D3D18670B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+gNJlhydAYGqn0KcINirE/oof0cXnO2wKQpgroqr8g=; b=Z8EuukOZqHvgNh
	fnD4sxkACY7OfmfkDzT2lXPWWnaapxYQRh79fIpn+KfGHrIoZJmhhIo7YzWVvtQY0BQQO370suPPy
	vdvawHGTcObtMi6HOzSciP2pNvFsJ95obE8S+qvZUOSbHt1NEDm9ia4K1RXJ/2nLFRGXmUgXwGV6g
	dENftWYMh2fnH9zCxySwimwz4Cz90ID3fxy29umt9rQzUTQQXvwF99ZYc8iUHls5NlVOosrxZ0QjZ
	3xZCVCEQmlsWcGi1hZ7HtwxZDPl5TWsLMpeKQAUxUhDHb5955lI4/TYoUJLDRHca1YRKuJpyp67k5
	6eKRzQT+V+0DPNrH1yRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlVL-0000td-70; Mon, 16 Mar 2020 08:53:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlUn-0000Z2-CR; Mon, 16 Mar 2020 08:53:14 +0000
X-UUID: 038587f29af9438b8fe7c894e1b17690-20200316
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=X+DFchOZe2OpAsUM0+Gq6vu0pCSrT1gOAXXOi+6KyiQ=; 
 b=GG06d5W7kP/DOOu4Q1Ayy8OQzNsHunR+rMRV1ho4QSFGnA+a6ST3bhtNOfyGqgVzEYBuDEJPjSXuH+lVMdCT2pB/IhMRD/pQjGKkOoZtVdnMuXKbEE0+wva1lGO2XfdqgnlfYXmIPBqJTPWfactgSdu5pcf/5senNBMSwWHR8JU=;
X-UUID: 038587f29af9438b8fe7c894e1b17690-20200316
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1606447681; Mon, 16 Mar 2020 00:53:07 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 01:53:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 16:50:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 16:53:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v6 6/7] scsi: ufs: make HCE polling more compact to improve
 initialization latency
Date: Mon, 16 Mar 2020 16:53:02 +0800
Message-ID: <20200316085303.20350-7-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200316085303.20350-1-stanley.chu@mediatek.com>
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_015313_434379_06101EEF 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Reduce the waiting period between each HCE (Host Controller Enable)
polling from 5 ms to 1 ms. In the same time, increase the maximum polling
times to make "total polling time" unchanged approximately.

This change could make HCE initializatoin faster to improve latency of
ufshcd initialization, error recovery, and resume behaviors.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 78b6ac6fcc4e..c06a15df2f40 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4301,7 +4301,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 	ufshcd_wait_us(hba->hba_enable_delay_us, 100, true);
 
 	/* wait for the host controller to complete initialization */
-	retry = 10;
+	retry = 50;
 	while (ufshcd_is_hba_active(hba)) {
 		if (retry) {
 			retry--;
@@ -4310,7 +4310,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 				"Controller enable failed\n");
 			return -EIO;
 		}
-		ufshcd_wait_us(5000, 100, true);
+		ufshcd_wait_us(1000, 100, true);
 	}
 
 	/* enable UIC related interrupts */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
