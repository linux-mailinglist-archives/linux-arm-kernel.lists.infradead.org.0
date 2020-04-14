Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FB11A86FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3osgJnt8YOl5i5Tso1WjOJuEMkAheHaDseYn+K++QI=; b=gr0B/nVhDn7rda
	nYTadK9eWMIkSCkUoTVlT1dGBxtzGJnzF+tn99u2ReZpUY+ygSrgcLNtOwbjmhJuhzDlP9RXkrjv+
	nX5ADOpwJs4F9biMIypqq0aWe5dD0IKwwLmYzjh6eFc8NmLYQmBUSAugVLJ8hGwCaTUtEuVHbAwwy
	P2UQCUGUkLgtJIhN2DJ+CXIEFuhWcseqidrsydevekxLFwn2GeJrIq2d0fJ83FoNXBTT5GLv9ZWRg
	gXnKo8diLDLy6q/FPOOLQ0dRpEXNXIKqnzaiGDDucjidWyp1C9G+NR0qDzyWu/qBMrs9WOala7X5U
	lDCude36M/EZ3FejIjhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP2a-0007nH-QP; Tue, 14 Apr 2020 17:08:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzC-0002Cc-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so13827175wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aOn2/ivBf+XmB6Al4WmdsHcps0QyIiLuo8qefeV2C0s=;
 b=Z0Yp2WFwHT70u0R7Wr7R5AhtdbVQPNTMNufdFuXd+ENpRenI7zcZxRtj1eDH/8DVxK
 w7N9nOpW7sEG9K/u3l1KC6rScagAtd4Om9U5KNXAa5xEBG0aKQFAomBQj49jMwAx80bm
 VnyWFWc4Yzp3RbBcbzqkmhqjzSXUGlBrfV9Kgixw0dzjGUnOx/ApPNVuQ8gPPBhxSY5/
 4wGrHj0nf+rS03Agdvzb84edls0jQzbEhQ/0sOzl94i50gjL44IGJs4I98eE/dCmXuXl
 D4QQcRCEFAxwwKcohtYfh0JlVaKZdefOyxLVJTOa7V2u0lkZCvT24PKYz706K9mF45p0
 UpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aOn2/ivBf+XmB6Al4WmdsHcps0QyIiLuo8qefeV2C0s=;
 b=uTQIuCcfvUuj+nYi4giCjsnbAaYecMIt6yajRKTh5xTiGrKyk+F+oLUsxmQtgREmR2
 RXKceqWYK6aroLNYkYpNSCDlmB0mVJFu/6964cazmKPKsNHSmDqQcmldfHVNPI252OD+
 mj/M9PX7XWjghMLCS/L8uFab3MWvzwgu1sjiJutGwwEIU79rfByVyoISvWvknrpe/qny
 yvIbqZKviYsNgjA321uH7EnOG/mEp2B2RfsPLlXho0b3yvxkL+HtsCV8BSYhC3NYNECK
 oQSk2ON4R2OL0Uzm0zuKizIujIIG0ERxAHiucsJBvnMxHgokxkT7AGfI2v8+86Lde6SB
 NbxA==
X-Gm-Message-State: AGi0PuYdteZOvxAhg+Pxm7vMES1eyjatMrtoRwllzax1AmFEgqBjWV4b
 fEyxpKoMHlBazI9/BvdhVGJbuw==
X-Google-Smtp-Source: APiQypJHABOUo0l69p8cEPC/4JaEesvnVVdt7c8KNCFhOJxICd+3rtd3OwSved0AadUjHTnKij1dPw==
X-Received: by 2002:a1c:e906:: with SMTP id q6mr776151wmc.62.1586883872984;
 Tue, 14 Apr 2020 10:04:32 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:32 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 11/25] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
Date: Tue, 14 Apr 2020 19:02:39 +0200
Message-Id: <20200414170252.714402-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100434_531397_A8F0DD6E 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 jacob.jun.pan@linux.intel.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com, jgg@ziepe.ca,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com, baolu.lu@linux.intel.com
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
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
