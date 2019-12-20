Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2566012777A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnR5bR2ULwl0WbTsjygAn2mS1/9jQlly+Ctk5c43w68=; b=KRMxzoavvHFlxA
	lAMGa+mZ2eJKFjpXNuH5sD2ogdcoSffP4ZbMl+c9Qq+tSnk9i0+kaXd40LXtwpTs8riZv8pNH2mCG
	phVQG2payuQ0poCSXjAoVav9yfBg046WyWuKzA0rneRNxQfLFpvTKT90yQZFjGmYdEQ//boHZ52nM
	/ftX8XCG1LDr5u43tDWVbpDj/RnxVQwfxHR2rNZk5LwmyM5Bkz+9c6DLZ1zqIEUr0HSZklVL2Jllc
	iPD5zDLNTzJBYKRlrrXYTz2T3lfQt5eFhnCDEPbPDreAoKT8uIpHcZfhirDUTNWV6AlVE7vkGtscB
	EFBuoIL3W91w5Tn6D1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDxD-0005ZM-6V; Fri, 20 Dec 2019 08:48:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDvo-0004Z2-0y; Fri, 20 Dec 2019 08:46:45 +0000
X-UUID: 2f47a3c6483f4d7f9768a49fdab2b7fc-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=1dTM/x2XgEndTdXRTGoeD0Ozp3L9tzAYcN6PciDyt3c=; 
 b=dClNCxXhNVqDx8r6BXkfQwB5V9UU2+rjpa+fKc1h9T+wAcDpIniTtvT4Iu6Q4VJNu5U0OBOYuQRUwXR3NhoGyY1cqEpQIF/SZpwoZhaoZCpSZL7rw31YuPNY6kN1af9odjvCNWb9jS6eJDrLC7EyST4u1/eUQ0bLzMQp6xk5w20=;
X-UUID: 2f47a3c6483f4d7f9768a49fdab2b7fc-20191220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 726109059; Fri, 20 Dec 2019 00:46:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 00:36:59 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 16:35:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Dec 2019 16:35:39 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v1 6/6] scsi: ufs-mediatek: configure and enable clk-gating
Date: Fri, 20 Dec 2019 16:36:28 +0800
Message-ID: <1576830988-22435-7-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
References: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 367E02E7C7D61D709754BA5D29E13B252DAD17ECDB3D2FE27103CD478EB3C1812000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004644_150308_C24D31A4 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable clk-gating with customized delayed timer value in
MediaTek Chipsets.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 71e2e0e4ea11..282ad06ec846 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -205,6 +205,9 @@ static int ufs_mtk_init(struct ufs_hba *hba)
 	/* Enable runtime autosuspend */
 	hba->caps |= UFSHCD_CAP_RPM_AUTOSUSPEND;
 
+	/* Enable clock-gating */
+	hba->caps |= UFSHCD_CAP_CLK_GATING;
+
 	/*
 	 * ufshcd_vops_init() is invoked after
 	 * ufshcd_setup_clock(true) in ufshcd_hba_init() thus
@@ -293,6 +296,23 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
 	return ret;
 }
 
+static void ufs_mtk_setup_clk_gating(struct ufs_hba *hba)
+{
+	unsigned long flags;
+	u32 ah_ms;
+
+	if (ufshcd_is_clkgating_allowed(hba)) {
+		if (ufshcd_is_auto_hibern8_supported(hba) && hba->ahit)
+			ah_ms = FIELD_GET(UFSHCI_AHIBERN8_TIMER_MASK,
+					  hba->ahit);
+		else
+			ah_ms = 10;
+		spin_lock_irqsave(hba->host->host_lock, flags);
+		hba->clk_gating.delay_ms = ah_ms + 5;
+		spin_unlock_irqrestore(hba->host->host_lock, flags);
+	}
+}
+
 static int ufs_mtk_post_link(struct ufs_hba *hba)
 {
 	/* disable device LCC */
@@ -308,6 +328,8 @@ static int ufs_mtk_post_link(struct ufs_hba *hba)
 			FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3));
 	}
 
+	ufs_mtk_setup_clk_gating(hba);
+
 	return 0;
 }
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
