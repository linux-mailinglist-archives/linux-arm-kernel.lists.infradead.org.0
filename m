Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2142F1818AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oON2a+2L5hU4e/RNoXXXs/KrI8fbw2hwnEiMxjcRZF4=; b=eWeBTNZ8R87C2a
	rY4kFTDGroo5meZSYUcrDE/VdKQ+l2efJkc5ExxqoqXlbDe/7r/02wtB8CqkoN2oSBdCDGDatslhC
	QPyv6beD1sg7xMGoqJECgkX1Ao8aCGfzkZNAy/HPYaTsc/2xJPmEtOf7b3FoCO+wI64P6KQ7QDXd1
	1MvZkqx5ZJLEqbyvNswvb+Pjdz3TJH/DXUA9qIPl/aSxfBiNBm6UiouEk0CqRbSSLgSHnvx83NvkK
	8ChqqSoiepm3gsSCSN6ZsrEj7oEgZApwfOAlqUAekiSjIb/I+nfhfiMCKFEP5y2uDpZbuT4p7uVgh
	qI+74X++OYCkGfXYcBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0lb-00083h-IR; Wed, 11 Mar 2020 12:47:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lE-00082R-KQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:46:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so2460805wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9aHr7/EWopa+d5MVT7UWPgRiU9Syfo6iTheTFisLSBg=;
 b=FXsN33JoJealTXC3dRRue6HkzhWSIRjvlNRUP49llb/Tp1/P6LLbWK2WENByBzb932
 Vi1Fg8Ri+qgxJrwy5zjp/NXrbWtEhuMkRTQj1X4R9I44S53W3vZuVYp8IrCbYVblbQ3t
 O28JXtBnjgkZqXtJcIVINkr/xuwcmJ4AcO+2ctUVBEJKMuSZEV7wYUoSaD3Zco3ZO7q/
 ujjg+wfK4m1DiebSFJn9cbZqflg/q7DAWj/98GahfRpw7xqn470ERyL3IPCqRQQaQIB0
 0zSlrkdrriSBVsPOQ4i+h5gPOwW+U83Jz9SjjpEDyMiKdpx/YTRM4O6K6sHqODrD7YCC
 shxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9aHr7/EWopa+d5MVT7UWPgRiU9Syfo6iTheTFisLSBg=;
 b=QwEgMdlNp+PXR+uuFI0wXHLcKlT2s80dUjdhi77a5fhnCx5WYTaUFZBFCcqR6/CUoa
 0zlWyA76IZChlnnFHQffqghrJAIdoB6M2mWulWiwgzME/eDHxGTnvIevyCrNDcNR0T+2
 rxfhNecaQGOSM+lCxKY4UphziJ6IrwFPucAduMbUl1RMSGwbjetYOPf9JL/wMovd84Pw
 3yzjrwSYslAXiFsp6x9Aqbvu01CNwhCU4E2VT/AxyqTTDPqdQ+jC31qYoVGIbGWbXbqZ
 f4RV2eF4tJrS45HzFF1zB33Ck6OeE3Itj5okEsxh511TpZtDC2Hkd2mIgskxfbvro+qH
 tV0w==
X-Gm-Message-State: ANhLgQ1htf0ZlvpRxXuvzZvriTnVAKIbMfHGN5ZSOqDeYmzIixUtLU2l
 ZGrEPVBxQKTUTBo/BSjOfKrt9g==
X-Google-Smtp-Source: ADFU+vvLjmlfZFee1kgQb0ezvJQIIb3y7DZjOUpYxqDYvVtYVhI9wjUkV+NDFpgxKBOntX41muaOsw==
X-Received: by 2002:adf:bb81:: with SMTP id q1mr4344011wrg.110.1583930814354; 
 Wed, 11 Mar 2020 05:46:54 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:46:53 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 00/11] PCI/ATS: Device-tree support and other improvements
Date: Wed, 11 Mar 2020 13:44:55 +0100
Message-Id: <20200311124506.208376-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054656_690504_930097B4 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Enable ATS on device-tree based systems, and factor the common ATS
enablement checks into pci_enable_ats().

Since v1 [1] I added acks and review tags, simplified patch 3 and tried
to clarify the comment in patch 2.

I'd like acks or comments on the following patches:
* PCI on patches 2, 3 and 5
* Arm SMMUv3 on patch 7
* Intel VT-d on patch 8
* arm64 DT on patch 10 

Thanks,
Jean

[1] https://lore.kernel.org/linux-iommu/20200213165049.508908-1-jean-philippe@linaro.org/

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
 drivers/pci/controller/pci-host-common.c      | 11 ++++++
 drivers/pci/probe.c                           |  8 ++++
 include/linux/acpi_iort.h                     |  8 ++++
 include/linux/iommu.h                         |  4 --
 include/linux/pci-ats.h                       |  3 ++
 include/linux/pci.h                           |  1 +
 15 files changed, 109 insertions(+), 47 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
