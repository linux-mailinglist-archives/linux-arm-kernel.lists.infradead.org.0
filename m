Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A711DF34C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOUiQU3E5yuBHXdfwKeSlQtqHbUVvgaEp/deOkq7CkE=; b=J0dUxI8i4Z0MgP
	D6clYuQIJP+tX9oNY4XGoEvEpig8MQz1r29MgxsDHLsllUBxl5VL/TBXSCr0k7Mtn44MANk+sCaSv
	wsBhHg7elNO8p83lsUJ4RLryyOVZjlU5HyohugxhGJ8oqXwKciWR6LL7cOGny/sQFBs1VnweLeyMr
	fHmCqfeBEc1sh1K7yD2Hg/+uvYDsnBm76jbPI6KunCMbbLTEeWygn/2LnNJJuN2veSUNgcQuVhzsw
	QMffkEDPnRY8alSED1/zNKhwmzjiFLp8+7fp0aKut9FPgWiVU6B6IKRvLNQltvoEOu2L1thLMN/Z5
	5mK5ssfBGlp4ZuSybUqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHSl-0008R1-BB; Fri, 22 May 2020 23:52:27 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPA-0003Sj-8y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:45 +0000
Received: by mail-io1-f68.google.com with SMTP id f4so13286550iov.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=esB6b61apNwpYj2Ii2qJBKmfmJ2cKVbjKA7d7D0yxhA=;
 b=EjRivG57uocagmbsfqsQMNSkL8N3HoQXhHdQ3oFd2ZZWBIPpj4OxUmctSppfltVWGy
 eIoRTkV+eJQY2X4d4gMUCc4lRitfe7Liof7F2traygqZ43wbdhWtnUuyCz30LhuSrCmS
 w5nDQx3dZUr1KTRZGVW+5mIRmH74+t3RtOPdYi6+xYuY6fKytrYY61ONs+SLTV6aYqs9
 g9zNAftn+ugFgXXsmM8WN/QlMZz3sFhxIa/X3j/wWC8Y1qptoaG5CX9IrgpIodnpaiFr
 NPAwtp0lxEod81PFYdnzxfnHTd5gbGNUZen73ajQvh+omphWRZc54DM5MAm5BTd/npGD
 KVeQ==
X-Gm-Message-State: AOAM5339XlxfKIyDq//FyyKRvzqeMzlzDihCIX0fRmlNv09HUqW4u+gD
 3SKQhUUVi36u+OZahou1qg==
X-Google-Smtp-Source: ABdhPJyNYc9vzogrqFrsqVMURFj3X5uQdcgBg6RgjMS5Fz1B6QbL79L43BEqeIa+lFhIECyX99pQFw==
X-Received: by 2002:a6b:5008:: with SMTP id e8mr5162852iob.161.1590191323471; 
 Fri, 22 May 2020 16:48:43 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:42 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 09/15] PCI: xgene: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:26 -0600
Message-Id: <20200522234832.954484-10-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164844_363526_94E17086 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Toan Le <toan@os.amperecomputing.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The xgene host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Toan Le <toan@os.amperecomputing.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-xgene.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index d1efa8ffbae1..5aee802946cb 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -591,7 +591,6 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *dn = dev->of_node;
 	struct xgene_pcie_port *port;
-	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 	int ret;
 
@@ -632,17 +631,7 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret < 0)
-		return ret;
-
-	bus = bridge->bus;
-
-	pci_assign_unassigned_bus_resources(bus);
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-	pci_bus_add_devices(bus);
-	return 0;
+	return pci_host_probe(bridge);
 }
 
 static const struct of_device_id xgene_pcie_match_table[] = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
