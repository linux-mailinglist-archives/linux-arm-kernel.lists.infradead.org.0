Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86757A48DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 13:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V3DGlN+clWJRX7ayxSGq0WNlYLGPPd5YukoLym4UTQ0=; b=p1c7P9ePdyIwR9
	4f0W6Pc3BEzbCodJjDu4xzQWS+m4sei9wh5tewRNSd8I5EeSt9dzWgQdtWkpcrh4tD2Z7I2BmAjk4
	LUSsJI1V9hsWtmD93+1h4TBtma2KX1uex6kEOLJVSJ2sbAp4WCF5g/eIT+FSa0s6QSguindnZiLIL
	vCHWu0aVSAsQiXXsTpLgWHTGkKP1AkbE0K7jEXzJ/MJ3P8kM/TAmtiNy/VsYtTc1H/1ihjgdzlQJb
	+BxK5f7e4JrGaYlB9hemJtbTHVEGkigO4zl1eierMaylmzC5T9J+o4EtXi2BCbZ1xbLXBs5YxjUU1
	WMbKlk1qSqTX78FOj0kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Nyz-0000RJ-F1; Sun, 01 Sep 2019 11:25:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Nyp-0000Qz-2p
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 11:25:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id o184so11795948wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 04:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=01HPTey408UCBL639ZxLYtnZytu5ResDsXDWNRYopFs=;
 b=uNkmgSDRj0aCeJn8wLr/V5uo7ANHZI0Ir4fFw+tfD1CApEj8Mh/wK0Ze7wqdsdBTwD
 wKWWEheNTcNp0sLjO2N31rD5C/mAyePd5I7tPCw+uazWklSplQpGR8VILBdNyVTG1EKy
 x38I63zw9kYwo6PFRwKZyMWg6l3Z74zmSEaE4RXuSFukNISKQDboWeB8EAD5yrS+hfRN
 dBNbudRWyt/FYS5Ire4D12/nCZX29mdcqnjnQpH42mVJ2xlBHRdGvB2PLhH/6QTKYCNe
 DnUIsqnWL3uxsBg0t21xLKaRb609UUIlp8hgs52Bo9OTq4DscFhMg6CpMHf6BBQujP37
 U7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=01HPTey408UCBL639ZxLYtnZytu5ResDsXDWNRYopFs=;
 b=hlPSIWf/SENIFqqU5hhCY6Oa8BmU5XErFm5t5ILM6TakVrNOgYrYVesUujIT5SatHk
 FITNS8lzLkl6wNlcP6RdwvdX8Udb81D93WSs65XJVSdmMu6xzvAmKeoqC8qWD+GMljGm
 qVLHF7C6vZZMP+/bUTS0mu0gZnZAGFbDjK8/K4XJnPDln50BXMi9A3h5zWB5eyBNKESr
 vcgl+nplVVGCejnIuYwdAYcxcjgERU4EpF0BWxWDmiXqbcU9zQ7WACk1yva/jQrreWef
 fnCykrArRoNhwBI0aON/VNpfXeVCCKiUv3JsiTGTfLmdACggZonEbhlHRgRPh/XC458p
 enjQ==
X-Gm-Message-State: APjAAAWbIMMtH+v3MzpOgsHCnjPp0O8OmCaGjWNbPLh2d5iA8SzMnJZp
 IrbBso7X4RtEIm6n2vOmJ3s=
X-Google-Smtp-Source: APXvYqy1j+qHgGkl142BUZQL/cgCiSDmmOxkvewbJoqW69rnrk6CVgyUWdrQETI/0pc6am1fndsuUg==
X-Received: by 2002:a7b:c7c2:: with SMTP id z2mr28564345wmk.33.1567337109185; 
 Sun, 01 Sep 2019 04:25:09 -0700 (PDT)
Received: from localhost.localdomain (ip5b4096c3.dynamic.kabel-deutschland.de.
 [91.64.150.195])
 by smtp.gmail.com with ESMTPSA id x5sm747241wrg.69.2019.09.01.04.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 04:25:08 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH] PCI: Remove unused includes and superfluous struct declaration
Date: Sun,  1 Sep 2019 13:25:06 +0200
Message-Id: <20190901112506.8469-1-kw@linux.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_042511_152169_98844523 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove <linux/pci.h> and <linux/msi.h> from being included
directly as part of the include/linux/of_pci.h, and remove
superfluous declaration of struct of_phandle_args.

Move users of include <linux/of_pci.h> to include <linux/pci.h>
and <linux/msi.h> directly rather than rely on both being
included transitively through <linux/of_pci.h>.

Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
---
 drivers/iommu/of_iommu.c                          | 2 ++
 drivers/pci/controller/dwc/pcie-designware-host.c | 1 +
 drivers/pci/controller/pci-aardvark.c             | 1 +
 drivers/pci/pci.c                                 | 1 +
 drivers/pci/probe.c                               | 1 +
 include/linux/of_pci.h                            | 4 +---
 6 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 614a93aa5305..026ad2b29dcd 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -8,6 +8,8 @@
 #include <linux/export.h>
 #include <linux/iommu.h>
 #include <linux/limits.h>
+#include <linux/pci.h>
+#include <linux/msi.h>
 #include <linux/of.h>
 #include <linux/of_iommu.h>
 #include <linux/of_pci.h>
diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index d3156446ff27..7a9bef993e57 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -10,6 +10,7 @@
 
 #include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
+#include <linux/msi.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 #include <linux/pci_regs.h>
diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index fc0fe4d4de49..3a05f6ca95b0 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -16,6 +16,7 @@
 #include <linux/pci.h>
 #include <linux/init.h>
 #include <linux/platform_device.h>
+#include <linux/msi.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 484e35349565..571e7e00984b 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -13,6 +13,7 @@
 #include <linux/delay.h>
 #include <linux/dmi.h>
 #include <linux/init.h>
+#include <linux/msi.h>
 #include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 169943f17a4c..11b11a652d18 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -7,6 +7,7 @@
 #include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/pci.h>
+#include <linux/msi.h>
 #include <linux/of_device.h>
 #include <linux/of_pci.h>
 #include <linux/pci_hotplug.h>
diff --git a/include/linux/of_pci.h b/include/linux/of_pci.h
index 21a89c4880fa..7929b4c0e886 100644
--- a/include/linux/of_pci.h
+++ b/include/linux/of_pci.h
@@ -2,11 +2,9 @@
 #ifndef __OF_PCI_H
 #define __OF_PCI_H
 
-#include <linux/pci.h>
-#include <linux/msi.h>
+#include <linux/types.h>
 
 struct pci_dev;
-struct of_phandle_args;
 struct device_node;
 
 #if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_PCI)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
