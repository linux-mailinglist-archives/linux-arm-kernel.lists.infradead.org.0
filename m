Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234511DF343
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfzV/zm+7gtEURN+cCRZYrK9VKRzrv7Bt4dsDvIBNwI=; b=iOd3CDgZIXgi/o
	8mDrnAz63y8WC/dxkWgDLW31lfFDnMxJOoB4LJfrnVbfRusZZd0W9j4Ar2iS/m6Ki605B4QP8ACBc
	P9rePPB3tYCiGni8CyOIQ5AvHj77cOgtmQ2GMBcx6mEvsffc2mtGMcfWUqDwSSPcqJEeIKXFTlJdb
	dXOcFOUzXrdFYlTUjXvrLrlhbXff9S0EJ0UgkRHQMHXgFyQT60zxZs9BL3d/UWOPqWroWDgtJFK1R
	TjqYsmu1Aoqic9oIvBGxNuscOCDrsEhm+OqctNayf3v1f+Gp4EfPqpvJGxHan9Gnzl4jV0dcEBV5x
	ZXQ6eUHrnla7p05lVc+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHRN-0007Aw-NY; Fri, 22 May 2020 23:51:01 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP6-0003Ns-DU
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:41 +0000
Received: by mail-io1-f66.google.com with SMTP id o5so13321986iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RDGTHJtHoujJlH0xuipOO/+33SMsAgY/ZHK2re0dJMA=;
 b=Sytw/0LR4JOthqqYjFATBpfV3TqeQZVJncX0e6qRLZigKo863mqocZ64He7+m7KOXn
 0DGpXP7ONTFpJfNwXdTqeBWgXiyBVcGmkFkH7Xdy7wgtMpmYAqHApJgDbz0BZeA9qL9B
 7Ttk4a5l+41wuKLzWgi7aIX10h4j1H1K5q64CMtEthBXIZbdl02XlKL3RhkGxuiJSlNR
 cS0XrtUEbqARvReSXe5OMmIRNULq4WhGoWW/PWdwHj/HnIRWc7IVsJFYKZtZPaj9TWE7
 ubw82P4GXkkAHy6QCjB+Is58nvFzmoFonlnIDwpA4g56PhwyEmz7P781v7rl2M40XQ81
 Ndjg==
X-Gm-Message-State: AOAM531fWDcbjQzPRaXVEZRZh227ijRSTpG8074xDnTph+I6yUOhqdFr
 2pmVP12b99TZGCIaPoUZNA==
X-Google-Smtp-Source: ABdhPJyqxau5tXcv4nxZOzDxI5Uzfaw3Xu8Y/R/qSeDfpABcMfVTrSAct3cO36GKdKu07xo63/tr1g==
X-Received: by 2002:a5d:8a01:: with SMTP id w1mr5106567iod.71.1590191319312;
 Fri, 22 May 2020 16:48:39 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:38 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 05/15] PCI: mobiveil: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:22 -0600
Message-Id: <20200522234832.954484-6-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164840_465600_32B564B4 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mobiveil host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../pci/controller/mobiveil/pcie-mobiveil-host.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 5907baa9b1f2..5974619811ec 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -569,8 +569,6 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 	struct mobiveil_root_port *rp = &pcie->rp;
 	struct pci_host_bridge *bridge = rp->bridge;
 	struct device *dev = &pcie->pdev->dev;
-	struct pci_bus *bus;
-	struct pci_bus *child;
 	int ret;
 
 	ret = mobiveil_pcie_parse_dt(pcie);
@@ -620,17 +618,5 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 		return ret;
 	}
 
-	/* setup the kernel resources for the newly added PCIe root bus */
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret)
-		return ret;
-
-	bus = bridge->bus;
-
-	pci_assign_unassigned_bus_resources(bus);
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-	pci_bus_add_devices(bus);
-
-	return 0;
+	return pci_host_probe(bridge);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
