Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DD8C496F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3Gxo4k6/G7rRYeIxKnyw+68huI6EV1D3mLFFySNAio=; b=YO+38HdFznCNCK
	kaPYH88iHRJe7m2KFVL6L6s8nCNoIAj/Oh16B/HNFHTntTMgSmKvb3vOFJMvigOiBGxddHRj7YQ/E
	kX51I+jZVsijQdAQ5IU8FOBPnyG6yeT/xwgCwNJcm5RLVmDLi/OFNvTr7ziG4/9gvnltEhx4BZqSy
	Xi45nXZ5yaqkVePcgYKa+l2SdvAf0sKtLcZ+7DPpzfCwsI6Q115cC6ZuaRrIIjhvIodyLKIgN6eBR
	M5lYP5AplR75pXl+RUhMmgXIVzrambUi4rPlHIopakbqC3TgY1lTCIB+ZU2zG2YTFboasQ/9hCgit
	eC80YwFPP/0DrdPaxDiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZxK-0005wm-2C; Wed, 02 Oct 2019 08:25:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZwh-0005vG-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 08:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G6wh5zbXgBDLuP9wlLDjydf/CNQhrMAVw4p6MMswNVU=; b=aAoxC1LvNDpEqScdAPP/zYbKj
 R+Td06DiA/dklhOpga9/ZliqLMzpAkkgxTabdfYkAtod4kJuUrjMA6ZFQ87eLjE3u25Us94rlfihe
 PK0Z0nUWe9w+jIR2wZsbVevE1cF+A82P9tb6+01qyTpTKjX9KZLeX0Lk7JM6vIQ9XV2aSbbrlfwe9
 YByP2DhhQybSeGPQhcwqXF+nnXSBrODhvicV34wQ3BTsuxOmvTz+eqOJ5mG3ooyTdCXzcVntFlhpi
 0eFkndq7xWxqB29GbAygQ9iPM3yU5ar37noYKFl0UhlG9/A1vMD34wnNJuS1APOCECCQAtmFmLFTc
 joikpkIAg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50746)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFZwT-0007aT-6L; Wed, 02 Oct 2019 09:25:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFZwM-0000Wl-RU; Wed, 02 Oct 2019 09:24:54 +0100
Date: Wed, 2 Oct 2019 09:24:54 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
Message-ID: <20191002082454.GQ25745@shell.armlinux.org.uk>
References: <20191001083701.27207-1-yamada.masahiro@socionext.com>
 <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_012515_475348_EDACA1CC 
X-CRM114-Status: GOOD (  25.33  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Enrico Weigelt <info@metux.net>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Allison Randal <allison@lohutok.net>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 10:03:50AM -0700, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 1:37 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > KernelCI reports that bcm2835_defconfig is no longer booting since
> > commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> > forcibly") (https://lkml.org/lkml/2019/9/26/825).
> >
> > I also received a regression report from Nicolas Saenz Julienne
> > (https://lkml.org/lkml/2019/9/27/263).
> >
> > This problem has cropped up on bcm2835_defconfig because it enables
> > CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends to prefer not inlining
> > functions with -Os. I was able to reproduce it with other boards and
> > defconfig files by manually enabling CONFIG_CC_OPTIMIZE_FOR_SIZE.
> >
> > The __get_user_check() specifically uses r0, r1, r2 registers.
> > So, uaccess_save_and_enable() and uaccess_restore() must be inlined.
> > Otherwise, those register assignments would be entirely dropped,
> > according to my analysis of the disassembly.
> >
> > Prior to commit 9012d011660e ("compiler: allow all arches to enable
> > CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> > inlining functions, except on x86.
> >
> > Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> > So, __always_inline is now the only guaranteed way of forcible inlining.
> 
> No, the C preprocessor is the only guaranteed way of inlining.  I
> preferred v1; if you're going to <strikethrough>play with
> fire</strikethrough>write assembly, don't get burned.

It seems we disagree on that.

Masahiro Yamada, please send this to the patch system, thanks.

> 
> >
> > I also added __always_inline to 4 functions in the call-graph from the
> > __get_user_check() macro.
> >
> > Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> > Reported-by: "kernelci.org bot" <bot@kernelci.org>
> > Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> > Changes in v2:
> >   - Use __always_inline instead of changing the function call places
> >      (per Russell King)
> >   - The previous submission is: https://lore.kernel.org/patchwork/patch/1132459/
> >
> >  arch/arm/include/asm/domain.h  | 8 ++++----
> >  arch/arm/include/asm/uaccess.h | 4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm/include/asm/domain.h b/arch/arm/include/asm/domain.h
> > index 567dbede4785..f1d0a7807cd0 100644
> > --- a/arch/arm/include/asm/domain.h
> > +++ b/arch/arm/include/asm/domain.h
> > @@ -82,7 +82,7 @@
> >  #ifndef __ASSEMBLY__
> >
> >  #ifdef CONFIG_CPU_CP15_MMU
> > -static inline unsigned int get_domain(void)
> > +static __always_inline unsigned int get_domain(void)
> >  {
> >         unsigned int domain;
> >
> > @@ -94,7 +94,7 @@ static inline unsigned int get_domain(void)
> >         return domain;
> >  }
> >
> > -static inline void set_domain(unsigned val)
> > +static __always_inline void set_domain(unsigned int val)
> >  {
> >         asm volatile(
> >         "mcr    p15, 0, %0, c3, c0      @ set domain"
> > @@ -102,12 +102,12 @@ static inline void set_domain(unsigned val)
> >         isb();
> >  }
> >  #else
> > -static inline unsigned int get_domain(void)
> > +static __always_inline unsigned int get_domain(void)
> >  {
> >         return 0;
> >  }
> >
> > -static inline void set_domain(unsigned val)
> > +static __always_inline void set_domain(unsigned int val)
> >  {
> >  }
> >  #endif
> > diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> > index 303248e5b990..98c6b91be4a8 100644
> > --- a/arch/arm/include/asm/uaccess.h
> > +++ b/arch/arm/include/asm/uaccess.h
> > @@ -22,7 +22,7 @@
> >   * perform such accesses (eg, via list poison values) which could then
> >   * be exploited for priviledge escalation.
> >   */
> > -static inline unsigned int uaccess_save_and_enable(void)
> > +static __always_inline unsigned int uaccess_save_and_enable(void)
> >  {
> >  #ifdef CONFIG_CPU_SW_DOMAIN_PAN
> >         unsigned int old_domain = get_domain();
> > @@ -37,7 +37,7 @@ static inline unsigned int uaccess_save_and_enable(void)
> >  #endif
> >  }
> >
> > -static inline void uaccess_restore(unsigned int flags)
> > +static __always_inline void uaccess_restore(unsigned int flags)
> >  {
> >  #ifdef CONFIG_CPU_SW_DOMAIN_PAN
> >         /* Restore the user access mask */
> > --
> > 2.17.1
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
