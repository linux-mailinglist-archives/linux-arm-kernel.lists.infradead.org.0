Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848DE1DF35A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5gs5qW3OMjMNGNZfewldUsy4iVKhWFS0vDxuJjuunM=; b=IM/qtQfC3/AFhS
	Pffgla4BkdJuPUGZfkJHQmMMhb4wiWbs6GJDvzZglnVbFFQGIiw3hVco5dEWgVe8Xta+Nn4rpSh8T
	0bh1GvZC+kaZfd7kMC5Qs6KmC4e2hRjQ+XbyN2bZj6h0A5vS789oxGwFqSW0Eul5ZaR1Vzyczj4rK
	shadS1Ded8D/bnaBcvTeXR7nzLkQsQXpRqgu2X/MK4Mee8YrnD/VAnqN7AlNDuhad5wTlobZi196+
	O4HT5AIo7S+oMIwz9tBIbAgPiszXS0vnaXJ3zGVwV4evOQHMSFlO6eWi9EQwdwWCmX7ymz3yKVW53
	IK+l6675Pgow00DeS8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHTt-0000x0-VB; Fri, 22 May 2020 23:53:38 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPH-0003bF-6e
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:52 +0000
Received: by mail-io1-f68.google.com with SMTP id h10so13310751iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9jGQ2qLaDHXWpsTIu58oRNqkVRMoBCOunQH7NWW7la4=;
 b=SCKHza2R16DZN5h7j4XD90Fq1vqBJrR5jRyr4fUMnUcqgvw4dJdW1/ATB5G3pvcwUD
 1EBJa4uzd8OXD2BS0W5Q4qIxBGAyT0qxSYTFbE2qRMNyKAUTXIIMAG8zvbBAChxPOKRO
 wW5sXVxkxm8ZngXE10xxVQMO8Ly/BGrSgtzJr9BS5eGuYJ3v4AlPyD2DlfNUcJ/DelT7
 Odgy7YRstx2Kh46Mab1cPobQk+K9hLViFavw8Q3G7Km0dK196oYUvPOjHFy4/euR7ob4
 ccUpWpH5k1nfNLAF08wJPI3SwO5kQSt9gcFtqd+lF6v35daS9weXU8gycagACoklzl6Q
 julw==
X-Gm-Message-State: AOAM532sbTmVkimLOcuouAmXQ1jPct2eYq0RFMA/DP0Fu47ziPPmIlXx
 7guS2dNEasRjlvw4TKBawA==
X-Google-Smtp-Source: ABdhPJwZp9OVv7GaJiib7zatMqtlUftLOWe6s4BgpqKdDy0qd/frFOVmsmEYghU2qvA8+UlgAn3+0g==
X-Received: by 2002:a05:6602:44b:: with SMTP id
 e11mr5183523iov.62.1590191329933; 
 Fri, 22 May 2020 16:48:49 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:49 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 15/15] PCI: xilinx: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:32 -0600
Message-Id: <20200522234832.954484-16-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164851_377846_3DB98AB6 
X-CRM114-Status: GOOD (  12.34  )
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
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The xilinx host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

The only difference is pci_assign_unassigned_bus_resources() was called
instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
should be the same.

Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-xilinx.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
index 98e55297815b..05547497f391 100644
--- a/drivers/pci/controller/pcie-xilinx.c
+++ b/drivers/pci/controller/pcie-xilinx.c
@@ -616,7 +616,6 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct xilinx_pcie_port *port;
-	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 	int err;
 
@@ -663,17 +662,7 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
 	xilinx_pcie_msi_chip.dev = dev;
 	bridge->msi = &xilinx_pcie_msi_chip;
 #endif
-	err = pci_scan_root_bus_bridge(bridge);
-	if (err < 0)
-		return err;
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
 
 static const struct of_device_id xilinx_pcie_of_match[] = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
