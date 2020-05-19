Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932F51D9EDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRJo5onZLixTgzY1u/3KqvakiuTiN0uLnn6uw7KpyOQ=; b=Bt85s56pXe0i8P
	hNgNVYFdkcG6xOl4B5DiahXbGevTeXezaGihnYr7PGj2nMtOtcezprq779pKqMPbbU1WGz1i5Splm
	EgdEHlQ13LTJcsqIN9ZxeDl28RK1AuTtWU3PrJhcjEZrD8gQ1qYNYguOdkwS/MemK9cu728kHo26v
	4830//MgFd+gs4/hIy/zUa7kFhQc0BF2c29AIF/IQYj7sRMsjjzvkdagiguNWY6dnNINEsaAajFuv
	k94MHhvF9NQ/QNbWO+Hccj6xam6gH+gM+Et3EpWOJuzkBiLiB8ctBh8n8gUsG6kPkH/zJpObyd/DW
	jQY2SRTMKcsxCWoX+aTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6fz-0006mu-Lp; Tue, 19 May 2020 18:09:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Z7-0006gf-Tz
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:02:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id g14so2980292wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hORlUUicNTnmubGRwNiUffCoZPiWJG9HuOL8osSXdzo=;
 b=RaBfqvZBLG2+O2ys2+0Ikq5Wp+XHH/rqPMkeuqJRaQX3zplSn8zIVMkUTAPhGK28u9
 wAEiv6Yy2jClvwowLeJGvp9nz/q2xjW3B1m8ef6AweRUFIRQce+1qhbFZu9Iqxpgb93T
 HQS/ayRa/QKZAcPdong1IOD4jlzFFccRioNNAzKo4Svis/lAW9o32Xi6WC9+XqJP5jVD
 95wb3prQy7RhU+V9NvD9Uimr2HAe66cN0BSaK01ShE8K4Vh5b6WaVDUh0vqD6yii3Akb
 VvWJQ/nNMjB1sgj37nXUu8itMP/AiTtQykovHtt0BFwZVr2yuqgX+iT4E9CLWqxkgpmY
 SZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hORlUUicNTnmubGRwNiUffCoZPiWJG9HuOL8osSXdzo=;
 b=gprUloAwPqisTcjSoI5Xj1WVvDztkYQJgOw5LnEAUj+ZVPVFvtrtpZr3UjpCOuXL6I
 PoPj9gxPOEfUJF7BN0bt7H2hA3apiWltVGQJiqF2OKGzF1F2WUb0D/CLqvOaw9J+QWUi
 ITKiumjQ81jAXCt489Kwe5gZXS/+KWEfH39r2qIbaCa9TJ27Bf+xzIQappDMJTy8cmcT
 789SxfAva28wtL7vAr9TB8uFS/1/x6R3Cg8ui6b7wwc/56Xq/9s/cJc3Wsb7oTIul+jk
 nSMFJ4QZa+toUcd+/sXpgdkT8RQdduR1wZ1gOENELhi6N3UX7mpm/PtQt9LhpkKoySAP
 L5FQ==
X-Gm-Message-State: AOAM530pGvgDmiQgZw+fm+kbQB/z/5g5QGg3vknENWIFboUji+AylXGq
 oQk+tRBms2vhKS75tGslPnJnAw==
X-Google-Smtp-Source: ABdhPJxkJn6Qhu9nn0EKvZWG6V4NMT7DJRYrUqG7GGKCgCc/g26MRyJ+LKLXQeOruPfp1Lim/+kFJw==
X-Received: by 2002:a05:600c:29a:: with SMTP id
 26mr615194wmk.151.1589911328505; 
 Tue, 19 May 2020 11:02:08 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:02:08 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 23/24] PCI/ATS: Export PRI functions
Date: Tue, 19 May 2020 19:55:01 +0200
Message-Id: <20200519175502.2504091-24-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110209_992751_FA5FFEF3 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
index a4722e8b6a51..418737a3c2c2 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -191,6 +191,7 @@ void pci_pri_init(struct pci_dev *pdev)
 	if (status & PCI_PRI_STATUS_PASID)
 		pdev->pasid_required = 1;
 }
+EXPORT_SYMBOL_GPL(pci_pri_init);
 
 /**
  * pci_enable_pri - Enable PRI capability
@@ -237,6 +238,7 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_enable_pri);
 
 /**
  * pci_disable_pri - Disable PRI capability
@@ -316,6 +318,7 @@ int pci_reset_pri(struct pci_dev *pdev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_reset_pri);
 
 /**
  * pci_prg_resp_pasid_required - Return PRG Response PASID Required bit
@@ -331,6 +334,7 @@ int pci_prg_resp_pasid_required(struct pci_dev *pdev)
 
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
