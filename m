Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844071173C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdTPJYblSunCKmBZqUbHAS1SUsEK+3nqv1k4khn+1Uk=; b=CNDAPG6CL+uFB6
	9UV73FM8rq+lF5GHFB509mciFy3KQb2XvOTQF+8V9qkP89S7M2RI/zn2TkyIOMlnHVsYm+ZP/H3Te
	CKhJur0Vn8wZsqYJ2lc+SngnhfRgjQcY/oD7nmbmE9DlD6f0Y2ub/i/RIvYsAuhEnqdYOZeaBnxpJ
	lKHfoUdtLppF1ZKC/wthPiEhwipeb2R3PprtWwXwxKFijaz/26tfMBBadoVxW1S4Pw8A2pUos7Qjv
	B06XFSrs8o/BvjMsNoUYej2nPQfP8HEUCH/c9s1Tupfd3Y8nOMAacrPwCnCNxBMnL8E+DMxCPpWbC
	MTIay+S57UCGSNGzSg4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNWn-0005QZ-HO; Mon, 09 Dec 2019 18:13:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVp-0004bk-0c
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id g206so331145wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B8BypQ1D+CaqFBtDE2c69vGRS8hRXLPOwwy0I1wmRy8=;
 b=JMfFh5ck7ruppTPVZqznNBMI/hxmWCjBpPowpLszgpJgLI9svpqtubPWnw++UtquCe
 9/EsqaBZQOZiD9DeL4JMlv+RlivsGqAkmZEbjLdWnnircfNMMlJ+KtlYSYx/gvCJ8YNI
 8DhuuCIuawo38qojPOQ0Q7TnHAfbBJQJQiSSNgSOEUR7IiulB5I0UhAtV/G1D1eUVOpn
 7oy3FXhiC+cIOJIgiTqxwFhjpW5BOeV9b84Rc0pZnpwcG6kdaKbEAJ8w/ZWYfQ4X4F1E
 +MH4HodDir1ZRCvOKwV6mJVBSYrCv2uLhUaQ7DaUcVhzKdSMZItcR33jnufY5u22jwGq
 /Uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B8BypQ1D+CaqFBtDE2c69vGRS8hRXLPOwwy0I1wmRy8=;
 b=mP8s8Sf/Ep1BDliM2SinZ7ecFdI1LyPEC78qNBlXdq8TQnd0WAfp3prgG0RHHr1Ybz
 ztmma4jUDs03+jHayZXVZvBoB6kC3HmJ28JmKGEWkFtM1DqSFvXMOG5C5yDWYnj/cVQw
 tHw/VCqerSNbNLevjlTsuxW/sFMWDupmGxJUOwDt4kqWtia06r8WXXfb8VbbdgmvIMDq
 wFlI21Dslj6nxD1apk6NPLywDfO3d9y0fkTs2KhO9K+uPBLfA2qnrT3nVIKzMTea/5iG
 SJaAmGXClnWD/l92U/g/IHSoNf3Zn+vE2BIzqriNOeFrpylT44BymGXCuZbkbSBfseiB
 wE2g==
X-Gm-Message-State: APjAAAW8Mm7O7O1bsiUjIBrGtKv6LmGMhn3DAvAUJRR8/y9sGrjFY6Hp
 UHN9A3veTKHI5aTTOdxA4u3FGw==
X-Google-Smtp-Source: APXvYqy1n0Wv9Ft0LN1Rvvok34SZLAdZtkxTAoI3MM3VwUT99d0zPnBGlzSTfWyEenShrdSM85zXbw==
X-Received: by 2002:a05:600c:2113:: with SMTP id
 u19mr298745wml.157.1575915119329; 
 Mon, 09 Dec 2019 10:11:59 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:11:58 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 03/13] iommu/arm-smmu-v3: Support platform SSID
Date: Mon,  9 Dec 2019 19:05:04 +0100
Message-Id: <20191209180514.272727-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101201_080722_D56A9A90 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
index d4e8b7f8d9f4..837b4283b4dc 100644
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
@@ -2571,6 +2578,12 @@ static int arm_smmu_add_device(struct device *dev)
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
index 026ad2b29dcd..b3ccb2f7f1c7 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -196,8 +196,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
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
index 3a113c5d7394..bd46775c3329 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -581,6 +581,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
  * @iommu_priv: IOMMU driver private data for this device
+ * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
  */
@@ -589,6 +590,7 @@ struct iommu_fwspec {
 	struct fwnode_handle	*iommu_fwnode;
 	void			*iommu_priv;
 	u32			flags;
+	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[1];
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
