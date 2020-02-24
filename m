Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD04616AF15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHufYuedlcSgHDQYNB/HFTJ1jZD1fWkb2NRd+F1CAts=; b=lxuXcnYGTDhjPv
	JvhbymM0JkEqAH6+6/wFK0Z3+dYYxd4ekW7wGKybLLjOp0eFklDYQCFbouosUvp63eyBbLoUhVQx0
	Pl3Q2yi04oslsOLUCWBSAzUdppmUy3uIU5cl2gFlPR/cfXfgiTywHCWVE+EuK4kMxBXD4WZxOSX+X
	JxiKSKU7+QGU44TjlE+GE2ujJoHteIVCCOkZ/CG3vC68/jZ7zvuFcXuwdnV5OMsa2SLuwBcz9/2se
	kdcXw/341POxFJCi3Fmqm427x4gBkERZQE/6HlufGo35G5ATotV+4Bctrb0K60Zok+72yPcZluamo
	LOURY6z66sTTZMcEmNJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ISo-00014v-Fy; Mon, 24 Feb 2020 18:28:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPJ-0005a3-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id t3so11559883wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fiWmOcLAVe+tVXhcsvVE1DFO1O4ryIgAcLdwqW0ca+M=;
 b=pDRHKweDnlBKRULwy0ik0zwEBtEv1j2cgrRKvimaQC6F87phqKiS6hoWHYe79Woxaq
 dvU2Y+udalR1IWc9MZSMY0Zs5f9NdIHxKJhYe9t+iiuM18v5G9IPkB7YyVsl1xvn6G0k
 Lyx8J36rm2ynK9P22EeAO7k6RYA6roW1f6WRVmaqmmlmQjHQxIyE4MBbDQS/EJmu3I3p
 Qd3S4xWYoA2d1rHcA8AWP0OW4En+tWRi+9rXYw9g503nUnZih/bJ/n2/yoE090xj2LJU
 H5r4hDx2HFNGusqI0S9/YfyB+pnbzKC6Jhc3+KlEeOqTYu+SoSFgOQm1PAsvdd7NVhoF
 WL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fiWmOcLAVe+tVXhcsvVE1DFO1O4ryIgAcLdwqW0ca+M=;
 b=bJsfuy1m9KtdmOtH6VDQZSjGCtTtCkyHtUMNsB8NK0kap3J/xbNC4+bQ6mWxBYx+ch
 yXltlrsP46bqR5TF8nKH2iz7ju31ZaotbJteVmr1RvOQLDsNZt1kaLF6pMS5NtY7DdQP
 OXkK7YLK1sKBd7z+kSqlVLT6q+khtFG4CBz3j1T5RNXysbVUdT/6XHrpIp6KAagaVaTG
 glzcxdWLJxCy+be7wSXpfgkODFu3VuiU+U7IXW2c92Xhlmv199aJriAiU6cn9lPyzlF7
 KAiillqLR1FZ4ZWXbyal8NW3EJtZQWZRD8b3fuZsrgy2XhAOmoZk0se/D4wH09Fy/dim
 1Tmg==
X-Gm-Message-State: APjAAAWgZn9QVyn+a00vy2Ij/Js+Uo4faSDvLdHs0mlOpv5t/o7tIx7m
 HuwRD1/NB7dXTX8ZxjSUhYO02Q==
X-Google-Smtp-Source: APXvYqz8CuJxubqS6SRPcAebK5WrAwOgc3vNvNYTHpZ8VXVrF/jAhnwu+rN8D9EGJiHbmYtTOasOQA==
X-Received: by 2002:a5d:4f8b:: with SMTP id d11mr65031300wru.87.1582568680476; 
 Mon, 24 Feb 2020 10:24:40 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:40 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 10/26] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
Date: Mon, 24 Feb 2020 19:23:45 +0100
Message-Id: <20200224182401.353359-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102441_855701_4CF25711 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver would like to read the MMFR0 PARANGE field in order to
share CPU page tables with devices. Allow the driver to be built as
module by exporting the read_sanitized_ftr_reg() cpufeature symbol.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b6715625cf6..a96d2fb12e4d 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -838,6 +838,7 @@ u64 read_sanitised_ftr_reg(u32 id)
 	BUG_ON(!regp);
 	return regp->sys_val;
 }
+EXPORT_SYMBOL_GPL(read_sanitised_ftr_reg);
 
 #define read_sysreg_case(r)	\
 	case r:		return read_sysreg_s(r)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
