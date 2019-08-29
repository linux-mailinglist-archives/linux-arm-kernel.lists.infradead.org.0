Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDB6A20B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMZbC9PMuAT8foYF/4jrQ3wz7sdVeOrgO4ziIZ+OZTI=; b=NjQfyiPfayhlbv
	8pIJfOSxXg0EHwWqFn30H8u9S2miFkGXLtKQRggMjXglWKzCUI18n3Mt6weburWMhVKOBm5sfyKit
	fCWRbkyZLccmJpx63IsIXaHfoYob25M8Xx+GoeWH16V48XUl8cRdTBnAAkM0UrGDpSdsyR2jzOe6K
	aj46lgyib9rZ1bvR0NwopRb+IpwX415lFo70tREe5owE3axzYCRQhIGdDPn++hgxlJx7/SVSiZIsP
	VJwyjcDtcQ/dw8BFJtXNf/e/hHnxZ3nG8kvNURxaGYq2SJTxf/7VuIGkr75gMbn+aVj8Pp6gimfAd
	ObVBgrzSniXfT2Zv0m7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NC9-0000IW-P8; Thu, 29 Aug 2019 16:22:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NBv-0000Hs-4R
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:22:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id az1so830731plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 09:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DdYdr6DVDvibDIbEnZ+Q/sFh6e07cbxVBi1D1KZkmHE=;
 b=MJf9BBcyqCSmz7DipJUqJz/xmbD2RMq8TlbsXLYyknI2/0T4sCih77zexM22p6fsD3
 VOPAg2s0nfw8HvC8gmJEGh9S9voz26Mj3HsS7XxBCflzRa13tqP18CtWMY6VEaoBkog3
 mNx/zUBmuYAX2/7CbnUK9IipcaT+gshqRGuX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DdYdr6DVDvibDIbEnZ+Q/sFh6e07cbxVBi1D1KZkmHE=;
 b=qQP7eDBiGXJfOdwHT+RU6fJfLVd7Gc2sPk21nzZpHYm+ibxycPCl2Kltlc8mAPMBPt
 hD/VUc1dnxqmrScq0M/r6XcZ1zzX/cXBv0CVqjgZdz1g0/RTNZ1yVWYl38ivSPtgqaxr
 WLdaTsY8BskiZZrDNH810uK2f4KXZyEFzoflYIvYVntZvOOzYCi+g97Zwhrs0ayBs8cz
 8wJydBIi4Wj84NuLRSGtLOZmRpdphWRe147KO7lHxCFOHRbcSnLCIec2ixg6DUCYouyu
 i4PsRcem3BbRybWKARxnR+jP829tErMB+t9B5F9Kl6E7g9DYhR21alH241E1Tr2zq17h
 T03w==
X-Gm-Message-State: APjAAAWezcnU7WPagxT8M8lu02+n2vm88CegAU49KAqfaLWSq1/JmXy5
 dU/x/vlZZrB93sMJkWFIOUH+Kg==
X-Google-Smtp-Source: APXvYqyYQQq2IoRQtC1ZL2R4vak6Z1iGu18iUN+0L1VB1/kKRn+IH73nQqod3Fcbj/NJatoGlKaF2g==
X-Received: by 2002:a17:902:a607:: with SMTP id
 u7mr10863720plq.43.1567095750695; 
 Thu, 29 Aug 2019 09:22:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t189sm4180836pfd.58.2019.08.29.09.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 09:22:29 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:22:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
Message-ID: <201908290921.1F0FCC9E5@keescook>
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
 <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
 <201908241203.92CC0BE8@keescook>
 <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_092231_179521_8112D044 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Rik van Riel <riel@surriel.com>, Stephen Boyd <swboyd@chromium.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, lkml <linux-kernel@vger.kernel.org>,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 06:03:57PM +0800, Hsin-Yi Wang wrote:
> On Thu, Aug 29, 2019 at 1:36 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Can this please be a boot param (with the default controlled by the
> > CONFIG)? See how CONFIG_RANDOM_TRUST_CPU is wired up...
> >
> > -Kees
> >
> 
> Currently rng-seed read and added in setup_arch() -->
> setup_machine_fdt().. -> early_init_dt_scan_chosen(), which is earlier
> than parse_early_param() that initializes early_param.
> 
> If we want to set it as a boot param, add_bootloader_randomness() can
> only be called after parse_early_param(). The seed can't be directly
> added to pool after it's read in. We need to store into global
> variable and load it later.
> If this seems okay then I'll add a patch for this. Thanks

This seems like a good idea to me.

> 
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1096,13 +1096,15 @@ static const char *config_cmdline = CONFIG_CMDLINE;
> 
> +const void* rng_seed;
> +int rng_seed_len;

These should be __initdata, yes?

> +
>  int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>                                                             int depth,
> void *data)
>  {
>         int l = 0;
>         const char *p = NULL;
>         char *cmdline = data;
> -       const void *rng_seed;
> 
>   pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
> 
> @@ -1137,10 +1139,8 @@ int __init early_init_dt_scan_chosen(unsigned
> long node, const char *uname,
> 
>          pr_debug("Command line is: %s\n", (char*)data);
> 
> -        rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
> -        if (rng_seed && l > 0) {
> -                add_bootloader_randomness(rng_seed, l);  //
> Originally it's added to entropy pool here
> -
> +       rng_seed = of_get_flat_dt_prop(node, "rng-seed", &rng_seed_len);
> +       if (rng_seed && rng_seed_len > 0) {
>                 /* try to clear seed so it won't be found. */
> 
> diff --git a/include/linux/random.h b/include/linux/random.h
> index 831a002a1882..946840bba7c1 100644
> --- a/include/linux/random.h
> +++ b/include/linux/random.h
> @@ -31,6 +31,15 @@ static inline void add_latent_entropy(void)
>  static inline void add_latent_entropy(void) {}
>  #endif
> 
> +extern const void* rng_seed;
> +extern int rng_seed_len;
> +
> +static inline void add_bootloader_entropy(void)
> +{
> +        if (rng_seed && rng_seed_len > 0)
> +                add_bootloader_randomness(rng_seed, rng_seed_len);
> +}

And this should be __init

> +
>  extern void add_input_randomness(unsigned int type, unsigned int code,
>   unsigned int value) __latent_entropy;
>  extern void add_interrupt_randomness(int irq, int irq_flags) __latent_entropy;
> diff --git a/init/main.c b/init/main.c
> index 71847af32e4e..f74a8c7b34af 100644
> --- a/init/main.c
> +++ b/init/main.c
> @@ -645,6 +645,7 @@ asmlinkage __visible void __init start_kernel(void)
>   * - adding command line entropy
>   */
>   rand_initialize();
> + add_bootloader_entropy();
>   add_latent_entropy();
>   add_device_randomness(command_line, strlen(command_line));
>   boot_init_stack_canary();

But yeah, looks reasonable to me.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
