Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52ED1DF342
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsAqVr6Rq96jPEtM9jozk4uPrdflcGwOH33JO2HBRvA=; b=pdVKRIUfODzkdg
	nkoS4sPdZh/bpfUNoGh+vPD7K7t9+inLq/9tfTMexKHStId7OAZOgKoAikbzeKr6gybyw356B+hut
	IuLJ15AiTVYNcS2foAaaZnBH3WFT6pFXHYM/ydxC2WbfgBl/k1iUhrunXiwJQREcuxBVGtw+2bYI8
	hEfiqgBUAEX3ohGhAC/k4kqjaJYeEKhdnxN70uwPgjmeDhDTnEnWtLnWJ/3afX5DdLHaENAWvm3mE
	cbJ2/muKCKgjiN6mva/jm1Rb5n3+T2N3zZUfNdgZZPOcyeLhW4WXJobxcj65tofDYcXPIujiEzAyL
	tWM9pa0tQWM7nKs/Zm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHR6-0006xu-LD; Fri, 22 May 2020 23:50:44 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP7-0003Oz-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:42 +0000
Received: by mail-io1-f66.google.com with SMTP id j8so13282604iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UVLALo+Rw4G28pn8E/Fr1iTDsfsUKpN35tQ7eb98FMg=;
 b=Ho1+/MWXvc7+HNzo2bhaONxC+58n2vmj46hyd42DOL9WoOhg7bwhBaRxYQDeTXiAXg
 54Ex8cCITTVpU6UDqt3nxF/1ATzr3pvMA4lPY+C3JVLciVfiu5u5v2auZd/wh4gsSuLR
 hsIZkfGGF/0ctRGw+I/0PjNwWvp1bItFFH+bGRvMkCICT6S4knFSOsM2wN37cTVF8FiO
 fdC1XnESO2MAlFbw9qZvw73Nysabq13gumLDsLxZikXQjdm+z2WRPAx0N2N6mNDvaRnN
 6tC2naToqWZPhxD4Z1WCBW1mEeO7133btYFCFxCBk+c+VTbPryQXYGqsFAthKCd1L0/g
 BI3g==
X-Gm-Message-State: AOAM5335wo/L66y0KNXxWi+EXTdPOljgCuMZzLLwlGHiY4Th3EbyMlg/
 fZ/GnGQ3KU2TxAP2gboV7Q==
X-Google-Smtp-Source: ABdhPJzSme6sM1qHBaImIWc5kpH40B37+rjqfkGC+CAaVZMzhxyay108QnlcxCdxriE8AeY4K14g7w==
X-Received: by 2002:a5d:8613:: with SMTP id f19mr5238435iol.173.1590191320399; 
 Fri, 22 May 2020 16:48:40 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:39 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 06/15] PCI: tegra: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:23 -0600
Message-Id: <20200522234832.954484-7-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164841_420593_8662B74E 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: linux-pci@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tegra host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-tegra@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-tegra.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index e3e917243e10..3cae96dfe75d 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -2670,7 +2670,6 @@ static int tegra_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct pci_host_bridge *host;
 	struct tegra_pcie *pcie;
-	struct pci_bus *child;
 	struct resource *bus;
 	int err;
 
@@ -2721,20 +2720,12 @@ static int tegra_pcie_probe(struct platform_device *pdev)
 	host->map_irq = tegra_pcie_map_irq;
 	host->swizzle_irq = pci_common_swizzle;
 
-	err = pci_scan_root_bus_bridge(host);
+	err = pci_host_probe(host);
 	if (err < 0) {
 		dev_err(dev, "failed to register host: %d\n", err);
 		goto pm_runtime_put;
 	}
 
-	pci_bus_size_bridges(host->bus);
-	pci_bus_assign_resources(host->bus);
-
-	list_for_each_entry(child, &host->bus->children, node)
-		pcie_bus_configure_settings(child);
-
-	pci_bus_add_devices(host->bus);
-
 	if (IS_ENABLED(CONFIG_DEBUG_FS)) {
 		err = tegra_pcie_debugfs_init(pcie);
 		if (err < 0)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
