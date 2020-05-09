Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A0F1CBFDE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WZPpTUeheeSDA7RuehlVvczoYYYcDW+Bkiy9P5xq0EY=; b=eCmYsnB11jK9iE
	geTMDUG4YaTFkxoEvZ02n9MAwsbgD8CObO8QKWS0DCWQM41H1CtaYVWU/WO0EfXCnVTy4zUKkiNBp
	DXYHnYOA37iDUH23ZZxPSgQvaFUh4hUOA60u+KJK5NGaNPu0ZRVVKG3os7cYUcik6w8sPiVGqjW82
	7mfDTrREl7dhrBB7gTXjll0JFOZqOsDtNrItBqwtKZwWAmrJzfFempbHdlf5wjVA/wM4Qwt89UW7p
	isG4QHKd6+hWpg5wXu0p1Og1XvtlBwMm7m/I75N/sTcYG2m05my1pKnBIooYnfD7IRsuESqHorUxk
	eRkVQOEYggXCGKlCfUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLtc-0005Rc-JC; Sat, 09 May 2020 09:35:48 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLtW-0005QP-19
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 09:35:43 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EA937558DBD66083D1BF;
 Sat,  9 May 2020 17:35:25 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 17:35:18 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>, <sudeep.holla@arm.com>
Subject: [PATCH] ACPI/IORT: Remove the unused __get_pci_rid()
Date: Sat, 9 May 2020 17:34:30 +0800
Message-ID: <20200509093430.1983-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_023542_238893_B02FEF52 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rjw@rjwysocki.net, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit bc8648d49a95 ("ACPI/IORT: Handle PCI aliases properly for
IOMMUs"), __get_pci_rid() has become actually unused and can be removed.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/acpi/arm64/iort.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 7d04424189df..ec94dbb60c7a 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -789,15 +789,6 @@ void acpi_configure_pmsi_domain(struct device *dev)
 		dev_set_msi_domain(dev, msi_domain);
 }
 
-static int __maybe_unused __get_pci_rid(struct pci_dev *pdev, u16 alias,
-					void *data)
-{
-	u32 *rid = data;
-
-	*rid = alias;
-	return 0;
-}
-
 #ifdef CONFIG_IOMMU_API
 static struct acpi_iort_node *iort_get_msi_resv_iommu(struct device *dev)
 {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
