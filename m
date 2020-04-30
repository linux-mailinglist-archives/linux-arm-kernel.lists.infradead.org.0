Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2075E1BFEE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9x9MmYEUdGH+YArOSH5fU3elAQdBStkLAcC7PufdTIc=; b=lVYnIzr8P7eoZd
	po7eb7qZtgCxkBbVjVk9FGT0XMrIE9icjN0hiAN07fqv+dz0nV9UN9rtE/vTRtfP2oG4fQ+dXDJry
	M3hppjSPqq8igKAoYR5JErENefS1i2JKfBQ4Me9k5z57u5zFtjXlE/DiVNCoRrd7PPC1msVgLpSjq
	VCMfyraDt+JbUkodGTKJDYB02XuW9FYuPqUtROabmsgamZN9pDnpNzd5HX9AV+bZQz9VL0tHNgRXG
	OoK3y1f+LpjsCqlaWtby/SZ0Xlwxhe75hj1Qm9MZoEuD+5x13lpRGlv7n2vvu+/iUwMKR5YVqw561
	EmziwcfWMSaRhlzakxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUANa-0003CH-41; Thu, 30 Apr 2020 14:41:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMO-0002Gj-Fv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id d15so7249060wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3wH0aoSV/mtrjd6WbnxDnR4aNKlRYU9rOFmne4VKHiA=;
 b=wzxgUuRvtaeqH2rptB4kU1orDwqZ/su+VoJfY7WhNM3Dxhz/3/4yyDvHQWb3akmY1r
 4c9PW6AwR89BsI+DdTekSxYgdTdSiuqszEocM/KzzCLLr47bgjZ6INnH1cyoiBep4mJE
 d5Em/ivfVrvcWRg9XYHw3ZiyYrdG/H66AKzz9aQlg71nEAhyQK0BxNYQuXb+ngZ+9a0l
 41rkZibVe4KLwjeGqxnqcTdvt1n/4YVjqQIkAWHBQfML8x3Fqa2b6mJDDduiZytUr/vt
 n/sR+BweXDnPmscA/YKzHwsPpGj6RhLqCMKQrlU7Bwq7dxBUbJ20hHD3g3lyXath2chD
 w7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3wH0aoSV/mtrjd6WbnxDnR4aNKlRYU9rOFmne4VKHiA=;
 b=ufoeq4918i9CZWsEIpbjziB2+pf5z+z0tFJVdVvN2lMuWy7g1DPUfJ1jdrcXfIfPPb
 YanZ4F37D/hYJ773yjardHLAmG2MZGvPvU7PrQ8Nljb8V+Shh2en9c8ReCCMVf+y8AJ2
 4v8yBcB7VK5EM7moQrBH6aiahe8mA9+1FSRY/DYfEfITxK45y4wy69/Ctq9YJ85KHqiM
 RnpX7S2uH+CEbCImG2En+1Ux0BCnwjLwaG3CLpmVfXV/7fmjJ/tq3i5A/4oyJkHKUQUa
 IA6qsxi2Hb5wSwIQC0Z0JtsaNHRajTzzQoPaT1YM/yytXd0ww0g7dVPpHrWoY9Bc22O2
 1XcA==
X-Gm-Message-State: AGi0PubfCHVWvk09lPkm425zJ/cHML9lvdV2b1wNKUd9t72nSadIWhnP
 MaPd71X1FMNmtE7B8wPj3Pzc0w==
X-Google-Smtp-Source: APiQypI7NbvRtxIEOi2s7pji0WKTrhhzHwfUqMB42Jvp40574wez+yk9ZJ8MhjZa5Fj1fB8Uk+iFnA==
X-Received: by 2002:a5d:498b:: with SMTP id r11mr4288207wrq.368.1588257618514; 
 Thu, 30 Apr 2020 07:40:18 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:17 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Date: Thu, 30 Apr 2020 16:34:01 +0200
