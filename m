Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B8115C8D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NF4m8wJzH0erultKAE+g6rWWSvyA4Q8aNXoRDiDF7Dw=; b=tFUpoLCH4YvkjR
	3In9QH5jKQ9Xjf51umZ1gpxIhCGn223LZN2GpnTa467fi6Vy6dRmEuwaSeVh77JSDsqlIpnBstBKJ
	jboyAdKQO2qn9IdSf69VQ58Va8QhxoL4N3sKt859wYX4YN/CC1JOviqyOKfkVkWhfVfoW8vTvM7KL
	DrF3eXPKTZ2U3d0TZONbetsR16Q1JAqxu2+qPHFI15v97SWtTnvPPC5ZC3D6T0LDbZtHg/sIv2aa1
	fVK0opK+LcA2TeUFdoQq0HihIrZ2TiUnH3RK1BDGQv/mxZmCHa7Dny8ZQ6xQY0+MNXCamzM09kBMC
	8NTTPsfLMO+6dXbBrVyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hix-0005qF-VN; Thu, 13 Feb 2020 16:52:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hif-0005pF-Iu
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so7538815wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CfKpna/gHZrKywpyhlfYfrWp7SfpssT14AH9fDnyBhc=;
 b=sq5RPbQMnHdJFKyr0y4rdobfNVfPyioZd4bFmy17jTSnzdOsxyVQCBIzt+dwmj/1hS
 0FEIxdf3kxtor+WLr7kL9Y0vlCfHOur0aEBvo57AoXZfAVKNJX7nVRcpo3gPgBs0J121
 JdAYwRCxxQKun+l1koHxbdXN/njOydBSX0j+Mi2OvJHKT8u6PsEqveyKsSTTNLqATYin
 v3DQfP7nvrGGDS8aYK53MnSe/mxwZRXMScAGeoYNzL/tpe2Xv0I8BGXkzvgDYJ0/HQDv
 JQh2RDF9ivk+TTFAdaGiOzE2CWJp7ONbWUXJKbxdagRIWbTJQpBvhyu2B2bQXibL99eT
 R2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CfKpna/gHZrKywpyhlfYfrWp7SfpssT14AH9fDnyBhc=;
 b=pz0muq2LCtCgBtIfdN5g4EhbzETf2IYf36RELtYcSidgPOnTaC/7o+/i7pnk+Ig6WO
 bERYj/uufJHL7wwhoeEn++TlOG+uj3crU0grfWgvj9YxYeLru3v1n1OySy/rEwZtW/KM
 WJNzJ/MDs0yKnkgJ2Y2/K5bGlEsLnzyxlTjKbFvkDfGCWZPIElP7SUx6aaNX5a4sr7Ml
 vgk0HpSznI9HrRI2WB7/bZs4fmFfBQ3On44eoVAGrFzXM0bYS8AKSJc21rMBQhTHZ9NI
 CWTlLpG2tQ8qKjCbUcRC/fd+VONkM721VMTiIN40xfp/hTpqY1LyPXbFTtUYNNEK6HbJ
 nZ0A==
X-Gm-Message-State: APjAAAVgUG9dIf6zTeyXd9FpXQMWubvHOlB+hd+FVQYjoxJH0TJ1XOs+
 K7cuY5j50T7pxPxojnY+Q6q4uQ==
X-Google-Smtp-Source: APXvYqy3NlA5gvY/i2LUQjbrj98NidF1+ZAccFnC7XtPBVcGfForOTuhwxmW4gsDRqMB842f8yYE+Q==
X-Received: by 2002:a5d:54c1:: with SMTP id x1mr21837119wrv.240.1581612723942; 
 Thu, 13 Feb 2020 08:52:03 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:03 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 00/10] PCI/ATS: Device-tree support and other improvements
Date: Thu, 13 Feb 2020 17:50:38 +0100
Message-Id: <20200213165049.508908-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085205_684988_5F1B0C24 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Enable ATS on device-tree based systems, and factor the common ATS
enablement checks into pci_enable_ats().

ATS support in PCIe endpoints is discovered through the ATS capability,
but there is no common method for discovering whether the host bridge
supports ATS. Each vendor provides their own ACPI method:
* DMAR (Intel) reports ATS support per domain or per root port.
* IVRS (AMD) reports negative ATS support for a range of devices.
* IORT (ARM) reports ATS support for a root complex.

In my opinion it's important that we only enable ATS if the host bridge
supports it, but I don't think a finer granularity is useful. If the
host bridge ignores the Address Translation field of TLP headers, it
could in theory treat a Translation Request as a Memory Read Request,
and a Translated Request as a normal memory access, which could result
in silent memory corruption.

Patches 1-3 add a device-tree property that declares ATS support in host
controllers. We only add it to the generic host, but the property can
easily be reused by other PCI hosts. Alternatively, the host drivers can
directly set the new ats_supported property of the host bridge
introduced in patch 1.

Patch 4 uses the new ats_supported host bridge property for IORT. Patch
9 removes the old method that set a flag in each endpoint's fwspec.

Patches 5-8 put all checks required for enabling ATS in common, along
with the new host bridge check.

Jean-Philippe Brucker (11):
  dt-bindings: PCI: generic: Add ats-supported property
  PCI: Add ats_supported host bridge flag
  PCI: OF: Check whether the host bridge supports ATS
  ACPI/IORT: Check ATS capability in root complex node
  PCI/ATS: Gather checks into pci_ats_supported()
  iommu/amd: Use pci_ats_supported()
  iommu/arm-smmu-v3: Use pci_ats_supported()
  iommu/vt-d: Use pci_ats_supported()
  ACPI/IORT: Drop ATS fwspec flag
  arm64: dts: fast models: Enable PCIe ATS for Base RevC FVP
  Documentation: Generalize the "pci=noats" boot parameter

 .../admin-guide/kernel-parameters.txt         |  4 +-
 .../bindings/pci/host-generic-pci.yaml        |  6 +++
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     |  1 +
 drivers/acpi/arm64/iort.c                     | 38 +++++++++++++------
 drivers/acpi/pci_root.c                       |  3 ++
 drivers/iommu/amd_iommu.c                     | 12 ++----
 drivers/iommu/arm-smmu-v3.c                   | 18 ++-------
 drivers/iommu/intel-iommu.c                   |  9 ++---
 drivers/pci/ats.c                             | 30 ++++++++++++++-
 drivers/pci/controller/pci-host-common.c      |  1 +
 drivers/pci/of.c                              |  9 +++++
 drivers/pci/probe.c                           |  7 ++++
 include/linux/acpi_iort.h                     |  8 ++++
 include/linux/iommu.h                         |  4 --
 include/linux/of_pci.h                        |  3 ++
 include/linux/pci-ats.h                       |  3 ++
 include/linux/pci.h                           |  1 +
 17 files changed, 110 insertions(+), 47 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
