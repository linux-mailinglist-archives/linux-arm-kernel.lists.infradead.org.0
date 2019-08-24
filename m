Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B05A08A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgDtiNQGSDeu/VlevZnxehKVMQj+SFxGXeWucGj4lb0=; b=h1cx2kVCSS6giE
	ocNlLzpwvSoMjseIlXWAxdYFAygMqUMhvY6zgONSjTR6VNwyLaNIf3DAL/IoBt1cnSzixIwTm74wn
	6e+MK7OP58vZrx558zA/CwJnI5cjTXzUmA4gD/bqJhtu9gkYSy4+9JUZsJYpcwuOcxkIBfj3vP/A4
	rLWZ3iUJ3exFVsgPSxtjKJtmtRGGLRJK6Hg8xwhsRVc0Onj5CI8Gj/PA7Hq++lxOT8RM+/Ff5BkC1
	NlL4/Y+78/JrwjP5iwb+2H7Iizrzc3LFlN/W6CnT+FytoywiY/wfmJT5Ri+/sNTK3qcWwjRgC5GsR
	HYkqFhgwPp1ZKve7kdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31sI-0001NM-7S; Wed, 28 Aug 2019 17:36:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31ry-0001Bh-By
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:36:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id z3so289232pln.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 10:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K9Vcpkp2bypd29OVATeo9h/LJsFxpySHevcb6WIs5vE=;
 b=MQgzrgNDOIFtpBwi2JiR/yV2K4DVgUfbIjFMe/5LzpIFiGRCYfdycLhr2q93aC79GX
 KCmUYDmIGohRCQRdj6lCvrdjQZySdQ8YqlEM6MpTlCVG9tUQrGYtOO785imr0EdqY8Lj
 P1bf/U7PCuRnr268FcPRN94qxbb22Wu5pp6Is=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K9Vcpkp2bypd29OVATeo9h/LJsFxpySHevcb6WIs5vE=;
 b=Ks9/kTqo129Zm/y5G7HrZOSWfHP1QgnXc4KwLGf5am5LAwzrM8r/9xKPtqkPUYIBcB
 pG9mv7RW0Fr8OYH5LFVX984sFZUDgpKeef06BiUlSRTVSoc+vccfRI/boWcxGH1ul5vO
 c/GEonCpX9LphCMr0gZYqHyLK3TLt/zyGe/dO9v0vVB+LePCBteOSrTZPDFcDtWzSwYV
 WJO1C3M6ltcUgVKURTPx0gggXnCJDolN+vLnNURbfCJLuEeyjEf77k6ga69PahlVv310
 CDlvkSuhMulnJjw2+adNKFFE5FuD2G3LbDbIpJ8zOkE2wKF5gRg5kAlRUbTK0xrc1BDJ
 ehNQ==
X-Gm-Message-State: APjAAAUPXOyD+/ZvmukJlTcoFcTF+ufHSBFDnGyG1cfD5T7R2twpZjQM
 Iu5k4CGPaYx9WDk05Q/HPzVXKg==
X-Google-Smtp-Source: APXvYqz9ae0cu+VdE0RNiwT4vlyIjt8eKlcChNjdACQB6lRil6fPEaexFwAdxBX5UoHB3qRxLLY+Bg==
X-Received: by 2002:a17:902:a50b:: with SMTP id
 s11mr5686098plq.44.1567013789568; 
 Wed, 28 Aug 2019 10:36:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w207sm3831691pff.93.2019.08.28.10.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 10:36:24 -0700 (PDT)
Date: Sat, 24 Aug 2019 12:04:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
Message-ID: <201908241203.92CC0BE8@keescook>
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
 <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103630_406113_8665E2E6 
