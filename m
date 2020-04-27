Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CA91BB162
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 00:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfyO3yXq5DA6WulSW5Lfum6A9e/C0x7inuQGsL6CTx0=; b=Ly31RIpWc38wae
	S4zvk0W77WSX851dmGKmH7FjxipJragvSFZ7eNF2vLnfDq+e39sgKcwKhKCXUPfyaGbA2NUIosQ6V
	CtUDMfyjHZoN5fQFvDSnuE1Hc0xcMVdF2r8+2a72b5oP+LRiCoqG/u+fMlyrHd31M64x6jpg3CnU6
	Kdis04VWTpKs7QNoIvyMAUF5ncB7KaWmTrZqa8r6Y9N1kUKzxhRSz3Kj6i6i883JcX88rvMiCJjqm
	2BgMJJ3GMhPfqMghDTp5X5hN2uEA8aiX5r3P3E4sSSjlDvIHMWlT1fBFgDyTh4vcELkVe3InA32B2
	i9RvMv+NXnhe5YhGWQyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBwt-0005Px-Nv; Mon, 27 Apr 2020 22:09:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBwm-0005PC-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 22:09:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id x2so5959284pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 15:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Xe8RUkEJu/E4jWUvQIevudFni0eW89aFKGU5bjDlftc=;
 b=axOblyzYYZwm23zJs/yIhW4AiXhyGbo1u4AhSQWZk6aCS3SbgYhrO3uxU/GIgXJe+R
 lZFY51Gu9ZAm1+Wx8ojNeFt262o3xlrjkkPW0UDsqW7aQHJ1kxx3GUTkZZ+SHEwEx4sj
 qIXCdTHxBwmKDJGtD8EE1vu3RoM8rdzvr7zJDbahVKaFbLW3BvoGBtbrg30QQDm9ZjL4
 NPsfDMvwSpCub92zGM4zYe+Jb2mMQ9YPQ+DnbHm8ALegArlm8BVMTVmhVxMj9B3OIDe9
 C66WGlEQ/5l6bbT1mq3LFfU7EdwlU0npz53O3fl3EQgOzkoYeSp2jk4DOPWs1j31cN1R
 XZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xe8RUkEJu/E4jWUvQIevudFni0eW89aFKGU5bjDlftc=;
 b=NNPfb8acqzgZIM1OV8gL5i4kpsmbOeC7Jppdq7lU6mgZ0FzoKnGh7XhW+ZOJyj/ZxU
 2PVOmwmt0F7Ixr6KhJYKIg4DQjiGt7bKIinMBrGYzz1yzIjrktHc1C/mt7/Vls2REQg2
 r9bTKvm81Ub5Ah9+oQLqUVjhn2Kot8MdBMRLjLNPPWOoMbBrczaif5hqbf7UCrDT7WPR
 jNw7vB+3WGkmwcfAGBxGha0zvfW0F7AhdCMGg1TethFT8lco1MfYSWvHpveHia9KuhP5
 hlV9GAAeNQRWKRZdbD6ujtpYd/F5x5l7kD5Og4TJfpsesfCV7vXWUtCMc1550ELnykuX
 55KA==
X-Gm-Message-State: AGi0PuZz2CTNjK3pwm+meKsQK6pPEhBW/vUQBtdiaX2A7g30eg/HsOcw
 tfPTPCwC04UHsWVF+yI8RDxxog==
X-Google-Smtp-Source: APiQypJpQnaMid4q4FwB9UWWT+cZC0Q4L77KS//F8Pl43k21RxaiBYMIK3X+fVPtnLNFejOX3p7P2Q==
X-Received: by 2002:aa7:951a:: with SMTP id b26mr25384503pfp.44.1588025389927; 
 Mon, 27 Apr 2020 15:09:49 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id l8sm3554016pga.60.2020.04.27.15.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 15:09:49 -0700 (PDT)
Date: Mon, 27 Apr 2020 15:09:42 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Message-ID: <20200427220942.GB80713@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
 <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_150952_352907_950FEC00 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 10:50:34PM +0200, Ard Biesheuvel wrote:
> > OK, so one thing that came up in an offline discussion about SCS is
> > the way it interacts with the vmap'ed stack.
> >
> > The vmap'ed stack is great for robustness, but it only works if things
> > don't explode for other reasons in the mean time. This means the
> > ordinary-to-shadow-call-stack size ratio should be chosen such that it
> > is *really* unlikely you could ever overflow the shadow call stack and
> > corrupt another task's call stack before hitting the vmap stack's
> > guard region.
> >
> > Alternatively, I wonder if there is a way we could let the SCS and
> > ordinary stack share the [bottom of] the vmap'ed region. That would
> > give rather nasty results if the ordinary stack overflows into the
> > SCS, but for cases where we really recurse out of control, we could
> > catch this occurrence on either stack, whichever one occurs first. And
> > the nastiness -when it does occur- will not corrupt any state beyond
> > the stack of the current task.
> 
> Hmm, I guess that would make it quite hard to keep the SCS address
> secret though :-(

Yes, and the stack potentially overflowing into the SCS sort of defeats
the purpose. I'm fine with increasing the SCS size to something safer,
but using a vmapped shadow stack seems like the correct solution to this
problem, at least on devices where allocating a full page isn't an issue.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
