Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC721C6964
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAH4KHtJPOBg0RViqw12EBRY/D762AM8VgAiuxrsxp8=; b=H6Q337LOlZLElS
	r1rmkR8yMSekovPqejWr+HjJcjZlopFsnOU0y9NsJ4WONhMql2sZeJeybGuHatqn28TZ/vBICq5mS
	16LSA+xMYvzIQCW5H/IF4tICNnIorfe/+7bsX0axnB2skjpQzGlLGN8Likoa2kfrvrAHCKFMZe2Y/
	zZzqY+/a16RAoo8I/LOv3wPsCm2OOUWc5Ol3eoSULyvQf62nMnO8ZM8ZZ7M73Mlp5cC/5mgQlYRbt
	GpYH3MYEduKbxJ4/Q6FQLUXreC5gXw5pHxhB7NLwuoV6bPu0UzghePqzg2f2dh5J/wuTU9bqpm3mX
	JN+WF9pA3SIJqREuWm2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDtt-0003SV-MX; Wed, 06 May 2020 06:51:25 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDtk-0003S5-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:51:18 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e6so389936pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daemons-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zWslycsoqOQ359IakGW3a1F/5xT9RTlCzfLGPEdji2s=;
 b=VVRPac8JxQ2yO15PzcdX1hP2MLRiJEj2HFle/fWZJfRhqKwz1VUpjJdtye3lEX1NIW
 eY+gb5/i8thO7fxUOpy+IWPnYi5J38J7Ch04uOZqpgneUG982J8lnjA9IyHl8LqowtNz
 LEWFHbTLgVKIXCy18RxFG+qDC1FQjWe0qFZAbncAluPpGa1FeHObBBzZ3Ppsf+qgPZ+Z
 RfMgJMPkmUWvIwQE6WdPM7bjn1qVtatSYhQvhoVZIUAcEC1IQw+W180UdTrVvpgT0NjT
 T/QIsA70LDYe05eVIJuhFW/qNTu7pwhR0OE4Biw0NhIlctzSaqMPjKLbF6yI2eX64HX1
 XdCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zWslycsoqOQ359IakGW3a1F/5xT9RTlCzfLGPEdji2s=;
 b=k5/p749OBfQaA/a4K23Jg48QjT2YTPiRpO9B4usqvy4HySx6bCuHlCaGFiMwusMkSM
 LJQXIGV4YG12b7Z1yYihcCn7BZTf8RHcz3QcMH1LEF4aOqLG/yXs9hVcnK1bzkKTmClL
 3gQP6U+u26OkhiHFJhMDXz8sZCZ5xClnV8Y5mUmHgfYKAD6fapX1+Zj2qs/KicC0KPFf
 kVyCbqd7t4x3bcOEdSQ2JR6E9Fr8dvn16KS4lDJ6yBHacGUYQwiiAaAmGnILrSrNrZlE
 qcSW6TCcwIvDWUizJJMXY2bsmjwWIhIh6a/jNo96OUA4hdnj3fRyJVNeEN3jTBACkwAe
 HkhA==
X-Gm-Message-State: AGi0PuZ93KsyBA7LqRZEvKs3dzHeYdUYllrkgMGQ4imdP0+1XG+aqnO/
 PSti1M/ivZl8Eu/3+UIBFH+L
X-Google-Smtp-Source: APiQypJcNy0kd6l7daOweAVRgu2WF8Ua8sYRhEpoLPpFDpd65Xi99VrdKZTPAjbReAAEY1z261G08g==
X-Received: by 2002:a17:90a:25c3:: with SMTP id
 k61mr7352238pje.28.1588747874993; 
 Tue, 05 May 2020 23:51:14 -0700 (PDT)
Received: from arctic-shiba-lx ([47.156.151.166])
 by smtp.gmail.com with ESMTPSA id x13sm867837pfq.154.2020.05.05.23.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 23:51:14 -0700 (PDT)
Date: Tue, 5 May 2020 23:51:05 -0700
From: Clay McClure <clay@daemons.net>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2] net: ethernet: ti: Remove TI_CPTS_MOD workaround
Message-ID: <20200506065105.GA3226@arctic-shiba-lx>
References: <CAK8P3a1m-zmiTx0_KJb-9PTW0iK+Zkh10gKsaBzge0OJALBFmQ@mail.gmail.com>
 <20200504165711.5621-1-clay@daemons.net>
 <f07c695b-5537-41bf-e4f8-0d8012532f64@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f07c695b-5537-41bf-e4f8-0d8012532f64@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_235116_557018_DE2E5543 
