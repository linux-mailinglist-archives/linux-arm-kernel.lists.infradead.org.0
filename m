Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC6341DF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aai1hdqFILLxGnANPCev25DuJpQ/LoC0BPONZgBeaDA=; b=SEX375a7UDkUvn
	Ukszm5WeHHyMOLC2kPOVTufqvJD1jJxIqb1LDcVBFSYYg8UxxOai1fSdM26ByJr8pqSK4Olln1oVA
	iOs2DKUqoBkOo7lKPyUtuaEWc1IptV7ZYy1YsfF3CcCyzpp6SrGJKZ8vbIplSBMCPOIXVreqR4P+v
	dX/TTDsIcJw1BZSJEDk2/gNsmeL/irtRb9ptq/1wpyIHjYTv/uyMU4LU0b1OWJqHQG0NYnZN5cHU8
	Vd05z6bfj3AnD54VDaF7FSw4MUFeb+h3GrCz7Qbgq0rB6P2I3kiz8Iw9A+WDqvRPe5v9aD/mkszae
	z5i3QKcqtngo3i4gCASw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxuM-0008Co-5k; Wed, 12 Jun 2019 07:42:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxu8-0008CK-SK; Wed, 12 Jun 2019 07:42:46 +0000
X-UUID: 8e47befa46844facb2dd2cb92bd763e9-20190611
X-UUID: 8e47befa46844facb2dd2cb92bd763e9-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 529718349; Tue, 11 Jun 2019 23:42:18 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 00:42:16 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 15:42:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Jun 2019 15:42:08 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1] scsi: ufs: Avoid runtime suspend possibly being blocked
 forever
Date: Wed, 12 Jun 2019 15:42:06 +0800
Message-ID: <1560325326-1598-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_004244_917331_D012B31A 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, peter.wang@mediatek.com, evgreen@chromium.org,
 subhashj@codeaurora.org, linux-mediatek@lists.infradead.org,
 ygardi@codeaurora.org, matthias.bgg@gmail.com, stable@vger.kernel.org,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UFS runtime suspend can be triggered after pm_runtime_enable()
is invoked in ufshcd_pltfrm_init(). However if the first runtime
suspend is triggered before binding ufs_hba structure to ufs
device structure via platform_set_drvdata(), then UFS runtime
suspend will be no longer triggered in the future because its
dev->power.runtime_error was set in the first triggering and does
not have any chance to be cleared.

To be more clear, dev->power.runtime_error is set if hba is NULL
in ufshcd_runtime_suspend() which returns -EINVAL to rpm_callback()
where dev->power.runtime_error is set as -EINVAL. In this case, any
future rpm_suspend() for UFS device fails because
rpm_check_suspend_allowed() fails due to non-zero
dev->power.runtime_error.

To resolve this issue, make sure the first UFS runtime suspend
get valid "hba" in ufshcd_runtime_suspend(): Enable UFS runtime PM
only after hba is successfully bound to UFS device structure.

Fixes: e3ce73d (scsi: ufs: fix bugs related to null pointer access and array size)
Cc: stable@vger.kernel.org
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd-pltfrm.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd-pltfrm.c b/drivers/scsi/ufs/ufshcd-pltfrm.c
index 8a74ec30c3d2..d7d521b394c3 100644
--- a/drivers/scsi/ufs/ufshcd-pltfrm.c
+++ b/drivers/scsi/ufs/ufshcd-pltfrm.c
@@ -430,24 +430,21 @@ int ufshcd_pltfrm_init(struct platform_device *pdev,
 		goto dealloc_host;
 	}
 
-	pm_runtime_set_active(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
-
 	ufshcd_init_lanes_per_dir(hba);
 
 	err = ufshcd_init(hba, mmio_base, irq);
 	if (err) {
 		dev_err(dev, "Initialization failed\n");
-		goto out_disable_rpm;
+		goto dealloc_host;
 	}
 
 	platform_set_drvdata(pdev, hba);
 
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
 	return 0;
 
-out_disable_rpm:
-	pm_runtime_disable(&pdev->dev);
-	pm_runtime_set_suspended(&pdev->dev);
 dealloc_host:
 	ufshcd_dealloc_host(hba);
 out:
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
