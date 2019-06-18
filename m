Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F012F4A1DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+weHFW5XEgUzq1k1XmgRDDx38lUiCAn8nF7m9xof/2g=; b=VDR9I/Ce5Fyj5z
	DhLQmw5H0xbnDVMojvUgKsBxifJ0NHpr0o/yoVjpoZR3k9kazznQWbVNmbU3V22bY+PlPkxk32kZu
	+fB950euY8XZxQmW9mqvSP0uJztm8Fm7eNn7L4XQkntJpvisBm5hl6bXZXbONJHVoydwgBaSH1y3u
	8WGd3hIHKEfS89VVAzetg31ZyS6Db4wCSqWhlFru6w0eLkepj/6wOuaXyvKfzCi4RAgsYfVBFueQI
	iXy/0FDyAu7kjCiuPGU+LgKxBg51BfwyXIjgKUoXxB0+pqp1Ux7wC2TXQpN9YPr8gvJXeZld15Env
	JBy6rKWBk6LABW2maZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDyi-0006ia-Jd; Tue, 18 Jun 2019 13:16:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDf1-0001h7-Vx
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a/MkRgINdiz8XSdUIGQqYJvKzvOMnVe3RSnyn6xHhgM=; b=PpSkGiZOVrsf8poQKWhQwt1yT
 e0OS2VzhbbpW46SHWuv6N+46HeNj3bJfcHGnQbyfUdh1/PabxmO+Yh59vMNIL7WDTyeL7+eomzA8y
 2aqrKbg9d28hc5kQRma1ZD2xDcHw4Z/qkAyJ9a0KSd0c81X4SyNjI32G4l9IQCgJPbtAI2Y9ebbGZ
 ikwK7OnpoPWoMxZsa/sEhnylpTsIzBCm9n+JyT6qDt3anLlU9jm/sg04BXLGIKBT0fi1vbACXTEC7
 Gz0bR+Cb9jn8CfQ5WDF6Cx06XprzrQNbb/4yKsyO1O/tX91zUBceuMW5BtvmnpdlHMbEm0WGIk5Tk
 yXwACuOEw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59802)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hdDcs-00029o-Px; Tue, 18 Jun 2019 13:54:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hdDcr-0000To-Ko; Tue, 18 Jun 2019 13:54:13 +0100
Date: Tue, 18 Jun 2019 13:54:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
Message-ID: <20190618125413.7la4mg3mojfshw6n@shell.armlinux.org.uk>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
 <20190617180913.GN30800@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617180913.GN30800@fuggles.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055632_609236_AB9DBD93 
X-CRM114-Status: GOOD (  23.02  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, dave.martin@arm.com,
 Cristian Marussi <cristian.marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 07:09:13PM +0100, Will Deacon wrote:
> [+James M]
> 
> On Thu, Jun 13, 2019 at 01:21:46PM +0100, Cristian Marussi wrote:
> > On a 2-CPUs system, when one CPU is already online if the other
> > panics while starting-up, smp_send_stop() will fail to send any
> > STOP message to the other already online core, resulting in a
> > system still responsive and alive at the end of the panic procedure.
> > This patch makes smp_send_stop() account also for the online status
> > of the calling CPU while evaluating how many CPUs are effectively
> > online: this way, an adequate number of STOPs is sent, so enforcing
> > a proper freeze of the system at the end of panic even under the
> > above conditions.
> > 
> > Reported-by: Dave Martin <Dave.Martin@arm.com>
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > ---
> > 
> > This peculiar panic-procedure behaviour was exposed hitting a BUG()
> > while running a KSFT cpu-hotplug test on a 2-core ARMv8 model.
> > Such trigger-BUG() was fixed by a distinct commit already included
> > in Linux 5.2-rc4 [0]
> > 
> > [0] https://lore.kernel.org/linux-arm-kernel/1559576102-12156-1-git-send-email-Dave.Martin@arm.com/
> > ---
> >  arch/arm64/kernel/smp.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index bb4b3f07761a..c7d604427883 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -971,8 +971,14 @@ void tick_broadcast(const struct cpumask *mask)
> >  void smp_send_stop(void)
> >  {
> >  	unsigned long timeout;
> > +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
> >  
> > -	if (num_online_cpus() > 1) {
> > +	/*
> > +	 * If this CPU isn't fully online, it will not be counted in
> > +	 * num_online_cpus(): on a 2-CPU system this situation will
> > +	 * result in no message being sent to the other already online CPU.
> > +	 */
> > +	if (num_online_cpus() > this_cpu_online) {
> >  		cpumask_t mask;
> >  
> >  		cpumask_copy(&mask, cpu_online_mask);
> > @@ -985,10 +991,10 @@ void smp_send_stop(void)
> >  
> >  	/* Wait up to one second for other CPUs to stop */
> >  	timeout = USEC_PER_SEC;
> > -	while (num_online_cpus() > 1 && timeout--)
> > +	while (num_online_cpus() > this_cpu_online && timeout--)
> >  		udelay(1);
> >  
> > -	if (num_online_cpus() > 1)
> > +	if (num_online_cpus() > this_cpu_online)
> >  		pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
> >  			   cpumask_pr_args(cpu_online_mask));
> 
> Whilst this looks ok to me, I'm worried about whether or not we have this
> sort of logic elsewhere. For example, do we need to fix
> crash_smp_send_stop() (and possibly machine_kexec()) too?

What about other architectures?  This, or very similar code, is present
on other architectures too.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
