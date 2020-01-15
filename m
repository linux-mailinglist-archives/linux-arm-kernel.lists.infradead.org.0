Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1332313C204
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw2C7oicFDsx/r91axA2+qxdFePC9AQ4CIYjLaADfI4=; b=SherNV9lC7t3pD
	Q2Ddyd1tSjHafspXXfbP0WRPbMuu++q71jrqhoiPrRx3IlRg9pG9VX+Fu580um03fd3+ew4EN/zbJ
	TuY9ETqG68QuzGroCI00+IkbpMhERVIgpOJmVr4+DYIpONGVHqeMX0kc8vMcl8nVk6emf4pSy+K3z
	Dd0RIH7npWwRm+BzINu+1uNSb5T6aFOvnjTlPYz88pjIT2Mxf4BqlezT+I/Blh5fQOkZd9xUuPL02
	gu2vkP9FqJFkKEz2+k2EaMwu19xhMZnjev2o0X9ZoruP2NPEMQa0ezMJQR0l7j3zqnlNKCGeuBDET
	DWTjTd+xUMVvoiyCQIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriCb-0006hb-Up; Wed, 15 Jan 2020 12:55:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriAv-0005aO-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so4707439wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SVox6K0aClSgQAj4ZePzlVYlKOAA5RM1JxWE0eeJ+CM=;
 b=d82j4vm1o3BcAiDmH8LgzA/3vpHR0J1gWTn3QQfboZjYwEHmLjWkVdv0rRYfw8tFQD
 ZuKg7Rqy6hIQuC+dEDXPSLfFBVh4xfBVaqbdgIL1DjHmr5YQ0g8aBzYy3Kb+GHOJFU4L
 g6e/Md8hX8aJLbt7iWz2wb0JfPk+FA+VwfPFj8ARFZ/hHFjSIIJjUKBrW0X8Uw65/GFN
 pCj8ovv/3UsaefxbgelPQ8wVEKeHfYhcTtN2E+f84GERI489oXoalINk//Ix2yee5SSF
 +wfxiIYEG3WEI0GqJI+KNZVEJCgdOf8YjqzueruUlJfwuRyTHAExiMrKEJFJQ/Z+jnHY
 DS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SVox6K0aClSgQAj4ZePzlVYlKOAA5RM1JxWE0eeJ+CM=;
 b=ObrIj4gOhybIpTYguilATbBJBALRAXu+NO9Ebq+WZta8/R4WMHZKrRaxgPYTf4RgGW
 kmR7a9WtZVbxDOI+QfpEZgjc1NkuPyovH9Fpnzv2aMxADmatxaHPq060AdX9moxDl5tb
 ceC75x99wUAO2iVtuMKtnQmrzPvHHLwTulGIV/fE3OyWEqfW2fsINtUsOBTc1ELUuxHi
 tIN0hg/JR3xuIIIoIKq1OpQ1YdqKjUdM9cij0TPE2qBg8BkEPxz5oIvdq41HF5QdWDS4
 lbjRDkSg+7ZIdGNMPiHvtgU6uNcoKJVukxuO1dNC22qPO7Ps3+nS0vZH6k+bWSMJ6QGv
 rPUA==
X-Gm-Message-State: APjAAAWnk5s6xgGa/PQmqn00HSzza7kWjiF6gMEuh8QWw49zo946NJN4
 7OUzoksPRgrGLTlXsZDuIO0sLg==
X-Google-Smtp-Source: APXvYqzv6wpZNhXp0mYEPij61j3ANQSOgHf/a/RB8gE84eHpEFNB/mfELJUcr+OpmYAPFC/lrGboWA==
X-Received: by 2002:a1c:3187:: with SMTP id x129mr33613992wmx.91.1579092812076; 
 Wed, 15 Jan 2020 04:53:32 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:31 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 04/13] ACPI/IORT: Parse SSID property of named component
 node
Date: Wed, 15 Jan 2020 13:52:30 +0100
Message-Id: <20200115125239.136759-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045333_892665_1EDEFC7F 
X-CRM114-Status: GOOD (  11.74  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
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
