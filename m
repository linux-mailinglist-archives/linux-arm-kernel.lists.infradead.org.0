Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8621099D0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wpN5SDO/4gaUZ43oe2xG9gY9hTX2XwZIaxRzQh7E+4=; b=IqQBR8ktW/maWw
	I0JzAInMBjJYuOwpi2Kh+nNb6zLiyxbNsqcqwvL7MtZKd6XqaQr6t1VAXzvRicoiErB6tJWJQo50v
	JUsccwZKrVs3NxaUyTmL6UAPk9vvSVhlrkJcZRCpU4ogE3tEkFNOaGEfrzbpL2tyYOiMeKG1y1huS
	rNy1ilOEn8diA+56lvzyIa/idR56akLgN+U3rtMUFTVI/rLtVHklwWC5SvIIuBix4LLYQjgyYgIZX
	jV6XfHu+vWUcIsNEV5uIhsjJhXkhlrDrRxWDYGXQCRa6vEoZCuU4FGsTLH1AaP5vlMDaBuw35HjMu
	kReEgdOKGs91TkD6kMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0r4E-0004Tx-1M; Thu, 22 Aug 2019 17:40:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0r3y-0004TA-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:39:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so4055903pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=/SKCVH1cP34M+EOCz1gwJK67tID4N48JyS6a43d2kiA=;
 b=MQnTqO/P5HLNo2wRx+4ovpS8Tl5NhKqP4yAwsm75fZBx/0HuNqZY6WQPFieLjqgL8Y
 y+7TnZh/GvrBXFZcy/IiflyoVVy1xtikmPc0Pxx8dgdn6LdnEUYZatahrFKCrA33+kgW
 K/BJVdJ8pwOuIsUYEHDW2kDhp2Dhiiku5TfCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=/SKCVH1cP34M+EOCz1gwJK67tID4N48JyS6a43d2kiA=;
 b=ra2S3H6vDcy7JFyaamyZtUMN91k1LgOEWukOZEDYf8xdpu5hY7RrFO9/AX8Oc1D7RR
 4m1KIUR1YnDCvLlZwndFwA/OViD7AliGJ9WnBhJ3Hu7Y36TbvroJSUF6N37Vk9cserE6
 2GwEg/3Tq/vO2SXeV9k/6n4ww1gblz9Yk3q4zJ8Fm1knWgCHmP7dHxd7e3DMoemtXcJk
 qYPFxK1Eewy0sgpmsjei4K63idRmoExCEnGVpDP63aXn11FEMCfqhnqlOUH5zIEcF9KY
 UNmCSfOhnoibMpNtUF/D4EwhHBqJFM2IjWnadaIRPXcQ7SM7U0QmR3e+X9tPo2OIS4yI
 LU+w==
X-Gm-Message-State: APjAAAUrcTgJp1oF8BklLDdYoIK3h6IUZBm+trQcyCygnYjqGOO1W7GL
 aMRQcbG59oewPLmkDjDZU3LEzg==
X-Google-Smtp-Source: APXvYqyjCv+RfuDuHbk6B4dF6CbusPM8neaAWPdHZqiIQnf8Kr9Fc7sVfGImRfS+T0/lf0D9ZKqxww==
X-Received: by 2002:a63:1918:: with SMTP id z24mr358999pgl.94.1566495594017;
 Thu, 22 Aug 2019 10:39:54 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c2sm153607pjs.13.2019.08.22.10.39.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:39:52 -0700 (PDT)
Message-ID: <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190822071522.143986-3-hsinyi@chromium.org>
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
To: "Theodore Y . Ts'o" <tytso@mit.edu>, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Thu, 22 Aug 2019 10:39:51 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_103955_065029_0459887F 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
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

Quoting Hsin-Yi Wang (2019-08-22 00:15:22)
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
> 
> Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
> since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.
> 
> Add a new interface add_bootloader_randomness() for rng-seed use case.
> Depends on whether the seed is trustworthy, rng seed would be passed to
> add_hwgenerator_randomness(). Otherwise it would be passed to
> add_device_randomness(). Decision is controlled by kernel config
> RANDOM_TRUST_BOOTLOADER.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Change from v8:
> * Add a new interface add_bootloader_randomness
> * Add a new kernel config
> ---
>  drivers/char/Kconfig   | 10 ++++++++++
>  drivers/char/random.c  | 15 +++++++++++++++
>  drivers/of/fdt.c       | 14 ++++++++++++--
>  include/linux/random.h |  1 +
>  4 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
> index 96156c729a31..5974a5906fd0 100644
> --- a/drivers/char/Kconfig
> +++ b/drivers/char/Kconfig
> @@ -551,3 +551,13 @@ config RANDOM_TRUST_CPU
>         has not installed a hidden back door to compromise the CPU's
>         random number generation facilities. This can also be configured
>         at boot with "random.trust_cpu=on/off".
> +
> +config RANDOM_TRUST_BOOTLOADER
> +       bool "Trust the bootloader to initialize Linux's CRNG"
> +       default n

You can drop the default.

> +       help
> +       Bootloader could provide rng-seed set in /chosen/rng-seed in DT to help
> +       increase initial device randomness. Assume the entropy provided is
> +       trustworthy, it would be regarded as true hardware RNGs and update the
> +       entropy estimate. Otherwise it would be regarded as device input that
> +       could help mix the entropy pool, but won't be added to actual entropy.

Maybe reword this to something like:

	Some bootloaders can provide entropy to increase the kernel's
	initial device randomness. Say Y here to assume the entropy
	provided by the booloader is trustworthy so it will be added to
	the kernel's entropy pool. Otherwise, say N here so it will be
	regarded as device input that only mixes the entropy pool.

> \ No newline at end of file
> diff --git a/drivers/char/random.c b/drivers/char/random.c
> index 5d5ea4ce1442..29d3ff3de1e1 100644
> --- a/drivers/char/random.c
> +++ b/drivers/char/random.c
> @@ -2445,3 +2445,18 @@ void add_hwgenerator_randomness(const char *buffer, size_t count,
>         credit_entropy_bits(poolp, entropy);
>  }
>  EXPORT_SYMBOL_GPL(add_hwgenerator_randomness);
> +
> +/* Handle random seed passed by bootloader.
> + * If the seed is trustworthy, it would be regarded as hardware RNGs. Otherwise
> + * it would be regarded as device data.
> + * The decision is controlled by CONFIG_RANDOM_TRUST_BOOTLOADER.
> + */
> +void add_bootloader_randomness(const void *buf, unsigned int size)
> +{
> +#ifdef CONFIG_RANDOM_TRUST_BOOTLOADER
> +       add_hwgenerator_randomness(buf, size, size * 8);
> +#else
> +       add_device_randomness(buf, size);
> +#endif

Maybe use

	if (IS_ENABLED(CONFIG_RANDOM_TRUST_BOOTLOADER))
		add_hwgenerator_randomness(buf, size, size * 8);
	else
		add_device_randomness(buf, size);
	
> +}
> +EXPORT_SYMBOL_GPL(add_bootloader_randomness);
> \ No newline at end of file

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
