Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFC7E08E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fivv9x7tRvaHKBWYgOnhi6pxDuik6v4ZXaYrVX8QuMo=; b=XkJvsiguNkhvY1
	8V+IuixFv2dlnGsOZubWt2XWCWmiyfCwIOGs7OMVnyYRPFLyXPUrRyUdchLlG2htf6uGZYzq6q+FD
	/scaETZrxZFs3aPYoukg8QuSmZjCewqXROQErqBGf3fzHRFrDwkCkybSvzHSmU624nRss2wMohGpr
	dL6DKsKh1vZuk1MZS/xM8ftZmCN+y7SXLhWa+wezavHMbnmEkNDdcuk3m7SxjYAD8tvOhNlgcd0Yv
	WMfKlK6QoO/qX6Ob2wScKhVlRXowaIx/3R9uVg/cwWjYLaWtdWUoz9JGZpp4yldB77xGtGwj4ewUr
	kaQZKje0GVe5ymAI1dUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx3r-0002oO-6L; Tue, 22 Oct 2019 16:31:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx3g-0002nq-B3
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:30:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23so10267800pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9VocBe87yk1uP4ALav5qYjXAzabfv0t7mZSWKaL+grs=;
 b=cCDDMZX0Jb2x10Ffc7B0hkZ/5rVJCIBvVRh+a3P1Z1H4X1pBo5MR6tNWJt0xVPzO24
 HshZq9Bj75NQmwJiHJTlcyjhNcexCdiCBasoYdcaHpoLfCkaieILhHGw5KUeR9u/QAKh
 9357+QmmIdmNEZVpouxbQBX8ie718Utq8dSVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9VocBe87yk1uP4ALav5qYjXAzabfv0t7mZSWKaL+grs=;
 b=IjZKfuq5Z+2qPSwNntj/UPqk3Q+obGxWRDcK8311Ppl9CpihbBqlEN6Kes7/Ex49NY
 jy+gl6+T74lf2uWnKlFe3vpcGovrFa7JDAQA0sokPG0J4GB+67Mtx6pKMyjAxCMP0u1m
 vxUMMyA1/5pEBfvH/5ZVXVZW2K7KKInMhT4+y1LH2ZA0Zbh8zOqDqWbqzRDd2uZXm64m
 Ne6jNPO5y44DX1b+SQ/NYOgn8S5yQBzRGfg8nO8EOesM+Q+MesNw8UzwYNSABgaNLZ2o
 /tAplpmxJIv6dukR456wi1GqNLRKAlHCR9KCdnF4PvPlpaVfh7Fm8aMbhuFXJSPN6c0Y
 uz1A==
X-Gm-Message-State: APjAAAXXbStLNlh2fYOs3HzN2LJzoiIh17igerxTz1c+guWUSTwXDD/U
 2H3Pmf/jYBALgw2HvNPAUf0L2w==
X-Google-Smtp-Source: APXvYqwQTN+ovisoniBa1n9E3Frz5MHhvSc1BSk0yKuMv/BUOTRh21Gh2G29DkEAvhwb3Gv+V36/7A==
X-Received: by 2002:aa7:95b9:: with SMTP id a25mr5109950pfk.181.1571761855535; 
 Tue, 22 Oct 2019 09:30:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z4sm17711787pjt.17.2019.10.22.09.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 09:30:54 -0700 (PDT)
Date: Tue, 22 Oct 2019 09:30:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <201910220929.ADF807CC@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093056_381050_A287C897 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, clang-built-linux@googlegroups.com,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 05:28:27PM +0100, Mark Rutland wrote:
> On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> > This change adds generic support for Clang's Shadow Call Stack, which
> > uses a shadow stack to protect return addresses from being overwritten
> > by an attacker. Details are available here:
> > 
> >   https://clang.llvm.org/docs/ShadowCallStack.html
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  Makefile                       |   6 ++
> >  arch/Kconfig                   |  39 ++++++++
> >  include/linux/compiler-clang.h |   2 +
> >  include/linux/compiler_types.h |   4 +
> >  include/linux/scs.h            |  88 ++++++++++++++++++
> >  init/init_task.c               |   6 ++
> >  init/main.c                    |   3 +
> >  kernel/Makefile                |   1 +
> >  kernel/fork.c                  |   9 ++
> >  kernel/sched/core.c            |   2 +
> >  kernel/sched/sched.h           |   1 +
> >  kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
> >  12 files changed, 323 insertions(+)
> >  create mode 100644 include/linux/scs.h
> >  create mode 100644 kernel/scs.c
> > 
> > diff --git a/Makefile b/Makefile
> > index ffd7a912fc46..e401fa500f62 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
> >  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
> >  endif
> >  
> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> > +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> > +export DISABLE_SCS
> > +endif
> 
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
> 
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
  ^^^ was this meant to be CC_FLAGS_SCS here

> KBUILD_CFLAGS += $(CFLAGS_SCS)
                     ^^^ and here?

> export CC_FLAGS_SCS
> endif
> 
> ... with removal being:
> 
> CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> 
> ... or:
> 
> CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> 
> That way you only need to define the flags once, so the enable and
> disable falgs remain in sync by construction.
> 
> [...]

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
