Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5541BA9B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+/FEbPXsdczl2WZ2vu3RvU3lYJG8WJCWsNlTp661pg=; b=LqCqoXEHnIuOXB
	zvtmlLnm2qQDjiDBaR6lT00DrEDWeJVoBRhoLf+zBQuMtpArKXPWQ7XK1vRt65Upy6L5M94+Y2EjX
	iaeRX7/0/Ucmfi768qV7c0/05Ipt29G9l0FAtfe68FHHaLPPwWxcssap3jaE6yAiikXzgT0xeOuVy
	qsN/aKvt8lEwoz6+rLDtYSyzoSvB5dNn5QtEReAEriTkypO4CQni7Mh5yHg3I6NUNhfNONhq0DO+C
	pKoZis9EU4GmYYPZN3+8Ul7YUKyHqLU9y9c/U6Bctbh2nJsq9fn9hMyW2g42pgEj1IHD29dOOp5/i
	+LDz8bpGu1hGkOLwH2/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6EB-0004YH-E0; Mon, 27 Apr 2020 16:03:27 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bl-0002UM-Jd
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:01:05 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id y73so20797982ybe.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MhrpwHs0AsLMtVzb820LtwCNl0W7a7WFfLC0oPkvUmQ=;
 b=DHL29TiSaxcDKg26ae3snSvd9KBniehMx3v50e59HOzn23b9luEep1Uut6Rh1bgH//
 KO956X4m67E0WpTwHcyuZx/xco9K1MfUnOei1/NJ7DvhzpuBWAQQoieFIzyDvLo6Xj/U
 LSa76QE4JoiA3ockCGPZD1FfXXH04NOXGtZ1PxX9YzsvIand259bV5kmRZPWkfPadlSz
 XWC+qkJlG8khvQVMgO8moC3HdAi7FoVaXCNT/Dr0tnUqnPV0HoVJ/fMpxxfRfRmbMoG3
 yBAUhuFYHDK2Ll4Rry67J9w3Df6Y/7mnJGUxW1bj4MawAaAPsThGV9/Mf4P8wQ1n4vgO
 xZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MhrpwHs0AsLMtVzb820LtwCNl0W7a7WFfLC0oPkvUmQ=;
 b=YIMcbwU/RxYMy5c/BCFBGBaTsIiUQdW7CcR1N+89/Pfp6HH83unE+dolpMKnanxx0c
 L196UJIw0C981QhddrPSv6OJmqpsGGH1elto1clL18UvRboWCnvSXYmm1YHbVPxOisn2
 8GUXN5n6d35ds4RuAbyKuqN/5bck60ECDQbk83IVyfwDWZcPCQSsPL/79wVI0wKetp3L
 zYYwMxJyRUaXFpAgfsC8mPSouxzPR1mocayc57CynFFiokH5e4peMtsaAdrt77IsdBc8
 DC90K5wDNpLVCePtWjg6xxB5bfHYHxtex7IL4OXsOovjqzFxg/pwcUo/P5owbV0NP6O8
 UfUQ==
X-Gm-Message-State: AGi0PuZ6G/L3zm7iICuUCGDaN5x//m7EgIWgyrcuORtWu4kPX2oSf6Y2
 OK5trp1X6/08uclXlogSxhP1sPuQVxrUYJ9gBpI=
X-Google-Smtp-Source: APiQypIKYYCqrjrGDUY1B1bGA9o4qwmVhzAAlAiSD0oA2v0bEfRWWMuFhQtbWcozWJZsq/jS263B3BZnI77ktov0l6U=
X-Received: by 2002:a5b:44b:: with SMTP id s11mr21987518ybp.399.1588003254867; 
 Mon, 27 Apr 2020 09:00:54 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:15 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 09/12] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090057_822366_223B1C42 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
