Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E9DD054
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqNd/kxu3Saw7eQyh46iJbV9j5M9SJT/DsUMy2HrMQY=; b=jlhYl/cmIzre9X
	HJnKwc8WvFKJhEnzlmtZoEMYU3/bleOh9Fj/8Tid6gF25h8Ox8+X0fB7wuudkysOQCu2Lp5jX8feg
	/o/3UL4QTtp3LD2mkOnUYeFrolG845O2M8nB41EMYVp1qHd8HsHWRnpvAOu5LzPJ6GMuf5JP8ac3k
	7lL8QVG4qx9QqbkNPOzoebQhwjfZj2KOCtQmLcNkVvCIh9c+LfvYi5DJjN1X9HwKtyXIA0Lpnrc/1
	jOenv4akhJfKxekOJRm4JS7JoHdgEaWnQBZ8YKKRjrWUH8xGeVnAoYgKsrKAczB3RCeX5E/vOG+OM
	HojXq6uYTGbtuqHNQNMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYwX-0001pl-BY; Fri, 18 Oct 2019 20:33:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYwO-0001pC-9l
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:33:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id q24so3372254plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 13:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s5h/GhSdlUicoMowUqjyBoWS/+duNMzdyCGodDdcTtc=;
 b=KQhoMvQgSY1S7JFuJAFTC9HRZeQ5mdpO9TvuIKoj0v5SvnSQNuvf8amINPFUPzI8nY
 7ZIM6uhg5mZL7guVvq0mSjr6gr+NtNERf4pjkYKL/atuXVKYh6ehfKZIXGRfpXFMwBUC
 ThYtEebG3W5YCny4jaBcl/Q0epyHh1RHZdFHsBm9kE9ybU6tBqxynDXHqthx+xaibjMa
 95n/a/SX8ULgLGxFbhmjkRP3CjI5ClIpGsJpW9IT2pdvvEpsvlxPiNChvpjefs0l29Vq
 fQGmX4cDpEBIZ/Jt5jFZrqKpbzygKQM8pdWXq7Ks30lBud8WR8HSBUqDptTm7GHM8fiq
 R4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s5h/GhSdlUicoMowUqjyBoWS/+duNMzdyCGodDdcTtc=;
 b=TNF9fpyYl3TjNUMKzp0jAogjOLvgDgV2jejad2Us31ojw8MqNfeY1I55+WEtd/ePSW
 JQuwjpuImf9qYbaO4gIajcuseDP7leOOvkNpSySu3Cr4bJ/hSz/+HQZXYdOyew4siAhB
 c1hyaqZd5fvWfrPL7Za4c8RelsT4pEgpLxX8nKzErbHK4Pc1dTpa8RSC7rO9waKQ9923
 Td6DvKVXzEEn5NIbtqFJsIxr9M2KYc4xz881boB5cHL+oNTzEUMhfTrEUZL2VQahM2M5
 6jFB0kcPuiFQAQ3oNFMpGG4OZtRqfkYi6pFmOg1wNztz7wUL5FpMYiGwYEJLyG36IN2d
 BVuA==
X-Gm-Message-State: APjAAAV4GPqyATU+0IKCa6kI/E5FVgNZO/sWIKFbRVb2WCQzYNtAuXzV
 DJxI5NxmRgBh6ybtQrLrCmtFTKd2uAg4WVAbMsc+2w==
X-Google-Smtp-Source: APXvYqyNa4FKOObSpxuU4QFrkn4kv2RtplqwVoFiBNyGX9dC4x3R93/WFE745QDJwjnJLdnYdKd+pE8O7U/JRiSJhZU=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr11637082plp.179.1571430819228; 
 Fri, 18 Oct 2019 13:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
 <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
In-Reply-To: <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 18 Oct 2019 13:33:27 -0700
Message-ID: <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_133340_366850_7C2BB37A 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 11:33 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 7:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > > > index 333a6695a918..9af08391f205 100644
> > > > --- a/include/linux/compiler-clang.h
> > > > +++ b/include/linux/compiler-clang.h
> > > > @@ -42,3 +42,5 @@
> > > >   * compilers, like ICC.
> > > >   */
> > > >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > > > +
> > > > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
> > >
> > > It looks like this attribute, (and thus a requirement to use this
> > > feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> > > (as noted above)
> > >
> > > I think it's better to put __noscs behind a __has_attribute guard in
> > > include/linux/compiler_attributes.h.  Otherwise, what will happen when
> > > Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> > > happen).
> >
> > Good point, I'll fix this in v2. Thanks.
>
> +1, please CC whenever you send it!

Sami pointed out to me off thread that __has_attribute would only
check `no_sanitize`, not `shadow-call-stack`.  So maybe best to keep
the definition here (include/linux/compiler-clang.h), but wrapped in a
`__has_feature` check so that Clang 6.0 doesn't start complaining.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
