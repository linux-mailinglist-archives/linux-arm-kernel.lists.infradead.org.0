Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B916AF2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ce8vuiyuBqBMCUsApc7WBViD/eafduC0et/JNUE1wY=; b=Rb7Oa1YR4p0RP4
	ZfzIlEqfnmFnf4AHeQRwtT5+oFVJd7ufinUrrQ6Sh67pmfW7oWykU8Guf/zrRkOeO5aN0mN9j/Ikm
	6zrVMhlh6y/AhwpWO1JCPYE9pTQ30y0MvYaXyfinPARKz33qSbmMxxKPtFc2Ec6pM6CAqua5xZB0z
	bbF1yifFkBIv34h+tJK/S4aMYft0gbuE2vkM0rTQAeaPXkGNKDBMYTZ5vMPg3XfSfTTYjjgWaIbMi
	usFuPRF1CqexlcK2jH0yjuGYfqLbyMP+3YxUikHNVVQhXSa/FVT4PjqU4Qc9hvbzX4+D82Pgdpusm
	7Yrw7vqoobyblJYvY5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IVh-0005Kx-Bm; Mon, 24 Feb 2020 18:31:17 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPX-0005qW-SR
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:58 +0000
Received: by mail-wm1-x336.google.com with SMTP id t23so319330wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i0VWA2fvKY7B7aVEb87RbBlKKCbdscLm7wXe7hq9l+o=;
 b=jrea57vRdBhgNK56CGB6FBQaFESTfknRHc96QQ82B0wBh5E8nOIvvqoDp88g21NJms
 vCtpWf4eZMeIPhoNOEnzXNGWUU/L/DIOMIpzlQ/DLRoBlZsRMavpixederXLjWbnWC7P
 VgrsbfWlv0djfGH1aSceYJMSD+h2AEC2octSj5r/52HuAkGcmwSLGFyNX2/RJNR0SEXo
 hjZ4qCxHZra5C4YTiCc/afuFkROLgPCt3wD/HTSI54xo9RGvqdw0v21iw6isZfklwJdL
 qB7285DeYxybLPJvLl7Ham/dtFKMQ20giHlQ9T+3SZtHeP+2yGyfOLAugLIBycvdgB68
 fVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i0VWA2fvKY7B7aVEb87RbBlKKCbdscLm7wXe7hq9l+o=;
 b=IF5ED7EF3V+nvhBjhxa6Fk1W2k9fKReUfnMmoHfcOK2Hz2lE/u1xi8P6RCwY50GWq5
 ZWxaFVZccXqE6R6q6A+Dc74BIb3kr6/XQSv4D0d7v8N+C6oJ4pFZ1oMj4ZiZfh3VJLvF
 21nkYSi5oI6Tcy7VG/GcmhwTaHx5CA32oDrmrETh9Qz/5KL9Jifi4+aZamTwsA7XlilZ
 qjVg/2UcPIAE2KjLHNAZ1JREdTTRLxwkeb6uPkHU7cSSoxKlFval2fMloAAyeTaEkW2O
 lMCo6BNFlS3j1E95ROZJKxZ4dQ0hr4EAuxMA215HiJYA9mzDXgwWBy/67Vozx6zwWvKs
 26Qg==
X-Gm-Message-State: APjAAAWNeg51Zee3UzLifFAhjYc3ZjxLt/beYFIR9g1Wc/k6iBFif+Bm
 e5j/OmeOcKhobzvIJUGTmnQOZg==
X-Google-Smtp-Source: APXvYqzxdf7GnXuxJz22KdsBgghNsJTC0LtjcF0NB8OgJIKAqhQeqkdamrZEnO7kob3vSOk3XbOcTw==
X-Received: by 2002:a7b:c8d2:: with SMTP id f18mr292389wml.47.1582568694023;
 Mon, 24 Feb 2020 10:24:54 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:53 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 22/26] dt-bindings: document stall property for IOMMU
 masters
Date: Mon, 24 Feb 2020 19:23:57 +0100
Message-Id: <20200224182401.353359-23-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102455_963201_F359BAD6 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org, yi.l.liu@intel.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
