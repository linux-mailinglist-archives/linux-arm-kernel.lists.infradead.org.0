Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533501BFF07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8J6y8sPBz0mpBiGZNZEwBN8DzKzhAT0YZPevozcxkI=; b=DyRrloF48M56fK
	FIVpczWoA5vDf2CpD0uP8vY/8CFy8b/BNA3gQbpdT0Sr6DoqO7YgGJxGOHqXdQSLDJCJzoOKLajWh
	DrCVlIcNjp+X6/BG3bNEGUWsMAIUA6XCgS+z0XZUpKsB2vH9+nYV45ONNEgkCQnZh+EndWgV4XuNO
	RWZtTxKAWrztk6IrrQQqoQsrC70wOen3JwXdc4MODnvcIkzQ7KUQsghmeWsKxiAg6JP7RwCeH2ndI
	pNJLS7XLT+BV78KbU5NeZb2qgGs+gKRl/mrRteIonF8epluL4ChPtWPj79nzzvLREsVPCZUeJml+0
	RWUWPiOmbn/ChettppkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAUM-0003IZ-OD; Thu, 30 Apr 2020 14:48:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMr-0002nK-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so2153804wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S8Zr7dUhZQI4HWh04x7nsOmPtJZbUwXznxGwACU1UQI=;
 b=Ond7VfsZgmGD/BrByxf9wz0efWlE1iwXffnfpfQfxt1hg9QT9Xs5mqM2Rr/FizdA+e
 IWEBTJhCC4xfsNHrlhEGfHF9LwPrU4ybRmBqXvtCSAgzt+kjb8RoWZdz70Mg491WTSOe
 epwnq/qI820d8QDoeGKyaC2M9DH6QVrxTbYbk7wjnrLB0OisjPj7hQm/Iz0c1B5TAdEy
 ik9JR0/fhw2dfKLEjNH/AByP8RBN8Rk7hu0iTumPKK6WIizh0K1GhVzR4dxhvfJc9gJo
 ci1084DYu6K879DUlLLGSCP2fM9vSK7OyOiumE/wAKaIBFk1KrHnIPzL9xfVwpktSlDF
 GFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S8Zr7dUhZQI4HWh04x7nsOmPtJZbUwXznxGwACU1UQI=;
 b=UMMvPVJonR66hSWjtCpwNAFZcCNuvQ7H0hObx+Pcs26zzpsVqtxUeJV8pGLDO3B2K6
 VsseF5r4TlKcc7ULXOfPJzopDr5G6x3kpZlZvXDmKzXGeTCavSL9t4Ls58MF4KjUbihn
 a9TwhDZDvPVLXgAjPigo/OyA5s49PvoSlyG8HmdMWhHYIV3Aq16SbHD2O7eExmC2od5q
 Umom6mlcUGtj5H2iygXDdzZSXEq/wIDPLV5yjN1N7orZiRTdp+xyOfNKXTCt0gvkDUzi
 OqYAWIcoQjFatHX0EWcmEX5laxBpgjckH47W2O1xJ4h/iYaYOtj8SkMG6NOSR2W6aDZ9
 uMvA==
X-Gm-Message-State: AGi0PuZG3UCtw1aYAnqg76W5yDMJZPe9wG9oO2l01/V3ApkblsPdq/pt
 x0WpnhXgfkNr5F1cXXkwA06MFA==
X-Google-Smtp-Source: APiQypJa6BmZ0czrxG/gUnFompMSHFZ8UIvLo+IeAtRqA371so/Ns388yHVshP+vFCzW1022DPCjrw==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr3126384wmc.146.1588257647382; 
 Thu, 30 Apr 2020 07:40:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:46 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 24/25] PCI/ATS: Export PRI functions
Date: Thu, 30 Apr 2020 16:34:23 +0200
Message-Id: <20200430143424.2787566-25-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074049_334296_D8EF2742 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org,
 Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 robin.murphy@arm.com, hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 Bjorn Helgaas <bhelgaas@google.com>, felix.kuehling@amd.com,
 xuzaibo@huawei.com, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver uses pci_{enable,disable}_pri() and related
functions. Export those functions to allow the driver to be built as a
module.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index bbfd0d42b8b97..fc8fc6fc8bd55 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -197,6 +197,7 @@ void pci_pri_init(struct pci_dev *pdev)
 	if (status & PCI_PRI_STATUS_PASID)
 		pdev->pasid_required = 1;
 }
+EXPORT_SYMBOL_GPL(pci_pri_init);
 
 /**
  * pci_enable_pri - Enable PRI capability
@@ -243,6 +244,7 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_enable_pri);
 
 /**
  * pci_disable_pri - Disable PRI capability
@@ -322,6 +324,7 @@ int pci_reset_pri(struct pci_dev *pdev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_reset_pri);
 
 /**
  * pci_prg_resp_pasid_required - Return PRG Response PASID Required bit
@@ -337,6 +340,7 @@ int pci_prg_resp_pasid_required(struct pci_dev *pdev)
 
 	return pdev->pasid_required;
 }
+EXPORT_SYMBOL_GPL(pci_prg_resp_pasid_required);
 #endif /* CONFIG_PCI_PRI */
 
 #ifdef CONFIG_PCI_PASID
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
