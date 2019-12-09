Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ECD1173BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ehYRzJiGYG3mpGwng2+ZtOpo8xxaNGm9ZtzcU/3sOXY=; b=Z8Y5uf73kvKlug
	IKMYPXVlGqruFt1L37+SDACbtruIvfllOcp18t0pcQfqVS4Xr2T/4C0Attvz8rcFb1qy9X33PIYn8
	on2TVLswGDVbFmmaCQgOul7y8go9CMAxjbcP3L5LidwjqdSBk4ev6LlD66CUiv6FSHJ3/P+uRIKn0
	8d0jxrj99n16sjmoj//Yds+nQHY1/yWYg/sllfmKWYcJaOsFhK3lP1NZet4D8qKstPpJuguZBvA2A
	cAxlD6t3SVaNs6Ldx1kHVn7FgdhqTcZUEsil/yTvVUhRIpd1DJIqztwjPKOdCvbw0R39HvtQNH1m1
	8b+e/8nQxR4dw2Y2PCLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNW3-0004c4-7Q; Mon, 09 Dec 2019 18:12:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVl-0004bC-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:11:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so17304699wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPZYuKzuHS01ypbpAypAPWL2i1nnzUw0mtei/SOU8FI=;
 b=eChG24HveCLJr1w7htcnEaSdvHwWYy3dopCe7PzKjFIohfKepun/JzeHDOVtJdhFBX
 krj9dCfZna5uDRah00TO6hMrC5CxJ839KjvhzTUWqxzJ0nzCKaHhF508qHSSy0GZtoSx
 KJKhRNuYym1oZf7HWKmhQjbPY2WwKkqcLV/aEZnMdOGhN7+MIwQiCiCZ6KKFGROEzZxL
 Htj1QWdRJqh6WeQx5GUmgHJil8TmhNhDhDAyvl7+sHEzB6M95GtfmZ/PLcNOaeZEdyGj
 IBWYXgi+wPjUJZNb7Xjum2/nBvekCA934r8JznZDGI55yX51UEARM1sRTsF7H8bRaJoC
 7XyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPZYuKzuHS01ypbpAypAPWL2i1nnzUw0mtei/SOU8FI=;
 b=BeRJRB7dXeHD2fPOlR5lTtb6eyvTcpbcW5jEUXL7QePWOiXxdahSL44XloivRLQ8hb
 u3CDs08lz2pDosvAIzPaKSGtwBwfGkKOg6f+KvU3dYA9SBToyC7G4x9AHd2Iwlg5bVMt
 dxTqhAXQDBB3CrscPGcEdkoVBo/KdILwEosMjyJNkuZ12IForx8E02PBpFe82ZUcNBUD
 S2M++HoDvf2sKYqByUKHjpp7b7HRWgz5hYeYkKKmk0JxXXH+c2TNNjXHTvapdwLR7Dnf
 IYA8ezo6FqGy0cLdAR0pXYrsOlgUIe8jgrrQRpKe3wLWupXPh3qKyi42ZAg7pOtGygIs
 ExPw==
X-Gm-Message-State: APjAAAXjq97yfpdXucYOu/gLQu8GNWpH89lnAONmuf8hHpJ1rI4zCuJm
 hDec+K5J9+gCUNyu2ow5eHJjLw==
X-Google-Smtp-Source: APXvYqzT1ymN3phudM5XMKZ/AIHs5aojcXL1B8J2G48oy5R7vLLmgXJx0GUEWH2l1syk1oV2bTStlA==
X-Received: by 2002:a5d:5704:: with SMTP id a4mr3593884wrv.198.1575915116081; 
 Mon, 09 Dec 2019 10:11:56 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:11:55 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 00/13] iommu: Add PASID support to Arm SMMUv3
Date: Mon,  9 Dec 2019 19:05:01 +0100
Message-Id: <20191209180514.272727-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101157_795554_13B484D4 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Substream ID and PASIDs to the SMMUv3 driver.
Changes since v2 [1]:

* Split preparatory work into patches 5, 6, 8 and 9.

* Added patch 1. Not strictly relevant, but since we're moving the DMA
  allocations and adding a new one, we might as well clean the flags
  first.

* Fixed a double free reported by Jonathan, and other small
  issues.

* Added patch 12. Upstream commit c6e9aefbf9db ("PCI/ATS: Remove unused
  PRI and PASID stubs") removed the unused PASID stubs. Since the SMMU
  driver can be built without PCI, the stubs are now needed.

[1] https://lore.kernel.org/linux-iommu/20191108152508.4039168-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (13):
  iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA allocation
  dt-bindings: document PASID property for IOMMU masters
  iommu/arm-smmu-v3: Support platform SSID
  ACPI/IORT: Support PASID for platform devices
  iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
  iommu/arm-smmu-v3: Add context descriptor tables allocators
  iommu/arm-smmu-v3: Add support for Substream IDs
  iommu/arm-smmu-v3: Propate ssid_bits
  iommu/arm-smmu-v3: Handle failure of arm_smmu_write_ctx_desc()
  iommu/arm-smmu-v3: Add second level of context descriptor table
  iommu/arm-smmu-v3: Improve add_device() error handling
  PCI/ATS: Add PASID stubs
  iommu/arm-smmu-v3: Add support for PCI PASID

 .../devicetree/bindings/iommu/iommu.txt       |   6 +
 drivers/acpi/arm64/iort.c                     |  18 +
 drivers/iommu/arm-smmu-v3.c                   | 462 +++++++++++++++---
 drivers/iommu/of_iommu.c                      |   6 +-
 include/linux/iommu.h                         |   2 +
 include/linux/pci-ats.h                       |   3 +
 6 files changed, 437 insertions(+), 60 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
