Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F12D1B1383
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYd620iIcWuRPZ21/pKJBtw4g04CmkOQWLzYVB+E8dQ=; b=SsvczQs4Q8Q6lY
	Al1gcgWnYpO2IAoN7xKzrH/u3hmnCSf6K8Z1B1Aov4NqGR0XqmoaTluDpkMUUo3gpHr++npjP7WOO
	5Jlgp27V67NpK9ddhw/7TX4PWu+MleRBGhlXXWUhYiuGCnhNVet5qij4wwPSuySHvn+0R2Gb0oebh
	v0yukBQTT3MvNc44gOovvbUhitPASoHHcuJod4lfmP/XNFnjphWdArRTJaEyXC/UdHSglTZbe4CMF
	jCV7vlGh9YqJvlgmIZvy2DDypN6GtOwolX3GnGUJarLkZWK9EG6xJZt4PVCziDrQZ969xjKLlq/QY
	UE9dlnIZxwIaYpUgD0iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaXR-0001yQ-Gq; Mon, 20 Apr 2020 17:48:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaXD-0001xK-DI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:48:44 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DF8220B1F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 17:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587404922;
 bh=xUzIDhLrcbNY8MK4u4nZct1kwq2cE8o8IntAJsSwdpk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CFydE2rknr/Ms+qSihKc279Hhku/sxlE27vkOz7Ljm6u7pPYtYYm+HirqYmVg4kG8
 jZTLjLpS6NVw08JzOZYidmIl5sFGJv9tL37F64PGrz+2cl9ItjfypjPruwRbHTMo8B
 ccaWuhEWqwz3a67Z7TNBRt7J04CPt081UgDiTo8o=
Received: by mail-qt1-f176.google.com with SMTP id q17so9283693qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:48:42 -0700 (PDT)
X-Gm-Message-State: AGi0PuYUWVi6korvYWwZrGrbD0nCqZ0Ztl8fco8/GrOLXsCyAOJl3YVj
 dsP0YbuYu6fxShBADm1fRykoB3umj4t61nc4kQ==
X-Google-Smtp-Source: APiQypLsmqqa6tPO6Vd26Z8hr0a4fVqisr+0rvULo+LKFuzNKUPn9rWtoTexXEtJsn8bhiB8U87ufUvE1XRG0ZXm9r0=
X-Received: by 2002:ac8:39e5:: with SMTP id v92mr17459679qte.224.1587404921554; 
 Mon, 20 Apr 2020 10:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-7-robh@kernel.org>
 <CAK8P3a2cxU3UYSj19Rt6pcUAtA1uTiQx46MF=92q_asmMOXMnA@mail.gmail.com>
In-Reply-To: <CAK8P3a2cxU3UYSj19Rt6pcUAtA1uTiQx46MF=92q_asmMOXMnA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 20 Apr 2020 12:48:28 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJS5o7_Ep50vfhNBOQ2sczgD+dNuiF8+GwjHUu7tN9j7Q@mail.gmail.com>
Message-ID: <CAL_JsqJS5o7_Ep50vfhNBOQ2sczgD+dNuiF8+GwjHUu7tN9j7Q@mail.gmail.com>
Subject: Re: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by
 default
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_104843_468545_31F77F4F 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, Apr 20, 2020 at 10:26 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> >
> > While 64-bit Arm reference platforms have SP810 for clocks for SP804
> > timers, they are not needed since the arch timers are used instead.
> >
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> >
> >  config CLK_SP810
> >         bool "Clock driver for ARM SP810 System Controller"
> > -       default y if ARCH_VEXPRESS
> > +       default y if (ARCH_VEXPRESS && ARM)
>
> But maybe add "|| (COMPILE_TEST && OF)" for extra points.

On a 'default y'? Not necessary.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
