Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D0EF4F95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:27:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t3YnoyRwcJThG7WzGbxLh4/bpTMIT0gQ5OQBux64X4=; b=oddNWGd9hpbyFd
	23y1Rmk1nIcxDW6IxiFrnU/De8by3HzgpjhtpUcpFqPXWEogKzaC+owJoGLLbJBHttrmRUQ7+VgSi
	9/hR4vc4t5ZxaKklqOmTPtWUYjMkoxhvGC1NMxTvZQmlwcfBDABtwBooqXt/zVl1BIi7q+tFUD/50
	m91XxL1Nt9ESjxM/D66J3eNIo5bCjfV3HiJ0CSwZ69RmpqXjue9zwetauCJtIR9IxBm5FqU1C0L4Z
	J5MFD5mXCjzViTcfXxK6wH9lXYQP2sA00GsrlTeXk5bmrrQc2S5JP61zPd21OJDhkMV1VPyfKYfac
	aQ8wn5nP2BFMY2fIwBZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6Af-0005Uc-9Q; Fri, 08 Nov 2019 15:27:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT69z-0004xx-G5
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id p2so7537962wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SJ0pi6TcxZ7peU2M0iysnkfrxFwiFSB7n/XBu4wivSo=;
 b=FJH028lD8udbYUj9HmW9HX+1pehY+1lWWRbuMjmApuHYEIKQLcSg0vICaIv4+60xTP
 SZObRA6SwQO9RwBVxZugqTUZI+vA8BvgqNj052zrmBwRHwWzaojQtHWRGbFCtztastzr
 pmnt/WYGWHFKd5AIcAMo8pJ6oAExUKnBYXeKVhe6kKjq+nXxzRdtnQJqvWgIRIrK+0ku
 4w7Dv2dYtYuKDn+v92hj11WbpQkpItAZUnzsJTk2q+ms3DMjKlct9veZzcMJgZOs9qQH
 iADkZLXOARDNATZhqDbKKo0FVoWdnh6jiRIOlQnG9iluhoxnk9D5UjR8R2mtDUOOVWdC
 O1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SJ0pi6TcxZ7peU2M0iysnkfrxFwiFSB7n/XBu4wivSo=;
 b=CsImCvZDzp7ZBFnO3WfgMZJWBHifN9AB3Zn/nh0lCQa25iADiKOqni7wXuoXpWbMqN
 SuSGqr6QkpAP5IXMJKoxrihv08/8bUXucH2wN6ZQ7DH5m9vil8cyzH39xgMcFiz+513u
 vGR3Y5asLs7kruiDiKwEETBCXbFVjAkA0iCLlTtCrON2DlftP9JGPPllsIpSiiYCntS3
 f0wsUtDSXosiWYIjInEcqc02qqaeTo8vRLO/fj3VCBksw/2o2XffTelwCginZEfa7lrC
 SB+NKJ5I+hWqb3R8EW8YGLXVpRZdkpUFNph0gTMOhQs5BngHmsBoMUZU2qRbIklccv9T
 OEWw==
X-Gm-Message-State: APjAAAWVymGBCYH/00mM//eCpMC1/3t/DQScgmFyDb+ckUZrwGAQya08
 FoBumRHR1d3GOOCw94XVbSFyhQ==
X-Google-Smtp-Source: APXvYqwyU++SQOEON9veNpljNNQZ0DLUXxBMuURhZ+hXhsR0MUMzQbS2imzKSghHCvbQFiMGMII/Dw==
X-Received: by 2002:adf:edc5:: with SMTP id v5mr8967125wro.322.1573226809763; 
 Fri, 08 Nov 2019 07:26:49 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:49 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/8] iommu/arm-smmu-v3: Support platform SSID
Date: Fri,  8 Nov 2019 16:25:02 +0100
Message-Id: <20191108152508.4039168-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072651_541161_EB171E38 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For platform devices that support SubstreamID (SSID), firmware provides
the number of supported SSID bits. Restrict it to what the SMMU supports
and cache it into master->ssid_bits, which will also be used for PCI
PASID.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 13 +++++++++++++
 drivers/iommu/of_iommu.c    |  6 +++++-
 include/linux/iommu.h       |  2 ++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 8da93e730d6f..33488da8f742 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -292,6 +292,12 @@
 
 #define CTXDESC_CD_1_TTB0_MASK		GENMASK_ULL(51, 4)
 
+/*
+ * When the SMMU only supports linear context descriptor tables, pick a
+ * reasonable size limit (64kB).
+ */
+#define CTXDESC_LINEAR_CDMAX		ilog2(SZ_64K / (CTXDESC_CD_DWORDS << 3))
+
 /* Convert between AArch64 (CPU) TCR format and SMMU CD format */
 #define ARM_SMMU_TCR2CD(tcr, fld)	FIELD_PREP(CTXDESC_CD_0_TCR_##fld, \
 					FIELD_GET(ARM64_TCR_##fld, tcr))
@@ -638,6 +644,7 @@ struct arm_smmu_master {
 	u32				*sids;
 	unsigned int			num_sids;
 	bool				ats_enabled;
+	unsigned int			ssid_bits;
 };
 
 /* SMMU private data for an IOMMU domain */
@@ -2572,6 +2579,12 @@ static int arm_smmu_add_device(struct device *dev)
 		}
 	}
 
+	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
+
+	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
+		master->ssid_bits = min_t(u8, master->ssid_bits,
+					  CTXDESC_LINEAR_CDMAX);
+
 	group = iommu_group_get_for_dev(dev);
 	if (!IS_ERR(group)) {
 		iommu_group_put(group);
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 614a93aa5305..aab63e9f283f 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -194,8 +194,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 			if (err)
 				break;
 		}
-	}
 
+		fwspec = dev_iommu_fwspec_get(dev);
+		if (!err && fwspec)
+			of_property_read_u32(master_np, "pasid-num-bits",
+					     &fwspec->num_pasid_bits);
+	}
 
 	/*
 	 * Two success conditions can be represented by non-negative err here:
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index f84fe76f0eea..0a3d9c3c368a 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -576,6 +576,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
  * @iommu_priv: IOMMU driver private data for this device
+ * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
  */
@@ -584,6 +585,7 @@ struct iommu_fwspec {
 	struct fwnode_handle	*iommu_fwnode;
 	void			*iommu_priv;
 	u32			flags;
+	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[1];
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
