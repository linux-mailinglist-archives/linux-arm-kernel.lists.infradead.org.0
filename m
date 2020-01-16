Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D8F13D699
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNLiEGWVLWF9+SnFd3CYaUCis8V3AqSL8nykDQlDRLk=; b=WLZtc9RJE6y/Tj
	1kJHpZJ0VnzOh9Uan8NuLzkssyxsITUesCABFtg6IYpQMRndtpUR7/+o5Jj5MYwLdtzuMnXrPa4M8
	k8ZJ1wb00w9Z4G0gmgMATcjulMBSNR0MyMLom9/8KgW5ml/D72VYgBu5mKF5M315qZiLSxdf174oH
	pUthirdwbhJ+yTTdTooNK0FE2mtAKJzCLoixWwMVyJYA8eL6S9ehraGrFZu44pQhczPBmUT6cphc9
	RsMycg/UbIiIZhmxay4AVrVzzY7lINewsBc8tOKg5HTayh91p1YhEZOFEL/kp3aFC5Q2jcCPJqfGJ
	6/0aJY0g+uUlPwXcXoCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1JC-0003bO-Ds; Thu, 16 Jan 2020 09:19:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1Iz-0003Sh-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:19:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id n21so20948412ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 01:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DEmkOKqY6q6hAhtGO8c8rmA8wwGHpO5BilLXpdIbB7I=;
 b=WJ5IKs9fiBTVp8BuvxnKOBaru2rIXqED/Rq0yyQSdyRNzvJcbIJ8kJqtCUd+rcV6nn
 EhI+mwh5Bq9EkGM1UCZoYtKiXQJb5mUkVbl5DEbwzwiQ5eWJf/1j5Inwc5mtqTXN+8cZ
 lQKMTkatnFRaRzda7WRLP3JId4g6ZavROmaK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DEmkOKqY6q6hAhtGO8c8rmA8wwGHpO5BilLXpdIbB7I=;
 b=qiUV3/dVQIH9zscGHK8gixTuWjH06gK1h1K7fpgs7URTRqFN3rRQ+ank1B8y5oxp0+
 +LLyCbuzVsfPIjYZBhdOQOwqoHG2UInOC70RiAU7A6nPZQ3Z8HwUvMSnD78iryMrW/XC
 PPVh2XKrvq7Z7psJ43ONgUcr1aUurLYc0DQV/37TX/6wlpldFM0hT3xwiL7GbWwafChO
 t/9YqLqBH9jPLESqXK0PVrjP2V/ogQSZlh+ZSBK62MMPBVQUppXDLJQyVKMZQHT+7/jV
 mHIQO/dsVp7FQ7bbef6ZQnfwucG0GwKg0JlOaWJ46Jly0faG5d2E2w5quURAn5Wv6JPY
 BGuQ==
X-Gm-Message-State: APjAAAVDCyzbsQUbmRXI28KgqwltEh/86j3htGbYiDJcxEmXjtMRxT+3
 vT37cfyF9lE66viiIbRLZNSYV+496geAczISe8Ybdg==
X-Google-Smtp-Source: APXvYqzvaPrf1c/2YOtkHJqp95C4MJl+/6ictlNKs5rwIJmJYisKHyfz84aFv8nqE5MyfIb9iebBJBW44B4PJSvB2Ns=
X-Received: by 2002:a5d:8cd6:: with SMTP id k22mr24400602iot.283.1579166348214; 
 Thu, 16 Jan 2020 01:19:08 -0800 (PST)
MIME-Version: 1.0
References: <20200115063410.131692-1-hsinyi@chromium.org>
 <8736cgxmxi.fsf@nanos.tec.linutronix.de>
In-Reply-To: <8736cgxmxi.fsf@nanos.tec.linutronix.de>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 16 Jan 2020 17:18:41 +0800
Message-ID: <CAJMQK-jDi+AACE1Cv_hKSMq8VhGTBeh+kyHO2U4sx9w=9bO2mA@mail.gmail.com>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011909_822275_8B9E17D6 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 lkml <linux-kernel@vger.kernel.org>, sparclinux@vger.kernel.org,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-csky@vger.kernel.org, Aaro Koskinen <aaro.koskinen@nokia.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Linux PM <linux-pm@vger.kernel.org>,
 linux-xtensa@linux-xtensa.org, Stephen Boyd <swboyd@chromium.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:30 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Hsin-Yi Wang <hsinyi@chromium.org> writes:
>
> > Currently system reboots uses architecture specific codes (smp_send_stop)
> > to offline non reboot CPUs. Most architecture's implementation is looping
> > through all non reboot online CPUs and call ipi function to each of them. Some
> > architecture like arm64, arm, and x86... would set offline masks to cpu without
> > really offline them. This causes some race condition and kernel warning comes
> > out sometimes when system reboots.
>
> 'some race condition and kernel warning' is pretty useless information.
> Please describe exactly which kind of issues are caused by the current
> mechanism. Especially the race conditions are the interesting part (the
> warnings are just a consequence).
>
> > This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would
> > offline cpus in
>
> Please read Documentation/process/submitting-patches.rst and search for
> 'This patch'.
>
> > migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> > checking online cpus would be an empty loop.
>
> This does not make any sense. The issues which you are trying to solve
> are going to be still there when CONFIG_HOTPLUG_CPU is disabled.
>
> > If architecture don't enable this config, or some cpus somehow fails
> > to offline, it would fallback to ipi function.
>
> This is really a half baken solution which keeps the various pointlessly
> different pseudo reboot/kexec offlining implementations around. So with
> this we have yet more code which only works depending on kernel
> configuration and has the issue of potentially not being able to offline
> a CPU. IOW this is going to fail completely in cases where a system is
> in a state which prevents regular hotplug.
>
> The existing pseudo-offline functions have timeouts and eventually a
> fallback, e.g. the NMI fallback on x86. With this proposed regular
> offline solution this will just get stuck w/o a chance to force
> recovery.
>
> While I like the idea and surely agree that the ideal solution is to
> properly shutdown the CPUs on reboot, we need to take a step back and
> look at the minimum requirements for a regular shutdown/reboot and at
> the same time have a look at the requirements for emergency shutdown and
> kexec/kcrash. Having proper information about the race conditions and
> warnings you mentioned would be a good starting point.
>

