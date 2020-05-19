Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69591D9EAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7dhjLcUy05KC9OPdjOSznXt4zyVc2VufWF78toSgm4=; b=LCqHA6xn8a+u/l
	WxdjgYSRChQy1gdv3pT18zOp6EywTFidZlAEeM+v2B65HEy67l+e5B92VzGBXrYOv10ueF1+tkzfm
	2qJT0wGeyVwnQ6y667kKpxIegF7/55VcVwYzve9jPlpBBP6G00H9j467tkdg2D9U7I/NQk6EiKWEu
	Wz+GBBwVgJ4G847Wl4BVVmA97V2Rmd3+Jl3BGmEEo/v0s5njP+tCOP5j7sqy6KmcVBoIFHOs9Ky8K
	GWphbtFm0jpGkkhh9EVYjA4Nxk6sFHBbz+RjkvkNBImdvDS67QOUlDIuBXSYartEQ8RLhZKocDhqy
	ddrNMvCU1QAi3ZUle6YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6ZO-0006g0-9a; Tue, 19 May 2020 18:02:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Yi-0006Bn-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:01:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id e16so393456wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GyR/0Ui23R5AHEgwKIBkr1oNL8Gb0ETBbsB9Bvf72kY=;
 b=v3uSYjcTrWI5/qXsAKPtQitwafYDySNKobI2mT1/dgOS6rzcfLNMmKF8Zt+y0lAIG+
 7NlQH+xDT61+aKM9dVrX/ST+T5q9rAVx5upfWAkNFK1yIBfi0CAVIN2p765NEfOSC08U
 sFwBSa6m6vidPtQ10csw1xhsYdtx+Clr66gxG7w/lPymxvLly5LhE7Um5QY8fQhUpWaJ
 xdgGAMGjYoX5ObjkOmVHefDcNQj8HEkXT7/nacUbxTsEOjESUGfhUPoGor1ifWuorzlX
 L6qNerDYVI4QEctFS67Z/P9rCH1XE1xvD8PSxU2aJEL1im0fmYXq7/33gxfnNONbYidw
 T/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GyR/0Ui23R5AHEgwKIBkr1oNL8Gb0ETBbsB9Bvf72kY=;
 b=epOBUBBll9azPIzxtQ6M4Ort6tkAovvkmAz6JcvlPkj9Rz/3KFGFRkLYgy3FQ14Wyg
 W0E5TH9LjEJoOK46N9zZQ2urSP+kx/7FxR97W7l8ZS8Q3ocALfuYkaxM/3S/KLRgO0vq
 XqkFzAF01DXVSiz+qyobv6HSz4RIbrwnfbMJ9OKqB0sOwpb+vADGp5Ja8JWZsJ6pG/7G
 oi0a/6MQnESTWlsNzXYFeAmLPVeASrhk8qgDta4MyyB95JF8RlczcT5K40/RataOTC9O
 2pc5GrmFzIXs7RwlLTkD3iE18dO3fCXpU7Pd02uzCDN7xRRU5c+6kUe5qNli/cSB5nyt
 aRnQ==
X-Gm-Message-State: AOAM533tZHITyvnSxB03iexj3iPnOU9p4eNGZ0hiZUzaco8Itb3hXQsZ
 x3Ys3nA5HuGrTN0xF5CiHjOlLg==
X-Google-Smtp-Source: ABdhPJyPXdWabIumTknX9KHGpAfZMDP+D+8kcHDQrtNtnJy5wEFWx5RISo0BU/ne7okq5g9/m6U84w==
X-Received: by 2002:a5d:694d:: with SMTP id r13mr112031wrw.238.1589911302937; 
 Tue, 19 May 2020 11:01:42 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:01:42 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 01/24] mm: Add a PASID field to mm_struct
Date: Tue, 19 May 2020 19:54:39 +0200
Message-Id: <20200519175502.2504091-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110144_371141_3F79767D 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some devices can tag their DMA requests with a 20-bit Process Address
Space ID (PASID), allowing them to access multiple address spaces. In
combination with recoverable I/O page faults (for example PCIe PRI),
PASID allows the IOMMU to share page tables with the MMU.

To make sure that a single PASID is allocated for each address space, as
required by Intel ENQCMD, store the PASID in the mm_struct. The IOMMU
driver is in charge of serializing modifications to the PASID field.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/mm_types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 4aba6c0c2ba8..8db647275817 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -534,6 +534,10 @@ struct mm_struct {
 		atomic_long_t hugetlb_usage;
 #endif
 		struct work_struct async_put_work;
+#ifdef CONFIG_IOMMU_SUPPORT
+		/* Address space ID used by device DMA */
+		unsigned int pasid;
+#endif
 	} __randomize_layout;
 
 	/*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
