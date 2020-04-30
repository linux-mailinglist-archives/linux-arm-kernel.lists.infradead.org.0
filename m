Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5DE1BFF03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYv9LV7x8SMHPuioI/+a89m1XHK+0HqK04cSS0iOWn0=; b=m6cOTa+PzgVINa
	RUpA0f0RUUsYVL+3os4KuZrBizBx3+k0n3Jj6go7pUZZp8k6xStFH7wVkb6Pd7uwMrHSHqUUKOxCA
	V73LiP1jkBnQGKOpIaK5MykYSSKL3GaCwVjlWKmP9zuHJkxeXk/caN8XMPOVGi/mSDNpSaXxpNuk/
	3Vk2FGePlDnICmoaQsFYR/FJ9lmT4k49ptkBfxlZdtov05RtU1b6P84mVeQsTVWwFvXWJ+V+UyoZt
	Sfik5tHxBPQCPmUST8Z9gXCqxtQS9iUE+fDYVtG1hf0jvEk2YxcbINYBxdug8XqjOpRReJo8YVkr8
	dad+VDE0bM3kzr8szJLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUATr-0002oB-Go; Thu, 30 Apr 2020 14:48:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMp-0002mF-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so2208026wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=62jj6X1LyxzprUaI/fsrszNvC/iCvzNFlzOxzXxMTmE=;
 b=y8F2CAh6V2jZZ6B8MaXX8bNU3xhjF6A6xftgKRo5JNfOivZ4u0mxU5xIR4pAdncRts
 6l7bUbk1qPf11fVOJF5ftAX+YvaRJ8cXFwCudw6bxApeZPCZrXZtaaHXtPfThk5Jco3K
 a/O5NV8b14TR6O3KF9WIkjjfc/Gcv12HGrAm6m8EO0m1BeQXzRMZnOhib6MYqbtHBwsT
 sErFA6eMmDmS52FVu+QrR1ltOzaQfn2PJ62g8elC51l52AIXrpu8StMl/Go2TPf2eTs+
 JpTwIf91IA6+h7AHE7yatTK0354lTEslYrLGPhBE1Hb4pA4bdkCtICpgF+meBh7cqw9n
 5sMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=62jj6X1LyxzprUaI/fsrszNvC/iCvzNFlzOxzXxMTmE=;
 b=gY94RzZiDCcPef4qzawQe7JR8yzXpYjGLFIwGTdsEhhFVFro8ivejf82Rno+oLhgGD
 LDH6IPXHu6KuE6Z63SRducZgmwBQ3qRlOIYv5TxxrINb8baR22aR0P7DucEUyiK5XH53
 PF+8tqicdZXzzaZ4UnFYbnXDEdMtYouTsYjNXrtaOI60RYmlV4+GYyc7u+WhPNCzKFzW
 PK/dw4mzpmKuVgtwnRWnwoWMOJQJCw0YS8+QlhURUtDsnTtyE9GXf4fWZBI2sL6dj2ml
 M48Vq6FvvtHPWIFbH/daEkWDkf9Oj3uI6TBU9ytcjbIucNtWD4qXzVVNef/6uaUE2Fx0
 sOoA==
X-Gm-Message-State: AGi0PuZcvc4A8zP0Tp+nSmF9WoChPzGmc0XpuEFdeLVH8+pq7johHZqy
 vdWVt3XfeXrU8PvXwJDilqm+Ow==
X-Google-Smtp-Source: APiQypKtLi1Ei7GLEgyORO8pAsx6cVgJjSvoyoPjqzURXKE3LoS9Wil8gnTZulxN2y2v3ecbYlihTA==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr3533862wmc.83.1588257646202; 
 Thu, 30 Apr 2020 07:40:46 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:45 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 23/25] PCI/ATS: Add PRI stubs
Date: Thu, 30 Apr 2020 16:34:22 +0200
Message-Id: <20200430143424.2787566-24-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074048_109295_FB430482 
X-CRM114-Status: UNSURE (   9.21  )
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

The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
adding more #ifdefs to the SMMU driver.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index f75c307f346de..e9e266df9b37c 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -28,6 +28,14 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
 void pci_disable_pri(struct pci_dev *pdev);
 int pci_reset_pri(struct pci_dev *pdev);
 int pci_prg_resp_pasid_required(struct pci_dev *pdev);
+#else /* CONFIG_PCI_PRI */
+static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
+{ return -ENODEV; }
+static inline void pci_disable_pri(struct pci_dev *pdev) { }
+static inline int pci_reset_pri(struct pci_dev *pdev)
+{ return -ENODEV; }
+static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
+{ return 0; }
 #endif /* CONFIG_PCI_PRI */
 
 #ifdef CONFIG_PCI_PASID
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
