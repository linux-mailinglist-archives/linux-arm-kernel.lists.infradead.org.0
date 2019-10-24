Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87D6E27D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94NcaNhxhvaYgWd3TYI8/5OUlL5aJNmevY7ARtvH4ic=; b=Xj//KgEMWLK+/U
	dU8gXPxnkqIAY6wFKEsCECPt8HJQhS64aZDS8WY2lnXRxgV7GGSBHXNQwLGfSCt9eGZ8Y/M7UT2z5
	s6A1dNH47gILdY8UuCvEjOzJ3L7sC4yPyTWihKkmZyr1c/UBoXY2QGzn7sdTjE4VNC1HJhmLyeQQ0
	pujIRcmKtd87epZfP0C6JO7BAbWTb+/qc3xBoFeBBWMh/OCS5T+UFKYn4cdkNHajF9PQex+jeWwaT
	rAffcOQxg6e6OtRyZph/2phW8pBEp8GdTIKd7OeOEzPRn6JjVULUnfh7Wb1dgsLb5cC1h8PzJ23rB
	eX+5ziBH6waSk8Yt44qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSEo-0007vT-Do; Thu, 24 Oct 2019 01:48:30 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSEb-0007uO-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:48:19 +0000
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x9O1m3vt024550
 for <linux-arm-kernel@lists.infradead.org>; Thu, 24 Oct 2019 10:48:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x9O1m3vt024550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571881684;
 bh=Pg0PBlnvPGzMa1Lyb7SgzTssmkI1SxEtJ6FEB1T4F30=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ofNboEQUqp9lsgicKTvUAhaI7rxygS4zx6c0oGCexmwGMPEnMQ2X2tFyof+S6L0J6
 v0OmQrC6FYcrzKSBR3CwB375LfzIrrpjUdons4tKy3jNeXm/SD874D9IsRl4EWrzNp
 AjNjFCpTMcSsJCfcmcotwgHuxmfSEPWVX5uHhVjI3yoONOKjO0dL6pnEoKFQdXWHLL
 vpvhZaeulMcrd9JVnoaJWAOwCMbJzvw7ZD38JJ4c0m6AOkpSah3shwoWHWn0wGLBTf
 X7yYyHqp8S9OjAFYIPhc3QrG0AUr7iQoh/FqYciJRtC/TCAFmaJckK+MB/dxA7Z62/
 xXXczs18i3CRA==
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id n41so6670665uae.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 18:48:03 -0700 (PDT)
X-Gm-Message-State: APjAAAWLUmky607WCCBSTE1HrFSetj3DPImtX5zSyQDAFlQvFWrR2NeH
 YA+UytNPFoKlneIZT9rCTevhMeZ8XOXwFTm9rr4=
X-Google-Smtp-Source: APXvYqx1CqHmDEr3VPRqLGPoMM6fTlsUos2Z4E1CXGQPNl+XNURVhKBiM/jscveAYlAHmW9WHc6ytxEH92P8yvA+VtU=
X-Received: by 2002:a9f:3e81:: with SMTP id x1mr7475449uai.121.1571881682588; 
 Wed, 23 Oct 2019 18:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
In-Reply-To: <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 10:47:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNATrz4fTp1RWHfwq36M4Xs1CdkoZtnoYfZ4ouNKow5F0RQ@mail.gmail.com>
Message-ID: <CAK7LNATrz4fTp1RWHfwq36M4Xs1CdkoZtnoYfZ4ouNKow5F0RQ@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_184817_631839_46B461C2 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.91 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 1:59 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> > so that this can be filtered out, e.g.
> >
> > ifdef CONFIG_SHADOW_CALL_STACK
> > CFLAGS_SCS := -fsanitize=shadow-call-stack
> > KBUILD_CFLAGS += $(CFLAGS_SCS)
> > export CC_FLAGS_SCS
> > endif
> >
> > ... with removal being:
> >
> > CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> >
> > ... or:
> >
> > CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> >
> > That way you only need to define the flags once, so the enable and
> > disable falgs remain in sync by construction.
>
> CFLAGS_REMOVE appears to be only implemented for objects, which means
> there's no convenient way to filter out flags for everything in
> arch/arm64/kvm/hyp, for example. I could add a CFLAGS_REMOVE
> separately for each object file, or we could add something like
> ccflags-remove-y to complement ccflags-y, which should be relatively
> simple. Masahiro, do you have any suggestions?


I am fine with 'ccflags-remove-y'.

Thanks.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
