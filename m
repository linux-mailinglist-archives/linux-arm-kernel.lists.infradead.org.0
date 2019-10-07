Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697C3CEFBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 01:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SexEAzoTBOdLGH51L8OCX4f26eSLmrPaGce8X5zMjxo=; b=krizHMZk+6a64G
	YhDxfmG0NPpKmYADuhlJ0nk3ZGlD9+HGk0cA08zrHa2lqhzThEEDJj7PvyYPeX+0wp8h4mondStGq
	i2bjowqZln+ps76x9mMCxay6YfLEeyeZZPDPjZ76LmyxgqhJmIRN5OmPWXh+zHNkRQzPu+fJEfQEJ
	O5z0AjbpRXW2I6nT0ZRb3Ya0N+0xSKciMWI7xefVnLy1UN74udc2GacnaoyIpUZNDnC7lN9WBpTYz
	+FPWyDPJqNlFUjiyz1PnivNlAM/T7m6kMIBdhXMhWIX2KWQBzrAuDeRRbPqi9uq2vBGkZUpPGC/Pe
	RgNcEQC/RRRf1dBdaDnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHcj9-0006Va-2a; Mon, 07 Oct 2019 23:47:43 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHcj0-0006UM-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 23:47:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so32530901ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 16:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xnyKJXgvVV5y+/tv5Bz/6ObFZv040M9Q4q4p9btukJg=;
 b=nqfCPKIkw/QtLVf4eqHJtTDJXz37adv415i9bljTDdUGy2FjcbLL/+aXv3HaqtSxzD
 yyS7OY28oZ38h61wHIUTpkHqgPwy6gSQ7roDyoDUyfVEe+Y0qKoBqItPwxu7fzX7Ouy5
 nM4wfdGeLVf8PFVIOctRD2ixiFPLRqvphtBDZYlntcud2Gu1X60dT8wGbEvPL5MGP0x3
 WntykciyaoRdEJbXHMPGD4iMSL7sQcz0bBNPdT/1EyYhbN6UULKkc6DcWyvBREpVqIz7
 rexpyOXoMR/4YilIk1wmq9DLj6nWFq16ohWPfKCKdzYKg582zTzu/ae5dkjphuEJEY2K
 AkbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xnyKJXgvVV5y+/tv5Bz/6ObFZv040M9Q4q4p9btukJg=;
 b=h6Tg+1Ph9WhA/C+WmprSBT5BP9z5At27oorKtngX8mzlOLuowiadX1jRpfQjMIo9HL
 0rMY3hSXn6VAq5tHAguKUfDuBdEWcq76DOAVcZNrvLknuIapCdBflfD2NaQB1oDOhF05
 nVrHO42m3wBJq6CacryJ7z3o+01RR4x9F3sjbonnv4F7hCuuU83I/IVn7sIDMRfVn8E9
 ixFW25Mw+Ojshto9OeoCo4r1I1+Bm3VnBXshfMYbAw40DVzs/7+lCloxyX6xfw2m6xWj
 IA6L4gElXE4usPc4rX8MNQhopOPNwozCRu6lxTkscxiQtMVHCULvBQb4jVC7uuFbwlbN
 Cl6g==
X-Gm-Message-State: APjAAAVZHWRjPCcbmIgc1IrbEuTvp4Eg+kSXGAKSyc54qUbPVAl62wiF
 vMpUfJkBZUmmQQSpicURd9qCyw9NuNrHZe9Bv3QJGw==
X-Google-Smtp-Source: APXvYqy3iuwM+fuQ2e1niDMO0G88x663EHTMj7UbRHawO+HQzH+oAmqg7JZkS6dXuTQiJmf70kkjxNJREraGq/21fFc=
X-Received: by 2002:a6b:f411:: with SMTP id i17mr27210166iog.201.1570492052741; 
 Mon, 07 Oct 2019 16:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
In-Reply-To: <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 7 Oct 2019 16:47:20 -0700
Message-ID: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_164734_380750_95674C8C 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> Should the definition of the ALTERNATIVE macro
> (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> patch to not pass `1` as the final parameter?

No, that's the default value for cfg in case the caller omits the
parameter, and it's still needed.

> I get one error on linux-next that looks related:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> -j71 arch/arm64/kvm/
> ...

This patch only touches the inline assembly version (i.e. when
compiling without -no-integrated-as), while with AS=clang you are
using clang also for stand-alone assembly code. I believe some
additional work is needed before we can do that.

> arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
>  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> ((!!1) << 8)), 4, 1
>
>                ^
>
> Since __ALTERNATIVE_CFG now takes one less arg, with your patch?

__ALTERNATIVE_CFG (with two underscores) is only defined for C code,
and this patch doesn't change the definition of _ALTERNATIVE_CFG (with
one underscore) that's used for stand-alone assembly.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
