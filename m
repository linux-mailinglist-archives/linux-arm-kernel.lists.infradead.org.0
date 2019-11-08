Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E140FF4F98
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoDHP688rvbHty+21cl3WqoQdDn0DhS48qrVZlTnlkI=; b=RhjzklH0Jz0BEX
	V9gBRhnwzBUrpAiCZTi4uswsyAHLt3GoyQoNcz79fpSjP51N3QWZTYoEiTzpMWMDU+kInnfDHKVFC
	ujnhpl+eeT033LHpCUKyDtb8kBtMXbjVpStYz6RzfRACwyAtWMDsOiyYUflWdvm3nIL8W8fBl+nx7
	vh4Km/OQl9gz1raBdtAZlUs9raVDyZCZomlBUptWSkkQ69fopFbVtlTQ3yP44CUBJZ/ZaSj6R/LRa
	BQ5YGSb9Y9VGtps4GXbeC7iVuWxERDt/cVgMt8sfWEiUxf09TgQZ7Wzkp0KA4edxIh5oF4wcY9M5D
	gSiX+RL1bs9G9sPAVDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6At-0005kD-LP; Fri, 08 Nov 2019 15:27:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6A0-0004y3-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so5796616wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+aAa3kHo6X36UARQ/hBD+CYIStSC9Mwak+bAj3lpxxM=;
 b=rk9za0j+DjrBF+nEQLw0UeApqKkWBCvgDbUXpotyR3WcOdSZUdqJemsRAUO0+HTGL1
 GUNs7bt4UgSxiL6f3ok4bdNmEamSc9EHDrNjbCyOo0oxmj2VNzcujqfH6kFCFjfZ1jQt
 hks2xi69COXdeSg2aAH4ow5jW7bVQgVZrQTOC+OPqBNFj6FssCrQTeUkL6YYO5NilsTS
 /qQBGPNk10VAvkFNz87SS5aKQnT2uWXfhGs90RxNw+Ls/MQBN9vtyfWpRtTWyVnn4706
 4oAPI5kC4UaL+xz9ryj+/AzkP48rL4NOmp9fynAASOANWZvjDBAghHTT1yBZyxAtJnha
 iLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+aAa3kHo6X36UARQ/hBD+CYIStSC9Mwak+bAj3lpxxM=;
 b=ibQz6eQF8ojp591DNoWFIkaqu50cuNwNaD6CFZoNOOLUqbfnNy1y4ltT+Wv5chjHEj
 67Cl/9LFMa1CWCPz2CvfUU1IGTkObMXL+i3hAqCK2SpwWBKUt+0O0qvV2cVHi5L5BakC
 yMCfC1MuPJREsyggsflkY4tydSq2KJL1VMgY4T2P7tzFOo8DJ/wdb5DocKsJ+UJsiwCg
 gy1hQckV+5WDgL73crkFGucwg0DjNy744solzoJeVHHPw8PrweBSp4k9bXDtHiG6465Z
 MZxMJ3u9oOQfDExQy6SmMVmhiW32KsX2/cYdbFEayttb5D+j37XaJipAmu3vFAU+/oDe
 FGGA==
X-Gm-Message-State: APjAAAUYBus3dr7uacv4+tFAbZQOUvGP/viFdHJo6TmPiFEBuNxqg//E
 lZ8Yilp3wD/bggFAp6dXL/Q05w==
X-Google-Smtp-Source: APXvYqyP1ODYLZACcAlafYthBHeI8vIQSuj7rdAG2X/KmYtzbQ1YGd6y/fT9+gj0hKuehN6KSufekQ==
X-Received: by 2002:a1c:7d47:: with SMTP id y68mr8658213wmc.157.1573226810884; 
 Fri, 08 Nov 2019 07:26:50 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:50 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/8] ACPI/IORT: Support PASID for platform devices
Date: Fri,  8 Nov 2019 16:25:03 +0100
Message-Id: <20191108152508.4039168-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072652_059140_67F8852E 
X-CRM114-Status: GOOD (  12.10  )
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

Named component nodes in the IORT tables describe the number of
Substream ID bits (aka. PASID) supported by the device. Propagate this
value to the fwspec structure in order to enable PASID for platform
devices.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 5a7551d060f2..9aebb180744f 100644
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
