Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DD1ACD29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM5wQbxtIDdm+9eAuB1Im5WBpID1KTeL4qPYGfzIt5k=; b=d01IeLcy98aFVw
	1j/n4q3LHn+gnIIyZflwA3HuYyydkuxtaMgPeOzecfp1k87F5lbcFE/yt0nW7Y/8XPjC2Za0cgwEQ
	9S7+IdeJsPpAt0Qdaz8ka82/R9NRJVGXF1hMqBDzF+rcc92qS0GBEtz4ok6lZ3IbfXwdr2jXFWK9g
	IfKMU5TSahxZ+BaG7+kuB0jbtPAIt+6z3oTgcmYw70r8U29+uAVZaTjkM6XcegSAZNbSfzmv6gqGM
	eD+H7Q8FBBi+aUnTRj240MJYdy/d3V0YFRA3pp6b1LRDU+ttvSieH/l4E6E6mDcKFcM+q/5t3jqsq
	E4vO2Cz8izyfLbES1LvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7BC-000076-Tv; Thu, 16 Apr 2020 16:15:54 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78Z-0003mt-Pb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:18 +0000
Received: by mail-pl1-x649.google.com with SMTP id p1so3178478plq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
 b=CpB297mheaErr6yv8xzZk9C8e3OlyZuurSZ4iPlqnxBL1rdN7DVreXtQ6hHd7Wghk3
 A5W9OQc4/k6ybv0BMxLVLn8OvbS40EACfZw8xiC3B9iqMWTZ/G+4Y/YX3/JNpQMeDGS3
 ay0rPEcWXkE7+/beHpj+T7HGAeju4SLB85FtaqnWCnPyeZYfmL7ROzgbfHdDeuyse6Mw
 X10A0ECz0Imqt1Wo4UmMjqK65aL12fZ5Eglv5O0xEJh6LVssqIx/QWQa3QbH0ppYnbu+
 0maH/v5qWpKrIiGAPfF4cw/U7QIU4ulRW3FrsdGzWeLWUmoK0Amlfi7T20CvdzF4vk8N
 JCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
 b=asAtH4Ndz1q7pdI0ktug5iMF14S6cr9vUAbYGjvs2BmO9cRJfkqMcWaq9qxebVdD8P
 Qf+QnacS4NfuM69b7eL27PO9Axtbbj9kTm95Mr2IaBTpioQ8SihEv+94YVwom+i/m8iA
 nLHovrp0FRwV/kecAEODJ4NxCJyAZ7fcO9dLBO5/g2J28+axP6VTxh1IAfgS2My/HV2o
 D0vuHEZCsTDEmyP6Dw3kL0jRyfWe5uDpE+WYzmoeqjKbjGo/agGZbUvnm9YrB+QkjLBH
 AZJo4eZgVG+5MJvpNO9M03/ErTL/n/IX/pLj1zNl20L7o+EzPKcXe4cRhsgP5LX5Nu+J
 v+BA==
X-Gm-Message-State: AGi0PuaeOdFkaFsLDqZamoTbGOsYjhOkzAkd8VOPOJsSXB6Vh6COcTK9
 /eFtwEVhzeOwi3+1HPlWZ7kaqh5tsxLykFJFQFI=
X-Google-Smtp-Source: APiQypL0T1GFOmyxncLIjxwWs5XI51QswoFv2KQDHvzuxs+kU6I+8aUYgz8VLRqT+kH3Do9DXOfw/WbQdUM/RpiZ80k=
X-Received: by 2002:a17:90a:f407:: with SMTP id
 ch7mr6146496pjb.72.1587053588956; 
 Thu, 16 Apr 2020 09:13:08 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:41 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 08/12] arm64: vdso: disable Shadow Call Stack
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
X-CRM114-CacheID: sfid-20200416_091311_875116_8D9DA3ED 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
