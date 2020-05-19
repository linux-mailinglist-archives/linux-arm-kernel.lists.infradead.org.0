Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E2B1D9ED7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POo3hPN60q/w9hnSli4Fe8WAshSNeXoPwBFrVTJ7niY=; b=FDo/w9XHSw1yeW
	li4PEw4QePUBQQKE0jOCrwQ6QPc3gMXPiesZRDxRgyys7XlOMZLJ4/Nzw5URQBkMphX+okc2bVsy6
	aeP0WKMd+4rm+jRiX4GyaH3IDLmTvvlJJ0IpbmJrxAe84tyuvLkfVocTI5aOrkj+RCVvjOJdzv+WQ
	YeebG/7oNFxitgt7kO3vfNsHJF3NLYykRmykUI/bhDv2jytoFigOjCE4A8KKQ3CUPn3udHTlN9EfJ
	LuwnvLlshcNd+S1TFdWbCZws/fjZNL+6axZEI2ldf0cqtxx8tjNVjHS3XhGHQ/6rrR47BToMlgo49
	u1d1r+HpCwA2/ri5F0jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6fH-00062G-9P; Tue, 19 May 2020 18:08:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Z4-0006c5-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:02:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id y3so441367wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dZJbr50yu+A1rXxxZjmC6b+njrvRrh11YfdOdR6ZavM=;
 b=vNeBBYBtO1MlCmDZi2omuq7p6WTCEFIBil9Pkec1SF9TMZYl+5lkItE0NF2u/qYIuQ
 lmiLB2BA7h9SazxYMZa9UBVoHEOQr4wCAHMfevxQ9L1X/+IrzF+9AJDv4i0tTWPDAPTj
 R24F/zikAzERUXO99pzh2SbcaRuLVAJVylsiMvyzYXlDXzVD7qdGPxLdrArZ2a9Fa0DD
 tJ4iYGE24E6fSgpJoDafwrRiS6x7MHRLQZhCqeikxTta1o4hPuWTzr3g6mQNeLPJGu1P
 XJaUy1uTviXVQiXLA23Ad5Y8iT2b7HJYh1gU9tQqZgCnMpA2o1xg9WrZMzpMIeAczTQ/
 oNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dZJbr50yu+A1rXxxZjmC6b+njrvRrh11YfdOdR6ZavM=;
 b=HGEp1MZeyQ5vfXDYi6yvAnkFqmTE/sRlyKyTfnYAVWEQwoQxhF2gxlTfGchmEmy1jt
 4rRA0n8GVLTCpcJcqasjeOS/TprJ5c4vLBATPVR1VB6/nnRpY/voT6XxVYniG7EYNfyi
 0S8uJNmg7hhF5YDvtoFOJL4etK7px0z6G5nOPEN9JtYtkzvIIKXbV3sNAsZzbXbRz6SY
 k7dGDaCzKQco/s0FMhiJMu8AywgHsBeqfUNfOkx9SCd/xrCJ8YbubVGrdtJnqOko2RNC
 tmWMDvjkL3nP610u02pcuE8+yNR4VR3hIoxCYbEREGs3Zns8IJXQMWLcr4yQz/LJqrhV
 s9jQ==
X-Gm-Message-State: AOAM531QtlakGYYUCbI9fT9BF/+M0iSqpenDDiu0Fg0Ojn805oQMd12k
 EBf0oZtGG+c5d+5yWsu+jMqhfg==
X-Google-Smtp-Source: ABdhPJwT8Eq7gpqVQWpnFuRyfkFTyMRHoxv//ACSK89NpoGnC1siz7BSfxh+oXZVDA+VgnaA+xgUGA==
X-Received: by 2002:a5d:6108:: with SMTP id v8mr109324wrt.286.1589911325064;
 Tue, 19 May 2020 11:02:05 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.02.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:02:04 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 20/24] dt-bindings: document stall property for IOMMU
 masters
Date: Tue, 19 May 2020 19:54:58 +0200
Message-Id: <20200519175502.2504091-21-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110206_525051_B45A3E77 
X-CRM114-Status: GOOD (  13.02  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, fenghua.yu@intel.com, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, hch@infradead.org,
 zhangfei.gao@linaro.org, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Jonathan.Cameron@huawei.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
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
index 3c36334e4f94..26ba9e530f13 100644
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