Message-Id: <20200430143424.2787566-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074020_532874_19A31565 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let IOASID users take references to existing ioasids with ioasid_get().
ioasid_free() drops a reference and only frees the ioasid when its
reference number is zero. It returns whether the ioasid was freed.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/ioasid.h | 10 ++++++++--
 drivers/iommu/ioasid.c | 30 +++++++++++++++++++++++++++++-
 2 files changed, 37 insertions(+), 3 deletions(-)

diff --git a/include/linux/ioasid.h b/include/linux/ioasid.h
index 6f000d7a0ddcd..609ba6f15b9e3 100644
--- a/include/linux/ioasid.h
+++ b/include/linux/ioasid.h
@@ -34,7 +34,8 @@ struct ioasid_allocator_ops {
 #if IS_ENABLED(CONFIG_IOASID)
 ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 		      void *private);
-void ioasid_free(ioasid_t ioasid);
+void ioasid_get(ioasid_t ioasid);
+bool ioasid_free(ioasid_t ioasid);
 void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
 		  bool (*getter)(void *));
 int ioasid_register_allocator(struct ioasid_allocator_ops *allocator);
@@ -48,10 +49,15 @@ static inline ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min,
 	return INVALID_IOASID;
 }
 
-static inline void ioasid_free(ioasid_t ioasid)
+static inline void ioasid_get(ioasid_t ioasid)
 {
 }
 
+static inline bool ioasid_free(ioasid_t ioasid)
+{
+	return false;
+}
+
 static inline void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
 				bool (*getter)(void *))
 {
diff --git a/drivers/iommu/ioasid.c b/drivers/iommu/ioasid.c
index 0f8dd377aada3..46511ac53e0c8 100644
--- a/drivers/iommu/ioasid.c
+++ b/drivers/iommu/ioasid.c
@@ -15,6 +15,7 @@ struct ioasid_data {
 	struct ioasid_set *set;
 	void *private;
 	struct rcu_head rcu;
+	refcount_t refs;
 };
 
 /*
@@ -314,6 +315,7 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 
 	data->set = set;
 	data->private = private;
+	refcount_set(&data->refs, 1);
 
 	/*
 	 * Custom allocator needs allocator data to perform platform specific
@@ -345,12 +347,33 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 }
 EXPORT_SYMBOL_GPL(ioasid_alloc);
 
+/**
+ * ioasid_get - obtain a reference to the IOASID
+ */
+void ioasid_get(ioasid_t ioasid)
+{
+	struct ioasid_data *ioasid_data;
+
+	spin_lock(&ioasid_allocator_lock);
+	ioasid_data = xa_load(&active_allocator->xa, ioasid);
+	if (ioasid_data)
+		refcount_inc(&ioasid_data->refs);
+	spin_unlock(&ioasid_allocator_lock);
+}
+EXPORT_SYMBOL_GPL(ioasid_get);
+
 /**
  * ioasid_free - Free an IOASID
  * @ioasid: the ID to remove
+ *
+ * Put a reference to the IOASID, free it when the number of references drops to
+ * zero.
+ *
+ * Return: %true if the IOASID was freed, %false otherwise.
  */
-void ioasid_free(ioasid_t ioasid)
+bool ioasid_free(ioasid_t ioasid)
 {
+	bool free = false;
 	struct ioasid_data *ioasid_data;
 
 	spin_lock(&ioasid_allocator_lock);
@@ -360,6 +383,10 @@ void ioasid_free(ioasid_t ioasid)
 		goto exit_unlock;
 	}
 
+	free = refcount_dec_and_test(&ioasid_data->refs);
+	if (!free)
+		goto exit_unlock;
+
 	active_allocator->ops->free(ioasid, active_allocator->ops->pdata);
 	/* Custom allocator needs additional steps to free the xa element */
 	if (active_allocator->flags & IOASID_ALLOCATOR_CUSTOM) {
@@ -369,6 +396,7 @@ void ioasid_free(ioasid_t ioasid)
 
 exit_unlock:
 	spin_unlock(&ioasid_allocator_lock);
+	return free;
 }
 EXPORT_SYMBOL_GPL(ioasid_free);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
