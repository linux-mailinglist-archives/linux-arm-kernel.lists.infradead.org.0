Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDFF46B28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YU6toghDZQZi927WBFLZSbJgdlixUKxTLi88uNnQIow=; b=pxw1aZ70RGZ63f
	oCxmC+L7WfTkMMZI3av97vdxcNaK7sqyOsp9ubfVUWL7KbXpD6/hp2BONNi6LSmwuFlNDugygFPeO
	m6q1SR6lpLaRt1Tj+09Osi5doKppGWtdruKh5+wyv079ZIXcqwrLBYzEw3H0kpHxECJlo/hQBTuAb
	Q+Pim0FvAX6MhYjX0yKvtmSpKcx5hQftOMPwhhGSLpxjnvi9ePrwA3RNfIC4rE4SM83sfj4gqgIt+
	Vv4QirrSVilfaQSXtYc6oTxmKBwqEn3FN2Ty2HUm9+f8etRxZUEh9oTmy2yl5HHbBlDPTu+zWXJAY
	e+Ta1tiaWDhprTXetK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt1Z-0001GF-E6; Fri, 14 Jun 2019 20:42:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswt-0004Lo-MT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so1466639plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ctzVWLxLHqItydbbPUXjVh0gv8n1U7GRnaTqF8ILaog=;
 b=BDM1M+271IQoGfkSDrl85T8Rg7KP/lRKJEOPCJCfChPITi0i6Zs3pcycaA0GBFCgll
 ZQD1tlZUFKuxGUoqIjPaF/Qk+ZU199aERuJ0yHM5V4ez2VXIdzvl/L2iaeThCLAIVS2b
 DdSbS6oQg5U5nGMrQ1vc6prTrvy5arXwJE6ZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ctzVWLxLHqItydbbPUXjVh0gv8n1U7GRnaTqF8ILaog=;
 b=DRwrDVUKRtCVKSQ6rAbA18Hycmrll0Ep2BaxH4cD1Q2Qo0mbtm162ggFO9DqvEMQbr
 B0sWcBsJ9kqWmBav5L3r8Sy5gKfh9OOiTWtNYyJLQ213NmQipqacLWQGn4yXKH8U3m0Q
 aQuFk8ULdt2J8O+qvh60VwRgo5h/dqzyF043pyZaZHKTkRbLYnq2Tli9OmQB9PyYO/g6
 aZCEy2ezZWkqeBZjk8M8ucO1BjEe/ditDOCjg26YCAIi7dIc0VyDy/DRKkoueP2C5I/s
 cuQ/qnGAMvnk/r0VXi3bOnxUvc5zPOiJqUnKTvyGVjsfsR+mb/STwHXEE41yyCQfY5uJ
 wOjw==
X-Gm-Message-State: APjAAAXdU8rgiotIal3XdLOphgzM9ABelllGuRNHYhUHVAftDkc0repH
 Q82egFNpFeusYOhPchLhXqoqVQ==
X-Google-Smtp-Source: APXvYqw21FhItxYFfLoN4gG820hTamDRhMvYBgFH74z4L0jEESW79mOUdZTsiokL1tAuHIASvtvreQ==
X-Received: by 2002:a17:902:f204:: with SMTP id
 gn4mr77051069plb.3.1560544642914; 
 Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 4/5] arm64: Add support for arch_memremap_ro()
Date: Fri, 14 Jun 2019 13:37:16 -0700
Message-Id: <20190614203717.75479-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133723_790341_F3555761 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pass in PAGE_KERNEL_RO to the underlying IO mapping mechanism to get a
read-only mapping for the MEMREMAP_RO type of memory mappings that
memremap() supports.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index b807cb9b517d..cc33f4c8647b 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -183,6 +183,7 @@ extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 #define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
 #define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
+#define arch_memremap_ro(addr, size)	__ioremap((addr), (size), PAGE_KERNEL_RO)
 #define iounmap				__iounmap
 
 /*
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
