Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2301818B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:49:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsVn6OATYiczs5aZJe3HNBYCTpmPVJVP1/DN3aQDz1o=; b=IHrRYX/5HFG9lO
	biDcBnGBrQC2zkLtVLsQxK57lUk+l/z8tfJuG6eYLUxkjnpWOCc1SGz4oWy85v5jP/L5EJASu36rP
	50uNmqqa2Sm1jrcTZ9nuesXfzXzuAtvnWeb5gkwKNj48o2GVeXKvzREV7KEX+I+znu6iNnMg+O9yf
	5r/bSHYubnhHa2ulYenuB4ZMDOSXsPc3Ku7ZUy8znoN7d37w0aNlTFJwNffug9FU/j77syf+3b4hp
	Z+eXOB4HAfD7x4wHDnZxWxhYDNIIPKRJyYQA4IgVFkfPCuSsVS4ClL2ebPhDD+MQbB2Gfn4mvg0g3
	2j1y8KB6/j0q5PKG4nZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0nS-0001nM-Gg; Wed, 11 Mar 2020 12:49:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lN-00088k-Pv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id n2so1968353wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfMBk8SLNbiqvSQTKNw5nVOwT2ukh4ZsyZ4CcWYi0pU=;
 b=kGuexoqbuQJZfLJ6IRVhdgqXT2Li0ISoLXz0HBfWDMtpencXONYJHfL5BMvcPqfGns
 KTLe7/XryQ8otcvTvvBmXsfwat0eWTcx2+S3AY+1GUovN8spX6q7o2ijMrTUu5CI7XZi
 sXSmXpsBNPqNuYtOOjN0yT9WFBfYw8z72+I3JHP780/sn1m+qnJhj57OTTCF5Rl7VNbI
 I7+Cx38sOpBfHpJyAtHR0EJE+EL+xYVzqLpK9UKTABDAepAg9uvq1mm+y1d2lHqjsV/o
 5qIAXn96SgCfw69yQzALEut3rCN9yVu46I16Uc8TUdhIIoc5YfzmjtVW8PyrVvwzibNe
 fBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfMBk8SLNbiqvSQTKNw5nVOwT2ukh4ZsyZ4CcWYi0pU=;
 b=W4K4QTYIfTuv5zJ2rJKtXwrvx2nd0R3M4f4OwdL795yAn8vm3oaPYP+XTUF0XRjRRS
 hQe6/Z2ereywJAtAsE919cQzNv0EIXdmUfPJEBY48AA51Wh8kWBnvFobOswj6BnTbQke
 7DPOda4wGqD9uYQ44uVVloHD8CpGN8gUwXfq/DN9iO/P+cB5j6xLMQjpnajpz6H18H0H
 0q7vM9ctXntPbNhB0wRry7sya3kyKpemRAkv8q7nU+Pk7vtWr0CRZDHF7FVPZDSSEPn0
 jKSLkb5ZidXIO24UgVFj/AcUbVVmuajJclda9X+wEzTvF/kQESpFKVh1isomLqbSVemc
 Lvlw==
X-Gm-Message-State: ANhLgQ3jmwnE9tyDvpzWkClRNVXcEixQImfCrh+SMyU12U6CQyfhdhL0
 tfnrXId8S95TqVEVYQrKLS313A==
X-Google-Smtp-Source: ADFU+vtntOL4brDxmDQGG6xeJrIuadRvitxT9k9QnLoTDiM4xzqU981cVjB7SKKNNlkYOG+EtlWXJA==
X-Received: by 2002:a1c:5443:: with SMTP id p3mr3479986wmi.149.1583930823712; 
 Wed, 11 Mar 2020 05:47:03 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:03 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 07/11] iommu/arm-smmu-v3: Use pci_ats_supported()
Date: Wed, 11 Mar 2020 13:45:02 +0100
Message-Id: <20200311124506.208376-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054705_872043_067A59C3 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The new pci_ats_supported() function checks if a device supports ATS and
is allowed to use it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 4f0a38dae6db..87ae31ef35a1 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2592,26 +2592,14 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 	}
 }
 
-#ifdef CONFIG_PCI_ATS
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
-	struct pci_dev *pdev;
+	struct device *dev = master->dev;
 	struct arm_smmu_device *smmu = master->smmu;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
-
-	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
-	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
-		return false;
 
-	pdev = to_pci_dev(master->dev);
-	return !pdev->untrusted && pdev->ats_cap;
+	return (smmu->features & ARM_SMMU_FEAT_ATS) && dev_is_pci(dev) &&
+		pci_ats_supported(to_pci_dev(dev));
 }
-#else
-static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
-{
-	return false;
-}
-#endif
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
