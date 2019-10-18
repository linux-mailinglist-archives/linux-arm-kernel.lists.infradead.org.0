Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFB7DCC5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI2xr0xdx57UO31GhjGIxeNN8Qb005swDGATEU5xWhE=; b=VJNURTZ1a6RDSP
	vP1RZwYwX7bspiiHOMp3afBH9RNM8Y36Zz76Z1pzKV5rVmi3qgWkNMwXheo9rwJa3VVmxCKCnsh8f
	/SSJVCagKMFf4GIfGGpsFlCy4ihII5FYElZ3zJeYjpJzCpxqobYlb3I7o7K4xf+edTzDQ/BnWqFdH
	zAkEyRz5hzZbzG04igF6lee+JiEI2nDz3BQX36i5iLxkTknMoMuVbUt6/xRLE75hmb21VVai2zmOJ
	0cy+3zwh6mFeZbNI5RAlaairbJjjks67oJ8bdMfZPY/v1RybCzn0mBz34MSpRmggLZXV+pVaFtB95
	JphI7ipyiKSAp5pDj68w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVmy-0004vN-69; Fri, 18 Oct 2019 17:11:44 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVmk-0004u5-NW
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:11:32 +0000
Received: by mail-vs1-xe43.google.com with SMTP id z14so4482834vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XATsmiiQ65kT4ODqJ8G67gOZ75F3gzeYi1y9XLQaIlM=;
 b=NFaKn8K/6s2O1InStTL9sLz1AskGb0puzLhWcn2tdgY8ZmCLY7XOJRYveX8vbFZU0f
 AivKBQvkf/pODzLL5A4lcri/koO4kVh6iykeyqn4iKMkTaY1LVSs0gwEl9DJOigy8q8Q
 WPtHpYV0+uIe6amcTjkQLuADzSGPUx4rs/QmPrhO0WC+aS/VPjA8tDxGnOE6xkLGpQLv
 lTimTCE/K9U0RF4C039OIDi0j2iIowkJYeW6TPrBZBYFSBCJ9uXp+uP1gTWL63kz/VIn
 F7pEhz3ucREkKYmQDI91cCQ4B4+VGr1SMl0Byq8KA2sUVL6ZDahv6K/J2fUilePUK8ER
 3UWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XATsmiiQ65kT4ODqJ8G67gOZ75F3gzeYi1y9XLQaIlM=;
 b=Z8t5G/W9UIrK7/xaPLEkCNNk55gxg1L+PpuOyJ1QRRKHeMFRanXL8+PjqVJEiqAQ+x
 CWt4NKRnIB4CYTCWv6IVMssPFjWpfb3kB4HsKN0ncXBrBvoYQTHzSpSHBvILb2Kh3chX
 GPb+eF1QYXmGr68JKdZTv1At6UxVstM5cyehAKDzJcgv7mlFwxC6aLyUDKbfJCFUaYUf
 676j2ulZkg7fUcIQjTDXhmr0gAStLQqj8gk5y1mnZrEPtVE3nL65pVqm8ErlH6ICOUnZ
 0WJMOClCi9Mq+3VhNREPBF9Qv+lFUMLtznZMX8c7w2SNpbr86nCzMWyEkUE28U2dyS1r
 RCQA==
X-Gm-Message-State: APjAAAW4Fl+c2rKBD6MAj6Nn6JjBi8/xfkSrLjRjyJaI6ZIzUDcSoNB8
 TFOsaySW6V9XEqGAOrHMQcZZpWI67b4cCrmTMSE1mA==
X-Google-Smtp-Source: APXvYqxbFqx52fMmsudugE6XC0yz5SmZysXaFv9YWU7egAQ4sBR35UABj4n5x4ayDTqcJ+9yTIIHMtatlqnJPxGnKEw=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr6025118vsp.104.1571418687239; 
 Fri, 18 Oct 2019 10:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
In-Reply-To: <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:11:16 -0700
Message-ID: <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_101130_793739_A76271C7 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index 333a6695a918..9af08391f205 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -42,3 +42,5 @@
> >   * compilers, like ICC.
> >   */
> >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > +
> > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
>
> It looks like this attribute, (and thus a requirement to use this
> feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> (as noted above)
>
> I think it's better to put __noscs behind a __has_attribute guard in
> include/linux/compiler_attributes.h.  Otherwise, what will happen when
> Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> happen).

Good point, I'll fix this in v2. Thanks.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
