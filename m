Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1F1A44CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7oGv/nTP/dq280YJikjoRDT2d3/v7HuNZ28ZY04LaU=; b=h4MFvt55un9lo6
	hF2Yu0KYUJIHd4O0h2rxX/V4G5eCjLNa4QtWQkKS0g2Nfx2VVzzkbgfoO+7SV7du9gvaS7pbGNMvq
	YiE9yCHLB+35ozBaYB8j+z7y5XxHkO/XDGsLANGvS8NTgVkT3DePx91xD1UphrFp9jgmT+xJW0Pnm
	4wiRVRZdcMs8cPAF73kqd3XwAOombWkyy7K7oTRf7lt4BSb2teHockIxT4CHxLe+oaF8wuVfjKw5K
	3+UXpqDhRm9jXf3RdH8Kpg+T6iXTn2FCY07MFdCmfO9ziHEh6VY9N8ljF/S9pYvsjGb8XOf52ekx6
	83NViwbMXQhZt9GIz4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqOz-0004oB-OQ; Fri, 10 Apr 2020 09:56:45 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqOs-0004nP-HE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:56:40 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N6Kl7-1jCFVT2ngP-016btb for <linux-arm-kernel@lists.infradead.org>; Fri,
 10 Apr 2020 11:56:34 +0200
Received: by mail-qv1-f45.google.com with SMTP id w26so678782qvd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 02:56:34 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ9XjhcXZiltIMYFdUmvcoBYupEsCazQtDie8d1PcR/A/02CGyp
 vRruM2Xd6KZap8MBoZOSl5vRaIr540QX7DqnWqE=
X-Google-Smtp-Source: APiQypLw2PXwmHxk8QgHqeU3RcBbtV6euI1esOFx9zEJPY5o7F0Ij0rYCC5ouON3eLKeJevW89lM7yEDk3rY7mzaHVE=
X-Received: by 2002:a0c:fc03:: with SMTP id z3mr4142553qvo.210.1586512593511; 
 Fri, 10 Apr 2020 02:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 10 Apr 2020 11:56:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
Message-ID: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>
X-Provags-ID: V03:K1:Uo7rG9N1VArBhIE4xqN6iHDMJrIxWI5LYBlx2FFRbChXg1Bq/oJ
 hFFF9T0sz+xDxZcijYmLwQjJ7E4pTQ84PtQ0CI0UkvQtHfsMy7HtIcrUlU7Z/ZS/7Hs043n
 2gCh8fFGJnm04lcTVBzclpqqvt2Uo6fPMhn9HeW4pVJiouNx2wDn/a/vE5RhnXHsk23FmNF
 uVguIn2IYopOMO3K7MbPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hzde18PK37U=:BHiH+kHO3AAArcdnN1nVux
 EE787mEY6X3cteR+H5xWdbKIBn2se2F0Sd8evEfi2ynIkKxid4o+R8y9X/bB/z9vM82caNcua
 47lNf1kd1XLuN5zJx6KKQothffqHZdq+CpXn9eNiSGqpxNEf1Gsiof9PSfx9ocC2x5Vi3y+FH
 KPkfIIaOGpelAedTYu9Pd8mP7J4T8bbcNdwv75Mu2r2Mq2RSx17li7xEIuMCWHrQ+TNsFkoDC
 jVTy4RgoNMa5eHp0XB4TI2wfLGvPm9Ra/iZdNc6I9FcWhIOR4OHk0FQ1YMK5vrtpeqg+AM+vH
 +0lBtxbEG9ct0/G0vd+6F0CYuGQQY0Hd2Wif431uwqM0oUrxxcb7gN1X+cAxdVwG8vjUqHpqQ
 ktmeUvmePEFyCD8d0617YYJhpjYKfVsDJdcpksSzz9/lZEVQwGe+0OX5gIUJjC2upn/aLr4tS
 1/y+kV8dko58B0oGVrAHnG8TPOWa0x00I7uNN3xL38RgwU5SO44efsRI4fK1n6tzIwzGRThC2
 ht7+exc6ze8AEheoW/TLTborp7eaV/l7N9ZtC1MyVH/Fi3nTZCLaWrAFFINLLhn58ZcEWYcqt
 Fm6ISbL3Qn78iSL1oWMzFPKjJWtxp4putwqDVpvUvhCwo2RLRAO6U/VDtGgHM0JWGEdgod3AB
 26cJl/OO56X2lFzQJqdaxhKsaegCSBxs0Kn333kbGQ8JYlmvZ25djnUOYXXnADNIi2nJngnfP
 i35Rof5cvtkUyCxMMg9WDk1N6mGRr8jRm4LPpOLJ4v0tHnx2/Vt6Hda8NhT8HqUgGAaoiLU3N
 JGrlSUXnfDE5sgtrr1VqYC9f/o0xzN/NHTjR24WbXY9YH8woUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_025639_233433_8647286C 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
>
> iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> kernel.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>

It clearly makes sense to limit the Kconfig option to compilers that
can actually build it.
A few questions though:

- Given that Armada XP with its PJ4B was still marketed until fairly
recently[1],
  wouldn't it make sense to still add support for it? Is it a lot of work?

- Why does the linker have to understand it, rather than just the assembler?

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..39de8fc64a73 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
>
>  config IWMMXT
>         bool "Enable iWMMXt support"
> -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)

I would suggest splitting it into two lines for readability:

       depends on  CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
       depends on !AS_IS_CLANG && !LD_IS_LLD

    Arnd

[1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
