Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3280034880
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e21LxLOiGnQZnF8isqdMftXJ37elxQApEfGJCmfzITA=; b=SqWVI8TBXTbA9P
	xDKlJK/IC1lnnhZlUu1J1F8mjfxUkc9rkfrgKDV+4zhABSXfiYvWpVHbXdb5y8PgNz6khLKwh4HUD
	td1tnZ8yD/QcmvfTS7YLPxGfXzZ+t6SCxUWWqa41KtAFoXyuEIqIWd2gaM+p0A/aUemgpPUX5jTfU
	Xx0YSZZ3WC4hyvMgh6ESntXhLrtaeFv+HSdNbAj7lFV4xhT1gIHAiQT3YxY5q9r5DLUj7jH/hXsB7
	/ecLONXV9Cbcs5lYiSavnUhB6wqQysq2TTcMhKEJ1+1DUy38B7VSEvodyAzICdhR3FQzwpq8sLaRx
	Zaa7faDEjAxLdiVsTdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9N3-0008Tv-Nb; Tue, 04 Jun 2019 13:20:57 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Ld-0005a3-Ly; Tue, 04 Jun 2019 13:20:16 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DJLQF092301;
 Tue, 4 Jun 2019 08:19:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654361;
 bh=wpR76pUQZD8qw+8R4/pRwOkQY9ta5s2pKOPuv5GPy44=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gQFje2xLV6IMR3s1mQL6R8PIVlNv//UIzSUzajaVG+d2jd1GH1XFlYZVEW+KPGA/s
 aACev+SCMDgAv7roiJxX92r9dpX0CyGcgKW8yfLIq/jgxvXnrnwwD/cEMvZh1e3DrU
 6S1frA2Wewxa2WnxVF+7qAtUZUxam6eAunZ2d4z0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DJLtD054916
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:19:21 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:19:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:19:20 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGi098972;
 Tue, 4 Jun 2019 08:19:15 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 28/30] misc: pci_endpoint_test: Avoid using module
 parameter to determine irqtype
Date: Tue, 4 Jun 2019 18:45:14 +0530
Message-ID: <20190604131516.13596-29-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061930_701592_46F7B1ED 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit e03327122e2c8e6ae4565ef ("pci_endpoint_test: Add 2 ioctl
commands") uses module parameter in pci_endpoint_test_set_irq()
'irqtype' to check if irq vectors of a particular type is already
allocated. However with multi-function devices, irqtype will not
correctly reflect the irq type of the PCI device. Fix it here by
adding 'irqtype' for each PCI device to shows the irq type of that
particular PCI device.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 98a60f4d45a1..632c76e33e4e 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -110,6 +110,7 @@ struct pci_endpoint_test {
 	struct completion irq_raised;
 	int		last_irq;
 	int		num_irqs;
+	int		irq_type;
 	/* mutex to protect the ioctls */
 	struct mutex	mutex;
 	struct miscdevice miscdev;
@@ -169,6 +170,7 @@ static void pci_endpoint_test_free_irq_vectors(struct pci_endpoint_test *test)
 	struct pci_dev *pdev = test->pdev;
 
 	pci_free_irq_vectors(pdev);
+	test->irq_type = IRQ_TYPE_UNDEFINED;
 }
 
 static bool pci_endpoint_test_alloc_irq_vectors(struct pci_endpoint_test *test,
@@ -203,6 +205,8 @@ static bool pci_endpoint_test_alloc_irq_vectors(struct pci_endpoint_test *test,
 		irq = 0;
 		res = false;
 	}
+
+	test->irq_type = type;
 	test->num_irqs = irq;
 
 	return res;
@@ -342,6 +346,7 @@ static bool pci_endpoint_test_copy(struct pci_endpoint_test *test, size_t size)
 	dma_addr_t orig_dst_phys_addr;
 	size_t offset;
 	size_t alignment = test->alignment;
+	int irq_type = test->irq_type;
 	u32 src_crc32;
 	u32 dst_crc32;
 
@@ -438,6 +443,7 @@ static bool pci_endpoint_test_write(struct pci_endpoint_test *test, size_t size)
 	dma_addr_t orig_phys_addr;
 	size_t offset;
 	size_t alignment = test->alignment;
+	int irq_type = test->irq_type;
 	u32 crc32;
 
 	if (size > SIZE_MAX - alignment)
@@ -506,6 +512,7 @@ static bool pci_endpoint_test_read(struct pci_endpoint_test *test, size_t size)
 	dma_addr_t orig_phys_addr;
 	size_t offset;
 	size_t alignment = test->alignment;
+	int irq_type = test->irq_type;
 	u32 crc32;
 
 	if (size > SIZE_MAX - alignment)
@@ -567,7 +574,7 @@ static bool pci_endpoint_test_set_irq(struct pci_endpoint_test *test,
 		return false;
 	}
 
-	if (irq_type == req_irq_type)
+	if (test->irq_type == req_irq_type)
 		return true;
 
 	pci_endpoint_test_release_irq(test);
@@ -579,12 +586,10 @@ static bool pci_endpoint_test_set_irq(struct pci_endpoint_test *test,
 	if (!pci_endpoint_test_request_irq(test))
 		goto err;
 
-	irq_type = req_irq_type;
 	return true;
 
 err:
 	pci_endpoint_test_free_irq_vectors(test);
-	irq_type = IRQ_TYPE_UNDEFINED;
 	return false;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
