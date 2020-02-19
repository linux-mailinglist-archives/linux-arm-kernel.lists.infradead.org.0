Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53F9164266
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HrRP5kPu47ORhNm9f9rja5RM4dIp7jd3yWr3oAkqQh8=; b=Y4E/4JczGPWBpe
	1vOeUrsO77va8DYMOlZhFpeFkNk6nbClMOELNc7H9swrR/GiQ5Aaj3lhYSc8sdcbUnjVqV7+RrnH8
	yc8+xdE/Bzu8ZWGqifn1ujUB7R2vv7yxAWG3G5fO2irKLdvH6RQXUg7j5wkzWV/VNJgrgcnnOZ8wF
	ApEvFPd36KdasOsxTUBckiwMsA+rGIXt8UOwe6Z5A5fC8s78y23TrQUqyXCaInN3bZ5TJnPDn8uZH
	FoxRfpbrhW7Aia8i6MQDIftx5b2ZPeqkIwyAMJM4uH/g6EQksHI1d2VGKHcCUxYjZycwYcG2TxmlV
	27Utk9dw1K60+dnS+wvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mna-0006Lt-2t; Wed, 19 Feb 2020 10:41:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MnQ-0006LY-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:41:37 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A1CE2465D;
 Wed, 19 Feb 2020 10:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582108896;
 bh=U6to4otLXJGLB13o6RzYw7pCZ5asKRv2pkOtt9vkGms=;
 h=From:To:Cc:Subject:Date:From;
 b=xl4Cp7xBchKZx9ZkeBPRExGYG3NrRV2PCihn+lHV5zD4r84NXFh3jeHZKCrz6r2IB
 GbtBQXOvH1G2/XsA22xsoXbh810x0EcpVZ4wvS7EWnE9NZwBWG5MKcrp5YAFMJWs5B
 jBjWek1zesELJmvQUDOSwpAsGZAHZLBL2AUA/rQo=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: memory: Add missing brackets to untagged_addr() macro
Date: Wed, 19 Feb 2020 10:41:31 +0000
Message-Id: <20200219104131.18960-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_024136_557453_D313BFEF 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Linus Torvalds <torvalds@linux-foundation.org>,
 Will Deacon <will@kernel.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add brackets around the evaluation of the 'addr' parameter to the
untagged_addr() macro so that the case to 'u64' applies to the result
of the expression.

Cc: <stable@vger.kernel.org>
Fixes: 597399d0cb91 ("arm64: tags: Preserve tags for addresses translated via TTBR1")
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a4f9ca5479b0..4d94676e5a8b 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -213,7 +213,7 @@ static inline unsigned long kaslr_offset(void)
 	((__force __typeof__(addr))sign_extend64((__force u64)(addr), 55))
 
 #define untagged_addr(addr)	({					\
-	u64 __addr = (__force u64)addr;					\
+	u64 __addr = (__force u64)(addr);					\
 	__addr &= __untagged_addr(__addr);				\
 	(__force __typeof__(addr))__addr;				\
 })
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
