Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F33A193B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEyOhIh6jn1G4FFCKmRcBgUq3clX2HV7zBmBKtrFTTE=; b=JbmrLdmE+jR5pl
	sWvweiWlNUVuylHGEKjnNzHJiXRyGf4TaVDxKy9Fs38YQJMuXRgruuUb/DVMRAbvZz1ClhZgvlbkn
	AdtGztU+VmCj5qbz9C7aJLfsJvTaRq57lhvILAqShIQsDTvzEyEvBjojmqUBIqZC3AOAoRjfHdszf
	QkhDQ/GeNK97Kt/MWjPa1TAYTpUrsKdGg8rBcISZpXae3bZztNxppBcQ2cW0f8ZCdUOMNi/yTPXs6
	eBOd4vf35UkyV6GKBdFdfoRL4VFgbLSPp/6DZdnzQ+Cxjak0rlfuMI0ypQr/EVxEdvk6I6b4ur+NQ
	J/rJld29sL0NWHVZsyNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IuA-0001yj-Nq; Thu, 29 Aug 2019 11:47:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IjR-0007YY-Sp
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id v12so1851777pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=BKnkcJFk3MNXaOvdRyUnOTInsQxotc+5YsfNlBmVE3T89BFUfb0e4L8sFQDeK284l7
 /r4udJ6Sl2cdNixjixGH9bWI5UzZINAkYnN28hma252vuenUeUXIxzaFH2k6tCsNYgsq
 XIiGjsb9f5cHpGVLf0Zi6zL9cwSFVhPlSqbh828PdaAkEgVxOMDq2rt0Jm4Cp3tO+hew
 ksi7yWvIqiYq1hEPUSUrvV61FY55xhOKcLozcHwPv/WTJ1bRQYuBuaroIfcmg0qLl38F
 ojLlMS0ilQ1bLD2QDrzeIs927PecMnilw0p3Z0BWBCNBtwz9O08SyUgwW79XOxF7V8+w
 uA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=NySeJ8YNp7wT4w2t3kbov7W5BqVLCm0tN6yBI/bkeClv6pQD7Zw++QBb3pUEvOtHvK
 E6bXktIE5gvuT5WrkmpJ280RfQg9ViF36ue8N7bRP4XfSLstgutbxbcFba+s08tcE8B5
 zi4xVn43mwe/dmUg598NZ4FtUJyy/z7a817QPgnJhprfYu4M4MPjYZ+SoTn7UVLpp0FD
 BFgX1Quq8e8zka275bc8znMRrQlLEsnxMCUNhKIfpWLcUVwpry3FIeXCF7RUDuzg5b85
 x6/7/M7ojLRr5OOZ26/aGNhje6xG3qOnh5NUsFXIGh8yCXKQKwx+MihQNGUUl8rWJBF5
 EqkQ==
X-Gm-Message-State: APjAAAV5nWQWsu0/FMqQyEeCTZ++/PyyAmY8YXdj+UE/EUQCd7UdVaDH
 gB/L3zjhsxYkkEqpQuW0Fm9Zbw==
X-Google-Smtp-Source: APXvYqzfTJ4KTAhULOXeqjcaWdsEDWsfY43W4OVpdguRKP0hjHTtCfnJmiRO8UFi+bPmQIHEQeZURQ==
X-Received: by 2002:aa7:81c1:: with SMTP id c1mr10453368pfn.78.1567078609375; 
 Thu, 29 Aug 2019 04:36:49 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id k25sm5884224pgt.53.2019.08.29.04.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:48 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 44/44] arm64: futex: Mask __user pointers prior
 to dereference
Date: Thu, 29 Aug 2019 17:04:29 +0530
Message-Id: <965d727955b4a45ac1f12e67c6a433110ef94871.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043649_988994_DE1A6AE4 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 91b2d3442f6a44dce875670d702af22737ad5eff upstream.

The arm64 futex code has some explicit dereferencing of user pointers
where performing atomic operations in response to a futex command. This
patch uses masking to limit any speculative futex operations to within
the user address space.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/futex.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/futex.h b/arch/arm64/include/asm/futex.h
index 34d4d2e2f561..8ab6e83cb629 100644
--- a/arch/arm64/include/asm/futex.h
+++ b/arch/arm64/include/asm/futex.h
@@ -53,9 +53,10 @@
 	: "memory")
 
 static inline int
-arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
+arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *_uaddr)
 {
 	int oldval = 0, ret, tmp;
+	u32 __user *uaddr = __uaccess_mask_ptr(_uaddr);
 
 	pagefault_disable();
 
@@ -93,15 +94,17 @@ arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
 }
 
 static inline int
-futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *uaddr,
+futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *_uaddr,
 			      u32 oldval, u32 newval)
 {
 	int ret = 0;
 	u32 val, tmp;
+	u32 __user *uaddr;
 
-	if (!access_ok(VERIFY_WRITE, uaddr, sizeof(u32)))
+	if (!access_ok(VERIFY_WRITE, _uaddr, sizeof(u32)))
 		return -EFAULT;
 
+	uaddr = __uaccess_mask_ptr(_uaddr);
 	asm volatile("// futex_atomic_cmpxchg_inatomic\n"
 ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
 "	prfm	pstl1strm, %2\n"
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
