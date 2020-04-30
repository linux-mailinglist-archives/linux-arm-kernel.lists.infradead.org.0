Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18191BFEF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjD2T7svJXhH56bC5/8kswMuBO+mdF0I44bj5rNR6jI=; b=dLcNjeiKnroCY9
	o7tO2LHlFqricTPjDgMPaD7A3U66M8ekn6lCMxuWMcET75+SeM3J7KpCIN9lVZG9yo2RvO5+6GPAl
	EWzRzFNSmNnpwek6lDcb9rg6ErGOs85/vBad4kwT5oJfX7ll3RHuvbKrrCJ9j5m7AE+OGqjJfqnzA
	xV47nB9s7f01JExFqpCO+l8jOZk63Nc8/JYqmp8ezSRKwrNwXtupUMON9u1eggU1QsBOaxJPQ2g+E
	/RgR0/QYU9n98Dp2zdemdXftPCifmSAXh2yoqev3zoUhLbwTBDwxMVGult6sYh6Zdrd9QVMaRQrlJ
	eclITa306LXjgz5GdlcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUARs-0000tZ-Iw; Thu, 30 Apr 2020 14:46:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMk-0002dI-2I
 for linux-arm-kernel@bombadil.infradead.org; Thu, 30 Apr 2020 14:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jRLktX4Fv4UiegcQ1XKfrXB/TH8/LTOUgoi8xC3haZQ=; b=ZovkQVWXfPo1z21MicwE+A+iPs
 Z8QLE5C7PYcYvPMi1ixGHH9zVEJTExq+HJUchlcXKeyrn2dlHNjbMsRSZz331wGlj7lK/Nfqd5Nbm
 KuoHfuJ39gykWf5ZEzvcJzFC2GBcdU7mR3jgHSdFikW77JsyzRtGF4TN/6hiXKTH9aMuYN2NzzgPA
 xVlseoioPU0RUL0hmH0RKu1ToRUBwkXX+lN19IC2W9IEPQpPmAlYVuP1vYjp4FaR/sRb8HLNnzFwu
 9aydSrmbyKREInPHcD8sXQCGHySetPNoa/cEcHzapsEju8RPqYzSdOCRsZfBIU9cgDhDPv2VjwzoO
 XPDBSQ0w==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMd-0004ic-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so7231235wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jRLktX4Fv4UiegcQ1XKfrXB/TH8/LTOUgoi8xC3haZQ=;
 b=GdxqERSg6Wq+QjSLrDklObgdKsWyrI/p2A6U4BFEZlyPUG/0SIcCQinPURmpCcRIjv
 3f5gJe4XY/u6yERJf9AwN+ZPq2bItwT/fSCgvMu08smasfLjOjOJxGrn+O0ElEcXqAXt
 3mpjlsAkdnOtr7eBUEquFjghsowytMyHCnwJbMdBG1W0oE7FrywpRTw78nLWSLKbfC7S
 +MhVK+j71pwZaHQOdr2Gde0ZOYTVwaFzIBka+fFjE+PTE5NEpEV43oSc/LN4IXGD6VD0
 4/CBaxt0Jike33CwfczPG3OxP+5W0s6u1z+Du0kqJEI8+0UBC180s6/Oj/dEyXpErCLG
 4rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jRLktX4Fv4UiegcQ1XKfrXB/TH8/LTOUgoi8xC3haZQ=;
 b=lZ3Lm9c4CYml/MIOCEtF8zNCe8qu+mq7CZQPQWhZ691tFykdtDmzps9V53FesIaG7y
 pd07WMhOWOk+uRrfNn4sr/8iL+xJVkhd+YxB9NcLkgEkO1OfUBt/XHCbqrxY94jXnsoZ
 dlDrgaL7sSRTmMApKgeq9gbkDrftwUsTBe6F6OeNP85uRFnYK3vpVsvbsHQJHcHMIYDg
 efvwtaXiE/i9qK4bO8NODazGqgqQNB+cENyEx2mUXLKJFigJRP14rwIF/mhS6/k9DN65
 IqA2IeICvf2fxPePMqVXgdxD2NWfb+KO0Vv6RGPQh2o6+oDGRAdRX+YkK/D+HlGc1kMh
 UN9Q==
X-Gm-Message-State: AGi0PuZESB7Nh5N9BSLCthbZCNpJkP2yqxLNz9Q7Ym9gPpVmabHip7GH
 l/+o1YSr+5XGiJ+P5jg63O7wewm1Efs=
X-Google-Smtp-Source: APiQypKGnRA3rC4LIOfEdPstuV2izIDoWxEDRt3yJJdFAFTW4qtuKV91hxDhmiqWADguGvwulI61dQ==
X-Received: by 2002:a5d:60ca:: with SMTP id x10mr4210723wrt.407.1588257630518; 
 Thu, 30 Apr 2020 07:40:30 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:30 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 10/25] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
Date: Thu, 30 Apr 2020 16:34:09 +0200
Message-Id: <20200430143424.2787566-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_154036_273521_210DB69C 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb2..5f6adbf4ae893 100644
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
