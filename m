Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19C61818B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYCIfPEEXFOkjyYTEnrAKRQzEIMQ56iF0MTUarpHv3Y=; b=cNdyEsEGofN8RE
	BCll1DA9aTSRzVNVNYQFZVdCVb2CkxZAi/XfpEFn4FivMbWknJfPQWkqdE4U5LRZX+bOWqVD0b8Lf
	sQkBiWyufDb6u17wiGcgrXsMCTdyGLeN8aQUXMWudsF26E8I5oP3+v7NKwHFhzGhspMT8bVeenWOM
	pH75YGYzkrXjcSKQoD/WQ5VBxgLniPknMgD6+jRSH5QM5PMyXf6dlVi8z0sXH2DNZglnD9tGM9Vha
	CtRv6xdTr9NMQK0mJYUxI82P0nElEBwqRlejsdLXKKF+ucH6vzVjkIfbAo897f+tv9xLyYOjvJpgU
	kPi9pgii8F5phgdQSJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0md-0000jo-Sh; Wed, 11 Mar 2020 12:48:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lI-00084b-VK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id n2so1968130wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U47FGde+FbNcdQs+RPhyYEqijb3kd9q1HrNDc4ml5OM=;
 b=PaFI7UScmuJq/vQMffhQojPOeVfgLOAOjM4tY3da2DCq6MkkfzqrKf7V1Pxw17ncw8
 I7lQsl4LNyrad1s2jqB7jxtjderJz1RfVJLzyzLHT+oAi/Nou6U8jheMoW1RCz5MFSmt
 8TqQOYGDNPNoEyjr7Wiqwd81sNgrr8blWpNAwkKUf1YvpBlEq53rad+vRE26mSuLionw
 wAz0sy3xHgGF1Xt7nkvW0dLEL7P3CqIctcFCnPvoWBwkwSJ3aEqgNcQBJaSFzZUK4ZuH
 LE/gRrJ60DA+fHf+OG44ZIz5IHRMbefyq84xQfidyBcnHlOEgny1G6Qa9QaCs7OF3Ab7
 7uwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U47FGde+FbNcdQs+RPhyYEqijb3kd9q1HrNDc4ml5OM=;
 b=q1hkxmxyPg99EGz3fpihWRvLGcv9+J/e7/9yq9A8M7gffiIxI8LOUpAFocoHrOzLIl
 Nc5W0Jiqt8imrYwnp8oMcSDbSNFwkt2u9IudcCKeqgnlbcorsGFpHaD3zDmyc2Sn8AEx
 0a40gbum0LsccpRZrY1lxztG/GzBldEY5xOyxIQs57VqT74QSu6ZNPiWfoZ5Im7r579L
 1MZYzOfpw5fHoQ7eFuCUfMHSXRs4SM+pRK+DFAR5ohGncwTFCN4cRilktFQEWQspdnh5
 XGGdjaNPU2osQREcIUCFDCoHQwpR1wVVaOSfYSXpMkkkD8JVJgC/cS8LFMjh63TWl6As
 /PWw==
X-Gm-Message-State: ANhLgQ35aMDFMXiwQPUFTHIX62pW54zZBbHWEY9EcW0H/NZQpQjMxoPM
 VqtqKeBQCdLI55LDClhSE/sR4A==
X-Google-Smtp-Source: ADFU+vssp6pgSA4SHhUAKAeskjqrgFN5K6L5kBvQztm1aXqSMSSOxW9M674hcGUdXj2nfa3aXBAr9Q==
X-Received: by 2002:a1c:5fc5:: with SMTP id t188mr1007198wmb.110.1583930819703; 
 Wed, 11 Mar 2020 05:46:59 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:46:59 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 04/11] ACPI/IORT: Check ATS capability in root complex node
Date: Wed, 11 Mar 2020 13:44:59 +0100
Message-Id: <20200311124506.208376-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054701_067975_7ECEBE90 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When initializing a PCI root bridge, copy its "ATS supported" attribute
into the root bridge.

Acked-by: Hanjun Guo <guohanjun@huawei.com>
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
