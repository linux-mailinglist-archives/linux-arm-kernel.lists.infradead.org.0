Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1E415C8E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2FYCOp6dcltv4J2wFlQ1vLi24tRmWml09Omkq3D8LY=; b=duHbPdfjIgxR+V
	F8bOOAZkcRK8Lu+pE8WkJ8KEPPnOeX6kyhzGfyO1nHQSRlN8xytfej3Z4gQfnWdwCfeoCZJ/rz39H
	FVlwuNQZbcCXuzDO7EcURY7Cb250jPJ4H4mB9A5lLs5z0FPebqlH25lNXmf8P0wRS8Pbr4z9BGAQq
	/Z4byKKjWESVZV+wCFV/gmnhoZA2XU5+apQ0/tzfE90TP7yrl2jcaTB0l7vbEc9OE7xwCre5XFhJg
	kKbQtHyFQ18wZW595w9XwAH2Fe1y4bTojl4n3wue02foXZDBvIbxbzmJtA89Ycj4CtRjFUcTZvkC2
	kAenWEDwbz7qD6UV8m2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hjv-0006p7-1L; Thu, 13 Feb 2020 16:53:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hij-0005qn-UY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id c84so7564238wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DmgjzmmWDE6AVkoEEWIs00PdyCL0hFYlq0AAqattmTE=;
 b=r3ZywhgW/FK3G9wDEpUnfgzuV7uJt6i9jV7UqceMvsTu0/msyTonSIQfFCbQGHxoBu
 oaGcDDLvQSQuINJrKcCRy8aSBFnEjT73wkWrRVJ768mL/vdToEH1LvTQLfy/mO84mtBk
 zoFwIe2er5GMHWl3FBKU2DowYpV+cUzzfmUXZKLLqulYh6dWiOqqB6a7hID358G9YmIw
 kKIHHewhvZfNlvZH7fNDH6gbr1CUxMP7k0SSRGtGGlB+SAbRuIafRahCYINoYFLPE3+3
 5LZK2hDZXIGXPHCWGD3xh+Ke0Py1z9cm3LLUTHPG3kh1pD5w5H26oRj5FbrdRLwZr+k3
 bmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DmgjzmmWDE6AVkoEEWIs00PdyCL0hFYlq0AAqattmTE=;
 b=GKE2yKQL+qAtj94nnYi/eiogv9DknkqJXCEJ/IN3SXC0d6Wd5Bdph7smhuZ05+o1q0
 Edf24dQDa3NcPiU4m7GpNN0E5utSZpHLiKw87uV1T4prvZkPd7dkcN8VzYgAs2vnQqpC
 rEPUZhCkV+gGsfLjv067JJsxSCg9j0uVvA0MIKwVSbim+TrCpDsewadPMGHAnPBMcavl
 3hTBp328qqFfjPrRmwh3io3yF6HJD5J7786jR3ptelMVzN/RZIY4IFqOcP78GEvFoALS
 66ud9g9TLOfsTCvY9tWkohw+R+LLZN87lfg5hOcXZD9FZj44We23Q3m4C96i8Bi2iFgG
 Yogg==
X-Gm-Message-State: APjAAAWzre4Zsd649UtPA6885eBvPF0Ewy46RKKeRRl+424qcR9xcHfl
 qjaftGiDy79vkgIY6d/2V2Lovg==
X-Google-Smtp-Source: APXvYqySri3oZxBP5/n/eQlkCkEkvXZHlVKb8rcBY3ipxnyr0phNLF0F/nWVh6oe85zgCgyj4T0dEw==
X-Received: by 2002:a1c:7915:: with SMTP id l21mr6417566wme.112.1581612728454; 
 Thu, 13 Feb 2020 08:52:08 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:08 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 04/11] ACPI/IORT: Check ATS capability in root complex node
Date: Thu, 13 Feb 2020 17:50:42 +0100
Message-Id: <20200213165049.508908-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085210_015258_008D6F00 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

When initializing a PCI root bridge, copy its "ATS supported" attribute
into the root bridge.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 27 +++++++++++++++++++++++++++
 drivers/acpi/pci_root.c   |  3 +++
 include/linux/acpi_iort.h |  8 ++++++++
 3 files changed, 38 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index ed3d2d1a7ae9..d99d7f5b51e1 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1633,6 +1633,33 @@ static void __init iort_enable_acs(struct acpi_iort_node *iort_node)
 		}
 	}
 }
+
+static acpi_status iort_match_host_bridge_callback(struct acpi_iort_node *node,
+						   void *context)
+{
+	struct acpi_iort_root_complex *pci_rc;
+	struct pci_host_bridge *host_bridge = context;
+
+	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
+
+	return pci_domain_nr(host_bridge->bus) == pci_rc->pci_segment_number ?
+		AE_OK : AE_NOT_FOUND;
+}
+
+void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge)
+{
+	struct acpi_iort_node *node;
+	struct acpi_iort_root_complex *pci_rc;
+
+	node = iort_scan_node(ACPI_IORT_NODE_PCI_ROOT_COMPLEX,
+			      iort_match_host_bridge_callback, host_bridge);
+	if (!node)
+		return;
+
+	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
+	host_bridge->ats_supported = !!(pci_rc->ats_attribute &
+					ACPI_IORT_ATS_SUPPORTED);
+}
 #else
 static inline void iort_enable_acs(struct acpi_iort_node *iort_node) { }
 #endif
diff --git a/drivers/acpi/pci_root.c b/drivers/acpi/pci_root.c
index d1e666ef3fcc..eb2fb8f17c0b 100644
--- a/drivers/acpi/pci_root.c
+++ b/drivers/acpi/pci_root.c
@@ -6,6 +6,7 @@
  *  Copyright (C) 2001, 2002 Paul Diefenbaugh <paul.s.diefenbaugh@intel.com>
  */
 
+#include <linux/acpi_iort.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/init.h>
@@ -917,6 +918,8 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
 	if (!(root->osc_control_set & OSC_PCI_EXPRESS_LTR_CONTROL))
 		host_bridge->native_ltr = 0;
 
+	iort_pci_host_bridge_setup(host_bridge);
+
 	/*
 	 * Evaluate the "PCI Boot Configuration" _DSM Function.  If it
 	 * exists and returns 0, we must preserve any PCI resource
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index 8e7e2ec37f1b..7b06871cc3aa 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -10,6 +10,7 @@
 #include <linux/acpi.h>
 #include <linux/fwnode.h>
 #include <linux/irqdomain.h>
+#include <linux/pci.h>
 
 #define IORT_IRQ_MASK(irq)		(irq & 0xffffffffULL)
 #define IORT_IRQ_TRIGGER_MASK(irq)	((irq >> 32) & 0xffffffffULL)
@@ -55,4 +56,11 @@ int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head)
 { return 0; }
 #endif
 
+#if defined(CONFIG_ACPI_IORT) && defined(CONFIG_PCI)
+void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge);
+#else
+static inline
+void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge) { }
+#endif
+
 #endif /* __ACPI_IORT_H__ */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
