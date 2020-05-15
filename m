Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CFE1D4B7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63vu4ByFfWs0D4+pOqxkhTLonlcrItNBsWBUVj//kC0=; b=pmPfNPL5okPhIF
	rsytiZUGP1aHej9vPLvdSQ69a0+2M0j47xEEefaycTSQBCE8BGmjODaVDIlYufPWDPkUgnx4pjjmF
	FiTI8HOEbVotLGbEZspzM12q0L87FfaPuAYrEl8WM/VmQCeNkf0d2ze7xY6ZgpnET1fVpsSjnnuc4
	B8ken49bZKZ2C0RnMuUz7h/VAIlssyJTGh2R+Px8G4uP4nNrLi316Zp2mReWk1BbreyRU0QCukKJh
	ZTaxMrsquBwSJTub9/+5SrpdRHAxpvJSMBcOzglaGOw/x04rgfA76cQeh187ttJ2oi5DA5xWn5DMK
	T9/ldyyiTfvJk3TMVFGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXuE-0000ib-QA; Fri, 15 May 2020 10:49:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXtJ-0008Pf-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:48:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id h4so1832003wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a6JIJM0/qnszNf/C3W1cfcENgwZD3tV9sE5r5AxKEdg=;
 b=dkOgLaKZgNbakPSRP7Xg1d2JPezWp8Wzc1IN+YzL2ukDlFUygw/oa6EQT8M2XqlTCz
 ITuN9QV0ywXV4ofR0kNh80z4tPGwVKsquc97eBK0CNEg2BYVNSMTj1o2Yb6UmqWBZjlr
 emzsm96xD2Kux4hLaBarRZQBAp3yJfXZIivFaOPGiHJuYf54/TcIl8cjoir+CegBn4h5
 AUVDdqHMF39wOISbc3FOzNe14afan4JQcxWpHPjxTLLpCXVr5MCCJeKyux6V/PE1Vq06
 Yw2WLEGTT679r7+OHD3vu1UOAOa/JxgOgbnXPMPb4TRcdsa2DVkMDiz0+9UOx0d5UhRT
 +32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a6JIJM0/qnszNf/C3W1cfcENgwZD3tV9sE5r5AxKEdg=;
 b=UhR1LIm5VZUBNxmDPI0aSOSmcRya+RsqoOTHLBt61KlpLqhm5qPnShYpuFYw79bY1D
 b+IwrSJqLsWVnERVLLw9OeMdjjYf10sqxGGCUyJfvlMUNIEuNHus2eHs9RnEA1fYzVDw
 P1pLcKHJ13eR6urEbVZvd2Fb7Q6YIzR3L1lzhr9ZF4RaUWXe1EkOWX+Mwtm48msQ/2a4
 ndWSFaIiQJAzfPzmVp2dgyOJA6LEqv3tAo74JapWok5665KqzTtVC98OBIjvwzzXtS09
 hFJ9Earm8KVeJdTMeR+z4UhJcV9PE1b1xN4yEUewkZcSaFAbOW0RlmWXvniQbK7op9iF
 B0rg==
X-Gm-Message-State: AOAM531/S16AoG9HPotkfeKMndvhj3Qh5x7hRuEMl3sXcAJAKldYEf6U
 MCwFAbLDfb0adWHyj/aiCooe8w==
X-Google-Smtp-Source: ABdhPJzAXq9W8ciuEA3yi7eG0GjsyM8zeMTSGluCiWiblbXlc1dMrCYhmrkIsv/zARo7bX3QPoZVEA==
X-Received: by 2002:a7b:c205:: with SMTP id x5mr3518890wmi.135.1589539712724; 
 Fri, 15 May 2020 03:48:32 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h27sm3510392wrc.46.2020.05.15.03.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:48:32 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH 3/4] iommu/arm-smmu-v3: Use pci_ats_supported()
Date: Fri, 15 May 2020 12:44:01 +0200
Message-Id: <20200515104359.1178606-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515104359.1178606-1-jean-philippe@linaro.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_034833_932682_EE58FE09 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The new pci_ats_supported() function checks if a device supports ATS and
is allowed to use it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
I dropped the Ack because I slightly changed the patch to keep the
fwspec check, since last version:
https://lore.kernel.org/linux-iommu/20200311124506.208376-8-jean-philippe@linaro.org/
---
 drivers/iommu/arm-smmu-v3.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7a1..39b935e86ab203 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2652,26 +2652,16 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
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
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 
-	pdev = to_pci_dev(master->dev);
-	return !pdev->untrusted && pdev->ats_cap;
+	return (smmu->features & ARM_SMMU_FEAT_ATS) &&
+		!(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) &&
+		dev_is_pci(dev) && pci_ats_supported(to_pci_dev(dev));
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
