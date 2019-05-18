Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714FF22585
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 01:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyTYZT6SYx56CLSpDHR0Mk3w/huUQSZluPLr/+m00ec=; b=HyBKrTI9RrBBKu
	CwaiBCELWRX0rlcEGX858Gr44wKJN7s1PGxqD6ljURHDlmjRRkUrg++Bwm1DQ8eLcdCqeWqsKQQlX
	So/i3PgsCfkOC4CallrMoTQVNUNy2k4bwOeNAghacmcfFE7yLwXQhq0plVB2mgLouFF01tU/pdKbO
	+wWWPuxYrxsYv0K9Ei8/pGe/5T1dxzJRR524dTcdUGek37JNtCSRxg0oDET2zGoW3WSKj4X1QUlYN
	HnZbpA+eEq44+RT+CyR1+5PcnkKykdbz75/9QnReMa3mRaphcYeZVCZmhBmwXDL9UI2JZxfOddnto
	3nq6gerJPiUEYOXxQ4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS8Vh-0007kV-JH; Sat, 18 May 2019 23:13:01 +0000
Received: from emh02.mail.saunalahti.fi ([62.142.5.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS8Va-0007ju-3t
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 23:12:56 +0000
Received: from t60.musicnaut.iki.fi (85-76-87-86-nat.elisa-mobile.fi
 [85.76.87.86])
 by emh02.mail.saunalahti.fi (Postfix) with ESMTP id BB6572003A;
 Sun, 19 May 2019 02:12:44 +0300 (EEST)
Date: Sun, 19 May 2019 02:12:44 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: Re: [PATCH] arm64: Improve parking of stopped CPUs
Message-ID: <20190518231244.GC3713@t60.musicnaut.iki.fi>
References: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
 <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
 <20190518221929.GA6135@dc5-eodlnx05.marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190518221929.GA6135@dc5-eodlnx05.marvell.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_161254_332728_BA82F2A4 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.108 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Jayachandran C <jnair@caviumnetworks.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, May 18, 2019 at 10:19:39PM +0000, Jayachandran Chandrasekharan Nair wrote:
> On Thu, May 16, 2019 at 09:44:53PM +0300, Aaro Koskinen wrote:
> > On Wed, Feb 01, 2017 at 09:48:52AM +0000, Jayachandran C wrote:
> > > The current code puts the stopped cpus in an 'yield' instruction loop.
> > > Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> > > function here to do a wfi/wfe.
> > > 
> > > Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> > 
> > Looks like this patch has been forgotten?
> > 
> > I have a system where CPUs need to be put in wfi/wfe for the warm reset
> > to work, and using cpu_park_loop() would solve this.
> 
> If I remember correctly (it has been a while), in my testing I saw that
> the wfi does not block after a while since interrupts are pending.
> Most likely that timer interrupts will still be enabled.

Right, this is correct; I also observed the same in my testing.

> We might need some code to reset/disable the GIC interface for the CPU
> before parking.

I solved this by doing the global GIC disable in the firmware PSCI reset
function code. So from Linux side cpu_park_loop() is enough, and already
this patch is an improvement.

A.

> > >  arch/arm64/kernel/smp.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > > index cbaab44..0691d2f 100644
> > > --- a/arch/arm64/kernel/smp.c
> > > +++ b/arch/arm64/kernel/smp.c
> > > @@ -829,8 +829,7 @@ static void ipi_cpu_stop(unsigned int cpu)
> > >  
> > >  	local_irq_disable();
> > >  
> > > -	while (1)
> > > -		cpu_relax();
> > > +	cpu_park_loop();
> > >  }
> > >  
> > >  /*
> 
> JC
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
