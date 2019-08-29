Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02AA1813
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQGNeuk3SpKz9o5Rqgr1jVmr9q284zzPTcSqPeJo9TA=; b=bq0OnCJOdwBanX
	o2diF6baIzj7ZjG4lAGJZzKpjRWfyJeY3aO7JrG+khrEDXtBtMiYb+ntlPcKGazyk3zt3cOW04vn+
	FphprYDZBkAxwtT3oUUVYh/uJKLWpwXXk642b2tt/u6sw1m6Hshyfn/6Nku1mlTTlu2zmyk4SWKcp
	h71dH+flDU1Xelxzg7ptAwurtO09/Nt9dOBlKufnunh5eY9YMKx8yY0Yx6AjrSfuD0CKv5zy0pX9R
	Aj5Icd6JhsoX9sP//AZxO/5V/sXbuQ5O9ZolVP8/jFzzt/mfuiUJEadBrK4PjSSivH6RY9J6PP6Y7
	j0XtWhW4h/11AmPot8Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ISO-0000vt-CK; Thu, 29 Aug 2019 11:19:12 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRF-0000BA-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:18:02 +0000
Received: by mail-ed1-x544.google.com with SMTP id a21so3603674edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LdftSop4FAsgnu90xfPUb4VrwQYO3xWAqeCbQKmpXAw=;
 b=bR79jPl4rvUQxfm/WZpDq1DyXQdI5dFimvOylxLHdkb6p1bhrXYKf9MmrYBl0/NDfV
 3V0KXZcPjjyMW0Belo7iCxQHNnIV4kIOv09BCxcK2bbYCuy695AwiO5eh4dkivJzOPKc
 AQX69shgH8Hhh9F4L157CtTqKJnmGJ20ptg1GLQUxcxxi9NIOE3VFHT/Z2pg0PENmrCs
 L2RdKj9PwDhdL3ESrxoGYFkv6tO/e0YcUDV5wGhUCm74kKP2i+6S2/9RinrAlhMWlMYf
 9324oZ4PMlQsWRAeyKt88/GdGQpGRSFGCLerBTv+jtU6zc6/5toHP64wwZubb1VwbtS6
 0pyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LdftSop4FAsgnu90xfPUb4VrwQYO3xWAqeCbQKmpXAw=;
 b=Tdj7ImDNshKw/qrHa68ER1nC4hkJIoxm/ye5DbmS8a/ALmLRTlp7eBS6XtJdQeFD7s
 1JqumQ5/0KYE+hLqcmy/vl8alvOu2x+GI7aPaTawmey87n5E/ai5HYe5UIzM+BNbiPcG
 o/HNcgX1/vPoVkxiJl4lNcwkA71+mWMaQKSyDuTJtX/9cYeulHoF+WeUpuTt0ilf6jH2
 AMUfo97aG3kRpeyh5XsL7DM4hsT55cPjjTaPawxFcx6JSxH9ASSHzTLtiISmbBQmzd/8
 ivnQpNQUlHwdXpU5yblgcHALwPvJdZGRG3m3b2utlLKmzw+g2yloNOffSayo+nt5loYQ
 sXvw==
X-Gm-Message-State: APjAAAUNQr90BKpVR2aDslukiMaLvUwPCNNRp2auko0xgYwKKVFLgXFQ
 3NyB7QZ8jIsKhqKvmjMLcVYESkwA
X-Google-Smtp-Source: APXvYqx6xumvHaa0FS6ceR4LYkovD8dan+j5kQuVNZo88mSfLqaVgTKRmRZEKXv0Df7oSZRTvjLY2Q==
X-Received: by 2002:aa7:df03:: with SMTP id c3mr9130739edy.112.1567077479905; 
 Thu, 29 Aug 2019 04:17:59 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id w3sm390212edq.12.2019.08.29.04.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:17:59 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 3/5] iommu: amd: Use iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:50 +0200
Message-Id: <20190829111752.17513-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041801_311523_DAF80378 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

Use the new standard function instead of open-coding it.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/amd_iommu.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 04a9f8443344..7d8896d5fab9 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -3160,15 +3160,6 @@ static void amd_iommu_get_resv_regions(struct device *dev,
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
 static void amd_iommu_apply_resv_region(struct device *dev,
 				      struct iommu_domain *domain,
 				      struct iommu_resv_region *region)
@@ -3216,7 +3207,7 @@ const struct iommu_ops amd_iommu_ops = {
 	.remove_device = amd_iommu_remove_device,
 	.device_group = amd_iommu_device_group,
 	.get_resv_regions = amd_iommu_get_resv_regions,
-	.put_resv_regions = amd_iommu_put_resv_regions,
+	.put_resv_regions = iommu_put_resv_regions_simple,
 	.apply_resv_region = amd_iommu_apply_resv_region,
 	.is_attach_deferred = amd_iommu_is_attach_deferred,
 	.pgsize_bitmap	= AMD_IOMMU_PGSIZES,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
