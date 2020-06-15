Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC281F9A47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbfGKhsxY4IOxJYD+Epj+1xAyWr3kWNIQuUAYwfImOk=; b=hrBo9Xh7dUym43
	sJEKfMM1AkIGXqAXzabz/ZaPNjGxOlOwk9r1tuYH4B+J898c4CoTWpJNPusbXquSs0WSOlZfnMtgY
	JxJ0NBc1wmczR+4IuB6IEE4IWTtT00udS/jvN6VksyYv1t5qx/sZk7Rfs9/0FsgaZD6BVHcoiw5bK
	G27PssqjpA38ttvlygFFr93nZKDMT1LgLH3YZVIQ6XAGw/yFFS94pdm9xs3FZNvSBPUXhC49yrk6X
	arhw9E86t6RjZlLpbih/wnPHGRORzmscw3nTzMcV8QyS7nfDg5Sq0/XPpO0O0jLm0oem/H5loMx5O
	G/2nsOpzhPuF85DBt5rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqAM-0001LJ-CI; Mon, 15 Jun 2020 14:32:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkq9I-0000UV-AQ; Mon, 15 Jun 2020 14:31:45 +0000
X-UUID: 491d86ba799d4bdc9fef71ec94716264-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=kr2jM3RF3TtcKfmiwQa78Z5GzGFPEkqB/QqVcBMG3TY=; 
 b=UFyGNRZGPWnOhHUMVcxkDzOBNOvjTOmWdC2yqHnkqjzo7aoy/Xwyt16jObOfYMqVIr6pdd6DLM5ET2X0QCZLYfA/rLVXAiuW6RsjkZUJXISYMcQMOUPnz1guSQ12yMK+X1Vf0HI1pytWpnG/mlHw+Q1johWc2lpKoy7pVjl4TR0=;
X-UUID: 491d86ba799d4bdc9fef71ec94716264-20200615
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1916784615; Mon, 15 Jun 2020 06:31:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:31:38 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:31:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:31:22 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 3/3] scsi: ufs-mediatek: Print host information for failed
 supsend and resume
Date: Mon, 15 Jun 2020 22:31:23 +0800
Message-ID: <20200615143123.6627-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615143123.6627-1-stanley.chu@mediatek.com>
References: <20200615143123.6627-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8EC26055AF32B427709C81554C49B22046A151F1F85C4188A4CE82C53D9714202000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073144_369490_820839BA 
X-CRM114-Status: UNSURE (   8.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Print host state and register dumps while suspend or resume flow
is failed.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index d56ce8d97d4e..b0f626f6f9fe 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -469,22 +469,25 @@ static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
 
 	err = ufshcd_hba_enable(hba);
 	if (err)
-		return err;
+		goto out;
 
 	err = ufs_mtk_unipro_set_pm(hba, 0);
 	if (err)
-		return err;
+		goto out;
 
 	err = ufshcd_uic_hibern8_exit(hba);
 	if (!err)
 		ufshcd_set_link_active(hba);
 	else
-		return err;
+		goto out;
 
 	err = ufshcd_make_hba_operational(hba);
 	if (err)
-		return err;
-
+		goto out;
+out:
+	if (err)
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
 	return 0;
 }
 
@@ -494,6 +497,9 @@ static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
 
 	err = ufs_mtk_unipro_set_pm(hba, 1);
 	if (err) {
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
+
 		/* Resume UniPro state for following error recovery */
 		ufs_mtk_unipro_set_pm(hba, 0);
 		return err;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
