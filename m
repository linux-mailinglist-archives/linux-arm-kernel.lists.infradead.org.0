Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF4418CF2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bm5uaCugGRjI+W0I5UE28Cdn9GqXkP/fb3HiXHIvAc=; b=JA2wWOlYItHXxc
	gIA3mAmPHrQfu6TUKSpz0DMzEE6YrXmRNYiYAgKD8QdyROv4VExbUwjR61XNPhkN3r1zOMRruy8BJ
	IgvybcnHgKrjwMfOa2avQdVcye+N54X/M0ZyfHt0mnmKQrzjWxrYcP5KO+q1I52u6Gr439hLHqOjx
	bQm1rKe0RiyZdYYz9ma7atap+Ca6xQs87z90/vMpNr+x+lJcG9AZCmXpp51zbQO5/Rgqxe8NLQ+El
	JCLn2IiPIe4jRQJ6MiqhaPNkNBQbDhh+ytbPwRKiggL2S5bL/NNqPaeUPOdtu+pLOrvpnraiB5BEJ
	RZTHAwyun5+bZF/ob3Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHuB-0000vR-Rw; Fri, 20 Mar 2020 13:41:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHu2-0000ub-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:41:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 878161FB;
 Fri, 20 Mar 2020 06:41:32 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD3DC3F85E;
 Fri, 20 Mar 2020 06:41:31 -0700 (PDT)
Date: Fri, 20 Mar 2020 13:41:29 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v3 04/15] arm: Don't use disable_nonboot_cpus()
Message-ID: <20200320134129.5udel4nplzgcfzwc@e107158-lin.cambridge.arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-5-qais.yousef@arm.com>
 <20200320110430.jozfyrqqx272266u@e107158-lin.cambridge.arm.com>
 <20200320130700.GR25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320130700.GR25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_064134_297939_6D33F3CA 
X-CRM114-Status: GOOD (  25.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/20/20 13:07, Russell King - ARM Linux admin wrote:
> On Fri, Mar 20, 2020 at 11:04:31AM +0000, Qais Yousef wrote:
> > On 02/23/20 19:29, Qais Yousef wrote:
> > > disable_nonboot_cpus() is not safe to use when doing machine_down(),
> > > because it relies on freeze_secondary_cpus() which in turn is
> > > a suspend/resume related freeze and could abort if the logic detects any
> > > pending activities that can prevent finishing the offlining process.
> > > 
> > > Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> > > is an othogonal config to rely on to ensure this function works
> > > correctly.
> > > 
> > > Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu.
> 
> I think that should be a separate change - you have two separate
> changes in this patch:
> 
> 1. to switch to using the new helper.
> 2. to change the CPU that we potentially use for the final steps of
>    shutdown
> 
> These should be two seperate changes, so if (2) causes a regression
> it can be reverted independently of (1).

Okay will do.

Thanks

--
Qais Yousef

> 
> > > 
> > > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > > CC: Russell King <linux@armlinux.org.uk>
> > > CC: linux-arm-kernel@lists.infradead.org
> > > CC: linux-kernel@vger.kernel.org
> > > ---
> > 
> > Hi Russel
> > 
> > Does the updated version look good to you now?
> > 
> > Thanks
> > 
> > --
> > Qais Yousef
> > 
> > >  arch/arm/kernel/reboot.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
> > > index bb18ed0539f4..0ce388f15422 100644
> > > --- a/arch/arm/kernel/reboot.c
> > > +++ b/arch/arm/kernel/reboot.c
> > > @@ -88,11 +88,11 @@ void soft_restart(unsigned long addr)
> > >   * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
> > >   * kexec'd kernel to use any and all RAM as it sees fit, without having to
> > >   * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
> > > - * functionality embodied in disable_nonboot_cpus() to achieve this.
> > > + * functionality embodied in smp_shutdown_nonboot_cpus() to achieve this.
> > >   */
> > >  void machine_shutdown(void)
> > >  {
> > > -	disable_nonboot_cpus();
> > > +	smp_shutdown_nonboot_cpus(reboot_cpu);
> > >  }
> > >  
> > >  /*
> > > -- 
> > > 2.17.1
> > > 
> > 
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
