Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8065B356E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tcAP/i52BZvblMbehLSKPcWM0MUGaiIErWssFr5Tr0=; b=Sl4/DX9RC1hEHN
	Yh1+kQOCXcnyw821OawpBIjCE3xQdnfsg9/PcsU4tfhi93I52Yge4IiJJPu4ZfoWhVFDHxtA9lrM9
	f3E+o1Uf8j+tTh4DnyjQmS8xXuNSXaRyt9V8W9iKmynIRnwoeiwWR5I9nLFlyYyfjKlRy1pGsBUfM
	Nca53RPGiszVdrWCQdfmP/Z6jLnxp0vSOUQwXmmmVqvPkbLPFfwypPyZefj2QHl3U07RjlQeHh5AP
	a7X3NVQ+HQrARs3zjVhdQZn0qTukHsygsQ8YKJBxFbx1RmQPzpxSYeYRV2nBjLAmaIgfls+InLF2Q
	Alw57hg/QRs29sTsk9Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPHw-000111-Bf; Wed, 05 Jun 2019 06:20:44 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPHp-00010X-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:20:38 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x556K9uw014482
 for <linux-arm-kernel@lists.infradead.org>; Wed, 5 Jun 2019 15:20:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x556K9uw014482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559715611;
 bh=Ojboyi9ZYqHo5qkbWSZookahlhHYjfJvXncHmnUVX7w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bm0zts81mOrOkAzUKOxZ/dmqCbERdE+b0HWwUGjBat+gxB2Iz1qEnbH1sFkR+tdyz
 vdIFNHGPv047bsPmbJhZO0PFNz5dTrzn/XQrT0XBcIPa1wgs6q9EGtBshha6nQBNqs
 toWo/VqW6Ezu9aimfuVXFYKMoRUZTQiW6GV32MGI9UKXhzCMkXQm9GH/HV1PnCMZa5
 vO9+sS7y5adgrczxo6YdRFm/Cs2olcuHZpHpIKDjB2vuWmIYo2mcAvqbhxRq2bY/ig
 44FBoOh/8GaHlcZopujkJ38IpBYeQl4vtY7OzRN0x+A+S0w2VBlyB08yyyNe7YTbSd
 kw8TKP9CNH2IA==
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id b10so15060126vsp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:20:10 -0700 (PDT)
X-Gm-Message-State: APjAAAXxBGy4FdrL2I+5GJNMFBSWd393IklKR/v/i8pXvKbFJZW/MOL2
 MswZK0vzYv03dqVCJKLgffPB39c81HTnDaPb05E=
X-Google-Smtp-Source: APXvYqx9aJlOShxCbPONz1FJbnW7ROQjQspurPhnUr26ELCgRss/o+Jqn0R1OZa2rU+KJVG0SjOGUKrBJKkbvtFW3Zc=
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr605229vsl.155.1559715609026; 
 Tue, 04 Jun 2019 23:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083412.26651-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190527083412.26651-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Jun 2019 15:19:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNARvOC-TsJbGA2-0i5tDtHkoL4o8jdFn5_MghY5UzXd-iA@mail.gmail.com>
Message-ID: <CAK7LNARvOC-TsJbGA2-0i5tDtHkoL4o8jdFn5_MghY5UzXd-iA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Allow assembly code to use BIT(), GENMASK(), etc. and
 clean-up arm64 header
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_232037_405944_C13E6652 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Is this series applicable to arm64 tree?

Thanks.

On Mon, May 27, 2019 at 5:37 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
>
> Some in-kernel headers use _BITUL() instead of BIT().
>
>  arch/arm64/include/asm/sysreg.h
>  arch/s390/include/asm/*.h
>
> I think the reason is because BIT() is currently not available
> in assembly. It hard-codes 1UL, which is not available in assembly.
>
> 1/2 replaced
>    1UL -> UL(1)
>    0UL -> UL(0)
>    1ULL -> ULL(1)
>    0ULL -> ULL(0)
>
> With this, there is no more restriction that prevents assembly
> code from using them.
>
> 2/2 is a clean-up as as example.
>
> I can contribute to cleanups of arch/s390/, etc.
> once this series lands in upstream.
>
> I hope both patches can go in the arm64 tree.
>
>
>
> Masahiro Yamada (2):
>   linux/bits.h: make BIT(), GENMASK(), and friends available in assembly
>   arm64: replace _BITUL() with BIT()
>
>  arch/arm64/include/asm/sysreg.h | 82 ++++++++++++++++-----------------
>  include/linux/bits.h            | 17 ++++---
>  2 files changed, 51 insertions(+), 48 deletions(-)
>
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
