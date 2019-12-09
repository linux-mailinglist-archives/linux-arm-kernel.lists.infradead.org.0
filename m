Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862211173D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLu1XyodZ7ug5gbzW+SbjehjeUJIlpxlM4tDMGDWq8w=; b=V8gPZaHgXKxVB2
	ZRDtOhiMn9EibXBH4YEnqGnpGkpAIpVPznOxZ2TJLzn6xGFPGSiutH6YNArLlgh13LlI5rGELVqnD
	zA1SxryjPRsyz9v82XIGG3/2l7ZipqsdEDmIMak5Ec8YPouCtBqj+yF0FTXn7NjsrgCA3odZwgN00
	nOo27ylrhp86OOUv/4kTNkfAamLPwcevDeqx07ol6GqtvubyuCYAm2iIZQH+RwUyaCS7BkYRMQRYh
	yN+dvagFgrI7lvFpCDHOGwpXvmCEzGZeL3BuAqVcFqf5p10zeSIDuL4KRMlWFPyfZwnwOVhfJLxpH
	73CleCyCjmwacGiuOxbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNYy-0007iT-F5; Mon, 09 Dec 2019 18:15:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVx-0004mg-I7
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so314707wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dS9JHQoIet3pVv6eJb9kJhT5ftY7Ua+yYZWdXaG4gzo=;
 b=jHfiTmHM4CgLf+XW4XJxxOpTyiR6rKXGw0zHau9qPm2vGLuTDtwrk1iEmqAtUcL0i1
 GsCQCDgc6hgt4m1sndQFIWIIUKcYhL3IICK4Fqklm0GGYn+i8/U2GBdcVIS7kpyJntqK
 FncR+fmMSAF2mS9jczjFGKFdm/z/keSkGM1LzIOx+yDEkmzwl+Dx3hiYEEq7n5Ta8Vlq
 ruclXWt71bhEl2VL8xVlpMVPiSsHqe3n9I6P6HD+ta2oXHF1cST8lor+yZKxe9kLQzqp
 //OPHKtrlucEqJ22vm3L1SlVRIUHcuhtXn61mRWuGRC0y+tJPOx0Fb2FHsmhDZ9xMc1r
 golg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dS9JHQoIet3pVv6eJb9kJhT5ftY7Ua+yYZWdXaG4gzo=;
 b=uSIwaWQ8xcfB8B92/Kp5UdNEzdywE4LoG3Q915/SlRVz9fTgxiKOYtPIukDlhpGcDU
 qFv0kcyOXXpknXuwBpsyVNJoNk+/GDCAzAAX9XfoU9ducRhCoulkaX6/MxqsOGzIMWiK
 uX/+hSX8DbhdrNXbW3cZYB0nAy65tKyH6Jm7MsmDtP8+cRRgdDecMH4YfOoyBkXREc+7
 W6Fd9uS9O4SFzsp+jI0pcMgOGNT49n3y15hZPfQRKIvXPrAW3NR6NUqdx69cQtv0ie9P
 SsY9QJ2M6qqookrBbOZIvOa12xAs/g07tqhHzdu2H0qt4cfqL3lXGuR7HWF3pMaBswpR
 +/3Q==
X-Gm-Message-State: APjAAAUP3mEPV4GcLZ2lhuDamCgVOJYoocVUaKi2pmm5UItdtve8Nhsd
 KfADagpAKEac9OiPvxziXiMaZg==
X-Google-Smtp-Source: APXvYqwLObPVApm61pTMGQoHPnKg/K//kDJoQJn+2j5gLjfljwmJA5TLzDgo+SfmbkrNRrb8uanIWA==
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr394499wmg.66.1575915127985;
 Mon, 09 Dec 2019 10:12:07 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:12:07 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 11/13] iommu/arm-smmu-v3: Improve add_device() error
 handling
Date: Mon,  9 Dec 2019 19:05:12 +0100
Message-Id: <20191209180514.272727-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101209_761910_4C6E0A73 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
index 52adcdfda58b..d20a79108f8a 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2836,14 +2836,16 @@ static int arm_smmu_add_device(struct device *dev)
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
 
@@ -2853,13 +2855,25 @@ static int arm_smmu_add_device(struct device *dev)
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
