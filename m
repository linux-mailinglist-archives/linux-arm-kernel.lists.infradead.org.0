Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118B148138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypC4IyWDgRBIOd3wA9WCzELXkVmQB1X8W8eTL9T1U94=; b=OgyNwQR5Ken7a5
	83NGtO3EPzmgjqGadGq2eUhnjWbfn+u0p45cpiuQ/1LF+pi/y+JDF85MM7f1JYuxDE49Cg1m6KI1A
	O2HgtwBNNPo7UmEOj4iMoVoX7qHuWQvwLGO2OXBsF/xriE4DeY6an+LybFrj2zvT6y2PLviEIPu2x
	si7mCjCLdEwB+PNdyzIue9G7Hr5lK6GbgJqEglEFa/oN4bZ7XPr2wdwwglQ5zn06mC/7qCfQEF7OK
	Skl1okUN8bsqBzjT5IKJZMKknCVODTpw4mWYaYsTAEpad28AhnsPVvgyiGhWgcYY7RhuAEhPRLp+1
	RVwrHXJUz4NeZJghaICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcq72-0004Vd-6t; Mon, 17 Jun 2019 11:47:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcq6r-0004Uo-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:47:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5F51344;
 Mon, 17 Jun 2019 04:47:36 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 831763F246;
 Mon, 17 Jun 2019 04:49:21 -0700 (PDT)
Date: Mon, 17 Jun 2019 12:47:34 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: remove unused return type
Message-ID: <20190617114734.GK20984@e119886-lin.cambridge.arm.com>
References: <20190617093601.34511-1-andrew.murray@arm.com>
 <eb9532ff-8365-4287-ff43-045834dacdce@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb9532ff-8365-4287-ff43-045834dacdce@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_044738_012194_2BFB3202 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, kbuild test robot <lkp@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:45:24AM +0100, Marc Zyngier wrote:
> On 17/06/2019 10:36, Andrew Murray wrote:
> > The function 'arch_timer_set_evtstrm_feature' has no return statement
> > despite its prototype - let's change the function prototype to return
> > void. This matches the equivalent arm64 implementation.
> > 
> > fixes: 11e34eca5d0a ("clocksource/arm_arch_timer: Extract elf_hwcap use to arch-helper")
> 
> nit: tags start with a capital letter.

Thanks - I'll remember next time.

Andrew Murray

> 
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm/include/asm/arch_timer.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
> > index ae533caec1e9..99175812d903 100644
> > --- a/arch/arm/include/asm/arch_timer.h
> > +++ b/arch/arm/include/asm/arch_timer.h
> > @@ -125,7 +125,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
> >  	isb();
> >  }
> >  
> > -static inline bool arch_timer_set_evtstrm_feature(void)
> > +static inline void arch_timer_set_evtstrm_feature(void)
> >  {
> >  	elf_hwcap |= HWCAP_EVTSTRM;
> >  }
> > 
> 
> Acked-by: Marc Zyngier <marc.zyngier@arm.com>
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
