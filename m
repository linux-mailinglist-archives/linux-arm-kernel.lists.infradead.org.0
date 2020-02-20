Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2313166416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAZnuQfYo8gMwV5A6of/fesgZMMSLXvHGNdPMB0I+8U=; b=N9gmfcA0CQrpvv
	yxtXcktMsEj6zvAJ0bA2OSUMXs5J617nWg7Fpq2uN0LudqkRwYZlLkC5sKnXrNE1D37dIDPat25IZ
	3Y+qDMLuyWKtGq13A29wOmc/vvUf2ZirrUSiebOHs6D4SRhDEcSZHpMeYtDAeQB7WbKR4sZ14cph2
	AvX2qbJT/xtghgM2MLLtuVzLXJ9G+6vHrUyBYqvXDwBlokdrENb5pHJPx9s9aKhPlv0+uAb39cTrg
	81J6HteoBMNgV40tRoyGgpvM4vGlsbfLsfL4Vd/f+Opoz+zlnAH5+6UNdeSAUAZ9Kkvrv/2X3KpYX
	rDQg5QpcK7wYk0KlF0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pOF-0005nw-MR; Thu, 20 Feb 2020 17:13:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pNt-0005D0-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:13:11 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id EEC0C8080;
 Thu, 20 Feb 2020 17:13:52 +0000 (UTC)
Date: Thu, 20 Feb 2020 09:13:05 -0800
From: Tony Lindgren <tony@atomide.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: omap-secure.c:undefined reference to `__arm_smccc_smc'
Message-ID: <20200220171305.GL37466@atomide.com>
References: <202002131856.VeW4PhBJ%lkp@intel.com>
 <20200220155429.GH37466@atomide.com>
 <55ddcd29-ed8b-529e-dd54-cbac5cf74e42@ti.com>
 <20200220162012.GI37466@atomide.com>
 <d7b685b6-16a2-3743-1786-a5240726ed9c@ti.com>
 <20200220163703.GK37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220163703.GK37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_091309_431645_3DA76786 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200220 16:37]:
> * Andrew F. Davis <afd@ti.com> [200220 16:24]:
> > On 2/20/20 11:20 AM, Tony Lindgren wrote:
> > > * Andrew F. Davis <afd@ti.com> [200220 16:04]:
> > >> On 2/20/20 10:54 AM, Tony Lindgren wrote:
> > >>> Andrew,
> > >>>
> > >>> * kbuild test robot <lkp@intel.com> [200213 10:27]:
> > >>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > >>>> head:   0bf999f9c5e74c7ecf9dafb527146601e5c848b9
> > >>>> commit: c37baa06f8a970e4a533d41f7d33e5e57de5ad25 ARM: OMAP2+: Fix undefined reference to omap_secure_init
> > >>>> date:   3 weeks ago
> > >>>> config: arm-randconfig-a001-20200213 (attached as .config)
> > >>>> compiler: arm-linux-gnueabi-gcc (GCC) 7.5.0
> > >>>> reproduce:
> > >>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>>>         chmod +x ~/bin/make.cross
> > >>>>         git checkout c37baa06f8a970e4a533d41f7d33e5e57de5ad25
> > >>>>         # save the attached .config to linux build tree
> > >>>>         GCC_VERSION=7.5.0 make.cross ARCH=arm 
> > >>>>
> > >>>> If you fix the issue, kindly add following tag
> > >>>> Reported-by: kbuild test robot <lkp@intel.com>
> > >>>>
> > >>>> All errors (new ones prefixed by >>):
> > >>>>
> > >>>>    arch/arm/mach-omap2/omap-secure.o: In function `omap_smccc_smc':
> > >>>>>> omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
> > >>>
> > >>> Have you looked at this one? Looks like there's still an unhandled
> > >>> randconfig build case.
> > >>>
> > >>
> > >>
> > >> I've had a quick look, all the ARM config does:
> > >>
> > >> select HAVE_ARM_SMCCC if CPU_V7
> > >>
> > >> so I don't think this will happen in any real config, but if we want to
> > >> prevent randconfig issue this we could force ARCH_OMAP2PLUS to "depend"
> > >> on it.
> > > 
> > > Seems to happen at least with omap2 only config where we don't have
> > > CPU_V7. Something like below seems to fix it.
> > > 
> > > If that looks OK to you, I'll send out a proper fix.
> > > 
> > 
> > 
> > This looks fine to me.
> > 
> > A better later fix might be to later stub out the actual __arm_smccc_smc
> > in common code if CONFIG_HAVE_ARM_SMCCC is not set, so any platform will
> > get the fix.
> 
> Yeah seems that might be better. Adding Aaro and Marc to Cc.

But if we can in theory have some arm11 machine with smccc, then this
local ifdef below is probably the way to go.

Regards,

Tony

> > > 8< -----------------------
> > > diff --git a/arch/arm/mach-omap2/omap-secure.c b/arch/arm/mach-omap2/omap-secure.c
> > > --- a/arch/arm/mach-omap2/omap-secure.c
> > > +++ b/arch/arm/mach-omap2/omap-secure.c
> > > @@ -77,6 +77,7 @@ u32 omap_secure_dispatcher(u32 idx, u32 flag, u32 nargs, u32 arg1, u32 arg2,
> > >  	return ret;
> > >  }
> > >  
> > > +#ifdef CONFIG_HAVE_ARM_SMCCC
> > >  void omap_smccc_smc(u32 fn, u32 arg)
> > >  {
> > >  	struct arm_smccc_res res;
> > > @@ -85,6 +86,11 @@ void omap_smccc_smc(u32 fn, u32 arg)
> > >  		      0, 0, 0, 0, 0, 0, &res);
> > >  	WARN(res.a0, "Secure function call 0x%08x failed\n", fn);
> > >  }
> > > +#else
> > > +void omap_smccc_smc(u32 fn, u32 arg)
> > > +{
> > > +}
> > > +#endif
> > >  
> > >  void omap_smc1(u32 fn, u32 arg)
> > >  {
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
