Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CA31685AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBNAs+18I3Zj9kwy8oVFMhcRglgs2kOdFosF369ysXo=; b=uS4QeUMMMktB2U
	R0ue+rhPaO2IKBSBUpp/WKAAmHZhIz9seAXIpmj9tnRK/nssrFmTvalHVCNl4oVxBtKe9MgI6sYBJ
	naBx+EPHYyHp53jJ+SDFiTuA65raYejXDSJDX1c7l5wwh0jk0XcoWbT9l7ug3KpZ1RjGb+d4tQRnx
	zYTKLRLdY+WLOGF+wUZZZ5Wo7hePSALVkkhpqHGXCHFQk0zkDkyIBf/NUt8Um3ZLybP0oYPXBiMxY
	xFf9HKeOPQ6Cy4tjKtCvnEAzL4xC4NZMk3O/cwXBREXb3qJHeTWH3Ym9WM4vtNq2dQ0QiaUFYDQfS
	Do4rCrl8nviymByPSmdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CWA-0004qw-1Y; Fri, 21 Feb 2020 17:55:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CVq-0004qU-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:54:55 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 711B0807E;
 Fri, 21 Feb 2020 17:55:37 +0000 (UTC)
Date: Fri, 21 Feb 2020 09:54:49 -0800
From: Tony Lindgren <tony@atomide.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: omap-secure.c:undefined reference to `__arm_smccc_smc'
Message-ID: <20200221175449.GZ37466@atomide.com>
References: <20200220155429.GH37466@atomide.com>
 <55ddcd29-ed8b-529e-dd54-cbac5cf74e42@ti.com>
 <20200220162012.GI37466@atomide.com>
 <d7b685b6-16a2-3743-1786-a5240726ed9c@ti.com>
 <20200220163703.GK37466@atomide.com>
 <20200220171305.GL37466@atomide.com>
 <281e895b-720d-5bab-63cf-8b3e389dc767@ti.com>
 <20200220175744.GQ37466@atomide.com>
 <20200220181141.GR37466@atomide.com>
 <333dd36f-e760-64b3-9e0f-3a316df9ad10@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <333dd36f-e760-64b3-9e0f-3a316df9ad10@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_095454_096029_D0E5016B 
X-CRM114-Status: GOOD (  22.97  )
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
Cc: Rob Herring <robh@kernel.org>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Andrew F. Davis <afd@ti.com> [200220 10:23]:
> On 2/20/20 1:11 PM, Tony Lindgren wrote:
> > * Tony Lindgren <tony@atomide.com> [200220 17:58]:
> >> * Andrew F. Davis <afd@ti.com> [200220 17:39]:
> >>> On 2/20/20 12:13 PM, Tony Lindgren wrote:
> >>>> * Tony Lindgren <tony@atomide.com> [200220 16:37]:
> >>>>> * Andrew F. Davis <afd@ti.com> [200220 16:24]:
> >>>>>> On 2/20/20 11:20 AM, Tony Lindgren wrote:
> >>>>>>> * Andrew F. Davis <afd@ti.com> [200220 16:04]:
> >>>>>>>> On 2/20/20 10:54 AM, Tony Lindgren wrote:
> >>>>>>>>> Andrew,
> >>>>>>>>>
> >>>>>>>>> * kbuild test robot <lkp@intel.com> [200213 10:27]:
> >>>>>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> >>>>>>>>>> head:   0bf999f9c5e74c7ecf9dafb527146601e5c848b9
> >>>>>>>>>> commit: c37baa06f8a970e4a533d41f7d33e5e57de5ad25 ARM: OMAP2+: Fix undefined reference to omap_secure_init
> >>>>>>>>>> date:   3 weeks ago
> >>>>>>>>>> config: arm-randconfig-a001-20200213 (attached as .config)
> >>>>>>>>>> compiler: arm-linux-gnueabi-gcc (GCC) 7.5.0
> >>>>>>>>>> reproduce:
> >>>>>>>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>>>>>>>>>         chmod +x ~/bin/make.cross
> >>>>>>>>>>         git checkout c37baa06f8a970e4a533d41f7d33e5e57de5ad25
> >>>>>>>>>>         # save the attached .config to linux build tree
> >>>>>>>>>>         GCC_VERSION=7.5.0 make.cross ARCH=arm 
> >>>>>>>>>>
> >>>>>>>>>> If you fix the issue, kindly add following tag
> >>>>>>>>>> Reported-by: kbuild test robot <lkp@intel.com>
> >>>>>>>>>>
> >>>>>>>>>> All errors (new ones prefixed by >>):
> >>>>>>>>>>
> >>>>>>>>>>    arch/arm/mach-omap2/omap-secure.o: In function `omap_smccc_smc':
> >>>>>>>>>>>> omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
> >>>>>>>>>
> >>>>>>>>> Have you looked at this one? Looks like there's still an unhandled
> >>>>>>>>> randconfig build case.
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> I've had a quick look, all the ARM config does:
> >>>>>>>>
> >>>>>>>> select HAVE_ARM_SMCCC if CPU_V7
> >>>>>>>>
> >>>>>>>> so I don't think this will happen in any real config, but if we want to
> >>>>>>>> prevent randconfig issue this we could force ARCH_OMAP2PLUS to "depend"
> >>>>>>>> on it.
> >>>>>>>
> >>>>>>> Seems to happen at least with omap2 only config where we don't have
> >>>>>>> CPU_V7. Something like below seems to fix it.
> >>>>>>>
> >>>>>>> If that looks OK to you, I'll send out a proper fix.
> >>>>>>>
> >>>>>>
> >>>>>>
> >>>>>> This looks fine to me.
> >>>>>>
> >>>>>> A better later fix might be to later stub out the actual __arm_smccc_smc
> >>>>>> in common code if CONFIG_HAVE_ARM_SMCCC is not set, so any platform will
> >>>>>> get the fix.
> >>>>>
> >>>>> Yeah seems that might be better. Adding Aaro and Marc to Cc.
> >>>>
> >>>> But if we can in theory have some arm11 machine with smccc, then this
> >>>> local ifdef below is probably the way to go.
> >>>>
> >>>
> >>> If the machine has SMCCC then it will also have the
> >>> CONFIG_HAVE_ARM_SMCCC set and so nothing would change.
> >>
> >> Hmm yeah good point.
> > 
> > So the patch below seems like the way to go then. Anybody have issues
> > with the patch below?
> > 
> > Regards,
> > 
> > Tony
> > 
> > 8< -------------------------
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -121,6 +121,7 @@ struct arm_smccc_quirk {
> >  	} state;
> >  };
> >  
> > +#ifdef CONFIG_HAVE_ARM_SMCCC
> >  /**
> >   * __arm_smccc_smc() - make SMC calls
> >   * @a0-a7: arguments passed in registers 0 to 7
> > @@ -137,6 +138,14 @@ asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
> >  			unsigned long a2, unsigned long a3, unsigned long a4,
> >  			unsigned long a5, unsigned long a6, unsigned long a7,
> >  			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
> > +#else
> > +static inline void __arm_smccc_smc(unsigned long a0, unsigned long a1,
> > +			unsigned long a2, unsigned long a3, unsigned long a4,
> > +			unsigned long a5, unsigned long a6, unsigned long a7,
> > +			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk)
> > +{
> 
> 
> Maybe a warning? If you do not have SMC on your platform but are still
> making SMC calls then something is broken and it looks like it would
> fail silently here.

Actually I'll go back to the earlier local fix. With above changes,
we now start getting uninitialized struct arm_smccc_res res warning
in omap_smccc_smc(). And it's a bit unclear if and with what value
a0 should be initialized. Probably should be SMCCC_RET_NOT_SUPPORTED,
but that then requires moving defines around too. And if it turns
out being version specific define, then we keep piling up more code.

My guess is that it's only few SoCs that might have ARMv6 and v7
both built, so it's not like we'd have to patch all over the place
anyways.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
