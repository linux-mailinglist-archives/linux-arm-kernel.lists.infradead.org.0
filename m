Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5010AD0486
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 02:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qhb1rT2UtuoTf705B8/ZNmRSbF70inQgKP1OgnpmjcQ=; b=FGLW5rQaz+TMYd
	/G57e1fMk/6GIAlU/4Li1Wb5W+0nr+ZPNOZkAdMjvq9X9g6yetHLXcUOQ5TewiQhHsjf/r3NVb7a0
	qTAGV0cVg9Indle+5bWr9CinGhElKoFQlb1/ucaug7EM8u0cnCqfWhHnkxLNHA89Bzg/D4SjGJ9/o
	TGO4jbVy5RxAtFhSSlaeXAVVaxnCecZJD5trA7oHp8LNpgmsFP4XKzj+i5Jk9InUPwjgho5WNttF/
	zagZpq8+vK58UCt5mbDfaYz8HJK+gjFhqiKhRtXo0JoLzM12+yKbkbaTEsZFD+SkPmh0UiwosS7l7
	rFYPs97F2k+aIhSGJ78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHzOW-0007N0-D7; Tue, 08 Oct 2019 23:59:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHzON-0007M6-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:59:49 +0000
Received: by mail-vs1-xe44.google.com with SMTP id p13so327741vsr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 16:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IiU+G19i3fEefcyixdkbPWCOAivgpSzN7Ja8u7mhp4s=;
 b=QE7I8H1ytClLEzAmAS2YYlkdF1hoiVCE3mVStGP8kG9+FmYjOL+9Hh08rTQMQ6a8ed
 rwuYfh11jL7xnriEb25eLvAITjhrqNIBMHH4wofzi0DYs8fLcnWzUDProyDlmNPQvvhA
 +pzzL1mBCaIw44nkyXEyPCAJrbFp3arxtFOrOL/zWf86gsBYWF8zlmRyY3kqIfwAcfUq
 0rgmZKwq1caJ8r9POkGC0jlLWbRK8dgC84ftkyWGVvk6sun0qkTnXGGOJs/kZLykRxOU
 laqIDkxdYUD9bOnnCXdzm9GdkBJxYo0/X0CPCOB6byVOhlFIp8NX/eC3QKLd/ocVXdJh
 jjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IiU+G19i3fEefcyixdkbPWCOAivgpSzN7Ja8u7mhp4s=;
 b=MrWB0PVD2IkWUZHLkKyJXL7P0KlHj/OApr6E59uGedrDtZnKkCZ4zuDwtzIf0s05Ho
 K1Bm4OPbICAQYgmyvBnV0Gtasxxg+jCjXN0QSz8SJS9P3H9/hiB7QQiSdNfRt0zWF62j
 ieuqFxb+eO9VRKBlvOaJ4S2zdqh3tcBBAahSbQPyfDThSXgll0pryXpXr1R8/9iGaNGA
 7l5BlMcg2Sve8vGaJiedveTAMJGspIRQ1mRfUyXeElXRzXptk4NMFa8t/Z8gpJw0N73b
 8Hr58DMJhPsGjXngfoQE6tENSHNSudNAQqDniyT55iHfy+/L4ph61xLcPEwvmViQBeH4
 ALAA==
X-Gm-Message-State: APjAAAXpm0iXm914/PLynfzee2bh9GWKz21QHVqtGcreck6MYBSJai/G
 3fY0W+7as0JSARsM/Cr6IbJwbbskC6n0kXEB7cEgpg==
X-Google-Smtp-Source: APXvYqzjSnbHv+3VVaVj9p42YpDWNesyJDQY5JYN+n1lyXgb3MxLw2c0WokEdTnFX3I0WaBVLt00BfZK8NrVibAy+30=
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr268399vsq.15.1570579176908;
 Tue, 08 Oct 2019 16:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
 <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 8 Oct 2019 16:59:25 -0700
Message-ID: <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_165947_875933_E3FDC080 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> This looks good to me. I can build and boot in a model with both Clang
> (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.

Great, thank you for testing this!

> Though when I build with AS=clang, e.g.
>
> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image

Note that this patch only fixes issues with inline assembly, which
should at some point allow us to drop -no-integrated-as from clang
builds. I believe there are still other fixes needed before AS=clang
works.

> I get errors like this:
>
>   CC      init/main.o
> In file included from init/main.c:17:
> In file included from ./include/linux/module.h:9:
> In file included from ./include/linux/list.h:9:
> In file included from ./include/linux/kernel.h:12:
> In file included from ./include/linux/bitops.h:26:
> In file included from ./arch/arm64/include/asm/bitops.h:26:
> In file included from ./include/asm-generic/bitops/atomic.h:5:
> In file included from ./include/linux/atomic.h:7:
> In file included from ./arch/arm64/include/asm/atomic.h:16:
> In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> In file included from ./arch/arm64/include/asm/lse.h:13:
> In file included from ./include/linux/jump_label.h:117:
> ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
>                  "      .align          3                       \n\t"
>                                                                   ^
> <inline asm>:4:21: note: instantiated into assembly here
>                 .long           1b - ., "" - .
>                                            ^
>
> I'm assuming that I'm doing something wrong?

No, this particular issue will be fixed in clang 10:
https://github.com/ClangBuiltLinux/linux/issues/500

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
