Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632DB1D4B67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zhrvSDit51095pVmjSWkhjyUnbyosNnjMw4XwioD8yw=; b=HZiRNQ967BSioM
	wpVIjJJgj3S123+KfX1gSOLHke0yI95m0P3eI6HcBsESVvgHyhXzFIaqFH47lD27Ce4L6Y1e8NoWa
	5sLUrEHECQDgePE55iuBvt3cWhMuQ2VWznhLL2o5mWtMfwf9c84xEl6RthdRbPIzwa6i2wnU3CHEk
	lmmsgtuQQNdJvwAdIUvDbLUZP6oLfbx6/2O2J7ssScDl0cFT8lynmBzEAeZCsVN1T4QRSt49Anw8L
	4TOLXKRdwf2NZTf52YKtyQXuerbIyBRKycV7sfIgOJEkBiDeruqHMv3T0Wy8U34a8wPBxJ6BW2IH9
	TtuWAmCMfY2pVgWtQCsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXtR-0008Q8-T4; Fri, 15 May 2020 10:48:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXtE-0008ON-Op
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:48:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id w64so2127640wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JpC2phLyyYKF8S2b2HVZs4m4/FDmGsrLmfDUKIq2+XU=;
 b=UTrbu7phaIKvcCKf/Ve9t6teHJmN3bXqWH26QoPA9XW9/eFXVzFMnJd7yXk/ufGYO6
 LG4QvKt9zY+sCvKwdmFzBcalHGa3Rbh1I1KJPJBZ2uxo7jWJ45R6JaMa6XWdcV/GOPKP
 tUYFz3NcWw50UGDz+eyN8vwJ441gSD7aTICtNuV9th4D1crstiW7bfxp9T2fVw7fQuVW
 zm6HtX5EFTwISIAY11pWVRaYj/uaKucP/T7x4kzyFwdv+lmzX80pD+xcYCNelol9g+bb
 h3RQo4K/F8AKExBgzpfQ36PTd1yfEVOKckHXo+e1DxxLcKzCzGN0U7DFyoS7T3y4oQTB
 GuwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JpC2phLyyYKF8S2b2HVZs4m4/FDmGsrLmfDUKIq2+XU=;
 b=oj0G6Tb/cf97b/xKhKxDBTO72j1D/fCF1mYeRU1kZP8K+1hct3iDO6CvDkAgKte54l
 GaF+JDg6OCw/l1QgIn2xZ5l7ni8V4BbzPlVGQtC96Q1d1gZJclImAoQgEYTCs/2LYYjR
 CZHU/TdObRfUVDssbXcKMFFz7dcOch5wPXr6J57sgLkDfs/jaQqRaZNRV23CoJWZLM3U
 Z9DToFOkQQIZJoiLEBbyu3Zi7KMKhMebeMlb+eMI00yj3pnKKj4UFXjp82B2nAUn9iKE
 zlDP3/zFh1ril7mriEKX9xHZBN92pc/3mhLjVWEn7teJau9IuWrl0FIIQF1Xs/b+LddE
 +WRA==
X-Gm-Message-State: AOAM530L25PYRJZ71IcFa1OgLHs8sYre4IAtxBOI+kIwyERWRRNMI3ii
 aePq14ItrpRk/XaD7svF4ifUrA==
X-Google-Smtp-Source: ABdhPJzpE90JsHWFWmiq3DLTcslPe1cuELNW3ZN0iUxPcNk8zGAYa3lMkhSlVxo89SFkbP4lE1f/Ig==
X-Received: by 2002:a1c:6706:: with SMTP id b6mr3116259wmc.54.1589539706443;
 Fri, 15 May 2020 03:48:26 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h27sm3510392wrc.46.2020.05.15.03.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:48:25 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH 0/4] PCI, iommu: Factor 'untrusted' check for ATS enablement
Date: Fri, 15 May 2020 12:43:58 +0200
Message-Id: <20200515104359.1178606-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_034828_803221_5BA2E3BC 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, ashok.raj@intel.com,
 will@kernel.org, alex.williamson@redhat.com, robin.murphy@arm.com,
 dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I sent these in March as part of ATS enablement for device-tree [1], but
haven't found the time to address the largest comment on that series
about consolidating the root bridge ATS support between the different
ACPI tables.

I'm resending only the bits that consolidate the 'untrusted' check for
ATS, since there have been more discussions about this [2]. Patch 1
moves the 'untrusted' check to drivers/pci/ats.c and patches 2-4 modify
the ATS-capable IOMMU drivers.

The only functional change should be to the AMD IOMMU driver. With this
change all IOMMU drivers block 'Translated' PCIe transactions and
Translation Requests from untrusted devices.

[1] https://lore.kernel.org/linux-iommu/20200311124506.208376-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-pci/20200513151929.GA38418@bjorn-Precision-5520/

Jean-Philippe Brucker (4):
  PCI/ATS: Only enable ATS for trusted devices
  iommu/amd: Use pci_ats_supported()
  iommu/arm-smmu-v3: Use pci_ats_supported()
  iommu/vt-d: Use pci_ats_supported()

 include/linux/pci-ats.h     |  3 +++
 drivers/iommu/amd_iommu.c   | 12 ++++--------
 drivers/iommu/arm-smmu-v3.c | 20 +++++---------------
 drivers/iommu/intel-iommu.c |  9 +++------
 drivers/pci/ats.c           | 18 +++++++++++++++++-
 5 files changed, 32 insertions(+), 30 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
