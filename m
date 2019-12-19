Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F7C126721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw2C7oicFDsx/r91axA2+qxdFePC9AQ4CIYjLaADfI4=; b=CpZwtOL07k8sd+
	5POu124+8F7Pdb3lE/GPKnmgokWb5RDyTH8xCLEFx1TQW+DC/YTVLg9GgfuYy7Sxs42bjrytwWvWH
	yW8uyN8hZxvwDwEK+aANEqyOYP/VYBpA/vUK8NInz44AstzBS6mKu1meehleqgtNJNWORCs8itK1P
	1Ny6eJSqJte3438xw0Am/TXbEfwlH0A85a7WCifWxKCJqcF0U4+KpUvEABJbdQip7Z9XcNVfRHq7r
	hHJTwUEhEg6F5ZBchrPrcinKFV0cQvyfsHKPLmGQpbBOooVYtKINETH9B5jBjp2McyLGIVOsc9fFJ
	Emb+wJFh6rXob6oJH6NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyjA-0000kx-I2; Thu, 19 Dec 2019 16:32:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyhx-0008Qf-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so6643569wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SVox6K0aClSgQAj4ZePzlVYlKOAA5RM1JxWE0eeJ+CM=;
 b=KsJmWTGBulFgtHxInjLbvLy9PpRX0GteBfzNXmUrDZJrH+ZYaBQIa1dHh47VnHT3Us
 G2OJX3xgvKyS2XK3zuqcw1ZOXlKDVBJQRRMVF0nOr9xyj+lDw01Q6Jd6vR/rkeYccEHt
 yJOWYb/rjfBgXbMc7wgknxeamdVg+ZZN29ommW/LnpTHOjUz0VpuiDmfABbg1QOhKWEP
 BK79LYU2nE8gQz8QcvCdTDHowZsM7F9ia5UVAVVs4wcvu3pPH0s1tj25cZ4VQrLWBmC5
 SAfWsR+i6gOKs+s2DrspT9Ahp+NfOeXnTsawx79CvIM08A0Wu8V+jAyezZPtTeJVSYeM
 zLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SVox6K0aClSgQAj4ZePzlVYlKOAA5RM1JxWE0eeJ+CM=;
 b=mIjxGRk2+QZesLk2z65YuspqcWgmvuFmH+pvq2S9qs3aMk1QBhusVBizSufjDCqpO/
 InTlK8lnGZsV9Pg9K8LVqfVnzJy3MiDsitltor8RYQmsqkSvCjCmNi7ef4Xhw36eWm5K
 Bm9nyZwOWtl/1RgBFrOvzdazah7uIkPN0aDAo0CP0BW86uqL+6w985But8Sa5YnKevLs
 0+zhkdxQ5a2bSiTL/1Daiykhq2k9fNK/lX7qbiV3ZNRHFo6jXj4/qsLwiiSehqTk59l5
 J8apN2OmjQqZkZ4yoQ29Sx/W8y74+slOkPSLAVPcsLpFO2VTjv3MSUVku3nQqeqEuXtw
 V6TA==
X-Gm-Message-State: APjAAAX+Wbc2jcRYrdt0kGmvIR3RLQ2+gimDsPdWUMSuA7qqemMnSl/I
 i3jDY+W2oiXUxSVhWX88ft+xag==
X-Google-Smtp-Source: APXvYqzR3BRml1Osw8Pe6sNrf17z34IMgIAsII/16lKoUagOiEfpACFYNxRXRQ+jtWBFUTIlzmF8Sw==
X-Received: by 2002:adf:eb48:: with SMTP id u8mr9977279wrn.283.1576773084271; 
 Thu, 19 Dec 2019 08:31:24 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:23 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 04/13] ACPI/IORT: Parse SSID property of named component
 node
Date: Thu, 19 Dec 2019 17:30:24 +0100
Message-Id: <20191219163033.2608177-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083125_945943_5B6E2FC0 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Named component nodes in the IORT tables describe the number of
Substream ID bits (aka. PASID) supported by the device. Propagate this
value to the fwspec structure in order to enable PASID for platform
devices.

Acked-by: Hanjun Guo <guohanjun@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 33f71983e001..39f389214ecf 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -11,6 +11,7 @@
 #define pr_fmt(fmt)	"ACPI: IORT: " fmt
 
 #include <linux/acpi_iort.h>
+#include <linux/bitfield.h>
 #include <linux/iommu.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
@@ -924,6 +925,20 @@ static int iort_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 	return iort_iommu_xlate(info->dev, parent, streamid);
 }
 
+static void iort_named_component_init(struct device *dev,
+				      struct acpi_iort_node *node)
+{
+	struct acpi_iort_named_component *nc;
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (!fwspec)
+		return;
+
+	nc = (struct acpi_iort_named_component *)node->node_data;
+	fwspec->num_pasid_bits = FIELD_GET(ACPI_IORT_NC_PASID_BITS,
+					   nc->node_flags);
+}
+
 /**
  * iort_iommu_configure - Set-up IOMMU configuration for a device.
  *
@@ -978,6 +993,9 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 			if (parent)
 				err = iort_iommu_xlate(dev, parent, streamid);
 		} while (parent && !err);
+
+		if (!err)
+			iort_named_component_init(dev, node);
 	}
 
 	/*
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
