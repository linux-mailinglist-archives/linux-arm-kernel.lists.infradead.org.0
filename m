Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCE6182EE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKby26suqM/2GsMeTc3zSVFO8iuG6npCXxdfkwxcvQ8=; b=RnA0ZHMQcApjX/
	bYPv6stKSVKAmBcnpRCXD7i30k3iiVzq7hXtlQacEOvZQOZ5ejLqX6A/7BV2pAEWDr/qPirSoEzDM
	/veV77jtTNeeuT3n8mF8brMaxkN/FeAER5rMRWhPZgMJo70JUnB8ooV9w7j8NB3QZinKksWK41Nwl
	wN20gMfo4qMaXA8tDe7fhnUHX5zF8Ei6zANK3TO8D3XkQrqer10MiU5STlhcZxUsjTkhuxZxZ1Ag8
	sVtZ4MRMpGwz/0K8TN0bcJz5k0CHIvwnMleHsOFZdq5/AxIX6mGH4wBlKKVflupclYCjZzGRvh3su
	jDHxzf1wtUCFngGBMPFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLsT-0004CE-Dq; Thu, 12 Mar 2020 11:19:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLs3-0003w5-KB; Thu, 12 Mar 2020 11:19:25 +0000
X-UUID: 4ef984839ec6493695a8a8a32219d8fb-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ssIHMZ3gzFIIN/d3N49O20oiYNm4fTdpyf9DffWHFP8=; 
 b=m1Osmp8pNRA8xwUUeY/Iir/EIrinE3ont40kBOC2bPxpGYRm/Jo2D+OCOuAFVA8NcyWM6C0wfb4J1BlYSjMzzso79ub/qhp8R0s9XCIYXl9K4WZ3FyVAMak7+vF97/yuj1GVb7Bvgyjv6gozRu/MGzqmtQACfX7cawwha85CGO0=;
X-UUID: 4ef984839ec6493695a8a8a32219d8fb-20200312
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 448086841; Thu, 12 Mar 2020 03:19:20 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 04:09:18 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 19:07:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 19:08:51 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 7/8] scsi: ufs: make HCE polling more compact to improve
 initializatoin latency
Date: Thu, 12 Mar 2020 19:09:07 +0800
Message-ID: <20200312110908.14895-8-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312110908.14895-1-stanley.chu@mediatek.com>
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_041923_678367_12206D9B 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 drivers/scsi/ufs/ufshcd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index dcbf45d547d8..cd33d07c56cf 100644
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
