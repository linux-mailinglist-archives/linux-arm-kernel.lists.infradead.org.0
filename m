Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F11EB563
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tebTlJWWCpdWXp8J4Tf+blbkmrCpuAuclWirnoqIQrU=; b=I5COLjf8dpzFaW
	KxXN3iKQXeudRGf9prMZhGXRQH4qr24R6BUP7iONtJDhP756Vp1/0SbvhgIbntANTqdQO8M0Kad8K
	LP2JDUhN2ivYwjRiwtJETRjsPBDHeBVr6NlPL6Eg1Mj9Vw73O2aYtO+9z/egxOICQq/1+y4dg5apS
	vytI0pnfC9//8eQHoNVfsDbgH5JfDODxkNSniTek6aAsFlR4rGR973grzHu86ujhz8TwFKKrjLvC1
	MNNW7Qn9zAgqEJY7l4dRidwST2fOrMRUiKTtB9pCUXMo8g5BrlNUf3vDqTBgDQMHrSWXRZC0/f1LU
	W/6OrSoQWcUYx+37g++g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDgF-0002xG-2B; Thu, 31 Oct 2019 16:52:15 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDba-0007Eb-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:34 +0000
Received: by mail-pf1-x449.google.com with SMTP id c8so5007471pfo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=J83AV+8pmxy6MQ8Uszleewce6gVoMir4DYxUv0MBtSY=;
 b=JwFwWyNMv/RSq1lmIG7yeu7XzK5N0yGFebd9HD0oWd+L64cVHCjNrLKXvpd31A8m+o
 zacFSlAh7/S3GrsWYw8wOsz2riJzwAmUFphK9R3y/YJdaVSd/jkXF/Q3qSE7wm8QON6m
 8mWRne5R6DOJ3KZmWMsv6rx2Y/vxcHDIQsZfg/5fmf+Zp5HlVd7VP1G5fKtX4FB8a3Bm
 8RVCvD6+cudu/Eg1HxbSqa7xROHq/x3T25smtETOf5KVnSr4x5SBcV1jFg774W893DEo
 G58Q3hgq+5V0/nL/ilZ23sMkgZGieLq55EJ/1/61Mg1lGY8hcPLmSpXvq/AV5DgETbO1
 ZBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=J83AV+8pmxy6MQ8Uszleewce6gVoMir4DYxUv0MBtSY=;
 b=X6TkeJmXWcCW9DVUGoUGVQ8izEFXyfKeiEkCYxMm2UYjmDwCV55zpYhZi8GGi18HHL
 JOxkcb4/fPaJRiMG/+acetGgVe6vR2g4rjdK3vJtLn0uxWuLXX6sFaabKKQYVtWTQNx0
 Yj3juxRlaf5GPj/0smPbiJhDBd1fPZ4ktYi0dmm+UJtZjjKOTPZ4n6BIWogzXMTG8wk+
 uavPSFpKQezJ6VPvX8BM/zrggN1PquIbirckz+sMjTi3uwUIZNRNBTeZquRD+EX+kqFN
 M4/nhQ9tyCsJga2dAUjKkHrhPGlDkuSZ0WzLAdFqAtWzs8V+pwnPassXfymomxneWyRv
 sReQ==
X-Gm-Message-State: APjAAAUiuz8oOqE62wYzjQN3duaDRlUIpb/x4w/GTKxcnczaNmjN7e5c
 G6aNZCsYJN+trTukuOlbqqAX0r2KmNfe+DVgb+g=
X-Google-Smtp-Source: APXvYqz5tyIdUbH5XenlPdO5u18Bp097Z3l5i1ng81ta9dMEULM4omVmWKyeE1529Bf0daIn3cRdGv4Ho7NXy7c+5zY=
X-Received: by 2002:a63:e056:: with SMTP id n22mr7564302pgj.73.1572540445818; 
 Thu, 31 Oct 2019 09:47:25 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:36 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094732_837477_C502EE5B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 kernel-hardening@lists.openwall.com,
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
