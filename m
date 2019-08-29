Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24581A17FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qwNLZStMHF0OfsFbQUeuTssAHXlalaksPzvHI9epN8=; b=cWHaLryWgqXE8m
	kTxzQGqxnZjH8po3rOl9WTot0j91HCmWmiAxriHA+npC4Ck7IAszj0IQGz3wKD7PeDMA2PBoomg+X
	D//IjQbqnmrtm2zpGjsZBSEIpw7DEanaZJ+ZYwYWdoVJxXU0t8Vzf0z6h3uVl/FL9NTa0D6wnZXpg
	SxtK1H1ozn2AIl2bAFoEKbPtxwlicTUK5Aq/DcWZfto31Mb0XpwP/lUEDc09Fksw1aEmEt1iKQs+g
	q1wg6qMYmHf8tIICBwACjzEWQO/XJhrLFqPT9ePqX85HkC0pqeI+5cPY2fPA3z0z8RkeHOYwLc6dr
	flrkx/PbPCOBginB+Epg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IRo-0000QW-4j; Thu, 29 Aug 2019 11:18:36 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRB-00007U-Kt
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:17:59 +0000
Received: by mail-ed1-x542.google.com with SMTP id g24so3665108edu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fWFDdsSRIYNKrRBdDSN7KSj6FUeTwnbHluq8rixbTiU=;
 b=QK7F3ESU41SJHkKfAxVhUhnoObCMRcjDeVy8XBXAejYxpeOt+AeNnLB5DhxnGzPZTP
 2SVCtoiYV0imTE3QaoiCdK93Uwz0ghTmT7C4bje7vpBjSbEj461Af+y8MbSZYrnR6OJc
 90jH6lwG2R68n8P70gZi9ZMrBnrrvn3X/lr7gT8ZcpnVRJWvoUB3IsrVky/rmi5AEBSW
 uWKkPfVSMlrHQs78MPEAgySdqXX9uf6SRW4UXQWzrh58WYWx7THUHN3dpksbqXawdh+D
 SVcbZtPGdWRnNhIS7772iNUia2YtTK4d3vb0INvBEj7VNgQecAAkl7abEQ0zMCnH3ec2
 RGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fWFDdsSRIYNKrRBdDSN7KSj6FUeTwnbHluq8rixbTiU=;
 b=IjZsKDOvqHjHd1bJmTVQCw0QK2adFHcCLkjUnpq4TZv0QaAjvPlgHOVjbp5Gozoxhl
 uSaVWix3vTYm8QKERRYR6z/nRF8kFlJXkT3Vp9LcapxsDwSfWloZErBEShRsvIlU30/o
 YG2QKOg1MEmZTkyxhi6IuSo7fPeOliYv6CPYfc544HqLRPug0irQahM3Lqoi+vzBT6RT
 jKbfm68ycRP9+j/GhqFXIWLRjxDFhfgUmjgE2uow+7/H/x/O2uqCoooERDc6dFbIugl2
 MAVFU5QI6qVZxfyE28IjNnJxT7IXE2asWT1M35rKOUjvypir+fPeYThDVgTxJeJHKr9+
 svcw==
X-Gm-Message-State: APjAAAVSgQ6D/DvoptmyTD/cIoDSABCkF/Th+fxPmBkeKPq58c0gCRP8
 22xWt+HLEzkTHbAKYF5z1V0=
X-Google-Smtp-Source: APXvYqwUQQWr7opeC82ffN614dN4qfpRwQm9wEqpQ2QRcIIdZGIO8kDGPJZeUP/x70eq+7DhXC+pxw==
X-Received: by 2002:a50:c19a:: with SMTP id m26mr9023066edf.184.1567077476308; 
 Thu, 29 Aug 2019 04:17:56 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id a16sm341890ejr.10.2019.08.29.04.17.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:17:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 1/5] iommu: Implement iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:48 +0200
Message-Id: <20190829111752.17513-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041757_685774_F9C6F0DD 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
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
index 0f585b614657..73a2a6b13507 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2170,6 +2170,25 @@ void iommu_put_resv_regions(struct device *dev, struct list_head *list)
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
index 29bac5345563..d9c91e37ac2e 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -434,6 +434,8 @@ extern void iommu_set_fault_handler(struct iommu_domain *domain,
 
 extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
 extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
+extern void iommu_put_resv_regions_simple(struct device *dev,
+					  struct list_head *list);
 extern int iommu_request_dm_for_dev(struct device *dev);
 extern int iommu_request_dma_domain_for_dev(struct device *dev);
 extern void iommu_set_default_passthrough(bool cmd_line);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
