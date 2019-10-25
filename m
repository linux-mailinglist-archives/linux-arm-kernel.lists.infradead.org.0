Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C5BE5578
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 22:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lR5mLwt7NtffLY0OlHJ7MTNvWgmUQcafF2uDqDrc3GU=; b=jlqQEGEXHmZvIb
	r3cEc0U7T4dF6sMPnzYIgzSaDM2dxXXuYSIBNJ+5YY73gYwgV85Tklh5FqQ4xmsJm9rBsgeD/TTFv
	m0LQop94Vo34+4h9v2g+YeeV8HJWybFSDcWgjylzZ/9kUOhSXFeobGoPwk1B0doKMLYkBNdoqEfAe
	pcj8nNjhPqKunKKOGyyGd18E7XyyBNHJ8E2LvtKhTw2XHHRWD9CMrRSLSG4Y2nUVii915IDb+BrqQ
	U4k432C0O4j5WZCjB6+/l6ZC50v3Y2GdEXGs9POeeJRsziUhgDnlQT0MBGLfsJxArQZbzJ3EaUqdj
	ZU9sPpuaK4aFc3vGATug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6Yq-0001O3-CA; Fri, 25 Oct 2019 20:51:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6Yd-0001NE-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 20:51:40 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a143so1548918vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 13:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SOwCMPM2O4ZOlwd3DBrA7iEvzDojcSJWVcNWTrD2V3A=;
 b=OMpIHy666PHw9erjn8xDTPpke8xQntbqoetTb755EO9PeDOpXuqP6XhDAI7uUr5fO2
 xmVL8gs1k0UTMM90x7YH/5ifo3akIvmtUP3P99Y8UkXss+I/VMnYl83cvTyhYTBE+xXo
 cZnJNJr5EGcHbCKDOw5qzZmWgscClEDk8K70pc2sU5/7TsNOz3qMBup0ghahhpvfFUWg
 vkZUy83KnTruoWWThCWKQaNjwulexQFfxNHsd7rgNtxCf3BUJ3Swu+Hls5xYOIdyzbqN
 pTUp3jauqQWIFYhE31Un5fjVTn41lvbrOA703W64zMOhKqcxNHtTJHVm5pwg8QOK9PnF
 Ba7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SOwCMPM2O4ZOlwd3DBrA7iEvzDojcSJWVcNWTrD2V3A=;
 b=qqfsbbw5wVbxlxpoOQZy6dF/hmp2bpx1nn1pUH6i+hfxsyKX5EbN++nY2gCsHxEG1b
 vXNHNjAJ9CXCkX2mn57QpYVSr7TCU41PnNKvJsttfZcG2HCg9CZFFkIdrA7WN7oCZeUG
 cBfWA5r5jrGh0zqUaOskHNOqk/e61JNyVXh4HdFCNt9txVryY6Zi+V75/By5KwEsr8jA
 wZbUwP3q/TKsBr2Xblf1wi2TmWvo9ix96HkfiPNLtAssw9juCcUPEiOrCVV9m5p134ZA
 y6tOiLyFLNXTSekjr6WQbrGnBpLw+GsGB9uBoTQVNQHMXgva0EXznUHYuDjWINL/4jha
 yWqw==
X-Gm-Message-State: APjAAAUejueY7dYARBFoqVxqQ6RUmKQ5eoMcREF/suGo1KjF4fJe7j4J
 17PlK/LHt/+k+ZggSnViFRIF48qANoTKyiSg54cuvA==
X-Google-Smtp-Source: APXvYqwitHy/uW9BgFO85xlL31gu4CkfssJm5Y58pk3pu/OFECEhzo8ZcmTg1xeRhUyxbxF5+qEX2qRHXCg/5F+6CB8=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr3107850vsp.104.1572036693631; 
 Fri, 25 Oct 2019 13:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc=eq-pbfmotCCBaRN-Cw@mail.gmail.com>
In-Reply-To: <CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc=eq-pbfmotCCBaRN-Cw@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 25 Oct 2019 13:51:22 -0700
Message-ID: <CABCJKufR04dmzj3-7Uw0QkcHXvNd6h8XMPVV-hZ-AyOX-CJcjA@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_135139_182683_62A5D845 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 9:22 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > +static void scs_free(void *s)
> > +{
> > +       int i;
> > +
> > +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> > +               if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
> > +                       continue;
> > +
> > +               return;
> > +       }
>
> prefer:
>
> for ...:
>   if foo() == 0:
>     return
>
> to:
>
> for ...:
>   if foo() != 0:
>     continue
>   return

This was essentially copied from free_thread_stack in kernel/fork.c,
but I agree, your way is cleaner. I'll change this in the next
version. Thanks!

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
