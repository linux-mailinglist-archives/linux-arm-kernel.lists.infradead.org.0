Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598501B0FFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eglM5bG8XS3b9xnG+/FNZsIUaw+HsxbMDSCCjT1yMnQ=; b=Vw2NFcp+shYY3a
	/OdjHRK/dLqynFuaH30VydWKP6mYdGZf30jdpx59deJfCCDFymU+s6j9scvimuGdyIVI8bDeY2Aso
	lZ2dExdes4kWQtnzCU83ufgwo2/TbUlaSAzcghfZpIZG16yao0Umx3FLu2qHwGFvDLqAAd7pXVv6N
	ZoMW+yPDeetrLqKGuzA2iLgFbBuu1hohYEjAmkXs4vg7jc7oLSW+SeEIIXrjBLpHOZO3fbQCSlAaO
	8rOf79p6Iny39iXWXX/sqdXNI7QtYtHVRvBbSdvLLtkeSzmkQ97wwvGhsyuJAjwIEBmttqEXAO0hu
	uy7yrSwCqk4++FpeRl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYJf-0003ZX-Rd; Mon, 20 Apr 2020 15:26:35 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYJT-0003Yb-26
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:26:24 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MzyAy-1j3ucU3eLu-00x5pA for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:26:21 +0200
Received: by mail-qv1-f51.google.com with SMTP id w18so4415383qvs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:26:20 -0700 (PDT)
X-Gm-Message-State: AGi0PuZGHzItCUvx3d2NwsjIboEdid5gu7Fw4FsRt5PXGkr/BvoA3Urg
 b5jF+TIvtGLD3gZVRbswdpEiREqAJiqJcb+6DRI=
X-Google-Smtp-Source: APiQypJv5lK+3PbfI3zap38BiUd40Fgpk/tqlJevSMUnFeFtj8JD1Hr7NFYfNentqq7/tvrPz6zsYwzBa30IvpR9xJ4=
X-Received: by 2002:ad4:4a8b:: with SMTP id h11mr9578757qvx.210.1587396379754; 
 Mon, 20 Apr 2020 08:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-7-robh@kernel.org>
In-Reply-To: <20200419170810.5738-7-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:26:03 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2cxU3UYSj19Rt6pcUAtA1uTiQx46MF=92q_asmMOXMnA@mail.gmail.com>
Message-ID: <CAK8P3a2cxU3UYSj19Rt6pcUAtA1uTiQx46MF=92q_asmMOXMnA@mail.gmail.com>
Subject: Re: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by
 default
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:UUwaYHukZuzlPC9lWf/vLvSk8WCQZYqB0A1nFyt2Z/Zjwkbfc8e
 /wCjO18KJRi7Ha/PNxsta+i1thiYzVIF1HheDJUKT4uPTEkePjuimMQvzQuLVIdR72ocWpP
 fUjNS/cjTtXBBEZi70DrSzsvktbZDxCkexV0OueaUAeJ79ATo8cdBlYfWQhR6cTh0RXjDMR
 jQ3wRyAXRWZIPLJJn1s9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AyhdnPIGq4A=:+Bb8ihZRJOXtv+lJ2Z6Iuk
 /Sv7+4vLM94rSt9/xnaK5lC3zNWb8r4DYQ9V2z10n3298W0OKIGgBY+HwNe7T6aP5SWaEYiX9
 V1/LUDdt0mEPaoQsCqn8t5c5KOgOf+RFqpqZZ8nVhVKhbgn6JukXJ0+rttgVpWT8klY8Fw+xz
 dHnBB9mvqaxb5LJq+ASWsbH5qWMxXvF+qswFMtCseQjV5A+EtukaF1SFq2HOSS9t5VbMqbL+i
 43pDDibitHipGl/gfKJgXWFK7pVG2bFq76lfgcZwz2XnTR2v9OFDaiMcmnPDs5AIVwd01xSoR
 9dDG3yBlSXTLvssxVpvSkrkkhXgGlgWbUf3INeRF6NiKn4JX7RRRegihqmOrP0cIIeKvLoje2
 IWApeYcCnygrXKe0DZDNT/UxJXC095cWlYuOoPlrhxpw9ikkYf2Fj8Mx8/HuVjH4CuGFmh9b/
 AEGHpKCWvCqq5aNiSXwk0m0+h0cPTTGWli5g2VEv2RBG6R2N+OQ38oaIIRHttdNgOcg/GMkBr
 xvLSNhsQdRgaazfV7kQQr8YujPjJbQXkyOwWKiH6b9m4cdQk+03ARITNcffFnSRLqiI8MihD7
 hX01hDdiR7u9pOkBbMvUaccG/EonvOjORZDdfZFHCdY4XYIijnx9I/NlQq+P1cjQSZlBYE7OV
 XNtHPZZWORAL5E+1WVNC89fSTb3cSZRuzzolzPGJQVzuYEWblCyTi/c5IWluUfkFGUcoCYeet
 qBf0NAdlUoOLnXuOXEZemjFeG9cCSJ//IoXWmwwJ3I7No56N5ernUvuFMl0uL5JWisKrFUUsC
 +MzyNjKo/sinOBtGXpO/xx3HYMAnK8nidEMutPEPOqmAu7ofgo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082623_397305_177A8085 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> While 64-bit Arm reference platforms have SP810 for clocks for SP804
> timers, they are not needed since the arch timers are used instead.
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

>
>  config CLK_SP810
>         bool "Clock driver for ARM SP810 System Controller"
> -       default y if ARCH_VEXPRESS
> +       default y if (ARCH_VEXPRESS && ARM)

But maybe add "|| (COMPILE_TEST && OF)" for extra points.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
