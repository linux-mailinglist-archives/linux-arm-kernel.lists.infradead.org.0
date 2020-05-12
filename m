Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9203D1CF2FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lphnfLULH7qDa/yMYbviy4gYotvBjt13VOc9hTO91ck=; b=XWo1UbEXKM/i3c
	/iYIKx07TRWkzRpS3kxzNFDlAVwRs5VLQJq64stNgjvLX1ruzHVV+5JJCkQraKZ75OdeHfGEKV6NQ
	uJvbyq+rNxs/Dh6Jx6eygpxTU8U4O8GVKyAkRRko0M7Z+h/090t/D/1ET5vxv2AAHAE37EVB6a16d
	lQ9z3y2Mty0rMp26jHD7v+rRq7PwQJEZO8eKTAcN+NiGrx3c0SCpBbD8OgzIh0QZb/shB0kQL+zek
	niKiBs77RkipNSCBrdPiiH3NCqInSD6zIj510M70WEzVc4qnbeYkZPAWLRbCouMbiDNJzgTCxzovw
	nimmeXQr2gS5nlWpjTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYScv-0005sD-FM; Tue, 12 May 2020 10:59:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSbw-0005AE-L7; Tue, 12 May 2020 10:58:10 +0000
X-UUID: 3ace2cd5c5da4b1780f03cc46d77bbc7-20200512
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=shvkj9A9bwueIh1LMlmBnCkpSglW983N02ZzRfmxG8k=; 
 b=U8zaTPpa1DggylQs2rikllGQZntCC5iMNKr278anni0Hdre6Qam+L8M3+cJOhRgdhWxma0sEmT4/ik9ZWUCHDDox/iyxcvjAnI/VKKxh7YZdcZhgnQPYUp20VRgpn+rO9IEpx9SLQSyzIGOpgXSZzKU/RSmNBeDIG1LvrvoaDts=;
X-UUID: 3ace2cd5c5da4b1780f03cc46d77bbc7-20200512
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1684698939; Tue, 12 May 2020 02:57:57 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 03:48:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 18:47:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 12 May 2020 18:47:50 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 2/4] scsi: ufs: Allow WriteBooster on UFS 2.2 devices
Date: Tue, 12 May 2020 18:47:48 +0800
Message-ID: <20200512104750.8711-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200512104750.8711-1-stanley.chu@mediatek.com>
References: <20200512104750.8711-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D1B50872121CB6B6D9F75C1A4FDBB9E9BC6FD434C636AD02B0AD00D4503F5AB22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_035808_797189_003AE882 
X-CRM114-Status: UNSURE (   8.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the UFS specification, WriteBooster is officially
supported by UFS 2.2.

Since UFS 2.2 specification has been finalized in JEDEC and
such devices have also showed up in the market, modify the
checking rule for ufshcd_wb_probe() to allow these devices to enable
WriteBooster.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 41ad4501b0d0..b298bdd3e697 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6942,6 +6942,7 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 	 * UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
 	 */
 	if (dev_info->wspecversion >= 0x310 ||
+	    dev_info->wspecversion == 0x220 ||
 	    (hba->dev_quirks & UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES))
 		ufshcd_wb_probe(hba, desc_buf);
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
