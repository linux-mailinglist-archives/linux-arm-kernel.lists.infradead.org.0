Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8606CE76B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHDrqcGch2JVlgmaZm717AmHhevmAFgynkLnbxccd4g=; b=IW9M+FbeqoKMxV
	H8OOnudfHoSUaJa6DH+uWhg5agWkP0khTYWS6c8Scl2wFSv8UI+ytgRW4zlZi2Uqd9Pk7av69outS
	lgUYvyeESyKAWdPSH7ZuxeOkUf6zDNdtT4T9lmBzdB0zxc6yamsezJ8QKcJ3raB5KByD57LI5N21c
	4jvciOMrAaMypEoQaCiwyAfCwmoq/UuD4da11adTn7xj6pbjW478WUCROfBTjYl3nQj/x+L8cRFvG
	eFH9hCFGzOaGmWwNSuaTHtOhWfmbrpGfFYMln/NLxaNKU3xXQilp5MIElFy2dcg6L+m28RDpjOQdu
	TZZD7y0ptASUEOa7wZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP83y-0005SL-D5; Mon, 28 Oct 2019 16:40:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xe-0007Gu-NZ; Mon, 28 Oct 2019 16:33:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id 83so6433667oii.1;
 Mon, 28 Oct 2019 09:33:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gXFj97mkbGwNy9HcITgsXlHzoihDJWyxuLbZMG3bMrk=;
 b=tyLxVYk7Yuq6JyIAgTkUanULlaK+HkCVhUJ/ARb1P+syN3jnPBsblb0g300QEIyrec
 XAENfm/lmbVP/f6OV4Uq1zxy4UBOTptZ+M2RYJZGiAhZgTMSo/+39aHPAJjzDpoWKWHr
 jUKqpQRZU4tyfsAEZMs696P858DphmCDUy5iXTpSHYtQGSEXuEz3Vtz1Giys3p0b5+RK
 a76QTnhUnCmKmZhKUK2rLFS5SfMNj45m4ty8MTegW/5TYGAXDl27pLDHUE6RJvRvdB/z
 prjMzroF8y5oRNPFspszOqfeJetQhhAEkAfK068P656xReS3brQ5q/czJepaK+5IwzCz
 4lOA==
X-Gm-Message-State: APjAAAXGFok//uhE1bZFTUQlEjs3OpmQdDHpGB0WIl+hBaWsBA72F4Kj
 RbS/DnF1GjNQ5Mdz+awIcA==
X-Google-Smtp-Source: APXvYqyAyPrUKbfPJy6jun7gPAIEO0JEPIYDjbds2nS284G2YkNImID/wTHAeVHyFp19AQ13lX76hg==
X-Received: by 2002:aca:1a0b:: with SMTP id a11mr149284oia.138.1572280421584; 
 Mon, 28 Oct 2019 09:33:41 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:40 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 17/25] PCI: versatile: Remove usage of PHYS_OFFSET
Date: Mon, 28 Oct 2019 11:32:48 -0500
Message-Id: <20191028163256.8004-18-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093343_338359_9E279C17 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PHYS_OFFSET is not universally defined on all arches and using it prevents
enabling COMPILE_TEST. PAGE_OFFSET and __pa() are always available, so use
them to get the physical start of memory address.

This should have probably used 'dma-ranges' to get the address, but we
don't want to force a DT update to do that. At least in QEMU, the SMAP
registers have no effect (or perhaps the only value that is handled is 0).

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-versatile.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index 18697f2ea345..eae1b859990b 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -99,7 +99,7 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	resource_list_for_each_entry(entry, &bridge->windows) {
 		if (resource_type(entry->res) == IORESOURCE_MEM) {
 			writel(entry->res->start >> 28, PCI_IMAP(mem));
-			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
+			writel(__pa(PAGE_OFFSET) >> 28, PCI_SMAP(mem));
 			mem++;
 		}
 	}
@@ -136,9 +136,9 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	/*
 	 * Configure the PCI inbound memory windows to be 1:1 mapped to SDRAM
 	 */
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_0);
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_1);
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_2);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_0);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_1);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_2);
 
 	/*
 	 * For many years the kernel and QEMU were symbiotically buggy
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
