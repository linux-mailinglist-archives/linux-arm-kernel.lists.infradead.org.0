Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21CCECB47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=web2MIqdaQaZlmbioBDkjzWbHxP3CjuG09uVLcrnlVY=; b=NPDSgI+MI/TCTm
	8sSoVbO3CGRVFdIHO17oM0dAcJQnXk98gm4ASKPabve3tACZFWUyvYy1VQf/ztaR1z8xZiPvxGVdv
	W2EcKun4lHxa78Ux3EG57RNk+CXWbPLbWLlqS0J3nUogU5CSjkloU74eC4Zg9mCiuWOq+9kh/ehDY
	4b7p3cQFwqDeFVi2Q0c6qczVMuFEGe4riuWFKfENtkvzlWXiuQ/twHwapq5HAFlv9BWaCiLDaqaQj
	jU7CmKVZR6R+KpTayMdu+hSi8xOKS4AZCwlPh08aTRfFGQqY2aoll0I5KrnXNpTDVdpCZpN119tz0
	TOBXm41kAKVs05P9F6Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfDw-0004xl-LO; Fri, 01 Nov 2019 22:16:52 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9s-0008Jx-Jm
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:42 +0000
Received: by mail-pf1-x449.google.com with SMTP id w2so8449000pfi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
 b=jD7UphcOofzvzp+Fej+FGAYX3qlgaInC3q6riheK3W8LCKmKWtfTlTrJ/vzD4a19an
 +Hcrv+tkq9TdRVKgDOaa6Ic5PZn6XxN9+vLYJmvkleDiug2F9Tcj89ldzM4/Wx0mDp22
 mgzUKliuIEQOx7CwzvE6V9myvgkQNgKcVgCutPLeSHS/wibMi+2JvOa+OCv75/Nwje2O
 8oWep5ZzzzdxjS5LcG8wINg1XSm4eYtuiQytGXDC4/Up/8zjkIUOQ+XAAMs0f9WdxGw6
 GvK3uzJndPpvEwWoClt/0ppEIta5+qJS7qlUvBidggYVVp60p9g8sBe1C+92bc/icYtq
 Aalg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
 b=NBNDX7x2Rmq2zBsN9JR01GPYAQj/JncqKFxqr6MOFVIR6hJHQsaEMC2DE8tzhZsUUF
 QjOK8p6gq4n5IhFrqU7gl34acCwWJeRtBXbsoly82u5c+EquBkr+9Vxao1i42JeuXuM8
 qVkGm9Vw18WfY+iBtIv2eejKeXC7E+89SKiYvw7eJ23hrZEJTEaSYRIp2H7MKCkh7baM
 LXLRTdSSXdPLKf8AlkOkiia5E5yEurIq/e/AT5MwQKvBO7MZuTRMfw/R4T0eGRBTsS+8
 LkMa7KWZ2XPRyAQO0mgXRukMZje3FiifLC0fkwaQQZnOQSVvhlZtkn/wwRDkXK5khtq0
 8i5w==
X-Gm-Message-State: APjAAAVad3ZNyLJ4NL1ZaSt35kCTRXfMlZ6pZEKryjiWPE2K/oF8xgwk
 acV63g6nB0Svjn6ySQQz2CkNLZrmtLGgScwGj70=
X-Google-Smtp-Source: APXvYqxqSMUGI9UyircMqSL5QLFPtKAtuhwEXcqXTbAsf4XrCTVNUwTxLrj6ufv4Kgs0IKAfQNkuo4iX4Ohmpxbq4g8=
X-Received: by 2002:a63:4525:: with SMTP id s37mr16212936pga.148.1572646357518; 
 Fri, 01 Nov 2019 15:12:37 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:49 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 16/17] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151240_885443_812EACED 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
