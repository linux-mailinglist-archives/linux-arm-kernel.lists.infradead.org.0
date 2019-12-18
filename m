Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F41248AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHMG972SU1DgPLAoGan81+Nkqb6wpzPa/ep5zzV5d58=; b=GMcZb3PG7812an
	XVtSmPP94WJ16qc3IVPYnYMO0OgtwdZCmaP7Nnnehssn+5YrRE4SdaELwmI59MI9vg3XEIw3wcBbS
	rUg9lS/duadNFM4NZKrHbRG+vdd+KGJJrTkPQTLEpWQEHT+usRMwHPYnJajQtUCIf57NVm/fuTrbH
	7pzMY0l27u2kKG79w+GDi02proBAHMMC5noO2n0caMo5uDlbGRAteN88F7WHctThI6jNiBdLG10gB
	E2xIFqXaPRT+2W1dwkzBl28I3ZcqzBnC+MLbn/Gm6OOFatAAvI2pcJuAsh915fcqcxE7WLYvOKqnV
	uFB68uyZhn+hS4oKviXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZbp-0000mf-C8; Wed, 18 Dec 2019 13:43:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZak-0008Qi-UB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id f129so1953485wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SGGKIHFMLqYbZpUM3Q33U5iSErWckLEQGV1WkcVEHI8=;
 b=f2l0Ln5lReEODkQsQ2uA5VClJ+tweCe1nxxLM25wOBTPUawR+6ac4Oh9JJIQXM7izU
 279nW2ndVPAd5tnmu5o34yBm34BQ/CgXFNXfsJYRQZTwly2ugMLdHjRgJNbuOPzWgJP8
 w99o0aQmIh2BnWDic7KwjuDGuyPTQIlwxumobg6+P6U3shJ7PqzEn+FvI5yMVIcR1SH0
 EoMluYkn1DeaDPsFpZoKJQYQB+0uCRwqUzjFAdzkKEN3PWmxuSikgYRh+9y0cxoQBnLA
 lLX0ubFtEcze1SbNZtpuQDnZRGz1S1577k2poja+bugOY23uMXwe6aKHUOLM3s4LpKwx
 dlzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SGGKIHFMLqYbZpUM3Q33U5iSErWckLEQGV1WkcVEHI8=;
 b=Js/jG6Rkoa+VmVgIwKypvtUzbSsryL4QQYu+wddRgnk0i3edUZVoIN523bEMoHWSCO
 f43dCNk4Yt8a4qObDjuWgpeBxKbYX8hs9MaC9AqOrp9WqFmy7wLe4XJM0Nv4oS7GMTyB
 1DhN8YVNX7SURThzbztEQMrk2RYB2B9VfwV4/QyCVdRZ3ymTErTb4QC0d2Q0Km3laUyh
 pK5jhoICtHLkHmpTkyttG+ghgwodiY+36vTk+zWdWTsR/mlN2af/w1IxlFN3iRFt9PLP
 IsTFVlKW6B2SlBM39LXYBgp5AVnS+QflaZY1LE2DCcejZie4SSNpOKk7f04VZZzcOa2L
 GePA==
X-Gm-Message-State: APjAAAV0470GXC6Ou/67VJVY0XV0GHQkEWNaLbcyOiLft5vRPsZIWqbz
 Kp9Qm922rpUfxn5STXsAoxapTfFD
X-Google-Smtp-Source: APXvYqzoxOysiicfnZ8kQPTnP3ixsfrrY57jj/OU+n4GiTzU41Y7nHqcI1DrYVt8Sbn788JPh2gokQ==
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr3530551wml.55.1576676537022; 
 Wed, 18 Dec 2019 05:42:17 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id v20sm2459763wmj.32.2019.12.18.05.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:16 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 3/5] iommu: amd: Use generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:03 +0100
Message-Id: <20191218134205.1271740-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218134205.1271740-1-thierry.reding@gmail.com>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054219_003577_906E12E4 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
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
index 7a6c056b9b9c..9ea6c4b8e402 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2638,15 +2638,6 @@ static void amd_iommu_get_resv_regions(struct device *dev,
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
@@ -2685,7 +2676,7 @@ const struct iommu_ops amd_iommu_ops = {
 	.device_group = amd_iommu_device_group,
 	.domain_get_attr = amd_iommu_domain_get_attr,
 	.get_resv_regions = amd_iommu_get_resv_regions,
-	.put_resv_regions = amd_iommu_put_resv_regions,
+	.put_resv_regions = generic_iommu_put_resv_regions,
 	.is_attach_deferred = amd_iommu_is_attach_deferred,
 	.pgsize_bitmap	= AMD_IOMMU_PGSIZES,
 	.flush_iotlb_all = amd_iommu_flush_iotlb_all,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
