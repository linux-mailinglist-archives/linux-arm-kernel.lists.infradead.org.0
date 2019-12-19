Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0D126739
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTCXitZlT55MRsOKX5+ALSuAIwxcY1n9OHB7DqGt4Fo=; b=uOrAFgR4vUEmMb
	+fIOwFFZ+soNUQCloYZy0UykwrKY5Mjnkk0MyCHiFWiBgvYGq5iEnP13IkTzUbiTQabk2XTIO0T2d
	MgjV5ncyvtqTDsNTLD3A+/t15moCnRnBLIg9ZLjgY/IfcDmU4U+fJOs+JsRQwHKUT/6Cf0draaIZ1
	HaYFmcB5W0/7YmKPfkjC/WnCLr4kMD16wuxAA3QLN5Sprc+kw2SuUCTAmneEmssIEudKHktsLSkgA
	GGnRsv6He4sK/03eC5f87igSTImayyCoytsPe4rLYk0zk34LJuz3G4rcX7bYHilRlWQWIQwQ5tgfr
	wTIeH0DsS6PfECJC12Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihylV-0002yN-QJ; Thu, 19 Dec 2019 16:35:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyi7-0000AP-Vi
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id u2so6283562wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=en1Diu3sI6Wm13W9qcASbGXcjcSPf5WXodRzGlHYYvg=;
 b=dgEdguI1vFCV7YNVUg0oEi5hoedAB5SCo0EHqrgrYN2fDZQP1jM0e2gVFmXjAsarm9
 sE3jEiVBfo9bIxoraETghmWio/hExZaK0G2MlaAUWWPlH/s/lgj8y2aPluLIJwIiWDO5
 nPCsL9EFTnWUXXPdeHMf2mqD8ncvbLtOVcjLDDmK20sqR/zY19gWGF0iPqJMOqrpBHzU
 P5l5nDoT+24rRDoL/bDgoMasOpqDS3TpLXI4nHsZ6shxvb0a59G2E8TD5mPZoPT7AZm0
 TE/nR/n+4AfO7nup111L94qgV7A8exhXah9vnGXYO9tpJuoHYa73upM3pfuz8aU4XUjD
 EyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=en1Diu3sI6Wm13W9qcASbGXcjcSPf5WXodRzGlHYYvg=;
 b=uDgff+rqtFgaSTBaabepa8Qg1JwaFs7LJtbVciJwdcWvQiZQrWbmc0mdiqQMiqc30q
 J1xdJkTIQVNjxCzEm2paJFdTsAS2wAkJlXOVElUiyZZVwdRnWqWn742LdsOOwE04B4rx
 HLwqUPM3mtZgya7XZfWwnu/egMe9Yikf572vGFwQsPAL/0VUqHZXlAh9VFiOSxhgDPDL
 vzOI2jS/A8NawQ5TK6k6C5s1rsHII55io26IbwuXCKmYd+W9P3yWQnXNYFG2F2Fzwf/6
 PR+IUkH9uj8yRZFQEgQx8VgM93muxfoDuwJSRXe/Iu9p9hOgTVSZQ5T7FBrnhh/NjbhS
 nAfQ==
X-Gm-Message-State: APjAAAUCtc0JPU+Cehp76rQjGVaJPZHXmL1HhI/S13qH8pVenYtOnuqE
 VntWV66IMIum4KVFa39GxazSmQ==
X-Google-Smtp-Source: APXvYqz7aYfTKLRMIc9dIpZKfGpZT6KS6fOh8tdIld2RBmduglCWax9u24T9mQN4/gn+82GrDikg0g==
X-Received: by 2002:a1c:7d93:: with SMTP id
 y141mr11448751wmc.111.1576773093503; 
 Thu, 19 Dec 2019 08:31:33 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:33 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 11/13] iommu/arm-smmu-v3: Improve add_device() error
 handling
Date: Thu, 19 Dec 2019 17:30:31 +0100
Message-Id: <20191219163033.2608177-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083136_042787_9392FFE9 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let add_device() clean up after itself. The iommu_bus_init() function
does call remove_device() on error, but other sites (e.g. of_iommu) do
not.

Don't free level-2 stream tables because we'd have to track if we
allocated each of them or if they are used by other endpoints. It's not
worth the hassle since they are managed resources.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index bf106a7b53eb..e62ca80f2f76 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2837,14 +2837,16 @@ static int arm_smmu_add_device(struct device *dev)
 	for (i = 0; i < master->num_sids; i++) {
 		u32 sid = master->sids[i];
 
-		if (!arm_smmu_sid_in_range(smmu, sid))
-			return -ERANGE;
+		if (!arm_smmu_sid_in_range(smmu, sid)) {
+			ret = -ERANGE;
+			goto err_free_master;
+		}
 
 		/* Ensure l2 strtab is initialised */
 		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
 			ret = arm_smmu_init_l2_strtab(smmu, sid);
 			if (ret)
-				return ret;
+				goto err_free_master;
 		}
 	}
 
@@ -2854,13 +2856,25 @@ static int arm_smmu_add_device(struct device *dev)
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
+	ret = iommu_device_link(&smmu->iommu, dev);
+	if (ret)
+		goto err_free_master;
+
 	group = iommu_group_get_for_dev(dev);
-	if (!IS_ERR(group)) {
-		iommu_group_put(group);
-		iommu_device_link(&smmu->iommu, dev);
+	if (IS_ERR(group)) {
+		ret = PTR_ERR(group);
+		goto err_unlink;
 	}
 
-	return PTR_ERR_OR_ZERO(group);
+	iommu_group_put(group);
+	return 0;
+
+err_unlink:
+	iommu_device_unlink(&smmu->iommu, dev);
+err_free_master:
+	kfree(master);
+	fwspec->iommu_priv = NULL;
+	return ret;
 }
 
 static void arm_smmu_remove_device(struct device *dev)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
