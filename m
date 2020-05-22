Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0CF1DF350
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRxCHZnqkYKNda01btbEGz8YJkvM2NPiyjynGeqS0P0=; b=ZoaeU0Iq8EzGQv
	Kv/BftvwH0X6fBa6x8ViHBIm53CJ3yGwUZSQng264MVKMkp3HxAMms3PX5Da+7xFUFmO0WOW+a3Jx
	tvQtgckwyjVQ07QzvpxcC46RicG0kyCsV9gh/VhF7NTnk2cPVSSkrzTXDfiUd4Fw1Nz3z8xGJ2jLR
	xrKZUgqVPsvQx/8DmoJ6+y16FNALULxjhug2EwLtJm3/F+i4AkpEe/ZuXVrn/Iy5x/dBO+GlEgJB0
	z2MT6AFRqieHxTm2XCgMco/79nfHVbWd+DahIn6veBn7JhDbk5FyIcZEeP7kKzHWPxSlWJ2Xq8tzd
	yGVvS7jqZrAnjzW8J7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHT2-0000Fi-Vt; Fri, 22 May 2020 23:52:45 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPB-0003V7-PN
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:47 +0000
Received: by mail-io1-f68.google.com with SMTP id q129so4206291iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A2f+A+UJfY1PJTDNi0NFbPeTlvbbCc37QATxTjmUPVg=;
 b=XXkvl8PQ2E8ZDeU4o14MRelKo/gFYpP0lCGflNB/unGH6nyKXspcK9U1ttRrsqVvY1
 kRbhVjU2wld6eNJ3KOEH7ElL+gsUZN8SSlmr8n7b9mRl5qPnvQgm+Yt+SeiqAZ1VbWTn
 6/5pbyKkJCH8G9AUy5ckqIddrXWtR/o11ID0WGbfYblunk2lFAjSiMzixQ+CzgZZv0z8
 yu729XN8unsym6JYVu78j1loHDHuGnWgh1ouI3w+cA9OyA+/2RfT/FmLkxyAsaCR/Rhc
 d7pDxI5IMkDfRHwLWbScDtYiV9pv12y/kWorEy3MFcF/dAFtNQfVHD6XV9USOsTX5lDV
 PEwA==
X-Gm-Message-State: AOAM5337Fd7gVE2AIFqsgOBPF6yIRFHIa4jz9r3cvkEql/phnjmkZwtj
 Fj5z+R5NmNDRk6T5+Qtynw==
X-Google-Smtp-Source: ABdhPJz0drAdXL8tOrdvka5OuWYdrXyPsukcMKwJDfVFN/ZlnqO01gwrcMTn1syXCMOnmaFNfmE11w==
X-Received: by 2002:a5d:9e55:: with SMTP id i21mr3535285ioi.130.1590191324652; 
 Fri, 22 May 2020 16:48:44 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:43 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 10/15] PCI: altera: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:27 -0600
Message-Id: <20200522234832.954484-11-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164846_109817_A424DDB0 
X-CRM114-Status: GOOD (  11.88  )
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
 Ley Foon Tan <ley.foon.tan@intel.com>, linux-arm-kernel@lists.infradead.org,
 rfi@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The altera host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

The only difference is pci_assign_unassigned_bus_resources() was called
instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
should be the same.

Cc: Ley Foon Tan <ley.foon.tan@intel.com>
Cc: rfi@lists.rocketboards.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-altera.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index 24cb1c331058..26ac3ad81de0 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -773,8 +773,6 @@ static int altera_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct altera_pcie *pcie;
-	struct pci_bus *bus;
-	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	int ret;
 	const struct of_device_id *match;
@@ -825,20 +823,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret < 0)
-		return ret;
-
-	bus = bridge->bus;
-
-	pci_assign_unassigned_bus_resources(bus);
-
-	/* Configure PCI Express setting. */
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-
-	pci_bus_add_devices(bus);
-	return ret;
+	return pci_host_probe(bridge);
 }
 
 static int altera_pcie_remove(struct platform_device *pdev)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
