Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05331C3078
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxPRD8wmAGpvAxFjdbFi9yCv7/kff1cJDCITUG024oo=; b=NlF5F1AaLKalzw
	QXgwimaDlPC8hxHMZjyjnbS+FzkPtv2TwXDfXQYy6kua/BmGQY3MuQrQQr9/rp5kUwDwVcBSGCudZ
	8IS3FqKSw7S9/w7CZeYwgZD/l3+OKAgX1I1CZOPEftFrnBwOA3JxGwYLl7h4oUa+MCHoJFCM+Kjsy
	4I14j4iDIUlmGrEDHdKPqAaSmJuaZ31zTbJJSKtcJ2tXI0GwAfFsKCceKFuxF2gyaFMJWV7DwRsNS
	Nn0tM/U9r9+jMiNNRDP6GDtmz992ObKLz3omj8o5jXxvysoks7eYKA0h0/pagQzEtpazJeQHoJ9Qq
	6YhZhq8p7uRpMkZY7waQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEez-0004n0-GJ; Tue, 01 Oct 2019 09:41:33 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFEep-0004mZ-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:41:26 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x919f2Ba032625
 for <linux-arm-kernel@lists.infradead.org>; Tue, 1 Oct 2019 18:41:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x919f2Ba032625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569922863;
 bh=z8ce72/SMhyC4NzYpXxLNBlQ7Qfn61j6lff6zp0DVOE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0GyxRT2LzLXiEGk8kojVVJ5Rz/GHgaHl0RTyayGqGY+rYUj4+CLIuTcL4OTbJgDgF
 jZuZfqWqo5VzCAqAvyJPODX8XF+dnaI+9mwtq25PEd6t6m4S+uh8C2i4jl6X340Wya
 vLORtMoeyQqOJapAm35q2n2Ga4dRJ/XeLYRn8Ps8IbVI7mtwsNCYnaZJii7ooqblwF
 xplKIZteg0vuOBHyqg6z7gLVTc2JTN5ra/wGSshmz/SpJtA2oIv3yGsYnGhhHSMXHM
 NMmFcgbW2x+x5g+ENBu3RZfQiWUlZaVshgbcueGFVVSGYaohvH/RkaOFJ7Xa0R6U+Y
 X/+HobsXeYmJw==
X-Nifty-SrcIP: [209.85.160.179]
Received: by mail-qt1-f179.google.com with SMTP id u40so20740442qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 02:41:03 -0700 (PDT)
X-Gm-Message-State: APjAAAUeLtssy5PqoBOLa01dFcaR9Sqcg096f29wXFFevo91eJy9HFU0
 GHC0gj2CIgaMzZxbEBeRaN8Hr6GEHAsQYm4Mel4=
X-Google-Smtp-Source: APXvYqw4HPSuPHj4nSnk6b30lQH9FYHYECl9wV7YCqH1JINjSAyxWQplenn8GktKxxsyXwcX4liXdofXt2eOLDTzaWc=
X-Received: by 2002:ac8:1639:: with SMTP id p54mr29615937qtj.290.1569922862203; 
 Tue, 01 Oct 2019 02:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190930114540.27498-1-will@kernel.org>
In-Reply-To: <20190930114540.27498-1-will@kernel.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 1 Oct 2019 18:40:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
Message-ID: <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_024124_215109_FC45571C 
X-CRM114-Status: GOOD (  21.18  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 8:45 PM Will Deacon <will@kernel.org> wrote:
>
> This reverts commit ac7c3e4ff401b304489a031938dbeaab585bfe0a for ARM and
> arm64.
>
> Building an arm64 kernel with CONFIG_OPTIMIZE_INLINING=y has been shown
> to violate fixed register allocations of local variables passed to
> inline assembly with GCC prior to version 9 which can lead to subtle
> failures at runtime:
>
>   https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111
>
> A very similar has been reported for 32-bit ARM as well:
>
>   https://lkml.kernel.org/r/f5c221f5749e5768c9f0d909175a14910d349456.camel@suse.de


For reviewers:
The main discussion is here:

https://lore.kernel.org/patchwork/patch/1122097/



> Although GCC 9.1 appears to work for the specific case in the bugzilla
> above, the exact issue has not been root-caused so play safe and disable
> the option for now on these architectures.
>
> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  lib/Kconfig.debug | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 93d97f9b0157..c37c72adaeff 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -312,6 +312,7 @@ config HEADERS_CHECK
>
>  config OPTIMIZE_INLINING
>         def_bool y
> +       depends on !(ARM || ARM64) # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111


This is a too big hammer.

For ARM, it is not a compiler bug, so I am trying to fix the kernel code.

For ARM64, even if it is a compiler bug, you can add __always_inline
to the functions in question.
(arch_atomic64_dec_if_positive in this case).

You do not need to force __always_inline globally.




>         help
>           This option determines if the kernel forces gcc to inline the functions
>           developers have marked 'inline'. Doing so takes away freedom from gcc to
> --
> 2.23.0.444.g18eeb5a265-goog
>




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
