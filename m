Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639B1C9322
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 22:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pA8yxwGT1A0PUkknpqjXmuzF4or5QUdjJNx0iTCED5s=; b=s1+nVgXdM6AbRN
	6U/WeebItmFQl0DNxV+b282YhMn/JLbKOr3aYKG0QaQFw6xgG/WpPX84pVw24ZCnRuQgMdiFGvhGT
	4Wvi/bauZB5mWFBPxr2FgVzlnuq1I9bGxrJ2awHWQ5T5R+122db4bfIedyvcv03usY6FcDVuEChvc
	qMLiBpzqshaw8CgUFK/9X48M7VV7niaIdpyEglpWYWfn1G2eprUIHB/seB9TNGf98hkjzTt7mf++t
	/Nf2ycJlyt+YDgbSSDEJWs0W04T0YZucmkjTMkNOFXrEkaGMAGat4zmFN4AZdUvwpByTMY/W6Ri4p
	erup3NPgp6Fg8kAf0Meg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFli3-00075L-Rc; Wed, 02 Oct 2019 20:58:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFlhx-00074S-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 20:58:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id a2so195010pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 13:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KX5XeevGScIhOFues3GQkV78ozucGw/LYZ1l8L5X6bo=;
 b=YM7PrqwY/F7Vm9PudRT17T2mqcMDRwHbIT7qw3mpkzdEEzHkANg4PLltdxVjuLFB4q
 mOMigow1C99Fxn3258qWATdkH6FCy/iw8I1WAaM+BP4aM7NWNDxHcJANq1Drp3mh+m2H
 /aEO9TVSFVtczdY6PmO9rseb3o8Dna0PVSt1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KX5XeevGScIhOFues3GQkV78ozucGw/LYZ1l8L5X6bo=;
 b=rh50MtZZmtzU/9bJC1Zowvf/DwMlBs+hU0DeqhLERhiERqh1wIlo8ZfMLIPbEO+i4k
 wXoCqlzxMNFVhBeZhkgph2JCaK2Q8BDEyqC0wiSpYSjlbfL/Kca4YkVrIpQ+37bHlXG9
 ID4/FBYJprRImN8SqsGg2ywZttyWQq9S/XBpAI5NGkQqKDjjyyHHMEMoxUX9jlNn6wYl
 RHaJP7jaBPgsWyRbyYhKJw12tuGZ4D1K4LrGWAyi7ggEoKKaKuewXaD39L1R/hdGtq6B
 OAPdmQo2bkAWUS+bfNgSnVjSUDtU3aJL+kOnNof97V8bu9bP7agTZjf2FW+CJ7d1Q5jo
 m4AQ==
X-Gm-Message-State: APjAAAVBgwAkgeMsRfDTIoFhTRPVG4jAdQb5dIQXgNuk+sNIAdZR182V
 KYfSyB5vP6g7A96+1+Q7DzGJzg==
X-Google-Smtp-Source: APXvYqyKNOmRPkS1Q8AKw0jUMUMu27C3e3zFkbZCALS8GZ9yijv6oqy5W8ctOfywkUEq/6vs+Euvuw==
X-Received: by 2002:aa7:97b0:: with SMTP id d16mr7065724pfq.54.1570049927960; 
 Wed, 02 Oct 2019 13:58:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p190sm354504pfb.160.2019.10.02.13.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 13:58:47 -0700 (PDT)
Date: Wed, 2 Oct 2019 13:58:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <201910021355.E578D2FFAF@keescook>
References: <20191002123538.22609-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002123538.22609-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_135849_563390_1DA7F712 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 01:35:38PM +0100, Will Deacon wrote:
> Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
> calling CPU in an infinite loop, but with interrupts and preemption
> enabled. From this state, userspace can continue to be scheduled,
> despite the system being "dead" as far as the kernel is concerned. This
> is easily reproducible on arm64 when booting with "nosmp" on the command
> line; a couple of shell scripts print out a periodic "Ping" message
> whilst another triggers a crash by writing to /proc/sysrq-trigger:
> 
>   | sysrq: Trigger a crash
>   | Kernel panic - not syncing: sysrq triggered crash
>   | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
>   | Hardware name: linux,dummy-virt (DT)
>   | Call trace:
>   |  dump_backtrace+0x0/0x148
>   |  show_stack+0x14/0x20
>   |  dump_stack+0xa0/0xc4
>   |  panic+0x140/0x32c
>   |  sysrq_handle_reboot+0x0/0x20
>   |  __handle_sysrq+0x124/0x190
>   |  write_sysrq_trigger+0x64/0x88
>   |  proc_reg_write+0x60/0xa8
>   |  __vfs_write+0x18/0x40
>   |  vfs_write+0xa4/0x1b8
>   |  ksys_write+0x64/0xf0
>   |  __arm64_sys_write+0x14/0x20
>   |  el0_svc_common.constprop.0+0xb0/0x168
>   |  el0_svc_handler+0x28/0x78
>   |  el0_svc+0x8/0xc
>   | Kernel Offset: disabled
>   | CPU features: 0x0002,24002004
>   | Memory Limit: none
>   | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
>   |  Ping 2!
>   |  Ping 1!
>   |  Ping 1!
>   |  Ping 2!
> 
> The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
> local interrupts are disabled in 'smp_send_stop()'.
> 
> Disable preemption in 'panic()' before re-enabling interrupts.

Is this perhaps the correct solution for what commit c39ea0b9dd24 ("panic:
avoid the extra noise dmesg") was trying to fix?

Either way:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: <stable@vger.kernel.org>
> Link: https://lore.kernel.org/r/BX1W47JXPMR8.58IYW53H6M5N@dragonstone
> Reported-by: Xogium <contact@xogium.me>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  kernel/panic.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/kernel/panic.c b/kernel/panic.c
> index 47e8ebccc22b..f470a038b05b 100644
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -180,6 +180,7 @@ void panic(const char *fmt, ...)
>  	 * after setting panic_cpu) from invoking panic() again.
>  	 */
>  	local_irq_disable();
> +	preempt_disable_notrace();
>  
>  	/*
>  	 * It's possible to come here directly from a panic-assertion and
> -- 
> 2.23.0.444.g18eeb5a265-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
