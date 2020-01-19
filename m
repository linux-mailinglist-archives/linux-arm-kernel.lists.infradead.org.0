Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E86141B31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 03:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zu44ekO8wgpYynZtboptw4wUib78bzyKfKHRMDh7Xy0=; b=AvadEYCfIkkbmN
	ULJVHGMc8KzZoFuDdPor1F5EIoJ7LVfVTO9Hvn6RDCpYG4m3Ae2HnRi3nvB5+qvl5QLW2bGEZVMaa
	1fs3tyB1CbRGs8AR6qF3cvI8XNJ+w3knaorFZbIRPj0X+HnubgBnaBrlN+vQx6sX2JFI5lZ5V0Hv+
	rQaFsa48ixj4bHEMLogKr5eQf5TRdPVXLQzymbYgirRaDMZdEBM8+JcJRFw0v475Q097jfyezUU5n
	8VpUR6zJj8Pw6VBt2ya7tma/M9XTdQYztUuUvfmZbRGkc9ypKbIL0JNnKgJOReqlrMDyl5vgboqlH
	648ebhoTvXrNTc5GnthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it0Qg-000351-F7; Sun, 19 Jan 2020 02:35:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it0QT-0002xR-J5
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 02:35:01 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CEC81BD76778FA04D00C;
 Sun, 19 Jan 2020 10:34:48 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Sun, 19 Jan 2020 10:34:42 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray
 <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Jim Quinlan <james.quinlan@broadcom.com>
Subject: [PATCH -next] PCI: brcmstb: Fix missing mutex_init()
Date: Sun, 19 Jan 2020 02:30:03 +0000
Message-ID: <20200119023003.100987-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_183457_796682_7CDF6C2F 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bcm-kernel-feedback-list@broadcom.com, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver allocates the mutex but not initialize it.
Use mutex_init() on it to initialize it correctly.

This is detected by Coccinelle semantic patch.

Fixes: 72af6f6f0d13 ("PCI: brcmstb: Add MSI support")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 43cba76c0e1e..065bada9cfad 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -528,6 +528,7 @@ static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
 	if (!msi)
 		return -ENOMEM;
 
+	mutex_init(&msi->lock);
 	msi->dev = dev;
 	msi->base = pcie->base;
 	msi->np = pcie->np;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
