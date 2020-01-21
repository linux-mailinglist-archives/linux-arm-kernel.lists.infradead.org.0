Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C81442BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:05:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9n+VBkoLjtFrnuig5XBLxw8fXY5v2AI+9UQ7x32JPcI=; b=rJmtzZxAUgEj3p
	+z9PmJevsy6NM6g/N9MaTrnkHAa26KuCYHf7wMCefmWw9IT4NC4B6xbr9kW/bgSPbBpJhTlU5F1s6
	nbdA2H4DSfg+mK4vl8ljSmHLFKe/DYp4ECU4i7GsQS59/SYNX+WBpJrUbLlMd7WTCAuPvKuMrGSda
	ogylH46QFzcLvuI1Sri3CRgRKBHQ2S8fwlZ5SwdtYrDY6g+Cx3J3lS4d2OjXKsHV+4dp0EPDdpN/a
	k5qn+8W0u7sCfc68MTK9I0j7v0uYm6KsY1JBiK7u8acT2QS0Bmc59rfJ5XDMqGIgNWe8YrlROXhhw
	aECIGq9IXeMji3wQ8JmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwxS-0002UV-Be; Tue, 21 Jan 2020 17:04:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwxK-0002Tm-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4w5j2rjvzCBD7QP4k4t3Wl1ksmz9OpCbbWqDD9X7AkI=; b=zxhkliAtxRtYVF3GY5sKaRMGD
 qU0uMjAz7S8MJ6YeX85an8ipGfQt/WswXErZHKHH1L0HmTNbYodIRx78KUIuLuRO9E/kuBmGVCVrL
 ohOMmLlCbfSRgCDyKZ6R2m/dkj/W+oqFmS9+e1Ik5qqJs0oI3brlY70Qwv48TioYUmM7MPUd/g+Bo
 qWfGyZ026BWQnmhJv85aEqnNY/jXDin3D1U0yYnDmXxvAUwvmjiripA3NCtSYGnBguPR6QA6U271P
 SyB7LlND2mzj3pixI6qRNa6z7jHFyJB4po2i9pIwbWtO2R4VKsCAKDpTIykWo0DG9vTA1IBJHEv+K
 o1FWYIv8A==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37250)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itwwV-00061k-7C; Tue, 21 Jan 2020 17:03:55 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itwwQ-0003zI-Oi; Tue, 21 Jan 2020 17:03:50 +0000
Date: Tue, 21 Jan 2020 17:03:50 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v2 01/14] smp: Create a new function to shutdown nonboot
 cpus
Message-ID: <20200121170350.GC18808@shell.armlinux.org.uk>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-2-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125112754.25223-2-qais.yousef@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_090446_382327_1AE23952 
X-CRM114-Status: GOOD (  16.61  )
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

On Mon, Nov 25, 2019 at 11:27:41AM +0000, Qais Yousef wrote:
> This function will be used later in machine_shutdown() for some archs.
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Josh Poimboeuf <jpoimboe@redhat.com>
> CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>
> CC: Jiri Kosina <jkosina@suse.cz>
> CC: Nicholas Piggin <npiggin@gmail.com>
> CC: Daniel Lezcano <daniel.lezcano@linaro.org>
> CC: Ingo Molnar <mingo@kernel.org>
> CC: Eiichi Tsukata <devel@etsukata.com>
> CC: Zhenzhong Duan <zhenzhong.duan@oracle.com>
> CC: Nadav Amit <namit@vmware.com>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> CC: Tony Luck <tony.luck@intel.com>
> CC: Fenghua Yu <fenghua.yu@intel.com>
> CC: Russell King <linux@armlinux.org.uk>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-ia64@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  include/linux/cpu.h |  2 ++
>  kernel/cpu.c        | 17 +++++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/include/linux/cpu.h b/include/linux/cpu.h
> index bc6c879bd110..8229932fb053 100644
> --- a/include/linux/cpu.h
> +++ b/include/linux/cpu.h
> @@ -118,6 +118,7 @@ extern void cpu_hotplug_disable(void);
>  extern void cpu_hotplug_enable(void);
>  void clear_tasks_mm_cpumask(int cpu);
>  int cpu_down(unsigned int cpu);
> +extern void smp_shutdown_nonboot_cpus(unsigned int primary_cpu);
>  
>  #else /* CONFIG_HOTPLUG_CPU */
>  
> @@ -129,6 +130,7 @@ static inline int  cpus_read_trylock(void) { return true; }
>  static inline void lockdep_assert_cpus_held(void) { }
>  static inline void cpu_hotplug_disable(void) { }
>  static inline void cpu_hotplug_enable(void) { }
> +static inline void smp_shutdown_nonboot_cpus(unsigned int primary_cpu) { }
>  #endif	/* !CONFIG_HOTPLUG_CPU */
>  
>  /* Wrappers which go away once all code is converted */
> diff --git a/kernel/cpu.c b/kernel/cpu.c
> index e2cad3ee2ead..94055a0d989e 100644
> --- a/kernel/cpu.c
> +++ b/kernel/cpu.c
> @@ -1058,6 +1058,23 @@ int cpu_down(unsigned int cpu)
>  }
>  EXPORT_SYMBOL(cpu_down);
>  
> +void smp_shutdown_nonboot_cpus(unsigned int primary_cpu)
> +{
> +	unsigned int cpu;
> +
> +	if (!cpu_online(primary_cpu)) {
> +		pr_info("Attempting to shutdodwn nonboot cpus while boot cpu is offline!\n");
> +		cpu_online(primary_cpu);
> +	}
> +
> +	for_each_present_cpu(cpu) {
> +		if (cpu == primary_cpu)
> +			continue;
> +		if (cpu_online(cpu))
> +			cpu_down(cpu);
> +	}

How does this avoid racing with userspace attempting to restart CPUs
that have already been taken down by this function?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