X-CRM114-Status: GOOD (  31.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>, kbuild test robot <lkp@intel.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Richard Cochran <richardcochran@gmail.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Andrew Jeffery <andrew@aj.id.au>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 10:41:26AM +0300, Grygorii Strashko wrote:

> It's better if you send v2 not as reply to v1.

Noted, thank you, and thank you for taking the time to review my patch.

> just to clarify. After these two patches
>  - the PTP_1588_CLOCK can still be set to "M"
>  - which will cause TI_CPTS to be "M",
>  - but TI_CPSW will still be "Y".
> 
> and all above will build and produce built-in CPSW without CPTS support
> and cpts.ko which is loadable, but not functional.
> 
> Sorry, I'm a little bit lost regarding the target you'are trying to achieve.
> At least previously "imply PTP_1588_CLOCK" allowed to select properly PTP_1588_CLOCK
> without modifying every defconfig.

Well, I just wanted to squelch a WARN_ON(). As Arnd pointed out in [1],
code that uses the stubbed cpts functions is supposed to gracefully
handle receiving a null pointer. Splatting a warning is not graceful,
and that's what I was trying to fix.

But your question in [2] prompted me to consider whether it should be
possible to build TI_CPTS without PTP_1588_CLOCK at all. I think the
answer is no, so I tried to fix it, but you're right, it's still
possible to end up with a nonfunctional module after my patch.

If you prefer to revert, that's fine with me. Should I post a patch, or
just ask David to revert?

-- 
Clay

[1]: https://lore.kernel.org/lkml/CAK8P3a22aSbpcVK-cZ6rhnPgbYEGU3z__G9xk1EexOPZd5Hmzw@mail.gmail.com/
[2]: https://lore.kernel.org/lkml/6fef3a00-6c18-b775-d1b4-dfd692261bd3@ti.com/

> 
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Clay McClure <clay@daemons.net>
> > ---
> > Changes in v2:
> > 
> > - Don't regenerate the defconfigs, just add PTP_1588_CLOCK.
> > 
> >   arch/arm/configs/keystone_defconfig    |  1 +
> >   arch/arm/configs/omap2plus_defconfig   |  1 +
> >   drivers/net/ethernet/ti/Kconfig        | 13 ++++---------
> >   drivers/net/ethernet/ti/Makefile       |  2 +-
> >   drivers/net/ethernet/ti/cpsw_ethtool.c |  2 +-
> >   drivers/net/ethernet/ti/cpts.h         |  3 +--
> >   drivers/net/ethernet/ti/netcp_ethss.c  | 10 +++++-----
> >   7 files changed, 14 insertions(+), 18 deletions(-)
> > 
> > diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
> > index 11e2211f9007..84a3b055f253 100644
> > --- a/arch/arm/configs/keystone_defconfig
> > +++ b/arch/arm/configs/keystone_defconfig
> > @@ -147,6 +147,7 @@ CONFIG_I2C_DAVINCI=y
> >   CONFIG_SPI=y
> >   CONFIG_SPI_DAVINCI=y
> >   CONFIG_SPI_SPIDEV=y
> > +CONFIG_PTP_1588_CLOCK=y
> >   CONFIG_PINCTRL_SINGLE=y
> >   CONFIG_GPIOLIB=y
> >   CONFIG_GPIO_SYSFS=y
> > diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> > index 3cc3ca5fa027..8b83d4a5d309 100644
> > --- a/arch/arm/configs/omap2plus_defconfig
> > +++ b/arch/arm/configs/omap2plus_defconfig
> > @@ -274,6 +274,7 @@ CONFIG_SPI_TI_QSPI=m
> >   CONFIG_HSI=m
> >   CONFIG_OMAP_SSI=m
> >   CONFIG_SSI_PROTOCOL=m
> > +CONFIG_PTP_1588_CLOCK=y
> >   CONFIG_PINCTRL_SINGLE=y
> >   CONFIG_DEBUG_GPIO=y
> >   CONFIG_GPIO_SYSFS=y
> > diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> > index 8e348780efb6..f3f8bb724294 100644
> > --- a/drivers/net/ethernet/ti/Kconfig
> > +++ b/drivers/net/ethernet/ti/Kconfig
> > @@ -77,23 +77,18 @@ config TI_CPSW_SWITCHDEV
> >   	  will be called cpsw_new.
> >   config TI_CPTS
> > -	bool "TI Common Platform Time Sync (CPTS) Support"
> > +	tristate "TI Common Platform Time Sync (CPTS) Support"
> >   	depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
> >   	depends on COMMON_CLK
> > -	depends on POSIX_TIMERS
> > +	depends on PTP_1588_CLOCK
> 
> > +	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
> 
> even with above statement it's possible to force TI_CPTS="M" while CPSW/NETCP="Y"
> 
> > +	default m
> 
> I could be mistaken by above 2 lines seems can be 'imply TI_CPTS'
> in TI_CPSW, TI_KEYSTONE_NETCP, TI_CPSW_SWITCHDEV
> 
> >   	---help---
> >   	  This driver supports the Common Platform Time Sync unit of
> >   	  the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
> >   	  The unit can time stamp PTP UDP/IPv4 and Layer 2 packets, and the
> >   	  driver offers a PTP Hardware Clock.
> > -config TI_CPTS_MOD
> > -	tristate
> > -	depends on TI_CPTS
> > -	depends on PTP_1588_CLOCK
> > -	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
> > -	default m
> 
> and this prevented user from forcing TI_CPTS="M" while CPSW/NETCP="Y"
> 
> > -
> >   config TI_K3_AM65_CPSW_NUSS
> >   	tristate "TI K3 AM654x/J721E CPSW Ethernet driver"
> >   	depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
> > diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
> > index 53792190e9c2..cb26a9d21869 100644
> 
> Below small diff should fix build fail:
> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> index 8e348780efb6..eeaee47598aa 100644
> --- a/drivers/net/ethernet/ti/Kconfig
> +++ b/drivers/net/ethernet/ti/Kconfig
> @@ -81,6 +81,7 @@ config TI_CPTS
>         depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
>         depends on COMMON_CLK
>         depends on POSIX_TIMERS
> +       depends on PTP_1588_CLOCK
>         ---help---
>           This driver supports the Common Platform Time Sync unit of
>           the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
> @@ -90,7 +91,6 @@ config TI_CPTS
>  config TI_CPTS_MOD
>         tristate
>         depends on TI_CPTS
> -       depends on PTP_1588_CLOCK
>         default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
>         default m
> 
> Then separate patch can be used to enable PTP_1588_CLOCK in defconfigs.
> 
> My personal opinion - it might be better to revert TI CPTS part from
> b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
> at all.
> 
> -- 
> Best regards,
> grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
