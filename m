Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4407DCA94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtjMzzc59R2wxZq223KzbMKzGgoRoQAumIN1bbUiSTQ=; b=YdTmsmg8ha9tQ3
	cq3Q2YIEy2Cl24iUKENCNjJJznDgl3KKAOMWwsyMHyAZVgsytCByxEKGq6Bzkp6hKpA0jfpkBYvsp
	iFIDHwXZFdv/SIXXKU5xXFSB4yyfG0O/rWr/U6ncJqEI0P2ABOdrWjxiES4lknxxu+jYsdN/ZqOig
	nQmoHQ70ssl27ehR6LqehPIs25qDrLX2ooPBlXq/2M5Zvuzljb6pJuCihaaV53nJL2493wiiMr46C
	Mc+HyCM72swc4lJ6blwAf0XRFpXuohzLvRDZJGV+Cav1V4nKiSAonc9Ik1VkezWoNgn4EIza3tISY
	eNEbNz9H/Jr+wpmactzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUs4-0003H2-SV; Fri, 18 Oct 2019 16:12:56 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqI-0001fj-5j
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:08 +0000
Received: by mail-vs1-xe49.google.com with SMTP id j2so1571140vso.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=soVi6argGh8CkyJ/tZS/XQoN8aAv6F/7ncnrrIAGrbI=;
 b=RTWmB+YRhbyTrupTegTePDqh83wahNiLo24V/vkd3XNh2/VjRfOzsP8l9UA07iBYVh
 cNCOrmz1KApedjuZfTuf+oEAy7uJ9vOjlPpxsg7OkJReg5LlWaNnJSadKKQxT6uV8oo9
 DYHGRvWBz3/GUdtlA0wIAJuRmYFSW5vXFhnZ39LEFxcVI9DqpO8eIN9kDWvp9NjS8BGy
 xN5pkbK5dusYfEE++LF7k5cNY+Cu1x/v4ps1Ft2zcALY7q2NKOD2KsdADykKFGjX/ek9
 pgnN2RfC3QCLk3Iaa8HyaKxHiBf6citZAP2zBGFrT6GXMyCWAMsRsDGnPTlW+RbabIhg
 vExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=soVi6argGh8CkyJ/tZS/XQoN8aAv6F/7ncnrrIAGrbI=;
 b=jqNSF7wRFfPPu3zvLfXFGNaozmB+0zyVeCoioNg+mn7OINoTLXNqmdNFofxJCc5tnY
 dGdN6ykW0tnY3Ix7g1fPwwYy+2kdndr0d1v1awC533obdyPm2U84VUmaSn104mLf/mFn
 avLFsA2Xzn1457Hul1jr+o057FfeqosZfEdmGLnDLSzTGy5pMe7ygJdKP4x4VqSVXwx8
 pyBK64lNSvLbOnIZ5ilyCe4oefdt2H04ujSIjNYHoUlTK26cu40lzbCXKQp85TdOJ06v
 /r4UxchobC9HXkwZ2IVsVDzuryJWOYGhoYx9cqLi8e+ddrxQCLf9RZiCgPp72XLGMuoH
 sdvQ==
X-Gm-Message-State: APjAAAUZUWvBTKfZ9I+lnq5DE9O17mlnjN0regE/GTIr70CYWK3vVA42
 sIzrggA4PH/+kVVzVSksWnw//YkSVeYDGPrwBoI=
X-Google-Smtp-Source: APXvYqzkAvflPUA4hxOT5c7IqsE0Ybkf3fYa0ytmTSeu2hOJz51kZPeU6sdMsbUTLU2Tls8gLg9QkcQsftcMtRZzrhY=
X-Received: by 2002:a67:e34b:: with SMTP id s11mr5965401vsm.195.1571415062790; 
 Fri, 18 Oct 2019 09:11:02 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:20 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general allocation
 by the compiler
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091106_339791_9026F713 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Before we can start using register x18 for a special purpose (as permitted
by the AAPCS64 ABI), we need to tell the compiler that it is off limits
for general allocation. So tag it as 'fixed', and remove the mention from
the LL/SC compiler flag override.

Link: https://patchwork.kernel.org/patch/9836881/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..1c7b276bc7c5 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -55,7 +55,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -ffixed-x18
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
 
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
