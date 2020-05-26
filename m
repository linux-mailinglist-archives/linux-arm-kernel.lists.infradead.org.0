Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7221E214A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fq8DhVxSVImei5iT66bFbQUSzwsBusIwafat1ClRRHw=; b=XYvR+ZE0wWlwUBDk+A5uq/2eRS
	883cOalDlmBY/ED0GIN8e5Zt8uudJd5+QvBnQ8VQbS6D8n5lAibAOret+d6ygFxzl9Dbz+v5P0kbi
	KSxxsRcjWb1sNuTcXYVz4/QpDLTqtHzAS4kAKhSv0ZmiL1arxjKVMgMY2WTgH69P48okpIzmE84/Q
	R1O3ai24Rl/0/Vx8F313WcdMBxKNq9/W5x0GuLruYP+qeQgAc5RwBId/u3WKicLRhSeyabP3lwIBU
	xWeAmfxZJGmzu3UrWM/5/YPGeJn6+UKVe6GlY0MFOfSPRNRp+ryorEbBS1UsLUjqxuxjPYLHN78O5
	36KvhI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdY6L-00040O-QC; Tue, 26 May 2020 11:50:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdY5r-0001W9-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:50:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id y18so10067795pfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+jiFCKG1lfnYYtqCMQUL0FADyscKoxL3O8Mn7sFVi4U=;
 b=xWP3LMiyXg9WkEiCrpIrQqSQF1pBVUsQ/FYoKllTcxGYHWrOAX4/TKjQGf13lZw580
 kC7tZD5+ouByzCMpq3BjvKl4uV+20ecDjbKIzC7XkeNOtei2O0mO9XfES0omT/1eNKSv
 v7GffipQ1UW17lE2ZPi167S7hV1unlCmvYmV/tqqQoK+cRhJBUuOUVEvwSddusA+1uX1
 5n7mgziqybjr23CBfp1mgDVcBGmdWAPJ/dfkzBfPtpzdv5kR7VVMrqyYLvZD5BCm6FLf
 k+061vIoLAo4EHP+slmxjiehDXFzdkE0279YHy3AU9/dLCDnJ3gjhArclFyuDLHSlO5u
 6iqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+jiFCKG1lfnYYtqCMQUL0FADyscKoxL3O8Mn7sFVi4U=;
 b=stnT2+z8uOHnHPgB6jY1q2edLSCmnjSQQtwHPN2mgNgL0HLWsvLGLamSTEQvf5gg/x
 XMdUN0fgwEy9Q+ZjbjvTTfWH1gsgGpTJmcYem+NM92OH8ut5XaemET4SeEpvXiHb7EEi
 6kQzNDgek70pZ8BP9P97GBShMRVd21mlguA7glqrM3HM75FJ/H0YSCQCVwcajhLU05um
 e72e54xUzc30tAZndHA8tunxdyby/EXHcDByupqO+wCYKuipD/s5BdHP0bFEthBH9iLv
 uB54jHZ6LH+zcHIaR+f/Jly+TcYLq18dHOVTeSAdRQ6TQBDy1u4jucIRCF2+3sILZ/2X
 Topw==
X-Gm-Message-State: AOAM530qHLCwgtwm1nNp36ShffVTIWXEz9GeFnBfhU5NrwxbbGa4Fu2Z
 LaOC1qJiX/QYR9sEj5f5Jf+8og==
X-Google-Smtp-Source: ABdhPJz/38ANaCZARqziU7c0uO3u8fyzoWL11rla4SWMrBnFZjbOk7LU2LfzTWgFz9APwdcIVXrm+w==
X-Received: by 2002:a63:4a1d:: with SMTP id x29mr671835pga.53.1590493801979;
 Tue, 26 May 2020 04:50:01 -0700 (PDT)
Received: from localhost.localdomain ([45.135.186.9])
 by smtp.gmail.com with ESMTPSA id c12sm15586567pjm.46.2020.05.26.04.49.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 May 2020 04:50:01 -0700 (PDT)
From: Zhangfei Gao <zhangfei.gao@linaro.org>
To: Joerg Roedel <joro@8bytes.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 jean-philippe <jean-philippe@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, kenneth-lee-2012@foxmail.com,
 Wangzhou <wangzhou1@hisilicon.com>
