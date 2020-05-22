Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1C1DF349
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dls4+SYq1ll3uGqhdEBA9qVAtXMZBd0pMk+4mGsLHNs=; b=nbXACJRMGGcZc9
	L25VFj72XsZGFrjNBbzWOwfqy16h51frhq0tG/POy3a/WiC3BRH/+/+dYnVWqpE6t2taRW9f42GQL
	kwJ9+JM1mjzSuEXT535DuGl8HQnW2H1ceaNtM1pplR/E0GC1oWJEmFGABgcmqKc/lyutEO+R1iQuT
	a+G1Fp3ghZrtHjtezQQuLP17cAXHkvZ8AzZQ/iuspEKMKZo6TV8UnKFmX058Oh474zJ6oRGihT0Fj
	llqod/7u4wNjQjo1+bZAVyIOt3GirorRHMTKq8ATY+aFoFATTjgrU2kH/Snr5fJZ0+/JeGRbxxHti
	p8hHIuC56wrOFXlYZSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHSO-00088b-Lx; Fri, 22 May 2020 23:52:04 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPE-0003YS-Je
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:50 +0000
Received: by mail-il1-f194.google.com with SMTP id w18so12437124ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l8MKWOkTFOUck/e3qV/n3PXjrwRqiBK3sTxqSf9d7+Q=;
 b=HgbkB55mmpZYNKsGblrBVlLbMVyWZbTfmqlx07/HoP0bamAmGzij5cgEEyN4J2S/wG
 W6v4RLg1KkNdAFQ3HRtqgm2Ec7ZLk55+4REMe8ROVGq8PZ2LYMytZzjcZsOJRUdfK6QG
 pl6kXFI1wXHBV4A6AUCcOP99RZBiKknEKX0TC5rhp5HM2x9iXlX/DeiZVA2WDuKgej+j
 8Spaxu5MXmU63ZwNDH1pCcPiJ3UavN8+LiVNqvAF4shhsKGMg/9+WfPD1sJrqVq9QsQz
 42nyHQuaMV+8jva3PGGZL3MbAK6nXLBoM6AssqmYiqTr1rnABpL/hwbdB0Hr3GfX85kc
 C9xg==
X-Gm-Message-State: AOAM530WrtXE7hMXMYF4ra2meQPCz3qR5NGOou0v2fW/2xLQ1uqJxXtt
 9PLjH3pnlryyOCs5vLUSnw==
X-Google-Smtp-Source: ABdhPJxg5S2neYCB/6X3dzr3jwkcGSeZrpPJj0feTh/FWKaNYA2PpAUBHLVyiHOLA6yr38KykqSK5Q==
X-Received: by 2002:a92:9e16:: with SMTP id q22mr15130162ili.17.1590191326864; 
 Fri, 22 May 2020 16:48:46 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:46 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 12/15] PCI: rcar: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:29 -0600
Message-Id: <20200522234832.954484-13-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164848_662242_9894E0EF 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: linux-pci@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-renesas-soc@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rcar host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Marek Vasut <marek.vasut+renesas@gmail.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-renesas-soc@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rcar-host.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar-host.c b/drivers/pci/controller/pcie-rcar-host.c
index d210a36561be..9069ad96fe95 100644
--- a/drivers/pci/controller/pcie-rcar-host.c
+++ b/drivers/pci/controller/pcie-rcar-host.c
@@ -330,8 +330,6 @@ static int rcar_pcie_enable(struct rcar_pcie_host *host)
 	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(host);
 	struct rcar_pcie *pcie = &host->pcie;
 	struct device *dev = pcie->dev;
-	struct pci_bus *bus, *child;
-	int ret;
 
 	/* Try setting 5 GT/s link speed */
 	rcar_pcie_force_speedup(pcie);
@@ -349,21 +347,7 @@ static int rcar_pcie_enable(struct rcar_pcie_host *host)
 	if (IS_ENABLED(CONFIG_PCI_MSI))
 		bridge->msi = &host->msi.chip;
 
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret < 0)
-		return ret;
-
-	bus = bridge->bus;
-
-	pci_bus_size_bridges(bus);
-	pci_bus_assign_resources(bus);
-
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-
-	pci_bus_add_devices(bus);
-
-	return 0;
+	return pci_host_probe(bridge);
 }
 
 static int phy_wait_for_ack(struct rcar_pcie *pcie)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
