Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FF21F7637
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJNkMLPRB3tgtk5vLTwqPyTpWWuEd/VVjKOV+L6RKys=; b=t2fCUa74rvR+CB
	mmhfg4ZiocoXzHumvqBHxNc+0UZ9NrugW6XS8nYjvMojHWP9OrliIImysSYKeNh2bK7ozfu7U3V1P
	4TVNNui9IXEV1RPm6sVsZCrddJ+y0pAMJ0rbEvJuvodhuEYTpjdOQFLdRLN31gZLyJaSLKQmkG1m9
	xpEZOco0c7JrQy0B2R6G0hz//Xe6CZ+hh9y4h1H6VUUmdlVkd/Ksa5hePfRk6uuKvbBAT0rq/NaJQ
	gH6GBDFO0sGrIrPnqlmYQYd8Zz3JWl6tL9VPw9fNdle1OdCbQ3fNWIAHCnkf9LU6Ob73yU0WnaGWL
	5MgsdZMgbmGUxV4KMqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgJY-0001Sh-Nh; Fri, 12 Jun 2020 09:49:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgJO-0001SD-Sh
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:49:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DC7120792;
 Fri, 12 Jun 2020 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591955362;
 bh=8i+MqAZZFAmkFbs5MEhIuuE6tT35KuFo73qlUAq0tAw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AJPWCXpf5yw3CIw1ucO/Zb+rLt65FkcO+cwH53R+fgdavBidUaEeVC6jbB0CGe/lx
 hjvK8i54prSYSYMXFb6cbzn8ge3sgbTbrj7YL52Gs0M9tvyCiwd8hvATuHg1JtEGGl
 akTV/kur5/hiMWgSMhPtGK789B7PFpAh2Q4dt4EM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjgJM-002M4c-JE; Fri, 12 Jun 2020 10:49:20 +0100
Date: Fri, 12 Jun 2020 10:49:18 +0100
From: Marc Zyngier <maz@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
Message-ID: <20200612104918.3829bb26@why>
In-Reply-To: <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
References: <20200519161755.209565-1-maz@kernel.org>
 <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, sumit.garg@linaro.org, kernel-team@android.com,
 linux@arm.linux.org.uk, jason@lakedaemon.net, catalin.marinas@arm.com,
 tglx@linutronix.de, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_024922_966982_5C7F474F 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Tue, 19 May 2020 10:50:46 -0700
Florian Fainelli <f.fainelli@gmail.com> wrote:

> On 5/19/2020 9:17 AM, Marc Zyngier wrote:
> > For as long as SMP ARM has existed, IPIs have been handled as
> > something special. The arch code and the interrupt controller exchange
> > a couple of hooks (one to generate an IPI, another to handle it).
> > 
> > Although this is perfectly manageable, it prevents the use of features
> > that we could use if IPIs were Linux IRQs (such as pseudo-NMIs). It
> > also means that each interrupt controller driver has to follow an
> > architecture-specific interface instead of just implementing the base
> > irqchip functionnalities. The arch code also duplicates a number of
> > things that the core irq code already does (such as calling
> > set_irq_regs(), irq_enter()...).
> > 
> > This series tries to remedy this on arm/arm64 by offering a new
> > registration interface where the irqchip gives the arch code a range
> > of interrupts to use for IPIs. The arch code requests these as normal
> > interrupts.
> > 
> > The bulk of the work is at the interrupt controller level, where all 3
> > irqchips used on arm64 get converted.
> > 
> > Finally, the arm64 code drops the legacy registration interface. The
> > same thing could be done on 32bit as well once the two remaining
> > irqchips using that interface get converted.
> > 
> > There is probably more that could be done: statistics are still
> > architecture-private code, for example, and no attempt is made to
> > solve that (apart from hidding the IRQs from /proc/interrupt).
> > 
> > This has been tested on a bunch of 32 and 64bit guests.  
> 
> Does this patch series change your position on this patch series
> 
> https://lore.kernel.org/linux-arm-kernel/20191023000547.7831-3-f.fainelli@gmail.com/T/
> 
> or is this still a no-no?

I don't think this series changes anything. There is no easy way to
reserve SGIs in a way that would work for all combination of OS and FW,
and the prospect of sending SGIs between S and NS has already been
dubious (yes, the GIC architecture allows it, but it has been written
by people who have never designed any large piece of SW).

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