We saw this issue on regular reboot (not panic) on arm64: If tick
broadcast and smp_send_stop() happen together and the first broadcast
arrives to some idled CPU that hasn't already executed reboot ipi to
run in spinloop, it would try to broadcast to another CPU, but that
target CPU is already marked as offline by set_cpu_online() in reboot
ipi, and a warning comes out since tick_handle_oneshot_broadcast()
would check if it tries to broadcast to offline cpus. Most of the time
the CPU getting the broadcast interrupt is already in the spinloop and
thus isn't going to receive interrupts from the broadcast timer.

[   27.032080] Set kernel.core_pattern before fs.suid_dumpable.
[   27.978628] reboot: Restarting system
[   27.978919] WARNING: CPU: 3 PID: 0 at
/mnt/host/source/src/third_party/kernel/v4.19/kernel/time/tick-broadcast.c:652
tick_handle_oneshot_broadcast+0x1f8/0x214
[   27.978932] Modules linked in: rfcomm uinput bridge stp llc
nf_nat_tftp nf_conntrack_tftp nf_nat_ftp nf_conntrack_ftp esp6 ah6
xfrm6_mode_tunnel xfrm6_mode_transport xfrm4_mode_tunnel
xfrm4_mode_transport ip6t_REJECT ip6t_ipv6header hci_uart btqca
bluetooth ipt_MASQUERADE ecdh_generic lzo_rle lzo_compress zram fuse
cros_ec_sensors_sync cros_ec_sensors_ring cros_ec_light_prox
cros_ec_sensors industrialio_triggered_buffer kfifo_buf
cros_ec_sensors_core ath10k_sdio ath10k_core ath mac80211 cfg80211
asix usbnet mii joydev
[   27.979102] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G S
  4.19.56 #79
[   27.979113] Hardware name: MediaTek krane sku176 board (DT)
[   27.979127] pstate: 00000085 (nzcv daIf -PAN -UAO)
[   27.979140] pc : tick_handle_oneshot_broadcast+0x1f8/0x214
[   27.979154] lr : tick_handle_oneshot_broadcast+0x108/0x214
[   27.979162] sp : fffffff85c851610
[   27.979171] x29: fffffff85c851670 x28: ffffff9082785510
[   27.979187] x27: ffffff90822da700 x26: ffffff90826169c8
[   27.979202] x25: ffffff9082616000 x24: 0000000000000001
[   27.979217] x23: ffffff90827854f8 x22: 000000067a6599b8
[   27.979232] x21: 0000000000000000 x20: 7fffffffffffffff
[   27.979248] x19: ffffff9082785508 x18: 0000000000000000
[   27.979263] x17: 0000000000000000 x16: 0000000000000000
[   27.979278] x15: 0000000000000000 x14: fffffff85bf08040
[   27.979293] x13: ffffff9082785000 x12: 0000000000000069
[   27.979308] x11: ffffff9082785000 x10: 0000000000000018
[   27.979323] x9 : 0000000000000010 x8 : ffffff9082615000
[   27.979338] x7 : 0000000000000000 x6 : 000000000000003f
[   27.979353] x5 : 0000000000000040 x4 : 0000000000000102
[   27.979367] x3 : 0000000000000000 x2 : 0000000000000007
[   27.979383] x1 : 0000000000000008 x0 : 0000000000000008
[   27.979399] Call trace:
[   27.979413]  tick_handle_oneshot_broadcast+0x1f8/0x214
[   27.979429]  mtk_syst_handler+0x34/0x44
[   27.979443]  __handle_irq_event_percpu+0x134/0x254
[   27.979454]  handle_irq_event_percpu+0x34/0x8c
[   27.979465]  handle_irq_event+0x48/0x78
[   27.979478]  handle_fasteoi_irq+0xd0/0x1a4
[   27.979492]  __handle_domain_irq+0x84/0xc4
[   27.979505]  gic_handle_irq+0x154/0x1a4
[   27.979516]  el1_irq+0xb0/0x128
[   27.979531]  cpuidle_enter_state+0x298/0x328
[   27.979543]  cpuidle_enter+0x30/0x40
[   27.979557]  do_idle+0x154/0x270
[   27.979569]  cpu_startup_entry+0x24/0x28
[   27.979584]  secondary_start_kernel+0x15c/0x168
[   27.979594] ---[ end trace 57ed1d1fade60372 ]---

If system supports hotplug, _cpu_down() would properly handle tasks
termination such as remove CPU from timer broadcasting by
tick_offline_cpu()...etc, as well as some interrupt handling.

https://lore.kernel.org/patchwork/patch/1117201/ is a previous attempt
to solve this issue by introducing another mask in reboot ipi function
to avoid the cpu_online_mask being looked up in too many different
places.

> > Opt in this config for architectures that support CONFIG_HOTPLUG_CPU.
>
> This is not opt-in. You force that on all architectures which support
> CONFIG_HOTPLUG_CPU. The way we do this normally is to provide the
> infrastructure first and then have separate patches (one per
> architecture) enabling this, which allows the architecture maintainers
> to decide individually.

Acked, thanks.

>
> Thanks,
>
>         tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
