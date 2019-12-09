Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B64116F91
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UwkvpkAOnPMtU6ljZ3aDktPns3ipxpvl+ACbU3n3ro=; b=Ctw6RbDJuw9l6P
	Ft4TLvNnw0YR+RHo5e7EyhAPBiiNynD+LMaifUnaZgZtkDiKDpjKUiLzEvHXrY7fdjf+d0dnlZuAb
	FBzqn9Kqg7l6D6c3mQj8LrFSbqNa5IVWC4Zjxh08R2n51Jrdz3TFB/NotUa2auX46IOUZmFDSox6w
	8r3yRLsJ2KCG1UYethLRfVJYQg63gR1zfMcyJ/0clsNRlDfAtbS0cweSMxN7YqorylG1LATbAPYTt
	rBPqygyZQ8yyxeskgVTjD5iWbQxU6/677ZdHJIdT9dzY8ol6OjSeM9nKlt4lPnFLLojfQaMbfam4h
	zUqRKhs1hw2oWKHZJpCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKMu-0007gi-E8; Mon, 09 Dec 2019 14:50:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMY-0007W3-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so16543938wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kbWhKztcZroEY9HZuAqBCwxCkxfV0uGPkkrZZcpYU3k=;
 b=WohFdDSSvA/Lq0puBHpDkCHxitGoNFR5CPbiG8Gh21dQjYBEkHxEkHz5pt/EggFEGl
 MSvwQoA3HUt5LeOuCAVKw8u5l406d5KYqeeFyIeFPzsckZ7tZdkPITK7DSVqTN1HmmUa
 4jlRRbP20cLG2MJQUkku/EcxdimGb9pe30RNy/jg0N4fqT4rcp/oaGhGBcw66COjVv4U
 n50RxnFr9la4TIBdU9QlX9rBxSD5HoaS24xeu/PXIeqCxzva7HkNTNabB1YAzLW4TQbo
 JVFhCRcEHP3Lt66CiAAt32vwjUldm1KWQS2w2y2cDLyiBjRCa1/c7hKvPAxw2E9zGn5z
 zU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kbWhKztcZroEY9HZuAqBCwxCkxfV0uGPkkrZZcpYU3k=;
 b=RQaM7/GkV8uuht/mRCINIX4vTMiGMkcB18NI2M7P+5jnbMWfglx+Cc2iqxx10HiU8b
 nfexB2cl5Icf4/A4MeltLQv/1y+g+mnLXE+eiG+3MCQNbY4cOn7NHt0X8s9RltnPSphe
 mFaGPRko7yYfCNiGFtEoJq9Kz+sU3sAb/ddJt4N1z+xfvWGr2yPu59X4AoD/Fwr2X9Gr
 QsH0rbfad/23S5ukwvc8tLLeFGCPFtI4g5WLUDzSevppNamKq8qaZlTOD0EJMenMoIPe
 2UzaD9hSI/w9+E6eOxMrJSq7UtlWvXIvdlSeScLlDlluPsaOSGVLFWOYc25KV9OVfAjj
 RtwQ==
X-Gm-Message-State: APjAAAUvSJUbsGvc9YwjEuol6rtD/CX4ba46dFA0SDkUql1CQgl6b8N/
 MrKLNexktpeo+o4hVC0I9Q+pOwtb
X-Google-Smtp-Source: APXvYqzhZIggnLvtoyIgmYrF5RPdWaQ6t5xLlPHAXblTPP1Yw9lYQBIUb9qRPlNBGVW4ZHPpf+YYAg==
X-Received: by 2002:a5d:50d2:: with SMTP id f18mr2616447wrt.366.1575903012744; 
 Mon, 09 Dec 2019 06:50:12 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id u205sm10174718wmu.35.2019.12.09.06.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:11 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 1/5] iommu: Implement iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:03 +0100
Message-Id: <20191209145007.2433144-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065014_476102_9F4142E3 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Implement a generic function for removing reserved regions. This can be
used by drivers that don't do anything fancy with these regions other
than allocating memory for them.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/iommu.c | 19 +++++++++++++++++++
 include/linux/iommu.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index db7bfd4f2d20..a46d3bcafa06 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2229,6 +2229,25 @@ void iommu_put_resv_regions(struct device *dev, struct list_head *list)
 		ops->put_resv_regions(dev, list);
 }
 
+/**
+ * iommu_put_resv_regions_simple - Reserved region driver helper
+ * @dev: device for which to free reserved regions
+ * @list: reserved region list for device
+ *
+ * IOMMU drivers can use this to implement their .put_resv_regions() callback
+ * for simple reservations. Memory allocated for each reserved region will be
+ * freed. If an IOMMU driver allocates additional resources per region, it is
+ * going to have to implement a custom callback.
+ */
+void iommu_put_resv_regions_simple(struct device *dev, struct list_head *list)
+{
+	struct iommu_resv_region *entry, *next;
+
+	list_for_each_entry_safe(entry, next, list, list)
+		kfree(entry);
+}
+EXPORT_SYMBOL(iommu_put_resv_regions_simple);
+
 struct iommu_resv_region *iommu_alloc_resv_region(phys_addr_t start,
 						  size_t length, int prot,
 						  enum iommu_resv_type type)
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 1b4fbe703950..a249aa55596b 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -477,6 +477,8 @@ extern void iommu_set_fault_handler(struct iommu_domain *domain,
 
 extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
 extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
+extern void iommu_put_resv_regions_simple(struct device *dev,
+					  struct list_head *list);
 extern int iommu_request_dm_for_dev(struct device *dev);
 extern int iommu_request_dma_domain_for_dev(struct device *dev);
 extern void iommu_set_default_passthrough(bool cmd_line);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
