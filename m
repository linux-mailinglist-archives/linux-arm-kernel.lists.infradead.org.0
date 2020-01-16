Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772F913D8AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqg9NnvE88+lJfvxDafpmyZlIIEgc8v/1wy3vXq7CXw=; b=dlDH3BXDJQOu0G
	N0DKPEV5QX3kIveVBiWyIoiC3x68LRrjMYo4X5wjIq+2kMJG79aedfiSqt6dQiuyoMWNJ6MQBD/ZI
	0SmAXaGojSbQObeNcwGwAltTtv6iM6AzmMsIQEDKLU4bRp9UrhgAsQ7z9og/GtvkPPLCNw7711BmW
	l8FnXe34aUB1MkSMwmZYd2JTKILjh9ygXjYZzX3wXptRpdB1n0RdSoDv/INEuqZIUAX9HilLtOV9K
	GcS5lhFuK/Uar0iKmWgdVVmSN4Z6L49kRJF+S3+68XV2UjSQqr4yGGGSFvgo7043dmxtYnfMnHXaH
	ZgOGyOKf6sy0qK024CSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is33f-0006og-WD; Thu, 16 Jan 2020 11:11:28 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is33T-0006l8-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:11:20 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1is33A-00050C-K7; Thu, 16 Jan 2020 12:10:56 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 3D46D101B66; Thu, 16 Jan 2020 12:10:56 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
In-Reply-To: <CAJMQK-jDi+AACE1Cv_hKSMq8VhGTBeh+kyHO2U4sx9w=9bO2mA@mail.gmail.com>
References: <20200115063410.131692-1-hsinyi@chromium.org>
 <8736cgxmxi.fsf@nanos.tec.linutronix.de>
 <CAJMQK-jDi+AACE1Cv_hKSMq8VhGTBeh+kyHO2U4sx9w=9bO2mA@mail.gmail.com>
Date: Thu, 16 Jan 2020 12:10:56 +0100
Message-ID: <87h80vwta7.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_031115_361810_2D523EBD 
X-CRM114-Status: GOOD (  12.16  )
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

Hsin-Yi Wang <hsinyi@chromium.org> writes:
> On Thu, Jan 16, 2020 at 8:30 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> We saw this issue on regular reboot (not panic) on arm64: If tick
> broadcast and smp_send_stop() happen together and the first broadcast
> arrives to some idled CPU that hasn't already executed reboot ipi to
> run in spinloop, it would try to broadcast to another CPU, but that
> target CPU is already marked as offline by set_cpu_online() in reboot
> ipi, and a warning comes out since tick_handle_oneshot_broadcast()
> would check if it tries to broadcast to offline cpus. Most of the time
> the CPU getting the broadcast interrupt is already in the spinloop and
> thus isn't going to receive interrupts from the broadcast timer.

The timer broadcasting is obviously broken by the existing reboot unplug
mechanism as the outgoing CPU should remove itself from the broadcast.

Just addressing the broadcast issue is not sufficient as there are tons
of other places which rely on consistency of the various cpu masks.

> If system supports hotplug, _cpu_down() would properly handle tasks
> termination such as remove CPU from timer broadcasting by
> tick_offline_cpu()...etc, as well as some interrupt handling.

Well, emphasis on 'if system supports hotplug'. If not, then you are
back to square one. On ARM64 hotplug is selectable by a config option.

So either we mandate HOTPLUG_CPU for SMP and get rid of all the
ifdeffery or we need to have a mechanism which works on !HOTPLUG_CPU as
well.

That whole reboot/shutdown stuff is an unpenetrable mess of notifiers
and architecture hackery, so something generic and understandable is
really required.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
