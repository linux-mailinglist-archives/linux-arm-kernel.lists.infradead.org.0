Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE3BA676F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy8fNHJgpR3zt1eAJXj7WqNmY8iM2n0oR0f+epXVOsQ=; b=YVpsqa/c4aBXes
	1O3DkO4mb+ghbiwEchWnntQTsrvmoh0znGmRcIOGe+6LYvRqVeFu4SM0RXMmrY4AztDop1i6ThHku
	TEO7s1TbyaWoUTSFSekl3nHBg1l8iTl0f+4WesCWNto2RHXeqnpYv6JBeDVHSwSeeZbyr/wpKYkev
	7Rghz2UOcURbhggQ4cR20ces8FQ2dP7ZHOYDfaOcjh6WV9HInJ9pkexlHms7AHrtBAfwP1aVP5Fwy
	0vOPhiSYyLtQg7k5PLgv5PZKB4TXlgnCwBSKqwnoTwqDGq6n8XRbZLMK9sKVHAvxQvaP4GFfbkQZ1
	Z6c8ySZVzMUTNrtvySkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i571t-0002kh-7O; Tue, 03 Sep 2019 11:31:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i571c-0002jl-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:31:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id g207so13756945wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 04:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Ekc0W7zJk5w+9GqjfFzhlAJ4FiN+oEvkKnq/TUY/UA=;
 b=rxQ0A7gL/rvUTRgFS/x6Jhz66KR/9EtqdUj00Gi6qx2X2kvUeehgUkd8+p67o1zAdh
 jhHPTILE48XYrnwg8UBBO258FnM17/u/jy7Djy7SpVAb0P8pFAoTW1qOfpfAwfNjhJAT
 DgMvezl32n1VEXVXQNQbjeAq4GqCIpmC++6kN/xbkwj+u+PUgbKIgQ1Llm24sLydd5ao
 LKeszXIV4Hr0QQP3BUctE8YxTL4jz9rRJTA4f8AjNqEOacNNW1CVAeZAN2slkCI5Hcqh
 2/OS+iB6IzU6RSZYWkyMRuB5kD1XX6OEaiVdFvsFPUttT5lL/m20kyhe/Hpi4gYMB5ti
 fqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=2Ekc0W7zJk5w+9GqjfFzhlAJ4FiN+oEvkKnq/TUY/UA=;
 b=LalXmvvywGDjh1rClRoBsDRUDGq8uf9hVhDXY6RYnV7dhRW0RdTIAXQMLYpCDSS2hi
 eokYDbHcx83tMHlv14lnAtdmF2w3jS0iRoAEWN1J/ZyXkvtScM8pFRd+oYE9gxVrbeVc
 zR5mtnYsEbDuguCrfrYfkxW7wtnDIR/4ryNOKSIPp0dDfWTVBxeVbWBYYd73zBv4CwgX
 OImcnxV/YMZXROQyGi5WgOIXCn5MnvfwZ8qqifvQp9QYSIatIoaFhwDF90Pd4Qc7CfM0
 U2SicV3LAu05oR4EiZtfYksxoRruwXWZXma3VEjNL4OAVI4dpF8JEsx+1hjC/uin4/oK
 NrhA==
X-Gm-Message-State: APjAAAXbG2u+uVJDjXRph6V/FdQJMs61XZLIU3wTFmaXYa/jKiF8TBF6
 A6gKeymB5U8LpO3zyMJYfo4=
X-Google-Smtp-Source: APXvYqziAyX3arV2k8bnfEcXOZ1Bh4SmqiEN1nono5tsDY7ufXY/SqE/5xUTbeQQ6Nd5YaemyR+OCQ==
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr29102252wmd.14.1567510261446; 
 Tue, 03 Sep 2019 04:31:01 -0700 (PDT)
Received: from localhost.localdomain (ip5b4096c3.dynamic.kabel-deutschland.de.
 [91.64.150.195])
 by smtp.gmail.com with ESMTPSA id l2sm19455074wme.36.2019.09.03.04.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 04:31:00 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2] PCI: Remove unused includes and superfluous struct
 declaration
Date: Tue,  3 Sep 2019 13:30:59 +0200
Message-Id: <20190903113059.2901-1-kw@linux.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190901112506.8469-1-kw@linux.com>
References: <20190901112506.8469-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_043104_195800_885AC201 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/irqchip/irq-gic-v2m.c                     | 1 +
 drivers/irqchip/irq-gic-v3-its-pci-msi.c          | 1 +
 drivers/pci/controller/dwc/pcie-designware-host.c | 1 +
 drivers/pci/controller/pci-aardvark.c             | 1 +
 drivers/pci/controller/pci-thunder-pem.c          | 1 +
 drivers/pci/pci.c                                 | 1 +
 drivers/pci/probe.c                               | 1 +
 include/linux/of_pci.h                            | 5 ++---
 9 files changed, 11 insertions(+), 3 deletions(-)

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
diff --git a/drivers/irqchip/irq-gic-v2m.c b/drivers/irqchip/irq-gic-v2m.c
index e88e75c22b6a..fbec07d634ad 100644
--- a/drivers/irqchip/irq-gic-v2m.c
+++ b/drivers/irqchip/irq-gic-v2m.c
@@ -17,6 +17,7 @@
 #include <linux/irq.h>
 #include <linux/irqdomain.h>
 #include <linux/kernel.h>
+#include <linux/pci.h>
 #include <linux/msi.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
diff --git a/drivers/irqchip/irq-gic-v3-its-pci-msi.c b/drivers/irqchip/irq-gic-v3-its-pci-msi.c
index 229d586c3d7a..87711e0f8014 100644
--- a/drivers/irqchip/irq-gic-v3-its-pci-msi.c
+++ b/drivers/irqchip/irq-gic-v3-its-pci-msi.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/acpi_iort.h>
+#include <linux/pci.h>
 #include <linux/msi.h>
 #include <linux/of.h>
 #include <linux/of_irq.h>
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
 
diff --git a/drivers/pci/controller/pci-thunder-pem.c b/drivers/pci/controller/pci-thunder-pem.c
index f127ce8bd4ef..9491e266b1ea 100644
--- a/drivers/pci/controller/pci-thunder-pem.c
+++ b/drivers/pci/controller/pci-thunder-pem.c
@@ -6,6 +6,7 @@
 #include <linux/bitfield.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/pci.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 #include <linux/pci-acpi.h>
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
index 21a89c4880fa..29658c0ee71f 100644
--- a/include/linux/of_pci.h
+++ b/include/linux/of_pci.h
@@ -2,11 +2,10 @@
 #ifndef __OF_PCI_H
 #define __OF_PCI_H
 
-#include <linux/pci.h>
-#include <linux/msi.h>
+#include <linux/types.h>
+#include <linux/errno.h>
 
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
