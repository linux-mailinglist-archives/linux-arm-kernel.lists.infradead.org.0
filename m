Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471AA1A8F97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 02:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeXHI35tug1vcr7ndMBLU/Dv7nkkLFzuooUIFWkPvIY=; b=BO5kpUYE8tZ/ej
	2pMW6IDd/qtvt3XiHRZ2PM/fj+fl9GnjxzSOA+pONet3fknCwFwkURgOeVAtEN4HNjRcdQEhbnusH
	EDxk2Xy6dWWivcuPX9xgk6TgHi9OzCdqAH+O3kOhyN8CQvC6q7nHDMfoJitRqoFEDiLpnG5m5U6bf
	ecF7v3o6+ysdzg2ll2wNyse0Sx1dixfcje8iNl1BpwtEcKdscIbuMIgvnSyWw9EVXFCyxXQJO81Dz
	Q7cBZuI1fqHRKKcZduRiAkXeBpsWM3oY+p0lsiIx39QsEnyzPMYhuxEI/C25MAtLLLUkCc+IWLnNL
	seSL4XVOBiHYGPhzK43w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOVgC-0000rR-Lp; Wed, 15 Apr 2020 00:13:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOVg5-0000qN-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 00:13:18 +0000
Received: from localhost (mobile-166-175-184-103.mycingular.net
 [166.175.184.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97B9720774;
 Wed, 15 Apr 2020 00:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586909597;
 bh=DDPko3qzftraw9JGNnT2damoPH954XYBiL7tnFM7Aug=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mNjblSYHzwMejKzDZbezJEHTEOJkIpAk5fxnaWdnPwTuXPiXd8kc9yqDvzdlhXgD/
 WVsT2zCRlGHzS9cUBWmbEgc4XN3yscP/1EkpUBD/PMN0gVn2H7yzKlHQt+Gxf9VAi8
 AsFF4OZFCSPHUUBuy+5byaSJ+L6HPjaZfJhGZWXM=
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH 2/4] PCI: keystone: Don't select CONFIG_PCI_KEYSTONE_HOST by
 default
Date: Tue, 14 Apr 2020 19:12:42 -0500
Message-Id: <20200415001244.144623-3-helgaas@kernel.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
In-Reply-To: <20200415001244.144623-1-helgaas@kernel.org>
References: <20200415001244.144623-1-helgaas@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_171317_639891_AD0853C8 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

Drivers should not be selected by default because that bloats the kernel
for people who don't need them.

Remove the "default y" for CONFIG_PCI_KEYSTONE_HOST.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Cc: Murali Karicheri <m-karicheri2@ti.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/pci/controller/dwc/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index ea335ee7ca8e..695f754b2110 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -110,7 +110,6 @@ config PCI_KEYSTONE_HOST
 	depends on PCI_MSI_IRQ_DOMAIN
 	select PCIE_DW_HOST
 	select PCI_KEYSTONE
-	default y
 	help
 	  Enables support for the PCIe controller in the Keystone SoC to
 	  work in host mode. The PCI controller on Keystone is based on
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
