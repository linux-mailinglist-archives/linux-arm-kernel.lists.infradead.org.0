Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB18D33A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycoOU+NO0InKhD+M2fyhDETmGkAyqKCq3JAq63rXxZ0=; b=WSuPxMCNnzmf/j
	iKps0c5BdLsRKB6QPxmpCfpaGHwjaNjeMEamY+es8PLkk+z5s8fCMdEwAFcr7gWTIxXcV+3UH3yeX
	+HTP/XOfJ319ZFfB5EfrqXZmgd4WJrxqZYSnK+cFup3SjLUkHSkvgrLXc3aoLWvPuxCNg1ru5Wovs
	8LDNfPTD/sgqYwGe06trVntqwzLzr347VKLO8fCC/wyj75qBIyQFZd4Zj0pMYgWIbQLS6oDkSiLs5
	RM/XNGlxYrMXrmPWxKN3YTsHmwQ9fIzgnbxyqY3FKaKak1VPiN1haVBl96GOaqVIvSY3s9C8cO8yd
	EC3VWosn2CawkhA/T6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgNf-0003db-1b; Thu, 10 Oct 2019 21:53:55 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgNM-0003Xg-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:53:38 +0000
Received: by mail-qk1-f196.google.com with SMTP id w2so7090853qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 14:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5KUJrhrPz34prZHQPwuRHd4WWImJkzkCSryx5fAKFeY=;
 b=rNXWH5WCfA6r5QNqmHcEtMFED0rG5EcUW2u7fqBi8ePgGpEHtbuSdgdlzYYf50LLpb
 ZXCrmQapCiwnAguJhbH2+bO4BSIPcendY1Hibb3fJvFPn2lC7LP0O1kXzc2YeN1zq1z2
 TzoCDa7SutI4dUEMnKdIsQLjknv3/R+EaFEXUYkVCdSpo5TwE/lXB1KFY+WtXWQITApD
 6eSI+p5+vK39+KqtU7K+cCFkVfjk2FnqwQHTC5yyea6X9O0glLkO/MjXI15MwnIzB5aS
 z+ursopKR0JPW1xWUw4ARIKXrryLdJmHuyLQOVYSOerQFJ4lFmIRp2kQCqzHJqmZ+7mM
 B+wQ==
X-Gm-Message-State: APjAAAWvNVGsWKUIX3BUK5XrKmWGSad9hJFTM9Pk1KJU8dhMK9sc3BYQ
 Nc+t3Qa42iz9lIEYZutOv14MupEgkH3kaEdTCdc=
X-Google-Smtp-Source: APXvYqwI5aZHDA5AQ5r7nRWW4bmOM1FPEwqypeNgqzsA4zDVqF3VF9ai0AW+gXH8pRsYBpeg659n6diW29XFvF8Ul3Q=
X-Received: by 2002:a05:620a:218f:: with SMTP id
 g15mr12031339qka.3.1570744414547; 
 Thu, 10 Oct 2019 14:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-34-arnd@arndb.de>
 <20191010210208.GK25745@shell.armlinux.org.uk>
In-Reply-To: <20191010210208.GK25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 10 Oct 2019 23:53:18 +0200
Message-ID: <CAK8P3a2HTrxhncNbFtGA3itsZU6hfvRm6bW5ikx-PMFpVKcwdg@mail.gmail.com>
Subject: Re: [PATCH 34/36] ARM: s3c: stop including mach/hardware.h from
 mach/io.h
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_145336_625363_17A5E796 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Felipe Balbi <balbi@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Andi Shyti <andi@etezian.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 11:02 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 10, 2019 at 10:30:18PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> > index 2ad22b2d459b..f8a114891f16 100644
> > --- a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> > +++ b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> > @@ -14,6 +14,8 @@
> >  #ifndef GPIO_SAMSUNG_S3C24XX_H
> >  #define GPIO_SAMSUNG_S3C24XX_H
> >
> > +#include <mach/map.h>
> > +
>
> Why?  Nothing in this file uses anything from mach/map.h

Good point, I don't recall how this happened, most likely either
edited the wrong file after a build regression, or I had moved some
definition into this file in a patch that I later discarded and this
change got left behind.

> > diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> > index 7ca3dd4f13c0..da4e7b3aeba6 100644
> > --- a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> > +++ b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> > @@ -9,6 +9,8 @@
> >  #ifndef __ASM_ARM_REGS_CLOCK
> >  #define __ASM_ARM_REGS_CLOCK
> >
> > +#include <mach/map.h>
> > +
>
> Why?  Nothing in this file uses anything from mach/map.h

I think I added this one for S3C24XX_VA_CLKPWR, which is in
plat/map-s3c.h

> > diff --git a/drivers/spi/spi-s3c24xx-regs.h b/drivers/spi/spi-s3c24xx-regs.h
> > index 37b93ff7c7fe..b76d591eba8c 100644
> > --- a/drivers/spi/spi-s3c24xx-regs.h
> > +++ b/drivers/spi/spi-s3c24xx-regs.h
> > @@ -8,6 +8,8 @@
> >  #ifndef __ASM_ARCH_REGS_SPI_H
> >  #define __ASM_ARCH_REGS_SPI_H
> >
> > +#include <mach/map.h>
> > +
>
> If this is outside of arch/arm, it shouldn't need anything from
> mach/map.h - mach/map.h is not for driver use.

This was the result of a botched rebase: The patch was initially
at the start of the series where the #include was still required
but later moved to the end behind the patch that used to remove
it again.

> > diff --git a/drivers/usb/gadget/udc/s3c2410_udc_regs.h b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> > index d8d2eeaca088..4df279342cdd 100644
> > --- a/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> > +++ b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> > @@ -6,6 +6,8 @@
> >  #ifndef __ASM_ARCH_REGS_UDC_H
> >  #define __ASM_ARCH_REGS_UDC_H
> >
> > +#include <mach/map.h>
> > +
>
> If this is outside of arch/arm, it shouldn't need anything from
> mach/map.h - mach/map.h is not for driver use.

Same here.

Thanks for taking a look, I'll fix it all up tomorrow.

          Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
