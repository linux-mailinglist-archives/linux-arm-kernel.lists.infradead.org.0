Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66771B8BB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twstJw1Zpc6J1hLFn6Uc9JMgUnsdNbaUqfkaTwsW2hE=; b=Ls7xbVZssWFKxb
	+iDDkcx7U4UlTNVvprXk0Ba9SiIh0IQJkBkS/hbaNKhs2yo7fYoNFuMbHDMxoL9bLiq+pkZNDZHoF
	BTgn/lZ8jqXT3T2Tvx0BJnDp8UN5KcZL8+H/0XAp4Vs/tVBcdnDophJtNxXNX+k9pUK+FZvUz3K1n
	qKtYD55ea5YVR1rRODY+9lgC0WMe4jqZvOwypTbQSAdHfWRuo6OKau4SfBN+BoyYoBA2P9KPF6ucT
	TiiWf6HjFtUQjxv2cs/2iQRIHaJPNtMeA0/izq8YVHT/ct7h+Tyrmu6h6FPX/+HT6ef1vX8kWRJV4
	fuDhGqlfpdaOMVs0ajsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDZY-0004GE-PJ; Fri, 20 Sep 2019 07:43:20 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDZM-0004FY-Mw
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:43:10 +0000
Received: by mail-qk1-f194.google.com with SMTP id x134so6427211qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 00:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3lKk+zwO3ztRJxmFWZdj4M4We36PKrcFNdQxMw/wFCw=;
 b=VmZWzCVote/poZVgCT3WRFO/T0NI/cWr/WYiqVkfLBvbe47sAw5vWW2mxaxBMkNAY+
 kgFZHESyu7WdL9Nvod+h5E7lslnih9ZdbxALpVvmVaaq/A4uFsKRfXdTAB+lW2HPUZSe
 R6evlVdpqBDLw7+KBgL214lR1zI5+eEtIOsEqVptmR0RcSApq5nPSwzzdWMxYbr0Q/fC
 TkY/w6slFojE1EB++Q9iCyZXt5j+vA3rwsXdvMgq+xdFSC2Lh2ZTWSghj4x1MW1bEKM1
 aMBzy/uN7bMtwt5Vf3h+2kiGsMF1Byt869I2UgeTNiQato2OOI6nUMc7jqmR1x2yaUZ/
 5kNw==
X-Gm-Message-State: APjAAAWXuW+z04IfUr6+qbV3iVp+fNVAUirXbm6bW/LNjuRG9Y6AzntE
 jVrfe3Ygr6IIKbLWH2mzXnnrqkBcjHIpYmvDG48=
X-Google-Smtp-Source: APXvYqzBHupHID5t8krankJiBM+2cD1x69FWvFH32XCalJNyUJQ3f3NQ0ko9RSVCp48Pj9I3P/V020rv8gspzcooDJE=
X-Received: by 2002:a37:a858:: with SMTP id r85mr2318323qke.394.1568965387375; 
 Fri, 20 Sep 2019 00:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190919142654.1578823-1-arnd@arndb.de>
 <CACPK8XcsegR5R0nkiZ-UEMgCqNMggCXjAr2N-6J1S6mEhGLrBQ@mail.gmail.com>
In-Reply-To: <CACPK8XcsegR5R0nkiZ-UEMgCqNMggCXjAr2N-6J1S6mEhGLrBQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 20 Sep 2019 09:42:51 +0200
Message-ID: <CAK8P3a17ReGKk70YoS72OvV=9KfDJBwDQkFDKx_1imdEbTboZQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: aspeed: ast2500 is ARMv6K
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_004308_750613_23E17595 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 7:51 AM Joel Stanley <joel@jms.id.au> wrote:
> On Thu, 19 Sep 2019 at 14:27, Arnd Bergmann <arnd@arndb.de> wrote:

> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/arm/mach-aspeed/Kconfig | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> > index a293137f5814..163931a03136 100644
> > --- a/arch/arm/mach-aspeed/Kconfig
> > +++ b/arch/arm/mach-aspeed/Kconfig
> > @@ -26,7 +26,6 @@ config MACH_ASPEED_G4
> >  config MACH_ASPEED_G5
> >         bool "Aspeed SoC 5th Generation"
> >         depends on ARCH_MULTI_V6
> > -       select CPU_V6
> >         select PINCTRL_ASPEED_G5 if !CC_IS_CLANG
>
> I can't find any trees with !CC_IS_CLANG here. Is there a problem
> building our pinmux driver with Clang?

This was an unrelated change from my local randconfig tree.

Your driver uncovered a bug in clang that is now fixed, the driver
itself is fine, see https://bugs.llvm.org/show_bug.cgi?id=43243

> I tested with this patch:
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -25,8 +25,8 @@ config MACH_ASPEED_G4
>
>  config MACH_ASPEED_G5
>         bool "Aspeed SoC 5th Generation"
> +       # This implies ARMv6K which covers the ARM1176
>         depends on ARCH_MULTI_V6
> -       select CPU_V6
>         select PINCTRL_ASPEED_G5
>         select FTTMR010_TIMER
>         help
>
> If you want to apply that as a fix for 5.4 I would be happy with that.
>
> Fixes: 8c2ed9bcfbeb ("arm: Add Aspeed machine")
> Reviewed-by: Joel Stanley <joel@jms.id.au>

Applied to arm/fixes now.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
