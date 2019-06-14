Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69FA4528B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgScdNf/w8hJxdx19T9mnUt6JtWBDPQ9RzT3kcLOpKY=; b=okkOaouwk6tA5b
	bmoFIVGjT4xoQq81jKnXJNaq8tZkx3OE3lkkl4DHLDywDUL1CK7XVI2MlIVm3d9LQs0Hv/eI4Aw1H
	1IXBnJZkRZn9uXSkbK0Un9G0elcFMly14mp0BpVyrq28ylvPArL4w1eQ+h4xRmppciGqA3t03MZX5
	XdEINPeEfxVy4e1mLy8gBEasj+yPWQ6DTSW+zsJ7ykFdn8nUdDhYoMrYBAwcaHe7VF33D10ridxYM
	I9eORRBWd4DN0HCbnh9ZeUTCdqCemyq3dqizBTS5U+9GCOb98snjOKK56JnNjd27yzCx1XYXfjFN1
	EwXoiuLYqjnTIdkoasRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbces-0000tI-4r; Fri, 14 Jun 2019 03:13:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdH-0008UA-8n
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id c85so505380pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q2UDagaQQzh/lIVkivR+vaM0gPa+GGbgrufLmqcYVmM=;
 b=z3CUixoaajCn7ukcAhM7vkUe1zw7MOgiuw2Yef1G/TazLJGzHQAa4ZoBlMwRUSAVfL
 PfJPSuV4wbp5CAeEtjL34L+ogPzomyWYKTmVBJt0BL7qU3BxUINc0UIEseTbWjNsGYPv
 P3oKFJanLdaBaPZdNokLjFrQTZ65RGkSFmelnFN5ycYOEOXsSD0CiFz0u8Bji79hnW6e
 ne7WJ2kUmZSMvQKp/F7I7BrGpSRUBVpIjcMBJGESvXsfNOVx440zFhkywbsKP9fvJI0f
 mWWiFnykxAGVuYgqhbzMe+ENGiY9PnMZMfudq6xxIoRW0OrCE3I6qZgy7fqigeaGtuYQ
 9FVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q2UDagaQQzh/lIVkivR+vaM0gPa+GGbgrufLmqcYVmM=;
 b=fpQTipJMMRu99aCTYEiroZScDs4UJOvfXcADu+n/R6XYPy/v2umcD3k8ZPIdLQe7Pd
 mLNAIIzurWzMkQCZ++liEqdGdOaDwFi6FlmqSA7adSF50dOG64YuHJmuzYO8YmbPJBXT
 OXyFn7dgLxtw9n9Uuw9D4q+Qxs00L7z+Eq1TCVraa9USDNO15oipErd/xRtE5sUcppic
 VGhfeVBkTOX7CzbH91foB0Qq9OwS1BbnKJmExPA7/gSIwCazll+Y9HuMgUt5ZB7Zt+Td
 DLmvSwPs9sIa3vDcyV9AWrmEM8k4skh/TWWxAeGB4hLIQ+gx3SDe40gTV4L+i8MFa/d0
 2lLw==
X-Gm-Message-State: APjAAAXC3LH9OZD0s45nq8yFs193RMD4GLvgXBUsZsySB0cDVhPZGXbo
 bzrf4mg4wTbQi0nG77vVrK40Yu3fiSQ=
X-Google-Smtp-Source: APXvYqw0YdgiXz5axjmwP8zKQfiE6/6qJ1tgfUBgYclyADpY01E8vwVgnU4EZUdMf24QwT3WxVf5hg==
X-Received: by 2002:a62:78c2:: with SMTP id
 t185mr27057268pfc.142.1560481922495; 
 Thu, 13 Jun 2019 20:12:02 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 23sm1006127pfn.176.2019.06.13.20.12.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:02 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 03/45] arm64: remove duplicate macro __KERNEL__ check
Date: Fri, 14 Jun 2019 08:37:46 +0530
Message-Id: <397130f9dfb4aa9a600872fb5ed66c90664b830f.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201203_325529_CC7392B5 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: zijun_hu <zijun_hu@htc.com>

commit a842789837c0e3734357c6b4c54d39d60a1d24b1 upstream.

remove duplicate macro __KERNEL__ check

Signed-off-by: zijun_hu <zijun_hu@htc.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/processor.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index d08559528927..b1126eea73ae 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -35,7 +35,6 @@
 #include <asm/ptrace.h>
 #include <asm/types.h>
 
-#ifdef __KERNEL__
 #define STACK_TOP_MAX		TASK_SIZE_64
 #ifdef CONFIG_COMPAT
 #define AARCH32_VECTORS_BASE	0xffff0000
@@ -47,7 +46,6 @@
 
 extern phys_addr_t arm64_dma_phys_limit;
 #define ARCH_LOW_ADDRESS_LIMIT	(arm64_dma_phys_limit - 1)
-#endif /* __KERNEL__ */
 
 struct debug_info {
 	/* Have we suspended stepping by a debugger? */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
