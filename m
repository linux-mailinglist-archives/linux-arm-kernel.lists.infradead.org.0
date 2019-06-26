Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C455661F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gh/zaEtrUuw1Z8HX/YlG3JEn4tB6Jjfy0ytN4Od3Y5Y=; b=EiR7rWaizDUput
	efzfRE97cfMoNezQ0E7AIL6JiyuHiD5j9OhaF4kEO3tG0uXqkv6FHZk57HJleQ4jDSSm0IAe0avaO
	mOAjxGn1WHNcK7CNPz2Yyo9KWXfAhrNglULCv+o5O+ntCFIbKiOy37oJyEhMwvuxYvueKEqhKZUkL
	Sf88AZDSoB1DBF1Lo6Il7ZHA8OhK/q0cdOq3l9BajV+5cXLlWyXiJIWUKC1h7cI+nTWKqRN21q6Ze
	qkKbPrV+iSYHvTmCfm27UShB1TOE9dOFuE4zlQYLu04qQH955WQA/KD3bd8mWx7Kwv2Gm9Bl83n/i
	OQuU5Oi6cohn0eRudvKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4lR-0003r5-K1; Wed, 26 Jun 2019 10:02:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4kD-0003Xh-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:01:40 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so921092ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K9M7/8eosYAlceCnRgYGGQrDhpOey79IVsVq1lTzlJA=;
 b=gcrImCKTvnj8vMGhiH0ypycvms0l2z6ULFNnlzK3sZL7xRf+sGCQGtnnjwUtbdbbW2
 jAdBvg84uJX84C2nNfg3ZZqEpBwAFlrc7gFDBkk9PYBpgx/UDPHFQICc520b8o1fy6er
 TKP3CHOnhDcXtDDoGqp2ol0LN1DJmHcsd6BC4PtjyGWTLW+FDNNwdBpaF9OcUv8PDr99
 Y+FkRbozp3Bw6ruKor7hdbmqGgRvJkc9ojVsiRfuS4DznfbIS9G7rKk3JmPwcnG8gjXl
 EXRU10k5DeN67PdSgO4YP+mUb3+YW2fMlkJU7+4Z/OzBmA5C+em3k4b5IiinFyVUxNzH
 Xdug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K9M7/8eosYAlceCnRgYGGQrDhpOey79IVsVq1lTzlJA=;
 b=XpkREHG3JXJc4JSGgjuU3iU+kkAQfnqun60Bx1mvCuG57fZf4psn6jx381BO+H5QGE
 yxcXTpHOU5CEKBhVmYmrntjGOpH0KFOKHl2/hgLng0fHo/8JS18QIs394dbjW0ufjmTj
 JfTewbsrsQEdJvXD6j5FMdP2xoAZRWW6UgYN8ROmu7Dj+Qt7htMro8y5z8InTplxKmKR
 aREWdc9AG0rKxHpv78rjWCTlQIATy5fmD+JacS2k+56qjA+z1PO7rOiwK8nGY1LeNKM4
 zQuZy+oD8SABGZlPRxNdHW6kHaY7GWFQ21bNmzIoNg406RUtWH4Mx28SO3LK+tYI6Kyy
 ZVlQ==
X-Gm-Message-State: APjAAAX6PAY1pWzt1LUT3GVuvRkKPcqzRCaz9wjWhgYG/aPB0txx5RXg
 hDuS12+3/4WA23MGzwbfZu6p2/cCD0sqBFlJFQaPoGNVkJo=
X-Google-Smtp-Source: APXvYqzhYironKBxW7Mv/yvxqsNM0b65Q3ByFY4D9KCkP8XcfvVHcWLQGUOUOTFvFgqexwj3drDoe2/8NWGQ5QyAsjY=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr163611ion.65.1561543295557;
 Wed, 26 Jun 2019 03:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190625170855.10250-1-ard.biesheuvel@linaro.org>
 <20190626093532.GA1161@arrakis.emea.arm.com>
In-Reply-To: <20190626093532.GA1161@arrakis.emea.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 26 Jun 2019 12:01:22 +0200
Message-ID: <CAKv+Gu8Q3EXg5vpUUKCRUyBuq1egS2h+aZdfTFcF_5fDA3GVNw@mail.gmail.com>
Subject: Re: [PATCH] arm64: kaslr: keep modules inside module region when
 KASAN is enabled
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_030138_219753_CBDA5556 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 11:35, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Jun 25, 2019 at 07:08:54PM +0200, Ard Biesheuvel wrote:
> > When KASLR and KASAN are both enabled, we keep the modules where they
> > are, and randomize the placement of the kernel so it is within 2 GB
> > of the module region. The reason for this is that putting modules in
> > the vmalloc region (like we normally do when KASLR is enabled) is not
> > possible in this case, given that the entire vmalloc region is already
> > backed by KASAN zero shadow pages, and so allocating dedicated KASAN
> > shadow space as required by loaded modules is not possible.
> >
> > The default module allocation window is set to [_etext - 128MB, _etext]
> > in kaslr.c, which is appropriate for KASLR kernels booted without a
> > seed or with 'nokaslr' on the command line. However, as it turns out,
> > it is not quite correct for the KASAN case, since it still intersects
> > the vmalloc region at the top, where attempts to allocate shadow pages
> > will collide with the KASAN zero shadow pages, causing a WARN() and all
> > kinds of other trouble. So cap the top end to MODULES_END explicitly
> > when running with KASAN.
> >
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Thanks Ard. This seems to fix the problem. Do we need a cc stable here?
> The patch that reduced the randomisation range to 2GB has a 4.19 stable
> tag.
>

Yes, this needs backporting to v4.9 and later.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
