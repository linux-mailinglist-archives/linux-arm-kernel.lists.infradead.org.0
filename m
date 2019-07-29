Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669DF78A39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pG3m5ioIsDGKU84xq4GfzGAL4dfdSdO/XMVyOm706/Y=; b=Aa/f1I+6J+R/BU
	EpIYLlMjYdU+tvp88GQnTZJlYB+1NjV3GfYWRsR8l/slFrXzUxCUG48hGdiT63BGT3ZzZE30asqKx
	2iTqEEjMprjFESltvehulVQ9aW5DmNFDalEVBqcy20M10FhQU0LzPmVd3EoKKPQsd9VimXKLP0OxO
	bla0uKZATwZUAJrS5tRTi7SUDQzIopxG+2j6+PyzRSeFmYpH/fHJ2rVROTlc/s0mq8tVAIq6IXGLK
	Bk8PcXbQshmsxDu7oCRQ40toi9nG+szfQ5c/ARHwI4lslEA/Vbn2nCEdlbLGWCixQXgPhEvzcAH/A
	WUrkaI/0tE+AcHzNgQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3az-0008FZ-Ap; Mon, 29 Jul 2019 11:13:37 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3as-0008E6-4Z
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:13:31 +0000
Received: by mail-lj1-f193.google.com with SMTP id v18so58140001ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 04:13:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tOeU+CYtImamXwnMBo5r6FB06SkfmeDDgtJvh72e5f8=;
 b=rCZhPbeWvbVmkIUyf340JPN+dplugCajs8+XIAZlfPDcgxLZFoYP2jNYCBOUidDsI8
 OiNA8PmzSNMXV2nYof8oTjda53fRdGbYA1719lJd+lT4NyqBu07uH2nZsAvtZKjJN9l0
 psGUM7TB08wMrtzbjSgKV5s4f4lrh/YiKyFxAoUa9cNMvrosTQ5t7KGHPhPF5LPtirbA
 CU1ck5ITwZouF7nDGWS2fNifY8kWb2Z5PYzQoI/vwMPxxWDxqARck1WZUCKhhgnGWXey
 pIiMGqJd9tSsdbi/vLaJOwAAEJ40G2EvNdQZx/Yb/C3Rc9AGUvcexkk3HHEtzdxxHbYu
 Ix7Q==
X-Gm-Message-State: APjAAAW74FvxtUlNgJyX0r3ZQG/FuuAiuoMNdZc+6OkGyfO/kwB3NRBP
 1FC8aK2vB1blwjJeA+lpoERp0Wi7POOoXzK+qNWHQA==
X-Google-Smtp-Source: APXvYqzG7FwJx4QRNGscSaihpY7Vr0ay+3S0b2wkdslvjOo2SttVSKYiJDePex+9EPvXQRl/Az7gXZ/T0xfWNYeJJyI=
X-Received: by 2002:a2e:9643:: with SMTP id z3mr58586491ljh.43.1564398800931; 
 Mon, 29 Jul 2019 04:13:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
 <1cfad84e-5a98-99bd-07c2-9db0cf37292b@arm.com>
 <CAGnkfhxXHPfMZVMy4Wjmy39E3Oh2U8FjVU8p8PprCnj5QFLMEg@mail.gmail.com>
 <cc6f9c8f-a4a1-7c71-1f89-72e1e8dd0cc8@arm.com>
In-Reply-To: <cc6f9c8f-a4a1-7c71-1f89-72e1e8dd0cc8@arm.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 13:12:45 +0200
Message-ID: <CAGnkfhx6St+MYQuR_Duguk4Q9ieuL7sLCTL=G76-eqUcCAbpoA@mail.gmail.com>
Subject: Re: build error
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_041330_185586_4BE57494 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 1:08 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi Matteo,
>
> On 29/07/2019 11:25, Matteo Croce wrote:
> > On Mon, Jul 29, 2019 at 12:16 PM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> >>
> >> Hi Matteo and Will,
> >>
> >>
> >> If I try to build a fresh kernel on my machine with the standard "make mrproper
> >> && make defconfig && make" I do not see the reported issue (Please see below
> >> scissors).
> >>
> >> At this point would be interesting to know more about how Matteo is building the
> >> kernel, and try to reproduce the issue here.
> >>
> >> @Matteo, could you please provide the full .config and the steps you used to
> >> generate it? Is it an 'oldconfig'?
> >>
> >
> > Hi,
> >
> > yes, this is an oldconfig from a vanilla 5.2, I attach it
> > (the non gzipped config was dropped by the ML filter)
> >
> >
>
> I tried your config file and seems working correctly:
>
> # cp ~/config ../linux-out/.config
> # make oldconfig
> # make
>
> arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the compat
> vDSO will not be built
>
> ---
>
> Could you please send to me the config file that does not contain:
> CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
>
> The original one I mean, on which you did not run make oldconfig.
> My suspect at this point is that the string passed to
> CONFIG_CROSS_COMPILE_COMPAT_VDSO is not completely empty.
>
> In fact if I do CONFIG_CROSS_COMPILE_COMPAT_VDSO=" " (single space),
> I do have a failure similar to the one you reported.
>

That's what I initially thought, but the string is effectively empty:

# make
arch/arm64/Makefile:58: *** gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
# grep CROSS_COMPILE_COMPAT_VDSO .config |hexdump -C
00000000  43 4f 4e 46 49 47 5f 43  52 4f 53 53 5f 43 4f 4d  |CONFIG_CROSS_COM|
00000010  50 49 4c 45 5f 43 4f 4d  50 41 54 5f 56 44 53 4f  |PILE_COMPAT_VDSO|
00000020  3d 22 22 0a                                       |="".|
00000024


-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
