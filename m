Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A40421BEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olXecpYJ/EPlXB+Ri0BX7GeyugvGOs6b9faje5GouP8=; b=LoMzt/vWOKGPhL
	Y8u87bTKKnk0i+AtqLkfZSPKWFLh7yYChnEiVvvwBR2y7K1igaxGSc3KIT6Ggyn/Jme5PyLH3xSeS
	k7LYJdF0DwOY8BheBzWdsWXSbQhOMCcl80A9d3ym6rPdHFIBqgAC7Q7AzRFTmR1vTTQkumSZ6pLlb
	OKH+KCCeHtQ/b7FsvaewlxC9HBzEdvFOK5V1tRhreeFoDvwHf64KC01oY9Abt0pbWQcr+WnLS1zLl
	2j7WoGg1SpueRrJwbz5zFOnvl320IS58RKBKA4fSNEIhBQ4kY7d+gGJd4R1HZlqDhn1F8+vHypgeX
	OLGjNAAUerauNz/sdJaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg1j-0007ep-WC; Fri, 17 May 2019 16:48:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1Q-0007SG-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so3956736pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dt/r9hghbvHRpM950rNfaqeDb6HHc3YxElzsbgb3628=;
 b=ELBsaFN8oBFo7zIK4AKnzx6dpfch/T8r5+SNxrpXpOQYdh4vleaWEpO9Y1yd1e7YpH
 v5v4iv3CmptHKW7CSR/OFrjxedmV7UdZYU0CuLLH0aHxSUHeot3mJ5kN7M5W10+7ssYv
 QR2zQxpcFQzfE91l4uLKK9N05oRfi2ZTVG+yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dt/r9hghbvHRpM950rNfaqeDb6HHc3YxElzsbgb3628=;
 b=kbVYFO5Q7ulcDp4PynX/Rn4rJGs6EYHAiWVfPvTWr4D9RU66PHJodC/d8Zw+wrhVvf
 7tt/594vBkGw463cVbA5u8s9Zg5TDBocXWxXfSbHcZBAfKZAeYdgyV95gRtaz5zKkD7D
 YOwElp2zyVF3AaiwcR3tU8QiGwdIos77z4pnIVuDSNr3Fyu3MLVt8gZEOEbDfb0US8n9
 dDi82G+WmnmTsGZVRTWWne4P6fObwC7iT+fnqREo4f+pj1tQa4blR+x4+l+9C+tLW68s
 r0g51tOpZ1pcwKztoPwi/y05gWVjlxartMNfb0UUKZ5dmmnxxfCO0d5Ygv5Mqkc+uv+5
 la2w==
X-Gm-Message-State: APjAAAUeECJsfKrBotbvD2F09h8tfU4+GXtLI3MswwXVy8RTx/gIYPbk
 ekxFwabJVp8IJRg7eCugg3Bpyw==
X-Google-Smtp-Source: APXvYqxUOQ607cIWfGf9dbtUWQEfdBIaBbRL7/bhUOO2Fqka7KMkLhJ2lePdV2L8GZHvT7d0TjZSDg==
X-Received: by 2002:a63:4147:: with SMTP id o68mr55522959pga.76.1558111671899; 
 Fri, 17 May 2019 09:47:51 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:51 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 1/5] reserved_mem: Add a devm_memremap_reserved_mem() API
Date: Fri, 17 May 2019 09:47:42 -0700
Message-Id: <20190517164746.110786-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094752_522934_0012C8DE 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
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
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
 include/linux/of_reserved_mem.h |  6 +++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 6a36bc0b3d64..39ab2bfd40d7 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -12,6 +12,7 @@
 #define pr_fmt(fmt)	"OF: reserved mem: " fmt
 
 #include <linux/err.h>
+#include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_fdt.h>
 #include <linux/of_platform.h>
@@ -395,3 +396,47 @@ struct reserved_mem *of_reserved_mem_lookup(struct device_node *np)
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
