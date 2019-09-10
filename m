Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ECBAEF43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU1cefWla9xXtalZtz18B0X+o/rSUX7uuFq/lJwHlg0=; b=aFuXBxUy6vd4Xa
	fqJjjIzAjUHrdUs5VI1ucN93Xf/Z1i39eL58jbM7r1XammSOUpDDh9TlfG7UAC2/lW4jiLrjCKNKV
	uFPdCGhjgGcZiAMvLsrkYGq04Y16RChsYNlzIUGHpMhW0O5Vq8E0ddPxQv/KPLTYVZAcrXOocgYZb
	LIvm8hrJu+GKn6T2K3B/XtkWEYmImdOZqCx4/aiua9JM+ShWhNVCDGtAroQrhQPHKDcP8eXiOPARg
	nplTsKM7ZFgY1A6ffbKTUiEyT3Gyu1BrLVw9rHf8rWYQ6NJbq0pfSfpOWlD2c88JZ1Y8ReZ01cFEC
	qwgqf079uOAIEaeBvQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iid-0005Dq-4B; Tue, 10 Sep 2019 16:10:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ihY-0004LK-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:09:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id d10so9986278pgo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BXles0cH5YGr7OfqkOJ72KVG5DkMe0UjZVzH2kBE6hs=;
 b=T2zSyHcEiyCtbS8xoj/ECUACFJexd7ZGxA/Cwu1Ed2uaIIhPjEgfE8/61M2nZVJLBm
 naR6pG28QpnVsTp2W51i+6ULyNWT6kVyhO8VoOvzKVTHc5F2cwDTufQa4OF3FyYP04dk
 APV2Ac6LXoj1jxXRVHsGEBPoEuvTGMNcF+7Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BXles0cH5YGr7OfqkOJ72KVG5DkMe0UjZVzH2kBE6hs=;
 b=mVgol5h+sd6BEwff9z8cp44dt26EoE4EVldv5DGoYwDqF0IfysDTEJ/YPCfAej5AvQ
 KNNLFVlWEDJffNBjvvodD3m7AhoWMgWNwV6g7h0aQzjn8WgrFfXJXkJ7/eROiQQNTbQq
 DNs/eH88Iy5fDSPBSdCpWz4W9nOfaN/j3lIbQ6OJ7OMVPCukz2qUr+afzzKE09FjVmIf
 TeqqD1BAJCPbCCCjSB3263UO6Rl27J/sAtwS52NO9M1AaSCW7FqIK7kvZ6Qy7BOeFbhL
 RkRpT+MelA7kxTnup8slMknScolHwJtZTE6anEUYQFAdApNP1XXLf/WLBRQEvKMncyb6
 s5jA==
X-Gm-Message-State: APjAAAUZzTX/WLtZ2B9Jf/W4s3ipx8OzPIsDE/IFXH7VJ25+IwzRBsIG
 +JItUStK9EwR51JLubWKgg1+fAX3zx3g4g==
X-Google-Smtp-Source: APXvYqwdWlZubSWHnT9D8yZ1LDDemTMKo+tmMy94vJ9+/SnQHMWaD5lO6RzbXotNH1LnwMd6vahwOA==
X-Received: by 2002:a65:4b89:: with SMTP id t9mr28326267pgq.55.1568131748161; 
 Tue, 10 Sep 2019 09:09:08 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 09:09:07 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 4/5] arm64: Add support for arch_memremap_ro()
Date: Tue, 10 Sep 2019 09:09:02 -0700
Message-Id: <20190910160903.65694-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
In-Reply-To: <20190910160903.65694-1-swboyd@chromium.org>
References: <20190910160903.65694-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090909_065247_916878E5 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
index 7ed92626949d..c623e75d9152 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -172,6 +172,7 @@ extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
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
