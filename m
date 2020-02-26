Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923FB170396
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiIcDdKOFzf9MK/lldSRIr6OMDP0IyJlISBaNXZ9HGo=; b=gSfYqB2HM5kD8e
	95gU6idp0gG8lj0Yb66Rnp2m56cJs0bvb6n4ERQYd06HElR13107NUN8uekkC7UCz5uSMjQwSi95D
	d4Fpe/8RaLpE0ilMcQvYVS+2/8a8wXLgcTIl9UgJCF5nNeX60T/uFU/vz0z00cEkBs+3iRg4uou+6
	9SQUvhkqV9bTvrm6jTD0lQ1Yq6HuwC2cMi1uvJE7FLFgBwZm3GKus/oiYfUGHfx4uLumLKMkw0XlM
	dhRk3gfPLU1U0myT6MTLaf/OHaLUtAdXWsIUJy4qzg+k2qF9SoRAO8rFzO1tKrIf8HfUDmB7djbhs
	VR0gyF8WjmH3XfO4wIDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z5i-0001TQ-DH; Wed, 26 Feb 2020 15:59:18 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z42-000080-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:57:36 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7789A819C;
 Wed, 26 Feb 2020 15:58:12 +0000 (UTC)
Date: Wed, 26 Feb 2020 07:57:24 -0800
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not
 set
Message-ID: <20200226155724.GN37466@atomide.com>
References: <20200221180901.15812-1-tony@atomide.com>
 <CAK8P3a2C6EV0En1hGuFxCRGzgf2t3-5DAPDUDQc5BmGHm1-t9w@mail.gmail.com>
 <20200221201542.GB37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221201542.GB37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075734_541611_9B62F6F2 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, kbuild test robot <lkp@intel.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F . Davis" <afd@ti.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Steven Price <steven.price@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200221 20:16]:
> * Arnd Bergmann <arnd@arndb.de> [200221 20:06]:
> > On Fri, Feb 21, 2020 at 7:09 PM Tony Lindgren <tony@atomide.com> wrote:
> > >
> > > Recent omap changes added runtime checks to use omap_smccc_smc()
> > > when optee is configured in dts. As the omap-secure code can be
> > > built for ARMv6 only without ARMv7 and use custom smc calls, we
> > > now get a build error:
> > >
> > > omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
> > >
> > > Let's just ifdef out omap_smccc_smc() unless the CPU has selected
> > > CONFIG_HAVE_ARM_SMCCC. The other option discussed was to add an
> > > inline function to arm-smccc.h, but we'd still also have to add
> > > ifdef around omap_smccc_smc() to avoid a warning for uninitialized
> > > value for struct arm_smccc_res in omap_smccc_smc(). And we probably
> > > should not start initializing values in arm-smccc.h if disabled.
> > >
> > > Let's also warn on trying to use omap_smccc_smc() if disabled as
> > > suggested by Andrew F. Davis <afd@ti.com>.
> > >
> > > +#ifdef CONFIG_HAVE_ARM_SMCCC
> > >  void omap_smccc_smc(u32 fn, u32 arg)
> > >  {
> > >         struct arm_smccc_res res;
> > > @@ -85,6 +86,12 @@ void omap_smccc_smc(u32 fn, u32 arg)
> > >                       0, 0, 0, 0, 0, 0, &res);
> > >         WARN(res.a0, "Secure function call 0x%08x failed\n", fn);
> > >  }
> > > +#else
> > 
> > Looking through the callers again, this can and is only called
> > for ARMv7 CPUs, so can't you just avoid the #else path and
> > turn it into a link error if we ever get callers on ARMv6-only builds?
> 
> Hmm yeah maybe. If ARMv6 machines (basically n8x0) is not using
> omap-smc.S at all, it's unlike it would need omap-secure.c either.

Yeah we never built secure-common for omap2 earlier, this got
recently added. My guess is that n8x0 only has a signed bootloader
and no smc calls at all, or at least we don't use any smc calls
for n8x0 in the kernel.

I'll send out v2 of the patch.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