Subject: [PATCH 1/2] PCI: Introduce PCI_FIXUP_IOMMU
Date: Tue, 26 May 2020 19:49:08 +0800
Message-Id: <1590493749-13823-2-git-send-email-zhangfei.gao@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_045003_788760_C5AA6CB6 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-crypto@vger.kernel.org, Zhangfei Gao <zhangfei.gao@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platform devices appear as PCI but are actually on the AMBA bus,
and they need fixup in drivers/pci/quirks.c handling iommu_fwnode.
Here introducing PCI_FIXUP_IOMMU, which is called after iommu_fwnode
is allocated, instead of reusing PCI_FIXUP_FINAL since it will slow
down iommu probing as all devices in fixup final list will be
reprocessed.

Suggested-by: Joerg Roedel <joro@8bytes.org>
Signed-off-by: Zhangfei Gao <zhangfei.gao@linaro.org>
---
 drivers/pci/quirks.c              | 7 +++++++
 include/asm-generic/vmlinux.lds.h | 3 +++
 include/linux/pci.h               | 8 ++++++++
 3 files changed, 18 insertions(+)

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index ca9ed57..b037034 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -83,6 +83,8 @@ extern struct pci_fixup __start_pci_fixups_header[];
 extern struct pci_fixup __end_pci_fixups_header[];
 extern struct pci_fixup __start_pci_fixups_final[];
 extern struct pci_fixup __end_pci_fixups_final[];
+extern struct pci_fixup __start_pci_fixups_iommu[];
+extern struct pci_fixup __end_pci_fixups_iommu[];
 extern struct pci_fixup __start_pci_fixups_enable[];
 extern struct pci_fixup __end_pci_fixups_enable[];
 extern struct pci_fixup __start_pci_fixups_resume[];
@@ -118,6 +120,11 @@ void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev)
 		end = __end_pci_fixups_final;
 		break;
 
+	case pci_fixup_iommu:
+		start = __start_pci_fixups_iommu;
+		end = __end_pci_fixups_iommu;
+		break;
+
 	case pci_fixup_enable:
 		start = __start_pci_fixups_enable;
 		end = __end_pci_fixups_enable;
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 71e387a..3da32d8 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -411,6 +411,9 @@
 		__start_pci_fixups_final = .;				\
 		KEEP(*(.pci_fixup_final))				\
 		__end_pci_fixups_final = .;				\
+		__start_pci_fixups_iommu = .;				\
+		KEEP(*(.pci_fixup_iommu))				\
+		__end_pci_fixups_iommu = .;				\
 		__start_pci_fixups_enable = .;				\
 		KEEP(*(.pci_fixup_enable))				\
 		__end_pci_fixups_enable = .;				\
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 83ce1cd..0d5fbf8 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1892,6 +1892,7 @@ enum pci_fixup_pass {
 	pci_fixup_early,	/* Before probing BARs */
 	pci_fixup_header,	/* After reading configuration header */
 	pci_fixup_final,	/* Final phase of device fixups */
+	pci_fixup_iommu,	/* After iommu_fwspec_init */
 	pci_fixup_enable,	/* pci_enable_device() time */
 	pci_fixup_resume,	/* pci_device_resume() */
 	pci_fixup_suspend,	/* pci_device_suspend() */
@@ -1934,6 +1935,10 @@ enum pci_fixup_pass {
 					 class_shift, hook)		\
 	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,			\
 		hook, vendor, device, class, class_shift, hook)
+#define DECLARE_PCI_FIXUP_CLASS_IOMMU(vendor, device, class,		\
+					 class_shift, hook)		\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_iommu,			\
+		hook, vendor, device, class, class_shift, hook)
 #define DECLARE_PCI_FIXUP_CLASS_ENABLE(vendor, device, class,		\
 					 class_shift, hook)		\
 	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_enable,			\
@@ -1964,6 +1969,9 @@ enum pci_fixup_pass {
 #define DECLARE_PCI_FIXUP_FINAL(vendor, device, hook)			\
 	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,			\
 		hook, vendor, device, PCI_ANY_ID, 0, hook)
+#define DECLARE_PCI_FIXUP_IOMMU(vendor, device, hook)			\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_iommu,			\
+		hook, vendor, device, PCI_ANY_ID, 0, hook)
 #define DECLARE_PCI_FIXUP_ENABLE(vendor, device, hook)			\
 	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_enable,			\
 		hook, vendor, device, PCI_ANY_ID, 0, hook)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
