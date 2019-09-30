Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C8EC25DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFQCWqViqq8jexz+7TV8BEMEYWS+dg6UqIZbJ2pIPOk=; b=D/yfUpJr8c8IDq
	lZeLSPW+Xqk2oyKDSiNhL/8EjiwGKzACv5m+VcEF805kT+5IW7DO8y6+LiyH2NUGtY7y2Z2+CmiKB
	iPAiuxKes1f2ioMxULVfYPcgjRQgP7SUSREFnNNsxizGAPniYOmQNn7iMjlY2/3ULzUo2DFxFNDBq
	z4SoFGpUluo8bIfdMs0T01+g7wnVc63xWZnc9Opg5RJsyb8hhPpPrzzeQGMf6ZygCf4Vpr5krwKsu
	KKSsf+clCmCtonFcsAvNd6g9h+xpmLsCFwh/+NZhexRvT5Z4tayLwtnjl08xfIQl932bukywnFHSz
	7DB5R9X7OuGx3uDOCLcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzog-0000m2-1W; Mon, 30 Sep 2019 17:50:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzoX-0000lS-5k
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eeuwhcBg0/unot9yWRfZ0iTRvvETLH1N0h7aGRGzozM=; b=Ib9TrnUBuSEP/SHSV5oxODafF
 zAF9LlKsABuY/ZLU9bFCCprcSYkNYQAO/x11zo9yhH8mNZUkjYmE5+duixfEiFscs5YTVenyV4a7t
 J9OFOTFiPlSfzB/8QL58Ozm8fcyObEjAiV4MTcF6p9sgjdKdjTkyfDRiDrfHXUlCnc9RRUt1HRkEL
 eQOTvgtKNErEKXDaSIZ6aiThkDGM6cm99b45BgH2IAT7ATDCjdq9NJ2ySnnmpwxvDhoo2/ReJm0ws
 +EU2l4+M9nPkAOeJoZqVtg632ouEf2lUBXJKAEDXy+X3gBedYt0vg0Ehjx5eQwkfAruxxMPzyPCVo
 DnyoJ5YKg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:45960)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iEzoM-0005uI-Ud; Mon, 30 Sep 2019 18:50:15 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iEzoH-0007R6-5U; Mon, 30 Sep 2019 18:50:09 +0100
Date: Mon, 30 Sep 2019 18:50:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
Message-ID: <20190930175009.GH25745@shell.armlinux.org.uk>
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_105025_365464_74B54682 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 02:59:25PM +0900, Masahiro Yamada wrote:
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
> 
>   https://lkml.org/lkml/2019/9/26/825
> 
> I also received a regression report from Nicolas Saenz Julienne:
> 
>   https://lkml.org/lkml/2019/9/27/263
> 
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
> 
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.
> 
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
> 
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
> 
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
> 
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
> 
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm/include/asm/uaccess.h | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> index 303248e5b990..559f252d7e3c 100644
> --- a/arch/arm/include/asm/uaccess.h
> +++ b/arch/arm/include/asm/uaccess.h
> @@ -191,11 +191,12 @@ extern int __get_user_64t_4(void *);
>  #define __get_user_check(x, p)						\
>  	({								\
>  		unsigned long __limit = current_thread_info()->addr_limit - 1; \
> +		unsigned int __ua_flags = uaccess_save_and_enable();	\

If the compiler is moving uaccess_save_and_enable(), that's something
we really don't want - the idea is to _minimise_ the number of kernel
memory accesses between enabling userspace access and performing the
actual access.

Fixing it in this way widens the window for the kernel to be doing
something it shoulding in userspace.

So, the right solution is to ensure that the compiler always inlines
the uaccess_*() helpers - which should be nothing more than four
instructions for uaccess_save_and_enable() and two for the
restore.

I.O.W. it should look something like this:

     144:       ee134f10        mrc     15, 0, r4, cr3, cr0, {0}
     148:       e3c4200c        bic     r2, r4, #12
     14c:       e24e1001        sub     r1, lr, #1
     150:       e3822004        orr     r2, r2, #4
     154:       ee032f10        mcr     15, 0, r2, cr3, cr0, {0}
     158:       f57ff06f        isb     sy
     15c:       ebfffffe        bl      0 <__get_user_4>
     160:       ee034f10        mcr     15, 0, r4, cr3, cr0, {0}
     164:       f57ff06f        isb     sy

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
