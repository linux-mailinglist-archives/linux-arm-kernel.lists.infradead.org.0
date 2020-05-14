Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C912B1D24AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tCxlbulQtSvHg/MFHTiu0yKaAZ9fo55uzdDpSUeCq10=; b=XV+Wo0CJWcdqRB
	rur+eS0JSMUTPYzvwtSIFcoo9KTYY0GXxxhLDaLMd9m9JakxxCHjtY+mW4K5uwhqKZBfeGTFMfIYQ
	9RDEO5+gcWYVUPsXUFgtUbWLVtqRGt3mRx17/GwCPoYgojJX1hVb3OQ8ixL6kXU7zuvWiEx7Hvl/p
	a2ylHkRLGA0rfykC8MaXaxfypEzeOqbBoH6Che2t2IQgivGmh+tKDYDk9vUAyfxHKCk1527uWMacS
	20u2MjtDOiBwjdVAiN3xgq5OvMPuUemLhdIVEkHnGf2nGG9J/Nxns1LwJbpf+ntO3Vcr1TcV8/pbN
	+OXNRWELYluAGt1o6xQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2ff-00017V-DG; Thu, 14 May 2020 01:28:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2fX-00015n-Ah; Thu, 14 May 2020 01:28:16 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CF1FBDA80C84152DD1C9;
 Thu, 14 May 2020 09:27:52 +0800 (CST)
Received: from huawei.com (10.67.174.156) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 14 May 2020
 09:27:43 +0800
From: ChenTao <chentao107@huawei.com>
To: <stanley.chu@mediatek.com>, <jejb@linux.ibm.com>,
 <martin.petersen@oracle.com>, <matthias.bgg@gmail.com>
Subject: [PATCH -next] scsi: ufs-mediatek: Make ufs_mtk_fixup_dev_quirks static
Date: Thu, 14 May 2020 09:26:55 +0800
Message-ID: <20200514012655.127202-1-chentao107@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.67.174.156]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_182815_527773_803CF46A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-scsi@vger.kernel.org, chentao107@huawei.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, alim.akhtar@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warning:

drivers/scsi/ufs/ufs-mediatek.c:585:6: warning:
symbol 'ufs_mtk_fixup_dev_quirks' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: ChenTao <chentao107@huawei.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index c543142554d3..73e4a4f9a3a2 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -582,7 +582,7 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba)
 	return 0;
 }
 
-void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
+static void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
 {
 	struct ufs_dev_info *dev_info = &hba->dev_info;
 	u16 mid = dev_info->wmanufacturerid;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