X-CRM114-Status: GOOD (  29.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Josh Poimboeuf <jpoimboe@redhat.com>, Grzegorz Halat <ghalat@redhat.com>,
 "H . Peter Anvin" <hpa@zytor.com>, Guenter Roeck <groeck@chromium.org>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Rik van Riel <riel@surriel.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:39:51AM -0700, Stephen Boyd wrote:
> Quoting Hsin-Yi Wang (2019-08-22 00:15:22)
> > Introducing a chosen node, rng-seed, which is an entropy that can be
> > passed to kernel called very early to increase initial device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
> > 
> > Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
> > since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.
> > 
> > Add a new interface add_bootloader_randomness() for rng-seed use case.
> > Depends on whether the seed is trustworthy, rng seed would be passed to
> > add_hwgenerator_randomness(). Otherwise it would be passed to
> > add_device_randomness(). Decision is controlled by kernel config
> > RANDOM_TRUST_BOOTLOADER.
> > 
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > Change from v8:
> > * Add a new interface add_bootloader_randomness
> > * Add a new kernel config
> > ---
> >  drivers/char/Kconfig   | 10 ++++++++++
> >  drivers/char/random.c  | 15 +++++++++++++++
> >  drivers/of/fdt.c       | 14 ++++++++++++--
> >  include/linux/random.h |  1 +
> >  4 files changed, 38 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
> > index 96156c729a31..5974a5906fd0 100644
> > --- a/drivers/char/Kconfig
> > +++ b/drivers/char/Kconfig
> > @@ -551,3 +551,13 @@ config RANDOM_TRUST_CPU
> >         has not installed a hidden back door to compromise the CPU's
> >         random number generation facilities. This can also be configured
> >         at boot with "random.trust_cpu=on/off".
> > +
> > +config RANDOM_TRUST_BOOTLOADER
> > +       bool "Trust the bootloader to initialize Linux's CRNG"
> > +       default n
> 
> You can drop the default.
> 
> > +       help
> > +       Bootloader could provide rng-seed set in /chosen/rng-seed in DT to help
> > +       increase initial device randomness. Assume the entropy provided is
> > +       trustworthy, it would be regarded as true hardware RNGs and update the
> > +       entropy estimate. Otherwise it would be regarded as device input that
> > +       could help mix the entropy pool, but won't be added to actual entropy.
> 
> Maybe reword this to something like:
> 
> 	Some bootloaders can provide entropy to increase the kernel's
> 	initial device randomness. Say Y here to assume the entropy
> 	provided by the booloader is trustworthy so it will be added to
> 	the kernel's entropy pool. Otherwise, say N here so it will be
> 	regarded as device input that only mixes the entropy pool.
> 
> > \ No newline at end of file
> > diff --git a/drivers/char/random.c b/drivers/char/random.c
> > index 5d5ea4ce1442..29d3ff3de1e1 100644
> > --- a/drivers/char/random.c
> > +++ b/drivers/char/random.c
> > @@ -2445,3 +2445,18 @@ void add_hwgenerator_randomness(const char *buffer, size_t count,
> >         credit_entropy_bits(poolp, entropy);
> >  }
> >  EXPORT_SYMBOL_GPL(add_hwgenerator_randomness);
> > +
> > +/* Handle random seed passed by bootloader.
> > + * If the seed is trustworthy, it would be regarded as hardware RNGs. Otherwise
> > + * it would be regarded as device data.
> > + * The decision is controlled by CONFIG_RANDOM_TRUST_BOOTLOADER.
> > + */
> > +void add_bootloader_randomness(const void *buf, unsigned int size)
> > +{
> > +#ifdef CONFIG_RANDOM_TRUST_BOOTLOADER

Can this please be a boot param (with the default controlled by the
CONFIG)? See how CONFIG_RANDOM_TRUST_CPU is wired up...

-Kees

> > +       add_hwgenerator_randomness(buf, size, size * 8);
> > +#else
> > +       add_device_randomness(buf, size);
> > +#endif
> 
> Maybe use
> 
> 	if (IS_ENABLED(CONFIG_RANDOM_TRUST_BOOTLOADER))
> 		add_hwgenerator_randomness(buf, size, size * 8);
> 	else
> 		add_device_randomness(buf, size);
> 	
> > +}
> > +EXPORT_SYMBOL_GPL(add_bootloader_randomness);
> > \ No newline at end of file

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
