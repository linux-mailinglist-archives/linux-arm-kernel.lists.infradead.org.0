Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85E1115C3B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 13:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s3dlbDAjaeJy3sabyYXvMVTRGNLEmwyUOGXVxywqkk=; b=CHcYsUXOuAwrdo
	aP6kzNMqTM9RXmamJHZ6bKqrZ655sABTp2kijXRlRY4DY8Avh/7/OtUagq3a1aZs76SW2RMRTrKiT
	iAW5nj90rv6VOBg8pAFNeV67I/AKgd2+F537T2wSHZz8/mUWUgHMzO/zsyyFmTl32Q/ClrZWtIvNK
	eD5KNm3CyHDczZwZex5Cjq3RKe2INpfPxzzJS423JjmVvCYbb31GXXBY20MB2ctDhneyL9rML/XRZ
	W3qk3JFHTqgmAOcrDZEnWotBWMYfKMGz3f1l9YA0hYOpEEfyhPkErgP+69UvPLBuYEk7FfJsYFlE5
	6DlZNWZo9WLPrKK75NZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idZGd-00072E-O2; Sat, 07 Dec 2019 12:32:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idZG9-0006ok-K2; Sat, 07 Dec 2019 12:32:31 +0000
X-UUID: 3fb7472110cf46cea8265afea735757a-20191207
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=x9J++tnSYtzHVx3/Z80sxjIENo1114b2ATMpoEVh/84=; 
 b=Id0VyHB4ckC5PZpX2mlw7STOS4+Ll+bfD1EspH7J8Mqq62vgfTwoVMznnCTkbdiOn30vVBtFukTpxEHTDNT98FlvO0nqb0L+lLMFlPltpO4+7/6gCjbpEKxI4+lB6uKthtAgVdfa1arqNgNLVlVh7IjxqvJ1HqLAQmH6R2qjL5Q=;
X-UUID: 3fb7472110cf46cea8265afea735757a-20191207
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1225987949; Sat, 07 Dec 2019 04:32:22 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 04:23:22 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 20:21:58 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 7 Dec 2019 20:21:55 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 2/2] scsi: ufs: disable interrupt during clock-gating
Date: Sat, 7 Dec 2019 20:22:01 +0800
Message-ID: <1575721321-8071-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
References: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_043229_759750_6ABD1C05 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to suspend, ufshcd interrupt can be disabled since
there won't be any host controller transaction expected till
clocks ungated.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index f80bd4e811cb..5de105e82c32 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -1490,6 +1490,8 @@ static void ufshcd_ungate_work(struct work_struct *work)
 	spin_unlock_irqrestore(hba->host->host_lock, flags);
 	ufshcd_setup_clocks(hba, true);
 
+	ufshcd_enable_irq(hba);
+
 	/* Exit from hibern8 */
 	if (ufshcd_can_hibern8_during_gating(hba)) {
 		/* Prevent gating in this path */
@@ -1636,6 +1638,8 @@ static void ufshcd_gate_work(struct work_struct *work)
 		ufshcd_set_link_hibern8(hba);
 	}
 
+	ufshcd_disable_irq(hba);
+
 	if (!ufshcd_is_link_active(hba))
 		ufshcd_setup_clocks(hba, false);
 	else
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
