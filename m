Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C041A8710
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FozlhjM3am2Mk6yKP2I5SnQdeNhKh0ts5rf0uUqafdw=; b=uP4/qqQwmEPEJq
	ROkKHQLtFADGIs+kiedrklOoIqeIyMAZpHDzn993oZ+pIu+DYhh+Rj8x95ycv8+XO6hCJ9EkvX7dc
	W0L+qcF91Ikxe4qmPiABqJcBzfajdRKLdHnLLNofyCBG7Q6lLgIGRo+zwNKHxTFL026dfwWE8DWqI
	r8/5Zh5BJJf3MeICTDDGT4UqyqC0jhOOK3RyHx++zfSBIUKmH2sO1KcD9DjFNhjLmn1BmHO5hFoC1
	gAvP6hzfSe8DmgnSA0XS2iNxIX5uhzAMj9y2arZrdq9LS61UqZRESAsH7C16TU32YR7BNqeNqUDAd
	1uwqC70/cJf7xWyVJRAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP5S-0004Gl-Lm; Tue, 14 Apr 2020 17:11:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzS-0002WL-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so8024692wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ftC8/er1w4cYUOvkGIk6/FxjhZRdex8XjZifggKsOVc=;
 b=F8zREYkzXEOjBIICh52aRBSsx0KYydBsiSeX1vLg3BjO4xVUHlOuGYyrqsAzk0um9g
 3hU3Mthe396hmS7rS6NIcIUl8Y8KnOQtGN0ORHag7JZrgh3uEV356dXEM4xwqqY8Pwze
 ZgNtKerpX4ZsyYd6DLVCLnyGotM1ATwYAczIh0xraXRquNJjV3GlWXMKOjri7lBsWJKF
 9GslApQWbeYRl93+vN13YZV/onxTemXTIrjfGUFMghYYcHdVO5B/9YbOhJhgVpL2U8MP
 LFuuUzzxRxcGmg4CxBLLzH1v25WazSQ9EmXw0gGw5UejA1+P+S/9YYiR3yZFbn2OR5Ms
 1UAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ftC8/er1w4cYUOvkGIk6/FxjhZRdex8XjZifggKsOVc=;
 b=Ze6dXNIrbKdMUPMxwafQeGU1RkuiEs576kopGnelaULezrwovXF3NdTXkWj7VkDe3V
 38dgngLdL/H5hiGnlebp6Okpc47ogSG85v8jzpiZZYH063fMZcHtd1IWDTTtxGoReleM
 xUY5yjPN5TvoYW9NXUju4vrXHkIiC2Vn98HYYIYTDysPd5QLqPRMfzHycSYcwnH8KAuW
 mgm/DyvLGC5mMNMibQskTfqFe5HraZx5ICrg6grFRukGr9+jgYVAR8nwfWaS65c4DNyS
 U4B01OOwxpOcNg1gzco2z92BrzcDXxOVYOl3aqwXDcITJkjZa8SdMgZ05k01hcjMtr/6
 rLGw==
X-Gm-Message-State: AGi0PuY+ALxGJMOqz/TkmX5uk3a0DpoDDZfsLnnu+jNd34wqSIRpaAJ3
 tuBahG/mDNWN6o4rn4vGHxkuJg==
X-Google-Smtp-Source: APiQypIujMWDDt9womD2KtF8tCtmfig9Jpg4Oo+YzImaXPUr4DRwtpc2ABhB4671zuBVFTAOKxmNLQ==
X-Received: by 2002:a5d:568f:: with SMTP id f15mr23573543wrv.48.1586883887656; 
 Tue, 14 Apr 2020 10:04:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:47 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 21/25] dt-bindings: document stall property for IOMMU
 masters
Date: Tue, 14 Apr 2020 19:02:49 +0200
Message-Id: <20200414170252.714402-22-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100450_228940_36FFD87C 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Rob Herring <robh@kernel.org>,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com, jgg@ziepe.ca,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On ARM systems, some platform devices behind an IOMMU may support stall,
which is the ability to recover from page faults. Let the firmware tell us
when a device supports stall.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/iommu/iommu.txt        | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/iommu.txt b/Documentation/devicetree/bindings/iommu/iommu.txt
index 3c36334e4f942..26ba9e530f138 100644
--- a/Documentation/devicetree/bindings/iommu/iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/iommu.txt
@@ -92,6 +92,24 @@ Optional properties:
   tagging DMA transactions with an address space identifier. By default,
   this is 0, which means that the device only has one address space.
 
+- dma-can-stall: When present, the master can wait for a transaction to
+  complete for an indefinite amount of time. Upon translation fault some
+  IOMMUs, instead of aborting the translation immediately, may first
+  notify the driver and keep the transaction in flight. This allows the OS
+  to inspect the fault and, for example, make physical pages resident
+  before updating the mappings and completing the transaction. Such IOMMU
+  accepts a limited number of simultaneous stalled transactions before
+  having to either put back-pressure on the master, or abort new faulting
+  transactions.
+
+  Firmware has to opt-in stalling, because most buses and masters don't
+  support it. In particular it isn't compatible with PCI, where
+  transactions have to complete before a time limit. More generally it
+  won't work in systems and masters that haven't been designed for
+  stalling. For example the OS, in order to handle a stalled transaction,
+  may attempt to retrieve pages from secondary storage in a stalled
+  domain, leading to a deadlock.
+
 
 Notes:
 ======
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
