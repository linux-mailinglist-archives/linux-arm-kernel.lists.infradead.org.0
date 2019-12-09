Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A5A116F93
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltH6zS3K2QbdC0mM6KDrUSaJpKW0NDQVoRVi3FIbxUc=; b=TMeODZl4RqIK32
	yT7p8L/LgS19oNXzgiNY3FfKmMy1F5D7SAGI7erI/55b4fV3aVk7n7pNT3gltKmaDWyCba+JfcqcW
	lSNI5pQYcpKZPhNnBoCztw+tYWRwELMWJMniY7+dZgkucRU3r4ZjS50edRQyjR2jizqo0VcBAsi5E
	92LtBWEBO3rnNyJtOCztfxdsOWxn+rqnns9V3e/Vc8qbnowCpV44GK/qEANKKair2+sMgGooaJ9L2
	a0YmNgYfCglEc762KPwjAqNpy2eq0BeCkG5jSOrOjNIc2FHI+0nRgUNREJ8DCNnq/JsSrgHgwZxaQ
	6K4Ok1QUKFOT1nT90r2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKNH-0008AY-SY; Mon, 09 Dec 2019 14:50:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMc-0007aL-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id q10so16504114wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=li3aL6AKer4CD9SxvytTfEJufU4SX6U6gX8As2O4Eqk=;
 b=sIbbmsAKQOinyqrXzcC99G76KdGrMEBizkBgPtvaRxn8ZKhsfY5X977UavqreA+/rf
 6IRczi+ABL0XqlQHMKt9eOe/MtYJQ8CvDjSThFwoQD3J3AyC56sPJTUrEaZLgLEja96e
 dK3bdVprHh6nx24uLGY2MnQvm+2b2lI+H6jfYdfzuO/LR6dBLTl/wDDhsIg6/WLdtBs3
 yqlMPfNu6+7i4kwgT6zFfxpN42GOZF6RWrvZRmmMr9cC0Y8YBjMEUsyaLLL56p2ZicIE
 B5eHoYivdlm1CdYuboV2OPBvt7Kjl4Ce5zeh2hZgXUTSES5/2vzXNFrlcSxEi9+doRrC
 Gk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=li3aL6AKer4CD9SxvytTfEJufU4SX6U6gX8As2O4Eqk=;
 b=HqS3THVJAemEBjMccxwCLkUBYGsZDUpqswF/n9rGUPiNq7dKvglKFbVn4AQ72pcv2h
 5Pm/iqhWEVnCnXh/OEOQ65lCUz3elA942UlmNf/G0sBnU721W+KCzX2NfLqqBPZu60PE
 ldZHnZoxKuwARLIU48oRAEFo7DbSfOIVkCtXFSjSYenjtOshEoaCaf26/NotzBvaXdk8
 oFnZi4BHjKQgQvADhz5Fp22wMSQdG4MQw2OAKOMJgpu5tIKEBEysaEn0SjPiTHfw9/hq
 YnhIUTLZzJ7tD1HuLHmtYwVMo3cUtmFcoDBa9r/w/USlagstWbbre6cnWgx5YlF46HSX
 LvIA==
X-Gm-Message-State: APjAAAXKBWNSCZvMTMFIIp2w/4piFAwE7EsrMjiDxgKjLqfux+6tFBwm
 XuIZisHTm8uZyWRA/F0mFJc=
X-Google-Smtp-Source: APXvYqzHwIqbGPCxhT3/97guWDjWbFdKkbF4/OZcFZLfBqZtJeRr9aLwAe1boBI+1nQud1IyWHXeDA==
X-Received: by 2002:a5d:6ac5:: with SMTP id u5mr2572334wrw.271.1575903016835; 
 Mon, 09 Dec 2019 06:50:16 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id d186sm8590wmf.7.2019.12.09.06.50.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:15 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 3/5] iommu: amd: Use iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:05 +0100
Message-Id: <20191209145007.2433144-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065018_331321_A14D3291 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Use the new standard function instead of open-coding it.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/amd_iommu.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index bd25674ee4db..5896cbe6106b 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2641,15 +2641,6 @@ static void amd_iommu_get_resv_regions(struct device *dev,
 	list_add_tail(&region->list, head);
 }
 
-static void amd_iommu_put_resv_regions(struct device *dev,
-				     struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 static bool amd_iommu_is_attach_deferred(struct iommu_domain *domain,
 					 struct device *dev)
 {
@@ -2688,7 +2679,7 @@ const struct iommu_ops amd_iommu_ops = {
 	.device_group = amd_iommu_device_group,
 	.domain_get_attr = amd_iommu_domain_get_attr,
 	.get_resv_regions = amd_iommu_get_resv_regions,
-	.put_resv_regions = amd_iommu_put_resv_regions,
+	.put_resv_regions = iommu_put_resv_regions_simple,
 	.is_attach_deferred = amd_iommu_is_attach_deferred,
 	.pgsize_bitmap	= AMD_IOMMU_PGSIZES,
 	.flush_iotlb_all = amd_iommu_flush_iotlb_all,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
