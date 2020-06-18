Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBB91FF32B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EiasdRzHE7tkbLalLD4PDu850JcaBIxQTekozRa2iF4=; b=kv6O8NZuD9zPkc
	OP3d+ac/n9uFO67dgX2kVsKtOXy8AKv0djdmd1ri3Iq918RgclYC3IHyJ5O9Ltgh5HUCayE905ukg
	7/6IStK9h4JquIdS+FMuwmRcYXbIF0cS4FqqDTIJuDvBvCIX3KROUe1W7mHnFN1YWFVPLclt81STC
	UJcLkNUJnsmmaSoJHmy/gVDYhIhFlw9YexfW6TPREyd1bS8GxjioSJrOhPJYwRpI+EbjT36fJ2p2d
	KZG+VSuFdvidDExb9lH6o6OyJR0fVJ9yOpfO+AsvakOTgOwLknSVngP2BLZqRGYM8lL9uQKfe3ccO
	qKyRQa/U6VaD0Mtm7YiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluhQ-0006mv-V9; Thu, 18 Jun 2020 13:35:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluhF-0006Bv-UW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:35:15 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B642BECFB37E2950F84A;
 Thu, 18 Jun 2020 21:35:06 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 21:34:59 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Kukjin Kim <kgene@kernel.org>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>, "Seungwon
 Jeon" <essuuj@gmail.com>
Subject: [PATCH -next] scsi: ufs: ufs-exynos: Fix return value check in
 exynos_ufs_init()
Date: Thu, 18 Jun 2020 13:38:37 +0000
Message-ID: <20200618133837.127274-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063514_155418_8CC1FDC5 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function devm_ioremap_resource() returns ERR_PTR()
and never returns NULL. The NULL test in the return value check should
be replaced with IS_ERR().

Fixes: 55f4b1f73631 ("scsi: ufs: ufs-exynos: Add UFS host support for Exynos SoCs")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/scsi/ufs/ufs-exynos.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-exynos.c b/drivers/scsi/ufs/ufs-exynos.c
index 440f2af83d9c..c918fbc6ca60 100644
--- a/drivers/scsi/ufs/ufs-exynos.c
+++ b/drivers/scsi/ufs/ufs-exynos.c
@@ -950,25 +950,25 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	/* exynos-specific hci */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vs_hci");
 	ufs->reg_hci = devm_ioremap_resource(dev, res);
-	if (!ufs->reg_hci) {
+	if (IS_ERR(ufs->reg_hci)) {
 		dev_err(dev, "cannot ioremap for hci vendor register\n");
-		return -ENOMEM;
+		return PTR_ERR(ufs->reg_hci);
 	}
 
 	/* unipro */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "unipro");
 	ufs->reg_unipro = devm_ioremap_resource(dev, res);
-	if (!ufs->reg_unipro) {
+	if (IS_ERR(ufs->reg_unipro)) {
 		dev_err(dev, "cannot ioremap for unipro register\n");
-		return -ENOMEM;
+		return PTR_ERR(ufs->reg_unipro);
 	}
 
 	/* ufs protector */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ufsp");
 	ufs->reg_ufsp = devm_ioremap_resource(dev, res);
-	if (!ufs->reg_ufsp) {
+	if (IS_ERR(ufs->reg_ufsp)) {
 		dev_err(dev, "cannot ioremap for ufs protector register\n");
-		return -ENOMEM;
+		return PTR_ERR(ufs->reg_ufsp);
 	}
 
 	ret = exynos_ufs_parse_dt(dev, ufs);




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
