Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0C41BFEDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybMDW1diKN174C+lpIk+o5co9O6oLKQ3VrThI2NyLx4=; b=Jyf+DASi/hr9AS
	Y3ZdIuU/iOMZczAL8oVGV7JVjHD0V18jqPs4tpjaxHIOQriUiq3Y0SqoLmmMlaDFa3zwkw99f7xtm
	YwSYFuVPqPgyLQ6xGhrhYNBgcDrLQ4Nnf8HFONjFrhAuSHLSJOuVuD3XSgAP8nE3LvCSq/q2iyOzI
	pOW9u5nL+usUMRoFQp/vXB5sYkFuq20DZewGqp6LYqsUTdnWlhzWTq7az6vwhEErY+m+NItTADPjf
	2WpeQQM9fZq9h/hHGOdWfW9vPf4Xt/j9lrQxMzxrMeIQ+tuOLfFX8wTio/6rxC+sdsSfO1Va72F0E
	NcNqW5jKfFyOzF+gcwcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAMq-0002H2-Qp; Thu, 30 Apr 2020 14:40:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAML-0002GA-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so2149065wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JE1ADcc++3Vo3M85Nsq6iA6oMNESnLaCpD2Oim3Sh4w=;
 b=To4rDTgBB0L+90TpdlToDyTHhOTZj6qgWdXHCq8rL1YycyE+18LW7Zf89m+U1MgVk8
 +89saYtKLC3GQTyPik+jhwX+aQBQqrNZ4WAaBc81x5L7V2vIZ7XFNEV/ge8dD5ZI3D5c
 Ky1IsNUlR6HCYrPrzPKso3RM3HEViU0cFo2w3w0DZL/QuZLpSZOx9atlH5Jsmi0Ms8Vr
 u2AWoTd5OM4H1HJBzbAVpKLc8NupQiOKgBHwOjQ95DBXB8CytUigHuiBI45tM4iuk42Y
 bxPd271XeYNTljj1NAR5ciuWUHZ4qD6eBIS0O6tVRLdGsDXU0GOH+yzvHKWV4kkY+zxV
 HwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JE1ADcc++3Vo3M85Nsq6iA6oMNESnLaCpD2Oim3Sh4w=;
 b=HeNfPY5qQx1jTnephQESl1ejvtUSIt4NRAEXgcMeQ2IJdAngQX9HGwxgdKI07I5tWB
 iMbkIxr6EL1f33WYAAqmwJVigpNSvnlW6fdFl8hK3kymXZ0AUJnS+9cZxFcOM/B43Y/8
 GeZujrKzFHcdNrlKe8sQ2Dt8ASo/fuM1Bgv0Pc2JGEXc6UwEZfZikzApztak1Zhjj3h6
 Xwc9h7eHotCn7i23k/hKuTXbr66+U5j/2+m+zx/fr/hm+Y9f7SkQCjNoj2w1iSUmC94L
 Cyic/U4aHJQgBpjdUMd4QIwq1CtnzgzGkm1vPood7Bqoqkpq3kPu6mxarGgIv+IuQCLd
 SjSg==
X-Gm-Message-State: AGi0PubZGbTKOokb+NUSiVOoXoC/Mo91haqfAXDu/M6M7vap79e8HqBD
 u2hPeaC11vg5VPqIRNMsZYs/oQ==
X-Google-Smtp-Source: APiQypLUKpU9EiJvK1iecbIeHBOlrvMyuNzM5Gu2fzf4ff9woYknhWdO7VYVk5snGgyndqBMx/wwdg==
X-Received: by 2002:a1c:7d15:: with SMTP id y21mr3195383wmc.57.1588257616098; 
 Thu, 30 Apr 2020 07:40:16 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:15 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 01/25] mm: Add a PASID field to mm_struct
Date: Thu, 30 Apr 2020 16:34:00 +0200
Message-Id: <20200430143424.2787566-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074017_990082_CD53BCCA 
X-CRM114-Status: GOOD (  10.20  )
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
For the field's validity I'm thinking invalid PASID = 0. In ioasid.h we
define INVALID_IOASID as ~0U, but I think we can now change it to 0,
since Intel is now also reserving PASID #0 for Transactions without
PASID and AMD IOMMU uses GIoV for this too.
---
 include/linux/mm_types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 4aba6c0c2ba80..8db6472758175 100644
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
