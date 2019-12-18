Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3D71248AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l03jh9p2Yqve8uLDS1aMM/AcoG8JQZ9lw4dr+sRbVsc=; b=CR2KmgV19J1MNp
	JNiQhenOyKZP8FK2vm2fhP7bCJu8Hxg/6IN/ZOklXNmiTbap4LbMOd2bQTCCmP8HRzhI8wJelzNgo
	X2mvDvjHaU6F8EcwOkyZZzEuq78nU506aZD0IpnMscELfjRmsI5d30qGZ9tEHXwl2BxtFSQuQ4ffz
	R+v/Sag2L/FBcuPYR56FriANCBcvpCoNV+hFbthdwjvDYs8SxhgvWSfoZaxqFlBO+YWkbTQRGGhd/
	pFuGUvRNakJX4yLl2U4n+jjafEe7oZvjw1OWJfHTf/8QheY3R7fJK0fc359vkbaJB2F6uqqJdLBxG
	rPR/jfrpaZGxj/Ar/7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZc6-0000zr-MA; Wed, 18 Dec 2019 13:43:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZal-0008SM-Qp
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so1953583wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v3rAFL7K9Q66L7E0oU9UDZZEL6mZmsWSXH1Q6ZKBGZs=;
 b=Plvvtq6hNBzRemtmfg0OOQVAKEe2ZS0q6GtZhWvDhDXvc8xilZ19uFoCpjx74jEXpJ
 ks8P8qCAJWKBqhbaDtBQL1Hih4Ql/EFZcnQYmPK8Aa3/syWbywIPuENOUCwYMg8OWM0N
 Kta3CaS8pcL1eVz+IsmUITZ1gBjilPkpT22E5GKOS+U+dOu3PajJeL3B2YPKRofAlOJa
 3lBOjImT4w83A8/YZWoTyR1N4boV1D1OLTN9LClsnhPVs1lUYRU3EPq1MT+v93zwns+h
 v3CI/i+73+x+7Vvtu8JjixWZXmrddJnac4ndk4DEu9LRISgOWpzi626BNfCgGsz/3sdd
 ktVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v3rAFL7K9Q66L7E0oU9UDZZEL6mZmsWSXH1Q6ZKBGZs=;
 b=piV48fMEwS5v3/4AhOqgtkeW0aIPr1hfsuPDI3TeiWFg6t+HMHK8npdiBmv1LQrC2o
 6mXnQhQDHpwU7inA7/WOBibrpLCNJlfulrxCZjRcq0GqZxa/Bzh5eg3QNmbo39qhANCM
 BLVQvBxCbcqLeRglaMRnW93DEKsIWFheluDmgikfA52GuJn2iAtKITs247FljnAhnxc4
 rZpXf3fObA2NmMXwrHFBcaBRarYwcEjfQH4KUmX1QZTzObhjTAIheKCB2ht0pL3xFda0
 iU8p/pAT7Nr9QM4L1nzt/RJR9cfoojV+pcBH2s53SI7Hk5zPIKoO1XA9qItBnKqwnTLZ
 VuHQ==
X-Gm-Message-State: APjAAAUMEFVKhdfJIU1GdlYOrBXyPBmTc3VC3Yf17dR1zXpD3JNUvyxH
 Tlb+sepTNIyvBD4ITdHIZDk=
X-Google-Smtp-Source: APXvYqyJ1+myPu5YtHK5IGKXWRZX/+yLfGrjNRT7nLErzDPqwiTRHjmJdpEdLCQnss548bO8HuF5Ag==
X-Received: by 2002:a1c:6809:: with SMTP id d9mr3439282wmc.70.1576676538578;
 Wed, 18 Dec 2019 05:42:18 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id q11sm2667810wrp.24.2019.12.18.05.42.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:17 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 4/5] iommu: intel: Use generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:04 +0100
Message-Id: <20191218134205.1271740-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218134205.1271740-1-thierry.reding@gmail.com>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054220_012399_A8B67BEF 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the new standard function instead of open-coding it.

Cc: David Woodhouse <dwmw2@infradead.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/intel-iommu.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 42966611a192..a6d5b7cf9183 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -5744,15 +5744,6 @@ static void intel_iommu_get_resv_regions(struct device *device,
 	list_add_tail(&reg->list, head);
 }
 
-static void intel_iommu_put_resv_regions(struct device *dev,
-					 struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct device *dev)
 {
 	struct device_domain_info *info;
@@ -5987,7 +5978,7 @@ const struct iommu_ops intel_iommu_ops = {
 	.add_device		= intel_iommu_add_device,
 	.remove_device		= intel_iommu_remove_device,
 	.get_resv_regions	= intel_iommu_get_resv_regions,
-	.put_resv_regions	= intel_iommu_put_resv_regions,
+	.put_resv_regions	= generic_iommu_put_resv_regions,
 	.apply_resv_region	= intel_iommu_apply_resv_region,
 	.device_group		= pci_device_group,
 	.dev_has_feat		= intel_iommu_dev_has_feat,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
