Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD501FF850
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRIalcTUnXrCJJkDxJkdHbExJUa5gfQkz/aJ2ji/JgM=; b=pJKwEQB1Ifi1ay
	PMlSgboThLkceB2QskP5qBlQdRvk8nZgZHJFz3DvzNHWQyv5p1W6kZD/shN4diDibSSk0S9oM6Gwe
	UAkJgaTaTAiUurA+/Wuv1rqvqGgmZ9KNXScMvKVA+wj+w66sxoeFhzBQbBx7FgGgRCmsGUhzovNdg
	+mT8TnUJgsD1mAQSikBtBQxlB/rHsBOLph8EiP6Q7kSHcW2//HwuDea+5OCc7Rr1U0jCUvT8nMaBu
	3cQHcmhDOS1+R8LXKgKUkhTmoS6XSXg2ohmYfiAEC/9wHTcnDFMSw9TIqt1EhjAMTOV8T84L9N3/F
	A0XQ1QKwSR9msN7LaFng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwuf-0007zW-4L; Thu, 18 Jun 2020 15:57:13 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqM-0002Db-K4
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:55 +0000
Received: by mail-ej1-x644.google.com with SMTP id y13so6959914eju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OszwHFuvAODAZ4JcDGk8vTdgEsm3AXU3gmIMXDwpr1E=;
 b=CXa/IxLq2sAhhWXEwadxVdBTNRXCjnNRJ86QHDU2Mv2XE4055xNa1KydScB6wK21ZB
 cXy76zowZ7DH6oYph6Pl7OuFVuh4YQj0mvtW0MxteQ4UcjzMXY+xljI/4UnbdNVn8beh
 plIgdS+Z0wk8kS8Nt5E8eD6lwtdFgeDqCh4xStJzlWi7O9hNV7KqxuDuPglptEYvakjg
 4gRgbFs6be6neKEhVJpZF7i5q6uxLLCAUoZE3762HcKHIu0WyhDcJaTICqaeIgkR/5so
 ELvNZAlx+cNLKnbAJ14SIMrBO5wUtNh1LjFnDsET/fpJA6CuAxpepH0+ZH331HeSTxGC
 PuMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OszwHFuvAODAZ4JcDGk8vTdgEsm3AXU3gmIMXDwpr1E=;
 b=D4fmLWGfW2AqHME/oFG41U8hPMxp46q9d8meEiL/v9ymvj9iz/0R2l18lkAK4b0678
 1WjtMNzTTIQdIuUS0kP9UJj09Wyet755lZvYPcHADqKnTiVjVv4LRYsTdffgfESJIWvP
 RmnRx6kj82rmmYdlrsSrzAlAE6jb2Zc357QL2S4C3Kd+RnEMIOgw/986APIHr6NRr2II
 CBb6aghijaqpbdb8AAJR1gfzkcKBjBsbRNq5w4OmyRvPssAQovj5eDItxe0J1YEmnmw9
 up4ak/8IrwwbePUGQgsHDH4G/eFTtvXchrtw/GKntItwMHHfXM8vTWUZDnNAOKY4mjbJ
 YDDg==
X-Gm-Message-State: AOAM533dlZSAjlLXfyPht5RTy7Rpbi9ZnAXTTY7pXe76AB6heT0yWM8Y
 N1zKLI/6bsabLG2ZoKtlNcsygA==
X-Google-Smtp-Source: ABdhPJyc8Mnmi4a1Aktae1QZY9O3zjJrhf37UfpwnWXbqDPMbp6c+LvxNDW5UP6lbOX5cvWPvekjsQ==
X-Received: by 2002:a17:906:9257:: with SMTP id
 c23mr4487938ejx.86.1592495565343; 
 Thu, 18 Jun 2020 08:52:45 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:44 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 06/12] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
Date: Thu, 18 Jun 2020 17:51:19 +0200
Message-Id: <20200618155125.1548969-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085246_743067_24968F78 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, catalin.marinas@arm.com,
 joro@8bytes.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 robin.murphy@arm.com, hch@infradead.org, zhengxiang9@huawei.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 xuzaibo@huawei.com, baolu.lu@linux.intel.com
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
index 4ae41670c2e6b..ba1e17ad17447 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1068,6 +1068,7 @@ u64 read_sanitised_ftr_reg(u32 id)
 		return 0;
 	return regp->sys_val;
 }
+EXPORT_SYMBOL_GPL(read_sanitised_ftr_reg);
 
 #define read_sysreg_case(r)	\
 	case r:		return read_sysreg_s(r)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
