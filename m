Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F247413D129
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 01:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILbNEQfLF23rnhXHmv0dIbHz7xBz53RogStHRprk6qI=; b=e0GhKTvuR67khA
	ZINw00SKm/jmG3B6ovooDv0GFXi7xCvGVxnIDmcJnepReA0U9Op0RCwifUWy2DWNF3BjSzFruC6a3
	4VlzXqLm47xXx2KXfG2nEJJikWSCGkLqmbOJ5IYe0eyiVMCXBk19KS79bSYL0iO4Uxa5kPmGoZV65
	DxgqbjK8XHfeSxMMIN4Us/y9hv9li8rOHFcDQ7Fj6bFNFSiBs74LikJyB2napFeTs5vIfffGZH2tz
	ggjpUAvVwj6S1MMQLDcLhEm4zPt2J4oqYaksUecfTTttAqwAX7Alnx88tLzO/ieUeba1JZW2kpcfd
	Uzyme6XZtDDTrD7vcGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irt41-0000s2-IE; Thu, 16 Jan 2020 00:31:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irt3o-0000qs-1p
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 00:31:00 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irt3S-0004QP-Qv; Thu, 16 Jan 2020 01:30:35 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id B7BBB10121C; Thu, 16 Jan 2020 01:30:33 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
In-Reply-To: <20200115063410.131692-1-hsinyi@chromium.org>
References: <20200115063410.131692-1-hsinyi@chromium.org>
Date: Thu, 16 Jan 2020 01:30:33 +0100
Message-ID: <8736cgxmxi.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_163056_232627_B0804A8C 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 sparclinux@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, linux-csky@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-pm@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Stephen Boyd <swboyd@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hsin-Yi Wang <hsinyi@chromium.org> writes:

> Currently system reboots uses architecture specific codes (smp_send_stop)
> to offline non reboot CPUs. Most architecture's implementation is looping
> through all non reboot online CPUs and call ipi function to each of them. Some
> architecture like arm64, arm, and x86... would set offline masks to cpu without
> really offline them. This causes some race condition and kernel warning comes
> out sometimes when system reboots.

'some race condition and kernel warning' is pretty useless information.
Please describe exactly which kind of issues are caused by the current
mechanism. Especially the race conditions are the interesting part (the
warnings are just a consequence).

> This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would
> offline cpus in

Please read Documentation/process/submitting-patches.rst and search for
'This patch'.

> migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> checking online cpus would be an empty loop.

This does not make any sense. The issues which you are trying to solve
are going to be still there when CONFIG_HOTPLUG_CPU is disabled.

> If architecture don't enable this config, or some cpus somehow fails
> to offline, it would fallback to ipi function.

This is really a half baken solution which keeps the various pointlessly
different pseudo reboot/kexec offlining implementations around. So with
this we have yet more code which only works depending on kernel
configuration and has the issue of potentially not being able to offline
a CPU. IOW this is going to fail completely in cases where a system is
in a state which prevents regular hotplug.

The existing pseudo-offline functions have timeouts and eventually a
fallback, e.g. the NMI fallback on x86. With this proposed regular
offline solution this will just get stuck w/o a chance to force
recovery.

While I like the idea and surely agree that the ideal solution is to
properly shutdown the CPUs on reboot, we need to take a step back and
look at the minimum requirements for a regular shutdown/reboot and at
the same time have a look at the requirements for emergency shutdown and
kexec/kcrash. Having proper information about the race conditions and
warnings you mentioned would be a good starting point.

> Opt in this config for architectures that support CONFIG_HOTPLUG_CPU.

This is not opt-in. You force that on all architectures which support
CONFIG_HOTPLUG_CPU. The way we do this normally is to provide the
infrastructure first and then have separate patches (one per
architecture) enabling this, which allows the architecture maintainers
to decide individually.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
