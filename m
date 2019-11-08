Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8679F4F93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EL+Z5hp/ZgbXtyovp4XUtKd5ptYV4jhhLd1T09G5Yi4=; b=NgP0S0Fhqr0ZwV
	JgOTAnwqP3j6s+RD8WS13DGAh0eYFF5EQc4zXgdkaOjPCxXVvSkZYzXAF/mMbNKhUMJ2Poj3GixOC
	k3H58LYv/9OAX55PQCj9XnXF15PkPilshmbxIqcKgWBZficLIEW1rEsJUA+bSf9UFIlud1gmMs1WS
	0euOiWBa2xu1Nr7RLKkO8tfguPk9JD9L5+ckwgYvhq48t/Y3VHGBvU7KExkM+gPK8DLz8bQexsv3Y
	lm31iEREePssTDYojMLYtCTyvMAERfPMsPMwU1hG3ZDnOWea/YcjyYdHQIXz6yzORM627nQcvxxvg
	e6KfB+xMPkA9cHoJ0FeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6AU-0005HE-2h; Fri, 08 Nov 2019 15:27:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT69x-0004wr-Qu
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so6645473wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hqa9TgNuEsO9HgZ/3pPJzfYS+V6XOeuR6AE+FRXhkjM=;
 b=Te5zDPiAYaK+KHbGAhgJd/VtE3mWigtsRKL7u1BcvwjwPNdPzg/7LxGWEzUdiw6dXG
 0n6LHlJwVqICWYVTAhKneYz1reVCfd5RDnICCLQUjQaVLq0fopoe2B9zFX9Ya9Is5JWr
 wlO/JqSUM9fgS4LmumnqeJQZ9HXrZv/qqI7rdOe48CKMysLzgB0XmL/tomAoqxsdKvO7
 294fV4mnYHPT5mXX3H5UjD0MqW0T35qmi5Mk5O6tScBxr6gHUOVU56nROPVnWXMYGGMZ
 v/8DuymoH2MBxeRSLytNh+PgngaRyrV8rzCbIHcUl2oXrSKCBEQZQqQUJnj8c0Ye8CMF
 ydDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hqa9TgNuEsO9HgZ/3pPJzfYS+V6XOeuR6AE+FRXhkjM=;
 b=R6UnC2kk1TBag/vohLg6Wg6P9km8NjVR/GCIAlHZZ9cRdQjVcqKhcAhkpYlegWDrlz
 iyiUrCQRulPkTmuv9OdfOobmx3bhOLx18uhq+Kvn0FsibsNJfcKqVF9a96gmJvljSAMS
 luc9fHvPZq9DXZhMss1sJVPCe+BCofACOX7iCDLDoAUXoe3REUjrSgzMuE7vgk3ALLRM
 s+m74dxzoHypt6qFQ/dCoTdWAznSAlMcZuOe9mxFRgsp7rl3IO9REGUz8p82+ynmCfBB
 oTHSsInjA6zXcJcJ9F8l1oa9CpsADhcdeoaqIi2+eEkrRg8tuD7DkoxiPrxQy/thihnM
 b5BQ==
X-Gm-Message-State: APjAAAWdts/001Ht/vFAO1bG0GmgIxCXIZfAvLt5eLn/P3qudwBCtkiP
 k8Xk+455YucxVhDYyL/tMEJvjw==
X-Google-Smtp-Source: APXvYqw8YKsdDQmEUDYrUgys0DnX/Dt+RkuFFT8rnX5yYW4C7boT37O9C9+aE+9pW0CQramrRe+NTA==
X-Received: by 2002:a1c:4456:: with SMTP id r83mr8427282wma.2.1573226807102;
 Fri, 08 Nov 2019 07:26:47 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:46 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/8] iommu: Add PASID support to Arm SMMUv3
Date: Fri,  8 Nov 2019 16:25:00 +0100
Message-Id: <20191108152508.4039168-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072649_932172_FD067800 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is version 2 of the series I sent a while ago [1], adding PASID
support to the Arm SMMUv3 driver.

Changes since v1:
* Dropped the patch adding auxiliary domain support. It's an easy way to
  test PASID, by populating PASID contexts using iommu_map/unmap(), but
  I don't know if it will ever have real users. 

  Since v1 I changed my testing gear, and am using the zip accelerator
  [2] instead of a software model. It only uses SVA and testing
  auxiliary domains would require additional changes that would never go
  upstream. SVA requires another 20 patches (including I/O page faults)
  that I will send later, but at least I know that this will get used.

* ioasid patch has been carried by Jacob and should be merged for v5.5 [3]

* Split patch "Add support for Substream IDs" into patches 4 and 5.

* Added IORT support (patch 3) and addressed other comments.

[1] https://lore.kernel.org/linux-iommu/20190610184714.6786-1-jean-philippe.brucker@arm.com/
[2] https://lore.kernel.org/linux-iommu/1572331216-9503-1-git-send-email-zhangfei.gao@linaro.org/
[3] https://lore.kernel.org/linux-iommu/1570045363-24856-1-git-send-email-jacob.jun.pan@linux.intel.com/ 

Jean-Philippe Brucker (8):
  dt-bindings: document PASID property for IOMMU masters
  iommu/arm-smmu-v3: Support platform SSID
  ACPI/IORT: Support PASID for platform devices
  iommu/arm-smmu-v3: Prepare for SSID support
  iommu/arm-smmu-v3: Add support for Substream IDs
  iommu/arm-smmu-v3: Add second level of context descriptor table
  iommu/arm-smmu-v3: Improve add_device() error handling
  iommu/arm-smmu-v3: Add support for PCI PASID

 .../devicetree/bindings/iommu/iommu.txt       |   6 +
 drivers/acpi/arm64/iort.c                     |  18 +
 drivers/iommu/arm-smmu-v3.c                   | 442 +++++++++++++++---
 drivers/iommu/of_iommu.c                      |   6 +-
 include/linux/iommu.h                         |   2 +
 5 files changed, 419 insertions(+), 55 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
