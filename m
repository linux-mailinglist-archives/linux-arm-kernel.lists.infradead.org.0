Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155551BAA9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTRShkaBUTB2JmN+u6hu6kR/lsF9TowQ48ezw7nuJ4s=; b=Xiy0DjuZq3TjlN
	VRq1+4xeAl1CQhpXW2i5zgSBTxt14jzo+dqKnVtwHUQ9pTdNAFb4iR3RFeLLjpcjH0aChKrQQ7gNN
	txpqDeJI+ibSrnWOWyBsm9rkbEjV6+2q0NCplFMWY51kflI4zcSmcLt+vji9kkR5dUuUmagANG0mc
	Wkr6Wkub8c+TpPeiDkR9CRzRCTJcLvzBW4hxVG5cYfYgFeUaXu6HclJKrsVJCy3CRd0LpLq35RPac
	CvzQ/Os3MrQhFQYz+qbVWFHBOH3Va7FJxVBGHUAqoAmwmgtuy6LiWAYB2JRe5ZAURKrkehWglPj/k
	gVNi3fyERWTTsokR2kEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT79A-0001Qx-Gh; Mon, 27 Apr 2020 17:02:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT790-0001Fu-5J
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:02:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id v2so7204008plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 10:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fz5fzGKUkYrlo1H6ujT5iT4E+OF3TxaMGxP6KIooVcQ=;
 b=dNZ6aoSEy7Lz5a9sDdJ7hoFwM3Ioe/buqvUh/XzcOLY+v/Lj94eIQWHMKCREcj9j0q
 VCEnS2J43l5VzkT6kYl5Lodvz+2yqryKx8JCo2k3IUPXzq9UL6+x1YRvrD55F0DkiUw6
 BWD6qzEghGEYP92HnzMEuDuwjNjpiqR6vQaXrrvJnSsqLbA4PltvdNA/bnVU3ZaxDzsa
 clII1ZYGWxtBmLwk7/Fts+qQwzHD6kf05CCyDbWN3aEoNbULRWN6lTw+CKZbeZCkwewA
 shL7BDdzLmw5o3aYNX8tt+Tr7sx4NJn08ejwFkm18Anpj9zq4Uf4rjnt8W1VFY+TVN0X
 qY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fz5fzGKUkYrlo1H6ujT5iT4E+OF3TxaMGxP6KIooVcQ=;
 b=SihGJy7enFx2++3cb7w7UyybojhVWmZcWgxde53CsAMjKAVX95DtvOuGQh6Rx4IJT0
 eu/BZ8h2quQ0wTJEnUlIK9SGCnaS6SwYm8Ux8iu5o2qzfnaeq0bZFVZw34Fl02s3QxxU
 iO1u3tv4TW0Yiw8M6OA0mtaH+iZYnIk/eZXGRcYX/ANbJuRhUdrlxDB31ZOnDxmuZdvY
 vgopL8na+MS0p1CLPdEoHjLF6CRDc7a9CkaUxxiZkn07CNGXRPbW7ZUgq207aifok5iI
 ZHFeVVgMNEN8A/mhzmFf1uzzhl+sYx4FHseuufwjSb24wD1a/sLtEM0sX7mqXXG0/Gvc
 YHoQ==
X-Gm-Message-State: AGi0PuaSclJ4ZwfiWVoS1PyzJ3t0CePQkKgKJ43gt0PLiEi1SZlc+nOo
 HLFEYHxu/C89i3f2BsEP/gJKzA==
X-Google-Smtp-Source: APiQypKpBJKrBpCU7oIXdhxhHbwoBTjqAi/2yT3gZcDS9xuBm1ijzttixQqfK4ktRUyLkm9P3o0Fcg==
X-Received: by 2002:a17:90a:9b82:: with SMTP id
 g2mr25145882pjp.72.1588006926605; 
 Mon, 27 Apr 2020 10:02:06 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id c14sm11299278pgi.54.2020.04.27.10.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 10:02:05 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:01:59 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v13 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200427170159.GA236495@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <20200427160018.243569-2-samitolvanen@google.com>
 <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_100210_232724_483F7437 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 06:48:49PM +0200, Miguel Ojeda wrote:
> On Mon, Apr 27, 2020 at 6:00 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index 333a6695a918..18fc4d29ef27 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -42,3 +42,9 @@
> >   * compilers, like ICC.
> >   */
> >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > +
> > +#if __has_feature(shadow_call_stack)
> > +# define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
> > +#else
> > +# define __noscs
> > +#endif
> 
> Can we remove the `#else` branch? compiler_types.h [*] has to care
> anyway about that case for other compilers anyway, no?

Yes, it's unnecessary. I'll remove this in the next version. Thanks!

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
