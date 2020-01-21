Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFA614440D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Co2S6VRTmQwVkPCl+k4c5s1P2YHrptEVcTLKHBN+WQU=; b=EKOn5+5wS9UcYu
	QlO+XS+/ZQMZyIR9nzmZEQbEiCUw5g/Av6PkSpfFxH37HJN1bR08VVzuYef6700b4zOlAwIqYbhDv
	9W6hmEPw2JGDMUPbrxghJ031cbidQv0Fkl6lQ2HOY3hEVJcaPamb0WodZJWgV/vZywumw2x4oBz6P
	V8K2QeOZXNao9sq3hopXRA0abliZIaFmpye3YLPly+Yu1GIs8vwnskNQmP+AEZ/r5xZUayl5TFIPt
	GCJcZvzTG8tHdyPMSR4q6wwLLAJo0mD6yblPmVobeaxV4VQE4Bl5b0CzZR1HwW0/xOQK2yvZZf0T/
	+iDv/3K/7DqVbnhJITkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxym-0007WD-CM; Tue, 21 Jan 2020 18:10:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxyZ-0006ZW-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FTbjmTPewhmuZeI4RXiIzCWj8QRQqw5GhRQOtHVv+dc=; b=CHjGe4+nP671nkSnHLv1XH8kc
 t//WmmqJb7tD1MqKGKVq0gRrITiatPK5VqYD8ukB2rLZGmP2qmwe4HhQidekE2c5Mv2JJAbhIdBfv
 5jV3xc8yRSsgiqmjGzMdjT7eykoxcGa2cSLhavfrMvYwzgN5iKiij1oWThcs7AEB4Z1wpc6X5Z5jw
 iU3sN/wYSVgi3wsYuTlD92rt2mYk802LhCk2kGEGHNQnEppUqYwrnRx5B1uiSaZLRcQPunKaVUgVj
 KoSFCXL78XQtQP8iqImB7pY1QCSpuruZLF/zhvke/hwYuwWwp77kb5G/lf4knIITcx2ijShNz2pdR
 ULStvBuCg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37284)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itxy3-0006Q1-1Q; Tue, 21 Jan 2020 18:09:35 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itxxy-00042T-5z; Tue, 21 Jan 2020 18:09:30 +0000
Date: Tue, 21 Jan 2020 18:09:30 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v2 01/14] smp: Create a new function to shutdown nonboot
 cpus
Message-ID: <20200121180930.GJ25745@shell.armlinux.org.uk>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-2-qais.yousef@arm.com>
 <20200121170350.GC18808@shell.armlinux.org.uk>
 <20200121174751.5opyyjwxfnwdgcev@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121174751.5opyyjwxfnwdgcev@e107158-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_101007_217078_C4BB3887 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fenghua Yu <fenghua.yu@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Tony Luck <tony.luck@intel.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Eiichi Tsukata <devel@etsukata.com>, Nadav Amit <namit@vmware.com>,
 Jiri Kosina <jkosina@suse.cz>, linux-ia64@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 05:47:52PM +0000, Qais Yousef wrote:
> On 01/21/20 17:03, Russell King - ARM Linux admin wrote:
> > On Mon, Nov 25, 2019 at 11:27:41AM +0000, Qais Yousef wrote:
> > > +void smp_shutdown_nonboot_cpus(unsigned int primary_cpu)
> > > +{
> > > +	unsigned int cpu;
> > > +
> > > +	if (!cpu_online(primary_cpu)) {
> > > +		pr_info("Attempting to shutdodwn nonboot cpus while boot cpu is offline!\n");
> > > +		cpu_online(primary_cpu);
> 
> Eh, that should be cpu_up(primary_cpu)!
> 
> Which I have to say I'm not if is the right thing to do.
> migrate_to_reboot_cpu() picks the first online cpu if reboot_cpu (assumed 0) is
> offline
> 
> migrate_to_reboot_cpu():
>  225         /* Make certain the cpu I'm about to reboot on is online */
>  226         if (!cpu_online(cpu))
>  227                 cpu = cpumask_first(cpu_online_mask);
> 
> > > +	}
> > > +
> > > +	for_each_present_cpu(cpu) {
> > > +		if (cpu == primary_cpu)
> > > +			continue;
> > > +		if (cpu_online(cpu))
> > > +			cpu_down(cpu);
> > > +	}
> > 
> > How does this avoid racing with userspace attempting to restart CPUs
> > that have already been taken down by this function?
> 
> This is meant to be called from machine_shutdown() only.
> 
> But you've got a point.
> 
> The previous logic that used disable_nonboot_cpus(), which in turn called
> freeze_secondary_cpus() didn't hold hotplug lock. So I assumed the higher level
> logic of machine_shutdown() ensures that hotplug lock is held to synchronize
> with potential other hotplug operations.

freeze_secondary_cpus() takes the CPU maps lock while it takes CPUs
down, and then disables cpu hotplug by incrementing
cpu_hotplug_disabled.  Incrementing that prevents cpu_up() and
cpu_down() being used, thereby preventing userspace from changing the
online state of any CPU in the system.

> But I can see now that it doesn't.
> 
> With this series that migrates users to use device_{online,offline}, holding
> the lock_device_hotplug() should protect against such races.
> 
> Worth noting that this an existing problem in the code and not something
> I introduced, of course it makes sense to fix it properly as part of this
> series.
> 
> I'm not sure how the other archs deal with this TBH.
> 
> Thanks for having a look!
> 
> Cheers
> 
> --
> Qais Yousef
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
