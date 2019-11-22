Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4248A106CEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIJGYI/eEryE5MVnKThIS+ZHM7sY0KFz52V8xwWRC8c=; b=RxhXB6r8bnASMx
	CmLmYknJR1de8iZoOfeMT0BIXSWfa2Lm+mmN8ZuPX8Hv4UYv2tU7UoB1rIOO0iHBbPYC6zjAiW5rG
	Ghc8wjtF9MhbG8VKJPYQZrWipNJOFbOh/7FmiSmcP+KohDQ/bunvBl0aRS/ETu+r9VgD5kHEUglIa
	X09pvIGx/SfItKwdx6UTkcue6GXNBkG/gAM8bcZOGQFhS2b0sIzmW6JvYvBrKoafwdNq+Ky11ACtR
	InGK2CkZgiylmzdx9Zafwd5AeNbiKWC/6REvevdNfO2y/0Iq59uhK7JXPvfXalnmYIvtisDcrzdG/
	Q22hmZkQWDypocg5lMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6c3-0002uO-Fc; Fri, 22 Nov 2019 10:56:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wo-0005Cj-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so8010137wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lDs5y1/lUK+eWeeJx//ERXKdVvxWdj4EMLwCwstQME4=;
 b=tZrmxDqsZ1RxyI07RNeundpwyg3krx2pcdHCNpZvL3eVD3KsQ239cK0WPxnijQt1Sx
 Fs/hoURodhjYShc3UsRO8wvWP3TJghstOvwU0hqvTLFGlHfjPbK+N8DC9RWKjJr0OSfG
 U8/SeO0cY0wZsBiqU23iCYDvR8R/mftguKFjWVo1gq4EDGNowS6VNXbBbPpDaZ6ANKju
 QvHqIx0HkGQc9XfDWtkRsWeWzQvhDGRGubK/9H01T5zo/uIfdNyzFvyaivP26qcnRGV1
 2W+UM6kD51rYLCCVA698kX5jZc+fgUZ9zv8aIXlsnfVKBPQMWGC6BGoWZw80BqSyjx13
 75PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lDs5y1/lUK+eWeeJx//ERXKdVvxWdj4EMLwCwstQME4=;
 b=oen0ekhjxTeUGb4odtSD2Uv+IoSGfNMwV3NiXPnHw8zq5+dhZheuAJPzDfROKoNWAE
 7FomGKLcXlXKUk64hzjAuxIsEoGvEPHg3yhR8KL6bDOjvacFMit7stHiNZpGXEXoekPr
 3rd3rLsJ5MG+oSGDyH4Ttfs25uyUW4X/OCY0s32oquqIMDFSnsKMFYDo2vxIonZL54JZ
 TEswEKsYVSgAmv3KZL6BlqzWwLnyL2IoEaQxVHBa3OyOdcg/9sU9w58evu+FY3IRHopC
 4cqG/IUQs5NLNOZQOsoV7PGmrtyPC6x4uD3xIIHg+8/x9CPyvTtTE5KYR+ChGgseiEhF
 OXPA==
X-Gm-Message-State: APjAAAWk2yY3ve00x69SMUnaivqY+x1h4Xa/d2WhtQeJoNWlmY2HAjb3
 p7cditqUAH6eBpmPBFNlJuMgUw==
X-Google-Smtp-Source: APXvYqz63MumbBUd6GIRd7d2nXdQzJtqYQvwS0Q1xjmH0yv+JY/99rcdr1f7XN3ibul7iFA5Jzo61w==
X-Received: by 2002:adf:9f43:: with SMTP id f3mr17102828wrg.76.1574419864067; 
 Fri, 22 Nov 2019 02:51:04 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.51.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:51:03 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 10/13] iommu/virtio: Update IORT fwnode
Date: Fri, 22 Nov 2019 11:49:57 +0100
Message-Id: <20191122105000.800410-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025106_341142_C24A0D8E 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the virtio-iommu uses the PCI transport and the topology is
described with IORT, register the PCI fwnode with IORT.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/virtio-iommu.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 8efa368134c0..9847552faecc 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -7,6 +7,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/acpi_iort.h>
 #include <linux/amba/bus.h>
 #include <linux/delay.h>
 #include <linux/dma-iommu.h>
@@ -989,6 +990,8 @@ static int viommu_set_fwnode(struct viommu_dev *viommu)
 		set_primary_fwnode(dev, fwnode);
 	}
 
+	/* Tell IORT about a PCI device's fwnode */
+	iort_iommu_update_fwnode(dev, dev->fwnode);
 	iommu_device_set_fwnode(&viommu->iommu, dev->fwnode);
 	return 0;
 }
@@ -1000,6 +1003,8 @@ static void viommu_clear_fwnode(struct viommu_dev *viommu)
 	if (!dev->fwnode)
 		return;
 
+	iort_iommu_update_fwnode(dev, NULL);
+
 	if (is_software_node(dev->fwnode)) {
 		struct fwnode_handle *fwnode = dev->fwnode;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
