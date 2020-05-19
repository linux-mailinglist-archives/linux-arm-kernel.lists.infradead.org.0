Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136D91D9EC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElzvX4nsQpUdcjUG/ob6ZylMKL3D7hj4bfNyo3Y1U0E=; b=AsyuZpxhvT0xsz
	29ED7q5e8pRUoFfj28Hi3pGMBQcy7hZk9vL6NLcAJvYV0kp1WFtuX/gxBYQAGc4VVA849MaVhyZzk
	Wu1IA9Mmyh5C7pxnkssEviaMo+Y96hR3ubFYC8OgjcL295+YZwA6DVjYDHnOIWPv8sr4iQuJBxW2E
	9UD7EyRUxGYkAide3i94lwH3sIO6cxOXqjWEwtd2p60KeO/K3cETR0GHnZ8RyMYOZvhotQLQOwEfF
	a7ZNv82MSkpfR50VDqJKAbG3ZLqylgZ8Y9S1Pw4vTZB6ReAXTWU9+xRhLclHZEgmygwCQ9dsbU/hc
	1qPiRDUIWwuoutj/eJQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6bk-0000OV-J8; Tue, 19 May 2020 18:04:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Yr-0006L1-Ja
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:01:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so394087wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tdr2nbJDVREjEd6opf3N1PUExNDbBuhp6Y6q/Aa2PEk=;
 b=HkelvqOK2ASLLh8prk/cDS5hZTdQU9xrr2V3ZxvDu0Sq7ohsTnzBnIMz0gnehYydrd
 QbNe0r28o6KsNU4c8jG6/OECzBTt1dgbKqKBO3Hy9R096LEbCLBtm5fJCXyPcoLUqC7z
 nJYdYMckvaByveD0Pss3OR0UJ2rAqvk1aa9NiHwQWgUQzWYyPlH/WdC5rnr0FA7nXTHT
 wUy4E18JFZwuckNo0n2C9EJ91f2GqeXNIr2Vo1ubIjolcQVPov+bsWVCo6uVm3u+gguw
 ifDXz+1XuUSPfCuU2aV4GnReJ1qkGO0jRWJcKZ8SusFCa4UK2engyDtkMxBFLorw/oqX
 3ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tdr2nbJDVREjEd6opf3N1PUExNDbBuhp6Y6q/Aa2PEk=;
 b=Vq9oQ3+qxK2UqCMHeJ2XDK+5aq7/u+f8B9YYkMkZtP0X8KZzat1FNb74Y1TKc9dI7P
 oihmM1UOrs4Na9L/PgLpF96KDjxv4OeK7uGN/Kfy4kMKINDwT76mW+vpmZ4vhwYbsXrX
 +hRyfp1KzT6+2G7AMTfk6xofuw1fAn2/IzSuzasmb403s/vtyhgdtXJhnLNg87fZgZ2k
 rnHbKKDxtRmxZi+yBdnd9I3mISwvilWZjTKERk+Bbw9cj5VdBLUL4l7JCOWekrUp/o/V
 4JuXwvCT+LwGu92gU7mLRSkvJ8jpyZPhBHFLKKSa5k+A1AqmA4ihiDD2iKq66y2PG8oW
 FoQg==
X-Gm-Message-State: AOAM531PkmBobzokyVofCfDTjQJOdsT1F1kUtYursDwRc76uVbzttInb
 9YTXKpewvpF4nh0pCcPNx24wZA==
X-Google-Smtp-Source: ABdhPJynWLyIUGdI5MUqsN8GOzUd3ADLnVQan+95nD7CN0va9fcQVLO9UHUTvmOnyfYBlYSmz6uVWQ==
X-Received: by 2002:adf:c508:: with SMTP id q8mr125580wrf.4.1589911312245;
 Tue, 19 May 2020 11:01:52 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:01:51 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 09/24] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
Date: Tue, 19 May 2020 19:54:47 +0200
Message-Id: <20200519175502.2504091-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110153_711230_B5611A5F 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver would like to read the MMFR0 PARANGE field in order to
share CPU page tables with devices. Allow the driver to be built as
module by exporting the read_sanitized_ftr_reg() cpufeature symbol.

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..5f6adbf4ae89 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -841,6 +841,7 @@ u64 read_sanitised_ftr_reg(u32 id)
 	BUG_ON(!regp);
 	return regp->sys_val;
 }
+EXPORT_SYMBOL_GPL(read_sanitised_ftr_reg);
 
 #define read_sysreg_case(r)	\
 	case r:		return read_sysreg_s(r)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
