Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F731DF33D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZiHSvtNyKjMJtVKttS7F730IoD8MJVldDcoaWqwUBQ=; b=qlSEH0emBwq0xX
	5uorn5WjFwAwn4h4tTvEJ2MPriAiCwwtkjKf8RWHjzyanXpkvC6EEkafQarQpEfRCZTkVqD+QUKtm
	FAvzpKDqjfKIzP0t2w3vVyE5weM6lCAH4JmFtuCNezEy95YbyRCmAw0NGdvcmSwas191dPKG9n8Z4
	fs5C0brprU6jdKmqR+hMEO7eEw0WtVSg3Sfx3eZ92WBGBtWicsCUAgr3T8kyb3TOAEPCFgE30ezc4
	Kq4NVH7KvDB6c39Jir65yNx9Gz5XO57zlWN0WU5IpB6PS7gOsJeTu0j5Hl0hx4NAS50dEXVRqk/GU
	10bJFtvJVmRLiGAnPi3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHQ2-0003tM-G4; Fri, 22 May 2020 23:49:38 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP3-0003KK-2Q
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:38 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so3014424ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W4+faHiQpbiKoNArdRYrYzpj6r3I7BpUrWFS3s8f/VI=;
 b=ZXsloqAfZ/OQqX7bg88I8PC0p1ukNpskjfFPofeV73G1Wid+JJKZPUAVceojGMwgmv
 0fRcSiJvAvU1Na3XpKIdT9RGzM6RdudIJm7uRVDK3AZmse8LSh1yqUwITsk9j4EYcbHk
 WytP455gZq+P72FBRUFA2EbDmQqocvtpzhxOj9v+z553ex9lj/3OeLsDpzXc4LEuWz9M
 pGHXIHdSPnyBJXhXwnx/z7xs5Md+hW9vPXoagHsXZtZxJzW0d7O5qWodABJPNzAsEazc
 zgiNwKHbxeCRtt386wsJoB4KrLOR2MbUKIzXFQFsKS3/ctU9RvdsjgLeMRHQUblDpAG0
 HSiw==
X-Gm-Message-State: AOAM532tLcVAW9jIKgy96exb/JPshfhRKAID316fXG34hMdKaNlfOXkT
 aCcAFBQxUmqJQ1f1gt5vkw==
X-Google-Smtp-Source: ABdhPJzN5mP6wcYyIO0prwZR7WJYYh7QphTWx1pZw96CB3uHi1bA3huv1VVkQoA0SVgvDeTWo4nM+g==
X-Received: by 2002:a6b:5813:: with SMTP id m19mr5015868iob.88.1590191316081; 
 Fri, 22 May 2020 16:48:36 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:35 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 02/15] PCI: mvebu: Use struct pci_host_bridge.windows list
 directly
Date: Fri, 22 May 2020 17:48:19 -0600
Message-Id: <20200522234832.954484-3-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164837_108945_2F856000 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no need to create a temporary resource list and then splice it to
struct pci_host_bridge.windows list. Just use pci_host_bridge.windows
directly. The necessary clean-up is already handled by the PCI core.

Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Jason Cooper <jason@lakedaemon.net>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-mvebu.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
index 153a64676bc9..801044523a3d 100644
--- a/drivers/pci/controller/pci-mvebu.c
+++ b/drivers/pci/controller/pci-mvebu.c
@@ -71,7 +71,6 @@ struct mvebu_pcie {
 	struct platform_device *pdev;
 	struct mvebu_pcie_port *ports;
 	struct msi_controller *msi;
-	struct list_head resources;
 	struct resource io;
 	struct resource realio;
 	struct resource mem;
@@ -961,17 +960,16 @@ static int mvebu_pcie_parse_request_resources(struct mvebu_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
 	struct device_node *np = dev->of_node;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
 	int ret;
 
-	INIT_LIST_HEAD(&pcie->resources);
-
 	/* Get the bus range */
 	ret = of_pci_parse_bus_range(np, &pcie->busn);
 	if (ret) {
 		dev_err(dev, "failed to parse bus-range property: %d\n", ret);
 		return ret;
 	}
-	pci_add_resource(&pcie->resources, &pcie->busn);
+	pci_add_resource(&bridge->windows, &pcie->busn);
 
 	/* Get the PCIe memory aperture */
 	mvebu_mbus_get_pcie_mem_aperture(&pcie->mem);
@@ -981,7 +979,7 @@ static int mvebu_pcie_parse_request_resources(struct mvebu_pcie *pcie)
 	}
 
 	pcie->mem.name = "PCI MEM";
-	pci_add_resource(&pcie->resources, &pcie->mem);
+	pci_add_resource(&bridge->windows, &pcie->mem);
 
 	/* Get the PCIe IO aperture */
 	mvebu_mbus_get_pcie_io_aperture(&pcie->io);
@@ -994,10 +992,10 @@ static int mvebu_pcie_parse_request_resources(struct mvebu_pcie *pcie)
 					 resource_size(&pcie->io) - 1);
 		pcie->realio.name = "PCI I/O";
 
-		pci_add_resource(&pcie->resources, &pcie->realio);
+		pci_add_resource(&bridge->windows, &pcie->realio);
 	}
 
-	return devm_request_pci_bus_resources(dev, &pcie->resources);
+	return devm_request_pci_bus_resources(dev, &bridge->windows);
 }
 
 /*
@@ -1118,7 +1116,6 @@ static int mvebu_pcie_probe(struct platform_device *pdev)
 
 	pcie->nports = i;
 
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = 0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
