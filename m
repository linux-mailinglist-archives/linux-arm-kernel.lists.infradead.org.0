Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077146B27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zzLOF9iCJI8QI9eXHrJdMhAEI+v0NNpPNyD8T7VdOc=; b=CnF6wibFJO5Tqv
	QjHCkncFpAgAZrb3fzHxFf+J+8qV3Hq8DMfCvBl9ceB3rzhZ4idNXQPjmgM713CxMOs9jATiEgFv5
	XE3JQBgsLCZO1aI08pqIplrTm8swyurdg8CtpsqCno/yAmWsC5YMODXi3AVXeLKyaWZI/8PeLLWPo
	ZfkfuCpv2NUCf+OKaPmEP4glFCn/bpuTH17+iYIym4jFvFmMISeiy4UQd737WGt8Kuk9E1HksGMwS
	9/v9KSEFRWs9jU7hX8aNF912zMMDdn+D/jE2Cpbu2utdauf9jNI3MaskzUO6x/I9vJj8LjL606l1v
	S6Hpy87pb8cDuRGkdkLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt1L-0000xk-VC; Fri, 14 Jun 2019 20:42:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswq-0004Jc-NK
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so2148497pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A+t0h4nVblVvZYulUBGn9aN/xZy5FOwJcbo8LMPh4qQ=;
 b=dBlquXhPjgGgLvr7m4AgCAuAPPcUJUHxskD4pnuikxR7pXr7hUJfCLa9ImBlrh+a/A
 85yxyyeDjFl05BHs5z9eNQqBNs1L4Fv+ctswWOsZOMoj//qEqVrKrAM+POANyKqn2UQQ
 9vNgzMGXylqJ5dSFM97EcpL/sJq4aIzApJ/zA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A+t0h4nVblVvZYulUBGn9aN/xZy5FOwJcbo8LMPh4qQ=;
 b=fjFNy7J5Ae+SX5B/X14o4mo5+RSDk8udx8rp5MDr7KNvW28WJKwPaJedyOGgd8ju8s
 +Mu1BQjkTqFnVBSOM0aZ0yAKcUL61T3gNfUCqSqoBVlUHBfib+59UOwPV2DCExApJVp9
 84wGRKnfXzBv5dKWnsXJ31ovZyeV4uS9iS6tMaE1/kSwBPB7IDpw7JYJ9tCqkdwTZAaH
 j761wkafal3PRBCxvg09dkUM6uXrwKoStU3uBs957VQG5CFdDObN4e3pzKGcAMdvM3Pe
 djpL/v7wf5jQGtc10vSJeXg1HMKphyVu98scBPqGgyX+1lV+neYzyPZZdJVqN5/B2zlw
 htzQ==
X-Gm-Message-State: APjAAAXKRwfpBAUMqlXEC/V8qnERSMbQw6gRo5n/EEyjt6mp2y9FhJH0
 cHBql8B6yMGJAr+NVHaQdx5MXw==
X-Google-Smtp-Source: APXvYqwiXfjpuAggV25+7Xk3+IrXycT32y/V7hOuLWra++ebdAXpx24dHgMCsaR6GqV4FUtSjU7zDQ==
X-Received: by 2002:aa7:8143:: with SMTP id d3mr98294624pfn.143.1560544640065; 
 Fri, 14 Jun 2019 13:37:20 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:19 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 1/5] reserved_mem: Add a devm_memremap_reserved_mem() API
Date: Fri, 14 Jun 2019 13:37:13 -0700
Message-Id: <20190614203717.75479-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133720_845136_B7CF0466 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-msm@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have a few drivers that need to get a reserved memory region, request
the region, and map the reserved memory with memremap(). Add an API to
do this all in one function call.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
 include/linux/of_reserved_mem.h |  6 +++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 89e190e94af7..bff932a3b80a 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -12,6 +12,7 @@
 #define pr_fmt(fmt)	"OF: reserved mem: " fmt
 
 #include <linux/err.h>
+#include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_fdt.h>
 #include <linux/of_platform.h>
@@ -407,3 +408,47 @@ struct reserved_mem *of_reserved_mem_lookup(struct device_node *np)
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(of_reserved_mem_lookup);
+
+/**
+ * devm_memremap_reserved_mem() - acquire reserved_mem from a device node,
+ *                                request and memremap it
+ * @dev: device with node pointer of the desired reserved-memory region
+ * @flags: flags to pass to memremap()
+ *
+ * This function allows drivers to acquire a reference to the reserved_mem
+ * struct based on the device's device_node handle, request it and then
+ * memremap() it.
+ *
+ * Returns: A remapped reserved memory region, or an error pointer on failure.
+ */
+void *devm_memremap_reserved_mem(struct device *dev, unsigned long flags)
+{
+	void *dest_ptr;
+	struct reserved_mem *rmem;
+	struct resource *res;
+	const char *name;
+
+	rmem = of_reserved_mem_lookup(dev->of_node);
+	if (!rmem) {
+		dev_err(dev, "failed to acquire memory region\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	name = rmem->name ? : dev_name(dev);
+
+	res = devm_request_mem_region(dev, rmem->base, rmem->size, name);
+	if (!res) {
+		dev_err(dev, "can't request region for reserved memory\n");
+		return ERR_PTR(-EBUSY);
+	}
+
+	dest_ptr = devm_memremap(dev, rmem->base, rmem->size, flags);
+	if (!dest_ptr) {
+		dev_err(dev, "memremap failed for reserved memory\n");
+		devm_release_mem_region(dev, rmem->base, rmem->size);
+		dest_ptr = ERR_PTR(-ENOMEM);
+	}
+
+	return dest_ptr;
+}
+EXPORT_SYMBOL_GPL(devm_memremap_reserved_mem);
diff --git a/include/linux/of_reserved_mem.h b/include/linux/of_reserved_mem.h
index 60f541912ccf..a36be60ef67c 100644
--- a/include/linux/of_reserved_mem.h
+++ b/include/linux/of_reserved_mem.h
@@ -39,6 +39,7 @@ void fdt_init_reserved_mem(void);
 void fdt_reserved_mem_save_node(unsigned long node, const char *uname,
 			       phys_addr_t base, phys_addr_t size);
 struct reserved_mem *of_reserved_mem_lookup(struct device_node *np);
+void *devm_memremap_reserved_mem(struct device *dev, unsigned long flags);
 #else
 static inline int of_reserved_mem_device_init_by_idx(struct device *dev,
 					struct device_node *np, int idx)
@@ -54,6 +55,11 @@ static inline struct reserved_mem *of_reserved_mem_lookup(struct device_node *np
 {
 	return NULL;
 }
+static inline void *devm_memremap_reserved_mem(struct device *dev,
+					       unsigned long flags)
+{
+	return NULL;
+}
 #endif
 
 /**
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
