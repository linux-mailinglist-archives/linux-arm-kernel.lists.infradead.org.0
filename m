Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA301D9EDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+mvs20vuzUkhFK3lILILHKjJpY+bRjgiwZkxgaSLJ0=; b=iV8+3wvk9S/FbQ
	/6huafiI1khlume3f9k3/IYItvf15lH2k/9dMZkdHMYrpdxGUCWVnUxJod2MNxk6DgrXjCJFDUih2
	1Rf9qHhAKAg1J7ClsX0lklH56EAtLwTAB11HnLjk2/l1w6Bh99uF7wXZ0ExRpqSQ1bg73g90kQbC/
	Kogo4g947ZUL6mMWR0YO3mYj09F0ZebfPfAPjjoLOXWOuRKmtT6wLOCTQqW3741xauGKwuEAugr1P
	ZyhBA2yu4AEYtf07vgAH20LVi+nXkKd/v79Jt25EqI096Ybs2XSSRjTQjo/FDD3+4yYrnELbhHaCU
	3n94H5mfIHoyilG74gdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6fo-0006YV-AO; Tue, 19 May 2020 18:09:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Z6-0006fA-Kk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:02:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id u188so221291wmu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ItT+TOPL7iHYDvWhuBPZ37dZIwufOCW7iBxWcHWr4y4=;
 b=T73/hci8m0xaQEonuG+UITtUtGVzOJkMhIY/g1SohiFjmbfVK6w59f+mvqGudusgqn
 KgSK+DNf5H/EQw1G/d66b7N0XokxEarYo8OFVIa3yO4z8ZUf4rBHRzAX2fY5L09vHu1Y
 QQzBlmR3/6FRKXAEejV9+0bzWiW/ndlxSsX7EpdL73Qs3tIfuU7JiQ1JABcUgfVkg84v
 /5x6oY+5isr6RrxYXgLgn/rKf2OVXKo+2aaq/oVwR31vmGqGarJEDUl11onJW/3JsSu6
 L760pJcDstfBWOr3+KHNzLdSHCFEX02NpH3IIwq+RgLPlc9O62wk3XBFgwtfUBP2m/Pl
 pXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ItT+TOPL7iHYDvWhuBPZ37dZIwufOCW7iBxWcHWr4y4=;
 b=nQ39GE5DQpE/DHTrpLw9o9DYIXPymOtkfP8oAOUx7d3CjDjNuUEvKcPlpXpqNpTPOz
 6zMQf6z27pGoFexj+5ReIjBSjzLepJ3k8DUpFz1CZB5cCBaD35i8gNDu9l+n89yzo6I3
 flm8ykUpc8dBeKXWYMe7joB5vpNmT4S5E1jwaddVaf0NRpsHwscvxqvf0MZbFzoXfy6h
 KCQVkpxB0cIi6b0uWnETYsTk3GoupnKGBPO9LQzj8OsCwIjoxrYkTIqWK3hqk+YxoYEE
 CFfTlEvkdMpryzzUB0V/LW8fXIJugzD+4NKf/U6LT9DOQ6A15CPWAKyh7Hg5gKqZ4qtd
 kX2g==
X-Gm-Message-State: AOAM531/Ue/6VDnI9WoreNbM9WfBHcUAoU2IKKhjiAiCzVEevzlJ4EBx
 WEm5RMgdNBtrPaxauK6SsUqSpA==
X-Google-Smtp-Source: ABdhPJyqmxnjyw5ql53tgyxYBbcNmlPhWAlfjLm7SZrRDqOvDmRTlTWmj7mIiYK7YZi2FXhxDTCLEQ==
X-Received: by 2002:a7b:cb96:: with SMTP id m22mr582720wmi.164.1589911327419; 
 Tue, 19 May 2020 11:02:07 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:02:07 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 22/24] PCI/ATS: Add PRI stubs
Date: Tue, 19 May 2020 19:55:00 +0200
Message-Id: <20200519175502.2504091-23-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110208_756880_CF0841B8 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index f75c307f346d..e9e266df9b37 100644
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
