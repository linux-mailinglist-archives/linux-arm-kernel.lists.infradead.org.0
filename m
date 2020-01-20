Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE8F1431F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nDJUHDFBr9zNpjD+o1r+fbO2/QJ94CWxJMlxjfr5ENo=; b=nRbs46BHha4mEZ+LbEJ6xCaEB
	PMvaqK4HPvYow4Ig25EZV9zRKjq64IQscHlvjz4d4bMSKTqJoJ2OeuwHu0ZTLGDiK4AbGzwBBzu8T
	l5k6TwKyJFo9JvwE7nVsNC+KxOJDdAV1v+b/1xschUyW7RHqvHDHvVi2DbflQc73GXCA93a8EjFKw
	Oo81Pzk+MaD1RNt+bBxSdHVdS28jZf2q8qu5wzoMpOu+XGNvcg1Qvsqe/7zIJE7etOz8yE3MWeOnL
	oNy65s11RqzTRd0KuQFcawrurQvBl0XQKdoUyq0jJslXw7hPtMMDG99/JoCEGO8gOueZ6XcYo6juU
	GaX4SLfFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcQq-0002wA-Bh; Mon, 20 Jan 2020 19:09:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcQc-0002va-8s
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 19:09:42 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 566A322525;
 Mon, 20 Jan 2020 19:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579547377;
 bh=h5Q0lFPTlNEditb7Qh3N2CSA19MSJDmcR10BpaLKWT8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zt6xoAWxuSXzJyVYB8rZgZWObtuTQNBQJuN/H8rXLjKA4CpM8tTTtLllbSqEssypE
 6aGUuN1xoPHJ6lDT0yK2FZvYVJRVZnFzitUq67xKunNfNrfkb3sA0KkpXj/V7Uw33r
 nWlb84HHOuoQ0ISL/fCfpPiJFtgaCY9YTKwT3MKI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itcQZ-000Lm2-Kh; Mon, 20 Jan 2020 19:09:35 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 19:09:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: kbuild test robot <lkp@intel.com>, Yash Shah <yash.shah@sifive.com>
Subject: Re: [arm-platforms:irq/irqchip-next 5/28]
 drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of function
 'irq_chip_enable_parent'; did you mean 'gpiochip_enable_irq'?
In-Reply-To: <202001210210.Abjd7Hni%lkp@intel.com>
References: <202001210210.Abjd7Hni%lkp@intel.com>
Message-ID: <5332083498380e8cc461e618f024782b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lkp@intel.com, yash.shah@sifive.com, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org, wesley@sifive.com, atish.patra@wdc.com,
 bgolaszewski@baylibre.com, linus.walleij@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_110938_359826_EA455991 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org, Atish Patra <atish.patra@wdc.com>, "Wesley
 W. Terpstra" <wesley@sifive.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Yash,

On 2020-01-20 18:59, kbuild test robot wrote:
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
> irq/irqchip-next
> head:   c7f5b05c27a8501dc5a88bab49b6010e375e91f8
> commit: cd2abc8e87fef699d0da106103b65f6ca8dcbfe7 [5/28] gpio/sifive:
> Add GPIO driver for SiFive SoCs
> config: c6x-randconfig-a001-20200121 (attached as .config)
> compiler: c6x-elf-gcc (GCC) 7.5.0
> reproduce:
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout cd2abc8e87fef699d0da106103b65f6ca8dcbfe7
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=c6x
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_enable':
>>> drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of 
>>> function 'irq_chip_enable_parent'; did you mean 
>>> 'gpiochip_enable_irq'? [-Werror=implicit-function-declaration]
>      irq_chip_enable_parent(d);

[...]

This is how I'm planning to fix this (at least for the time
being, as I don't want to break -next at this stage).

Let me know if you want to address it otherwise.

Thanks,

         M.

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 6c63b79069f2..809dd54a2e82 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -481,7 +481,7 @@ config GPIO_SAMA5D2_PIOBU

  config GPIO_SIFIVE
         bool "SiFive GPIO support"
-       depends on OF_GPIO
+       depends on OF_GPIO && IRQ_DOMAIN_HIERARCHY
         select GPIO_GENERIC
         select GPIOLIB_IRQCHIP
         select REGMAP_MMIO


-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
