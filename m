Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2461D3D09C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bz2b7mM1tgC9DxH/q8HOLE/kaZpiXle0sN+s6ls80j4=; b=t5xJcP5ysgG2VMxihTvwPLvBD6
	YPLvnNHiC3a8f1VvD7f0Dj1FqEjhmLFKh9BTQCl8NmSjN4P5Q9EiGIxQVuMIfzvt8uWKY3JD0i8/2
	xeLUUCkryK2rYlIaEJi0447qRE0B7zHazaNnzhFQDKQBTqwxpCTg0bkkJ0QcRAoQ/HHphdTFW7icJ
	HuiXGxD67Kc6QC3iB5WHrvicSCL1UFwFx31R+eWhyv8QWAZ6zZfn0/2ovH8UyzwBVRZZftvgLpwG3
	U2Ku8To5lQWhXRmPfs20cBHTwM+PAwOOhHSwpJ2uZHK4NKfbiFBiI2N1CP/mBfmvee5LA3O2Kr7t3
	8RpaNZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiZV-0003iC-Hh; Tue, 11 Jun 2019 15:20:25 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiYm-0003SG-LF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:19:42 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so14945355qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3YajPL9keBD1PgFsRAQ5XHEZUjp++ldFMZE5mzh7qVo=;
 b=laSYdg+9mu5jmzB9fvg85XGBfsrnwK/KXgXp15a3LOmkxgOs/DghF5QngvMMmGMdx/
 TGNnm9EC7gpOtHPHUZ7zts03XHFu6aTTDBQGRYdKANebjHM47x97+tQa3g1cbq86A2lU
 tGOhzqNJFYnsV9wGJzGdz3WfZVbZGSkRoIOh2cn3UJXKmCbjxoYtJ+P8rIo7lx/nuFTP
 UKR5ADwuNlSaT1rCnvRPVDvgeD+w2RFZzQxyoUldcKKGBmrUrNQoIPRYOGr7uvu0Gai4
 DVRLB5kVBVwtJ8eB2sQ67+BtCuiVkgGzgIXZb6HBc0MYNjM8cIQ1I14BJe7oP0zwO1fi
 Jl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3YajPL9keBD1PgFsRAQ5XHEZUjp++ldFMZE5mzh7qVo=;
 b=YCz1wUnYP3KrVzUHl6n9puZXgtqjgp+je52JsDHTY5CFZtlrb2Es5kIzmqy5DPssBp
 FRz5CNMKysUhSIsoWDc4h+6nWCTfQSbC9oRNE8oXKIQQgG0ObCSiT0lmXlErzJq2qgEO
 d5rOdPixg/gBAmzjFy5YDodlonG/fY/DGy8CAdUe/D2pTc2KbzNm3CiMOai1muDK3kPg
 3kr7da71Mcy0Bs0TOUXHITh8kFi+2CXoi1XoLo6w313CY6LAnN5t49aYFOUWsk5d/Bsr
 Wzds7Cq0by/z3YHy4xODTmeOfssJzdtlhBt7/dvmyBEJ/MiyVwOadnmxAAkXB/y3DCkU
 MeWg==
X-Gm-Message-State: APjAAAVvVWfapIGHzsP5rcGH4ETWCLgKNwGFy/eLY4mDu5EU5Du0IFF7
 PP//R1dpNZTnl4oyeXCc4g==
X-Google-Smtp-Source: APXvYqwEyV6qnh3/vMG8T9LAybCDQp3YsE/QBpvtrlsyD4nZCWkj8cWN3gJnDks2/t0FKmrSooRGVA==
X-Received: by 2002:a0c:9253:: with SMTP id 19mr13908484qvz.180.1560266378888; 
 Tue, 11 Jun 2019 08:19:38 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z57sm6538533qta.62.2019.06.11.08.19.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 08:19:38 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64/mm: check cpu cache line size with non-coherent
 device
Date: Tue, 11 Jun 2019 11:17:30 -0400
Message-Id: <20190611151731.6135-2-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611151731.6135-1-msys.mizuma@gmail.com>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_081940_694233_54FA52A5 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

As discussed in the thread [1], the cpu cache line size will be problem
only on non-coherent devices. And, the coherent flag is already introduced
to struct device.

Show the warning only if the device is non-coherent device and
ARCH_DMA_MINALIGN is smaller than the cpu cache size.

[1] https://lore.kernel.org/linux-arm-kernel/20180514145703.celnlobzn3uh5tc2@localhost/

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reviewed-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
---
 arch/arm64/mm/dma-mapping.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 674860e3e478..c0c09890c845 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -91,10 +91,6 @@ static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
 
 static int __init arm64_dma_init(void)
 {
-	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
-		   TAINT_CPU_OUT_OF_SPEC,
-		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
-		   ARCH_DMA_MINALIGN, cache_line_size());
 	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
 }
 arch_initcall(arm64_dma_init);
@@ -473,6 +469,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 			const struct iommu_ops *iommu, bool coherent)
 {
 	dev->dma_coherent = coherent;
+
+	if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
+		dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
+				ARCH_DMA_MINALIGN, cache_line_size());
+
 	__iommu_setup_dma_ops(dev, dma_base, size, iommu);
 
 #ifdef CONFIG_XEN
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
