Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A93715C8EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMBnFo4Xg1hcYtyKPaEpxtTwllg8+fKreF14cKe/If4=; b=Ev8zUEwTT0gxKB
	ZNjQIA1LWnGCz15UWL7Zgwfo345yGmBKzLWws1dO7WX6AXMGrLZtHnCCWWcxdGxlf+iCg+iAGnFEF
	i9WldkaN8EWiDn7/ep1b/7Tzu2pG6468sYKu8R5C3n4ol22p8AzffoGbKq/i5u46AoVrMaqLoTOUz
	UA6ZAOGFvbwA+OzEkktK9uIVnJC92U7yAl8Rjg5M8fC1HfaAQ8ruTWmkigVNdU8zPMN74Y3d5vEkq
	sKTnZmvzIVBE0htbERwVqapc9hs9IOFcsgogffXotLUwUhNhwGXwe2T+JMXAcZf0VShdpb6UeZ45/
	lHhxARbDXsxpLkZ9av5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hl8-00083J-Ld; Thu, 13 Feb 2020 16:54:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hiq-0005x6-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so7038353wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wTgN36L9uPFUOqE7HndfB97BUOtINMq0mCE8mycdOyM=;
 b=h4qZTMifV+QK3yL9EkymCELnFi2Hv8hakZ6Oj0s96dY7GJFrgMKCn30S2Ywj+ho06c
 G1z/vJUYVgp930BEncxrzfViReqSQZvR5tpAUoQpeAE9wlhWdhjhfKEcYz5MXbWKswTn
 SgbBuIzImA3vusaiMbYCRw5fSUguq7jz2pS+xGIjY6BAWyZpS4wqHQg0jUSMe9i6JKOp
 G8wx73fJcUThfZ34y6GFa8Soek65Pb+ir92kRHXEbMnqMfHxuVxm7Y6y46nzw2PTpQu6
 vrFVOifSf4dKW7mNbiEzJglMqVYyc7Kp6ywzll7N+y1dApi+fUMeJEALomvPIMYONOq2
 3lRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wTgN36L9uPFUOqE7HndfB97BUOtINMq0mCE8mycdOyM=;
 b=lnvrNUy+a+hANKFDN9o7xUhN4H5IifWAv5sKOeGdhOnFWeqe+G1h5NsST5r8e2Qxxe
 lrhlSlT+udfTrFGIcI7nzzx6GeMyNwtcw2RHWV6aG2cbTlkFdmFtZB5q3wDPNZYkotTV
 /lgxDMQuJtMI8DrL5EfwBXvqzxJsRGu8aLu7dZB5PiTFMtBdHm0ns31MeE+gXxT2xueb
 IiigvTgppeUTNOH16ncc4WDOyWJoG1PWX+vCmvMq4PuD3blxlLAuaXTonX2iU1c16ZB/
 gn6CTRAD/BJyIFzvuRwDdqF/LVnnQpYF+Erl/cpYumBDoNWkZXEelcJvBnwdggv8TdHP
 DAPQ==
X-Gm-Message-State: APjAAAV5G8dB8Cj8yh/59dOL3KcXyu3puOYmsFE6LwvbZL4S50YnFNty
 Te8QZqFLafAcTMbHuhF73l7crg==
X-Google-Smtp-Source: APXvYqxeuBETG18S4wku3Iin/3qX33/TOMOmaCOT/c4VstZL8FCL2GVweIV/jiGdNA4N0MW7TnICxg==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr6982434wmj.100.1581612734339; 
 Thu, 13 Feb 2020 08:52:14 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:13 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 09/11] ACPI/IORT: Drop ATS fwspec flag
Date: Thu, 13 Feb 2020 17:50:47 +0100
Message-Id: <20200213165049.508908-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085216_353251_CD95D4B2 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Now that the ats_supported flag is in the host bridge structure where it
belongs, we can remove it from the per-device fwspec structure.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 11 -----------
 include/linux/iommu.h     |  4 ----
 2 files changed, 15 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index d99d7f5b51e1..f634641b3699 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -924,14 +924,6 @@ static int arm_smmu_iort_xlate(struct device *dev, u32 streamid,
 	return ret;
 }
 
-static bool iort_pci_rc_supports_ats(struct acpi_iort_node *node)
-{
-	struct acpi_iort_root_complex *pci_rc;
-
-	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
-	return pci_rc->ats_attribute & ACPI_IORT_ATS_SUPPORTED;
-}
-
 static int iort_iommu_xlate(struct device *dev, struct acpi_iort_node *node,
 			    u32 streamid)
 {
@@ -1026,9 +1018,6 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 		info.node = node;
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     iort_pci_iommu_init, &info);
-
-		if (!err && iort_pci_rc_supports_ats(node))
-			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
 	} else {
 		int i = 0;
 
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index d1b5f4d98569..1739f8a7a4b4 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -589,15 +589,11 @@ struct iommu_fwspec {
 	const struct iommu_ops	*ops;
 	struct fwnode_handle	*iommu_fwnode;
 	void			*iommu_priv;
-	u32			flags;
 	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[1];
 };
 
-/* ATS is supported */
-#define IOMMU_FWSPEC_PCI_RC_ATS			(1 << 0)
-
 /**
  * struct iommu_sva - handle to a device-mm bond
  */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
