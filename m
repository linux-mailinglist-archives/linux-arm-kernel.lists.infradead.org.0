Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555EF18F81C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6+NMqSwQNRjfGuHYwgwmwsnstDiI70LHnA6XKHcB08=; b=oUokGE7tER0qI2
	IwRdrsAO9hfsddJ6SDSeO4JOT227ZA3lx+sNqylXn/DqKq0+MZtTFKk2+1QxtWeg8qok9wJysmqJq
	3Zu3JuItvT76LxDNRm6zzf9wNUgPLI5psfsu1FrkGywWz32lzfFAjQvtr2rXGB3VOHboSBXF1piCu
	mxXHq0YhhaggV6zf2k6Bz0pY4wq6AFmIKAWYYCaRmtmd+Bc3jJj92nXvC7X8EdGKhzX1s9JLL5tEQ
	W4OTZ0gkDl0jId812tBi3GytnHUO6WeHc4PVHYjquvs/RoDJWqGe8EsQCPx2V8i0+dbzLpwReJOOo
	oe7/ZCKC4YEKiRUFYceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOcT-0003hq-Id; Mon, 23 Mar 2020 15:04:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOZA-0000g7-5i
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 15:00:39 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E0182076A;
 Mon, 23 Mar 2020 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584975634;
 bh=sOwqdzjNyDhqWaqPuKSrOiqTlX2z5cN/FIXJ3P/xkjI=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=zCkspbRTmHUxF9l9kRPZQnxtYGdYi8+u6rRR3/9+G3jy+1Py13gdsJwR0GL7JDxJY
 DSpD2HdIdJvkPPQPC0zgJceBlBX5G9X0TWzOx+qjPICnwN5AmkaI4wgCQcYvkrDVkI
 xQOQ+kQyCeBEE5NPoHcjWNEc/LS2t4bjGP3+oOWY=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 5B36B35226C6; Mon, 23 Mar 2020 08:00:34 -0700 (PDT)
Date: Mon, 23 Mar 2020 08:00:34 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v4 01/17] cpu: Add new {add,remove}_cpu() functions
Message-ID: <20200323150034.GG3199@paulmck-ThinkPad-P72>
References: <20200323135110.30522-1-qais.yousef@arm.com>
 <20200323135110.30522-2-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323135110.30522-2-qais.yousef@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080036_303553_48276A2C 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: paulmck@kernel.org
Cc: Juergen Gross <jgross@suse.com>, Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-parisc@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-kernel@vger.kernel.org, sparclinux@vger.kernel.org,
 xen-devel@lists.xenproject.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 01:50:54PM +0000, Qais Yousef wrote:
> The new functions use device_{online,offline}() which are userspace
> safe.
> 
> This is in preparation to move cpu_{up, down} kernel users to use
> a safer interface that is not racy with userspace.
> 
> Suggested-by: "Paul E. McKenney" <paulmck@kernel.org>
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: "Paul E. McKenney" <paulmck@kernel.org>

Reviewed-by: Paul E. McKenney <paulmck@kernel.org>

> CC: Helge Deller <deller@gmx.de>
> CC: Michael Ellerman <mpe@ellerman.id.au>
> CC: "David S. Miller" <davem@davemloft.net>
> CC: Juergen Gross <jgross@suse.com>
> CC: Mark Rutland <mark.rutland@arm.com>
> CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> CC: xen-devel@lists.xenproject.org
> CC: linux-parisc@vger.kernel.org
> CC: sparclinux@vger.kernel.org
> CC: linuxppc-dev@lists.ozlabs.org
> CC: linux-arm-kernel@lists.infradead.org
> CC: x86@kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  include/linux/cpu.h |  2 ++
>  kernel/cpu.c        | 24 ++++++++++++++++++++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/include/linux/cpu.h b/include/linux/cpu.h
> index 1ca2baf817ed..cf8cf38dca43 100644
> --- a/include/linux/cpu.h
> +++ b/include/linux/cpu.h
> @@ -89,6 +89,7 @@ extern ssize_t arch_cpu_release(const char *, size_t);
>  #ifdef CONFIG_SMP
>  extern bool cpuhp_tasks_frozen;
>  int cpu_up(unsigned int cpu);
> +int add_cpu(unsigned int cpu);
>  void notify_cpu_starting(unsigned int cpu);
>  extern void cpu_maps_update_begin(void);
>  extern void cpu_maps_update_done(void);
> @@ -118,6 +119,7 @@ extern void cpu_hotplug_disable(void);
>  extern void cpu_hotplug_enable(void);
>  void clear_tasks_mm_cpumask(int cpu);
>  int cpu_down(unsigned int cpu);
> +int remove_cpu(unsigned int cpu);
>  
>  #else /* CONFIG_HOTPLUG_CPU */
>  
> diff --git a/kernel/cpu.c b/kernel/cpu.c
> index 9c706af713fb..069802f7010f 100644
> --- a/kernel/cpu.c
> +++ b/kernel/cpu.c
> @@ -1057,6 +1057,18 @@ int cpu_down(unsigned int cpu)
>  }
>  EXPORT_SYMBOL(cpu_down);
>  
> +int remove_cpu(unsigned int cpu)
> +{
> +	int ret;
> +
> +	lock_device_hotplug();
> +	ret = device_offline(get_cpu_device(cpu));
> +	unlock_device_hotplug();
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(remove_cpu);
> +
>  #else
>  #define takedown_cpu		NULL
>  #endif /*CONFIG_HOTPLUG_CPU*/
> @@ -1209,6 +1221,18 @@ int cpu_up(unsigned int cpu)
>  }
>  EXPORT_SYMBOL_GPL(cpu_up);
>  
> +int add_cpu(unsigned int cpu)
> +{
> +	int ret;
> +
> +	lock_device_hotplug();
> +	ret = device_online(get_cpu_device(cpu));
> +	unlock_device_hotplug();
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(add_cpu);
> +
>  #ifdef CONFIG_PM_SLEEP_SMP
>  static cpumask_var_t frozen_cpus;
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
