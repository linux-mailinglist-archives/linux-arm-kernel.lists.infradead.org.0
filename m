Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488EA1A016C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 01:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYOuuls3vUmYPV/yP1ZN24o59puDJn5BRzUCTEzvfuc=; b=Wki1uy6EvKqvyV
	FR6aG1rbG38oPZr4idtqv2dAzDXBK+TV1PgE5bkhW+v98TND3Xij5UZmUWkfmlmTdqIvDW+ImM739
	KiUpqu0mHaSaGzIdK+1Nddd+QPyfR3l6L216oRLa0MN0XIlLSzgiDekGUrtNLyki3vWt5fR9nvonX
	z7OzruFBN9JZUCFrIFxlRVzj89sCSb/rnAibez6MyXsOiZpQ+CuFiAEDg1pKd2/celi5NJdnFmypk
	p0K+L+mMqHuDB70igJq+5xn5xlphGnAdCb3lh5QLqQWOglIptzuSk55DWRV6hRyDwg4a4TA7jvSMA
	hIx+UnqSMukKdJQyW5bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLayc-0003eQ-EE; Mon, 06 Apr 2020 23:16:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLayT-0003cy-1S
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 23:16:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id m13so785405pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 16:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jjDe4Hi7TtVO/wKC4Ixr8yGihHqa400mWL0wehOCRBk=;
 b=DETEeYLUPrHDWmX+mgf3XfkHhQ8bXZ4JQ20xi9rnXY3vkREikPg39QMkW+FwOTZOB6
 ad3hnyhmQW1o2fY8ksqfVaf3PHYZJN+QwgTMVfcpg7yFW8qoLnAx5xje3nNlmfgKQLKi
 xbiidiGJHcDcOJhrAq91ofcxuchLHrHgbpU+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jjDe4Hi7TtVO/wKC4Ixr8yGihHqa400mWL0wehOCRBk=;
 b=Q0HR1Q57LjgGXAvEgVMudccvs1mbAZA7/8/I3gPLb7ZryicNxzshNeCxo+sJV1uxig
 DZneE0hh10KCX+SpqfSQ3iw0MELwS++gfrE2xMXeWDcZ0e2Zxvkp4Z6fS25TctmfTTAb
 zeImiILwmgI2YbN0xfaIbsaNlV9gxctkAZ7n7/a93rJErbk1MGOQlm6TpPRvmENcey1c
 /DoF8c3Qtfcf8xVOUxgUOcxCGb35JhCqxDVp3suxATIPxqsql3EqIqrhc0ry1+p1QMhy
 AFQRFSoJjshgZDdWL6ZdpGSrwTHLFk+NYtG4VZxoCj2599bWfDxICrMNSUcFnhefr0tD
 oeKw==
X-Gm-Message-State: AGi0PuYye54KELmlQe0wFgc08807t2qkjZOig0/tvtfltab81Q5QwlPW
 9eHRFhwFTf54Vrphl1SI8uEutA==
X-Google-Smtp-Source: APiQypJOAJUD5o/cOCh1/7iAsdO0knHWBcNha6PAtRGiz4cvm/tS0aBBSt7jxUfJb4cvKE69NcjkTA==
X-Received: by 2002:a63:7b5e:: with SMTP id k30mr1393245pgn.209.1586214971506; 
 Mon, 06 Apr 2020 16:16:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 74sm12190832pfy.120.2020.04.06.16.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 16:16:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v3 2/5] init_on_alloc: Unpessimize default-on builds
Date: Mon,  6 Apr 2020 16:16:03 -0700
Message-Id: <20200406231606.37619-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406231606.37619-1-keescook@chromium.org>
References: <20200406231606.37619-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_161613_106373_A37CFFC8 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now, the state of CONFIG_INIT_ON_ALLOC_DEFAULT_ON (and
...ON_FREE...) did not change the assembly ordering of the static branch
tests. Use the new jump_label macro to check CONFIG settings to default
to the "expected" state, unpessimizes the resulting assembly code.

Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Alexander Potapenko <glider@google.com>
---
 include/linux/mm.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 059658604dd6..64e911159ffa 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2665,7 +2665,8 @@ static inline void kernel_poison_pages(struct page *page, int numpages,
 DECLARE_STATIC_KEY_MAYBE(CONFIG_INIT_ON_ALLOC_DEFAULT_ON, init_on_alloc);
 static inline bool want_init_on_alloc(gfp_t flags)
 {
-	if (static_branch_unlikely(&init_on_alloc) &&
+	if (static_branch_maybe(CONFIG_INIT_ON_ALLOC_DEFAULT_ON,
+				&init_on_alloc) &&
 	    !page_poisoning_enabled())
 		return true;
 	return flags & __GFP_ZERO;
@@ -2674,7 +2675,8 @@ static inline bool want_init_on_alloc(gfp_t flags)
 DECLARE_STATIC_KEY_MAYBE(CONFIG_INIT_ON_FREE_DEFAULT_ON, init_on_free);
 static inline bool want_init_on_free(void)
 {
-	return static_branch_unlikely(&init_on_free) &&
+	return static_branch_maybe(CONFIG_INIT_ON_FREE_DEFAULT_ON,
+				   &init_on_free) &&
 	       !page_poisoning_enabled();
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
