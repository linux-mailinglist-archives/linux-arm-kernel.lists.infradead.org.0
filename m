Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6177C305A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 02:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+92qELl1B81oBolKubkyEqpkW0tRWPZZDpItSJDI9tM=; b=lc+ix9cyZGACuc
	axPhNDkpJyYr7d0HiGQLrao/kdO3wBZeKHYno8mYiYWGtFYWMm4AmIgabfu4xS2zKaeNTenyN4xj4
	qy8RYXYuxldCVY4EtM+Hf/qpcYBaKJUGuRyN7ANgaaANggVmoCvFmKvjQ2/5nZbEJhoTRaIoJnJgr
	tJR1Qx6uB9enagtp4KQO4CLExVbJLArOrC67QTWyal5AmOBQqrtnLkyWxMUy2z03Afa0rIHU3hkhV
	HlNR/LpPeqU6zzP0TnzoLtt47kHWhmX8F/adfLv33ccOQ0BPDKtnXoB2LF29gmpl5UrRBzKaTirAw
	1tFaGHBLpHJOuEtJCNKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWV1Z-0005Y3-0m; Fri, 31 May 2019 00:03:57 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWV1R-0005XW-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 00:03:50 +0000
Received: by mail-oi1-x241.google.com with SMTP id b21so2439212oic.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 17:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yVDumebw9ygBDXtfHiPhnGIQjTpXFLhYCkxCUy9lBzU=;
 b=qw9YprhyZX7mcpOIgwrmBHwhrxEs/oCObQFT8/hpupxtrDkYp6X2+GtgRjXtvbrd4+
 oX1k304qiIJe/2Gaw7Zy9bzXjfiEsijmL5Y1x6iLFN6ueBdvKFyluHMOzZuAPfdBWBy5
 ggSftIPAPDH6KeZmCztOSLFe+2eKNLAciSHdS8/MejzYHhXREEBnCMrJsnoAMmefuPWC
 mDkzCjcRl95bvlshHzp7Ts3mCI+bZGLt0SpIMLaZ3zVyiR7TrGJtUfd8dM146otuAPot
 YbKo7vBs0OZ0nX7A/TWy2gMPsd2G8ylFW02w20z3GQJqykhzj5y7iBnFHuXoLSD+kA2S
 8Igg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yVDumebw9ygBDXtfHiPhnGIQjTpXFLhYCkxCUy9lBzU=;
 b=Yj5tjobwrGkD3mIN8Oqwv4u//8jG0HrlIZ5QzYDKNoBTucUWdJU6fpZMObsN5T1pVD
 3TVryDP1G2z6fNAQSI3sVDa4bIcbB0oQANiAt6hbDd6C0v3w4s+hloIXwbiu50sIsklI
 L2FQY9XHdvPlvgWv7OgQQlnZW14CgwelDEzlx6K1EeQnaVnA/OIxdSQrsjDo+l0OZ6/y
 TBDHs+p6wB9IXAAZK4z9kcPeRtDTn+d7cRW+H20Y4wZl0iOVGaN4zAdUSVGDnlf2wsL5
 Q/jgb7yd0pxZWziM7jqbSnRslP9d+vnll86ezlXc/axFN8Lrt+WBd0p1Wtb3jzIrgEjq
 MLzg==
X-Gm-Message-State: APjAAAW4xKn7NzRmOOC22mMHOTKI+4x1IJX8Q8g4GDZplbP5HpDXdoJn
 qf+lZk5kxYyS0XVlVMO73YjAiPuosEo4JhFpILFRbw==
X-Google-Smtp-Source: APXvYqx4bHeISWBB/C8aBk0LvDBc4rgC3d1vOecTzWEQenWbhknHFl0Z/4lOzR5rNme3iod+J6Gv95Qwron3apqwYWE=
X-Received: by 2002:aca:3fc6:: with SMTP id m189mr4157056oia.124.1559261027717; 
 Thu, 30 May 2019 17:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
 <20190530231346.ede52pjznj3pgfll@shell.armlinux.org.uk>
In-Reply-To: <20190530231346.ede52pjznj3pgfll@shell.armlinux.org.uk>
From: Tri Vo <trong@android.com>
Date: Thu, 30 May 2019 17:03:32 -0700
Message-ID: <CANA+-vAEJyvR=_zBHyUNyWdMMccbRL6ooSbqqVdYAc-0hTLh7w@mail.gmail.com>
Subject: Re: CONFIG_FRAME_POINTER support for Clang
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_170349_082057_393597F3 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: irogers@google.com, Nick Desaulniers <ndesaulniers@google.com>,
 stefan@agner.ch, clang-built-linux@googlegroups.com, mka@chromium.org,
 manojgupta@google.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:13 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, May 30, 2019 at 03:56:06PM -0700, Tri Vo wrote:
> > Hello Russell,
> >
> > I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
> > with Clang compiler.
> >
> > Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
> > GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.
> >
> > So in order to accommodate Clang-emitted frame layout, I'm thinking of
> > providing Clang-specific implementation of code that relies on frame pointer,
> > most notably in these files:
> >         lib/backtrace.S
> >         arch/arm/kernel/stacktrace.c
> >         arch/arm/net/bpf_jit_32.c
>
> What format stack frames does Clang use?  I don't use clang, never seen
> any clang ARM assembly, so I've no idea on this.

The set and order of registers pushed onto the stack is different with Clang.
Consequently, positions of saved registers relative to the value of FP are
different with Clang.
https://github.com/llvm-mirror/llvm/blob/master/lib/Target/ARM/ARMCallingConv.td#L256

For purposes of backtracing, the important difference is that LR is pushed
onto the stack at offset -4 from the value of FP with GCC + APCS, and at
offset +4 with Clang.

Also, unlike GCC, Clang's frame pointer always points to the location of the
previous frame pointer.

Here is a simple example:
https://godbolt.org/z/gJN0nz

>
> > This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
> > code. Is that OK?
> >
> > Another caveat is that Clang implementation of backtracing won't be able to
> > dump saved registers or dump precise pc value of the caller, because IIUC that
> > information is derived from APCS's fixed prologue.
> >
> > What do you think about this approach?
> >
> > Thanks,
> > Tri
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
