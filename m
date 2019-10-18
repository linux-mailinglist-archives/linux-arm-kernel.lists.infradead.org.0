Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9405DCEE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P8ktVvkHOR0sN8DddpiAIyIWh+yJhUbNZ9j1f/y1Q0=; b=WtdUrwDPQ0+JbY
	diM1xFaPAQx3l2YtV93lhsaHQ5F218noCvLQaPhATQ9jqwsShS891MOtGmFnlKOUqsfWtxoPZXK9+
	KbmN0NQ55SdN8bej3bEYpn5xQ7Sj4MNBjevBJe/8X3XmzxZEcBHi+QV8/Oh4hePK4rFSw+D0oI/tk
	MJn4KlmuZPJiP5OljU8s9i4Pek2gHOCeztucs29Sf2IV75nz8uOK2c5ed9iLIsfkiXMjQmQiyG5yR
	hCJOS91QjWF1ODsmiCnzORJKVgwmRWwetV1QQwTa8s9iV8506GIEI0VbvkjCmqvNRluqcZPVXO6Yt
	H3nj2UKKNKYIG7ItlFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXUc-0005Jo-S7; Fri, 18 Oct 2019 19:00:54 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXUR-0005JA-9p
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:00:44 +0000
Received: by mail-ua1-x944.google.com with SMTP id n2so2036275ual.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dHnooVFY2SD/hhEM3K3r0PH8N73JFv2NbOv8bRM4m2E=;
 b=fGjlwqaPn26KxRb9o+F4zrhfo5SkElhAWo4zrZYkQX9pYzl+Gat5G9cEzwzzgLT0yN
 01vXJtveJQV2qNvuL3dsYa3uHnA44CbQiyZWnm0OfAnXngfbQBE6/GoC7xkKTjBJoQ1W
 I3TlO2mOikI6Kr/w+ct+2TTOTmiNs0XrL0v8Qsjwm5i6295ZB9suC9+VQPpZngTAqbXp
 lbTN8AhrIsPleMkGbxdHNZqq0UgR8TbuoHXfoDLAHfBp5Dt4CXqh/ghNRZE/atlkwC4C
 f/z8a9w78sIenvmPm6uGln+51flj9Z7ABSXfofYGZvMWcJmJ0vLmRcx9Etw4H3lXK2ux
 qiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dHnooVFY2SD/hhEM3K3r0PH8N73JFv2NbOv8bRM4m2E=;
 b=tpqC/teudn7u88gRIEmFo5UyHZ8QOwLDBa8bGbvkdmyvhPnM5h22rqimrh1dMZyBWA
 PGZbsWwe8glAD6Xa1Dpskzw1n32QIRY+B1KdcvzPtDdY3UAMAj4tNWxdkGzQ2tV9RHSP
 CiW9IdaHLw1V8ZCo5DMSlG/yWJ0nR/4HCUqSQ4CXrMyXd9/H9VHhMXtwAxW0e+u9iZJy
 +GsOa84QtTC29NhzPTM8alTZVlBigaHFt9/CuUTUzVX4ytqYiKrMsNOwGu6V4ZQaZRdH
 lbdmHOOtMw6BRynZFz5yrwfjMQ2g9RLY59CbADP+aYKUwxgEqBoUz3jBb0df4mSV/vqa
 C/Nw==
X-Gm-Message-State: APjAAAUfuFg9BgXjGTjOyI5jWWIbrymZYVBhVXYfJF0i9C1CAccTcTr0
 9qBvyAj8N0RROtwW41ADH4LE+jfVE08M1ci9Rd6yXA==
X-Google-Smtp-Source: APXvYqy+QiLkN9pfvjcYpnB+QYepyp79m5l6k8r6HsNNtj0nqOOoe5lpxNRIDuav5cK0cYo+BuFsIE1uUC/SJFG20xg=
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6191356vkf.59.1571425241664;
 Fri, 18 Oct 2019 12:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com>
 <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
In-Reply-To: <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 12:00:30 -0700
Message-ID: <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_120043_362826_FD921508 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:32 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > and remove the mention from
> > the LL/SC compiler flag override.
>
> was that cut/dropped from this patch?
>
> >
> > Link: https://patchwork.kernel.org/patch/9836881/
>
> ^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
> the commit message to be updated?

True. The original patch is from 2017 and the relevant part of
arm64/lib/Makefile no longer exists. I'll update this accordingly.

> I like how this does not conditionally reserve it based on the CONFIG
> for SCS.  Hopefully later patches don't wrap it, but I haven't looked
> through all of them yet.

In a later patch x18 is only reserved with SCS. I'm fine with dropping
that patch and reserving it always, but wouldn't mind hearing thoughts
from the maintainers about this first.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
