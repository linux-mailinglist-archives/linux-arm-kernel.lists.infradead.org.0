Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9743130A6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19uryNEan4X03/srG4A+we9lSUj0epxvYdCMBYFQyBc=; b=WVw2F86F1dCgiL
	Aqnf4benKf0oTSRkVvcJ/OLxNO27a9XSf4F78Okfs9Bu/DNM4b2gebM6FMcwIX3d6DIBx/+fCnrVW
	szvxtz+wfNtiz93I8wfkWFW2uZLB5YJtWnCm37BFEragt1jz6ONEfVEhdujzpaxEsqnCBl+B9Pd88
	uwHDwstOa8HCoD1FCa6XtT67X83HkJoAfofcPUBAGoVSLo9zpNCYUysFh45R1oR8J22kI3r4Pvqcx
	3ATBbm3wCzntvRJI+zA63l/D81rDv8RuLxsukwgErgkhnAdf6f9/7ZFv2jdOi1i+fmPvcgZwF3Oc4
	/z4ke3tZaP1ppai9+31A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWd2m-0003v9-6p; Fri, 31 May 2019 08:37:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWd2d-0003uB-RF
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bjOu4LRUpVGEiievllAaPyIh8BafHkkt+IKK8d7DI1c=; b=OHs5VOOpq/i+FnHb5pnquv9mJ
 F6GV0cSjbTM/aQNa5ch7VmwXhuyKC9H42ptvPc3jwiY46QwR/+oFlWulN0jOnrM4a4HKSbBvGyLX7
 rdBI604LFfnQyVjaYMHICkrQ7bjdIXiwVL+8ZKxbtyJnG+KgROG6j7P3eiQrAZlAOUhH8MfwEUO0J
 MZJG/oVxHIbZLC9Prx0+Z/URQvXuDenjHxEb8+iogQugaKYmSYtxd4T3s/IjNaQqbX8XlW7PfNLXI
 4y3COK4r7l4Kwnz7gVU3+Y5TwUfhiYGXCP6oWCzmRD51RvwEEnvd3x1JfaJ0Ks0T7HBDHlNR2JPSw
 nk90omGiQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38394)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWd2V-00088P-32; Fri, 31 May 2019 09:37:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWd2T-00068p-1y; Fri, 31 May 2019 09:37:25 +0100
Date: Fri, 31 May 2019 09:37:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm: vdso: pass --be8 to linker if necessary
Message-ID: <20190531083724.uc32co24qxfodlty@shell.armlinux.org.uk>
References: <20190529182324.8140-1-Jason@zx2c4.com>
 <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_013736_833721_1DEFBB13 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 11:01:23AM +0900, Masahiro Yamada wrote:
> Hi Jason,
> 
> Thanks for catching this.
> 
> On Thu, May 30, 2019 at 3:26 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > The commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC)
> > to link VDSO") removed the passing of CFLAGS, since ld doesn't take
> > those directly. However, prior, big-endian ARM was relying on gcc to
> > translate its -mbe8 option into ld's --be8 option. Lacking this, ld
> 
> 
> 'git grep -- -mbe8' has no hit.

It isn't -mbe8, it is --be8

$ arm-linux-gcc --target-help
...
  --be8                       Output BE8 format image

> 
> Is it a toolchain internal flag?
> 
> 
> 
> > generated be32 code, making the VDSO generate SIGILL when called by
> > userspace.
> >
> > This commit passes --be8 if CONFIG_CPU_ENDIAN_BE8 is enabled.
> >
> > Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Cc: Russell King <rmk+kernel@armlinux.org.uk>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
> >  arch/arm/vdso/Makefile | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
> > index fadf554d9391..1f5ec9741e6d 100644
> > --- a/arch/arm/vdso/Makefile
> > +++ b/arch/arm/vdso/Makefile
> > @@ -10,9 +10,10 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
> >  ccflags-y := -fPIC -fno-common -fno-builtin -fno-stack-protector
> >  ccflags-y += -DDISABLE_BRANCH_PROFILING
> >
> > -ldflags-y = -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> > +ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
> > +ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> >             -z max-page-size=4096 -z common-page-size=4096 \
> > -           -nostdlib -shared \
> > +           -nostdlib -shared $(ldflags-y) \
> >             $(call ld-option, --hash-style=sysv) \
> >             $(call ld-option, --build-id) \
> >             -T
> > --
> > 2.21.0
> >
> 
> 
> --
> Best Regards
> Masahiro Yamada
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
