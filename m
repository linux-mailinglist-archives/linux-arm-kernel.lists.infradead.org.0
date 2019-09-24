Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C85FBD49A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/c2uCpi4oqY/K//D8f8N7BpidZsh73bkNIviu4nCPEc=; b=Rxk8Tf53ZZr4JI
	V8IdAe/6NETr6ui6XT47riOGjfQz51mFHA4kwZYw14APxIJZBknaGHKykOHp9qAp8khH6cQu/JSpO
	VlKnhLIeEl9A4k3nvd4v9ts4VVRF+HtnaMwrSVhmLIovXIoCqxNJMwjHRryFv+T8RnJaLNPkRX7Gl
	TyXoxSM94HTB/oMN7M4d8QQq5Z9fBymmzfMmCJmABg8nPb2zHHqeHtksJYjBGC1wK/EHJlycl7Qn8
	38zxEluhVXRBivrON4w8PSjK6aLS4IPWixw+zT5x9FdGP3iP9RapTlfgJ7HV08gqqO+tAzpUHpGjO
	1B1BoqbeGkV7+BuRW7uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCshJ-00083e-GF; Tue, 24 Sep 2019 21:50:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdx-0005Wn-En
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:46:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id y39so2900348ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:46:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qyYVfHwqMpUb0dG8xhH3D2wwe8Um8pFX3NIc2wpZXzU=;
 b=L8ETjmqtcM4yE+jTAMclAjWci5Usl3kSy2qjRfTZWHQ3oMv/P29n10RBtddEYf2guw
 e6/7XIRHhiBRNZjjMNCm5wYeo/n4M6k9RPKUF3+8+fLByFLj87MgCC2GCbWoGZ3GFYe4
 p9LPEb0vpO8FFBo1ex2iDMPr7OhBx0yRAeL3lHNYuPRd4Dz0BZHCtl/XsQrdscecUcHM
 mk+kb+wAf91dtPrIMI8GJGNCok5vQIVWc57DNC/xarVmSgUKVslJIS9NqMIomNbJMi9z
 QQPAXJuOz+XaRWFbRflCXkFYdnmtDDMy56lBKFxYGny6T4c9Xcv+3HsNw31fJlBr7X7N
 NF3Q==
X-Gm-Message-State: APjAAAVQz8K9NFhmcmm8rbTkMRvZ7SDEigi7Qw5y8/RTeL4Fv1DfJlvS
 pGvtCUY4ohjV+77tP4J56w==
X-Google-Smtp-Source: APXvYqz17HkSTxsTCEmLThqlQYmUwW3cV2NmGnqT2qALFG4fCCZzK7gcnD0K52XoGWX8p1bNTZ/oyw==
X-Received: by 2002:a9d:6084:: with SMTP id m4mr3643597otj.6.1569361604751;
 Tue, 24 Sep 2019 14:46:44 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:44 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 10/11] PCI: iproc: Use inbound resources for setup
Date: Tue, 24 Sep 2019 16:46:29 -0500
Message-Id: <20190924214630.12817-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144645_673278_193EA54C 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Scott Branden <sbranden@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert Broadcom iProc host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-iproc.c | 63 ++++-------------------------
 1 file changed, 8 insertions(+), 55 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 2d457bfdaf66..9ed181050308 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1122,15 +1122,15 @@ static int iproc_pcie_ib_write(struct iproc_pcie *pcie, int region_idx,
 }
 
 static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
-			       struct of_pci_range *range,
+			       struct resource_entry *entry,
 			       enum iproc_pcie_ib_map_type type)
 {
 	struct device *dev = pcie->dev;
 	struct iproc_pcie_ib *ib = &pcie->ib;
 	int ret;
 	unsigned int region_idx, size_idx;
-	u64 axi_addr = range->cpu_addr, pci_addr = range->pci_addr;
-	resource_size_t size = range->size;
+	u64 axi_addr = entry->res->start, pci_addr = entry->res->start - entry->offset;
+	resource_size_t size = resource_size(entry->res);
 
 	/* iterate through all IARR mapping regions */
 	for (region_idx = 0; region_idx < ib->nr_regions; region_idx++) {
@@ -1182,66 +1182,19 @@ static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
 	return ret;
 }
 
-static int iproc_pcie_add_dma_range(struct device *dev,
-				    struct list_head *resources,
-				    struct of_pci_range *range)
-{
-	struct resource *res;
-	struct resource_entry *entry, *tmp;
-	struct list_head *head = resources;
-
-	res = devm_kzalloc(dev, sizeof(struct resource), GFP_KERNEL);
-	if (!res)
-		return -ENOMEM;
-
-	resource_list_for_each_entry(tmp, resources) {
-		if (tmp->res->start < range->cpu_addr)
-			head = &tmp->node;
-	}
-
-	res->start = range->cpu_addr;
-	res->end = res->start + range->size - 1;
-
-	entry = resource_list_create_entry(res, 0);
-	if (!entry)
-		return -ENOMEM;
-
-	entry->offset = res->start - range->cpu_addr;
-	resource_list_add(entry, head);
-
-	return 0;
-}
-
 static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
 {
 	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	int ret;
-	LIST_HEAD(resources);
+	struct resource_entry *entry;
+	int ret = 0;
 
-	/* Get the dma-ranges from DT */
-	ret = of_pci_dma_range_parser_init(&parser, pcie->dev->of_node);
-	if (ret)
-		return ret;
-
-	for_each_of_pci_range(&parser, &range) {
-		ret = iproc_pcie_add_dma_range(pcie->dev,
-					       &resources,
-					       &range);
-		if (ret)
-			goto out;
+	resource_list_for_each_entry(entry, &host->dma_ranges) {
 		/* Each range entry corresponds to an inbound mapping region */
-		ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_MEM);
+		ret = iproc_pcie_setup_ib(pcie, entry, IPROC_PCIE_IB_MAP_MEM);
 		if (ret)
-			goto out;
+			break;
 	}
 
-	list_splice_init(&resources, &host->dma_ranges);
-
-	return 0;
-out:
-	pci_free_resource_list(&resources);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
