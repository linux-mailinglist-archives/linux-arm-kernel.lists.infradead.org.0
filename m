Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2980F15C8E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQUJKcsHUYfOxbu7VzRP1LXxSURWLKe5aNP9VJ/QkdU=; b=VY0bsVIyiWmSQE
	choTHM/ARtivPIYPle1PE8RxVuTrq5QNVU4aYQCrNHUCDUxH/G+APpZoxqsRoG6No+8rZqF+i3pqC
	d+pTfakOLqQLMLC4e6LikUtp4sCoGXFrZo/czWAvKHMF17Pcz8KhAfdnlS/ALZAThy+d7hZNpypXn
	pkcvfhZD7Dc7erS9jYBhRNhuBHk8Pj5Qb0tDTorrqsVj3OvrW/L4L5izasisJGjT8mtkuB+2M2Aou
	+K//4jiqfO5vDcfYGpj/HlkHUL20FWz5WKyzP2FmMFu6TAXG5laLQqtPrMf5Ptu/TftfWJB4FQcQp
	ZT8+RYV8MVInu2BEUTEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HkB-000749-La; Thu, 13 Feb 2020 16:53:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hil-0005rv-4m
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so7543762wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KQbvHTAFoAU5RHLdLgupX/fENQ0mj2n5jeDSVw5UmQU=;
 b=vb+Tx4YPjuXKC+c6jky2UOwKA2GKWNy9qTjZE2ccpnmXF3+xctohVChy1RbIW9obB9
 T5Dve49ZEZiff4UfFfbZ1i2aUZzg4V2o2NTC/rqi2aeTWg6t7vgUSnfI6pPcZ63ljaYq
 1jksjGTZuLzEXRfpEum+ObMhOmrPcw67ATU4rmbyzt5qncORgsTJtboZDSrixLiU39r6
 d4FHVn+XQpd4hHLF6Mvwomwy2xBIomvAvWxjfaz/xaLo4n269iAJR7AQZt6hs6TqCjTJ
 7XxeEJhZ/HsAQQ6e2wKmcrt0h5oWxjRhU48DgNeKFQNSppeWzcoCSrf/Y/j58wqyrVxo
 Cviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KQbvHTAFoAU5RHLdLgupX/fENQ0mj2n5jeDSVw5UmQU=;
 b=qzJCchNVPLLnwngCDMS2d4z3w7cgLbA2H0C/qeoCHb9eLALbpm+w27d/uUxAKjW1VN
 rlPxtwDENE/nqLN543Qc5kSBaWgHUFm4yjWvieV6It79szGU+ApIm/5ANdOV40utOQmA
 p1kDbVr1xvLRxxdG7j/XoQ7XSpf90jWhQsvi2uMXla3QFnKBZncutasU/k+UouEh/S8P
 eQL1l3akpKEsV8p8PXXySN01r5rdDT9lBTqM0zns0SCA+e9Mz1jfrRbh3E/lyQTd5ds5
 P9RuBFtQPOyXRyA6lLsQl122+NxS5XvZziB1wTRarculG7jWInyhxHoEBJhK528COn8q
 Xg6w==
X-Gm-Message-State: APjAAAUEbeRYa06UmfKM9OF7vM1fiH73EQDkGpBn5fv6Ul6mh9IA9kAg
 2CagzW+KFtvynCcrgU6ddSmqYw==
X-Google-Smtp-Source: APXvYqw/HW+Dcw12NoCQYY4ILhwP9Zxgh/zKxvP8cCtRxWLv/EO4gTZlVf5WfvykVkAwV5DQqK1Qkw==
X-Received: by 2002:a1c:ddc3:: with SMTP id u186mr6747949wmg.103.1581612729610; 
 Thu, 13 Feb 2020 08:52:09 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:09 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 05/11] PCI/ATS: Gather checks into pci_ats_supported()
Date: Thu, 13 Feb 2020 17:50:43 +0100
Message-Id: <20200213165049.508908-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085211_238335_1B412FE6 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
 guohanjun@huawei.com, amurray@thegoodpenguin.co.uk, robin.murphy@arm.com,
 dwmw2@infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU drivers need to perform several tests when checking if a device
supports ATS.  Move them all into a new function that returns true when
a device and its host bridge support ATS.

Since pci_enable_ats() now calls pci_ats_supported(), the following
new checks are now common:
* whether a device is trusted.  Devices plugged into external-facing
  ports such as thunderbolt are untrusted.
* whether the host bridge supports ATS, which defaults to true unless
  the firmware description states that ATS isn't supported by the host
  bridge.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c       | 30 +++++++++++++++++++++++++++++-
 include/linux/pci-ats.h |  3 +++
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index 390e92f2d8d1..bbfd0d42b8b9 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -30,6 +30,34 @@ void pci_ats_init(struct pci_dev *dev)
 	dev->ats_cap = pos;
 }
 
+/**
+ * pci_ats_supported - check if the device can use ATS
+ * @dev: the PCI device
+ *
+ * Returns true if the device supports ATS and is allowed to use it, false
+ * otherwise.
+ */
+bool pci_ats_supported(struct pci_dev *dev)
+{
+	struct pci_host_bridge *bridge;
+
+	if (!dev->ats_cap)
+		return false;
+
+	if (dev->untrusted)
+		return false;
+
+	bridge = pci_find_host_bridge(dev->bus);
+	if (!bridge)
+		return false;
+
+	if (!bridge->ats_supported)
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(pci_ats_supported);
+
 /**
  * pci_enable_ats - enable the ATS capability
  * @dev: the PCI device
@@ -42,7 +70,7 @@ int pci_enable_ats(struct pci_dev *dev, int ps)
 	u16 ctrl;
 	struct pci_dev *pdev;
 
-	if (!dev->ats_cap)
+	if (!pci_ats_supported(dev))
 		return -EINVAL;
 
 	if (WARN_ON(dev->ats_enabled))
diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index d08f0869f121..f75c307f346d 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -6,11 +6,14 @@
 
 #ifdef CONFIG_PCI_ATS
 /* Address Translation Service */
+bool pci_ats_supported(struct pci_dev *dev);
 int pci_enable_ats(struct pci_dev *dev, int ps);
 void pci_disable_ats(struct pci_dev *dev);
 int pci_ats_queue_depth(struct pci_dev *dev);
 int pci_ats_page_aligned(struct pci_dev *dev);
 #else /* CONFIG_PCI_ATS */
+static inline bool pci_ats_supported(struct pci_dev *d)
+{ return false; }
 static inline int pci_enable_ats(struct pci_dev *d, int ps)
 { return -ENODEV; }
 static inline void pci_disable_ats(struct pci_dev *d) { }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
