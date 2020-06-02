Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201D61EC40F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJ4i32H63wZTlWRz8A9Rct5Bj8HOHOQJWEJm6OG8qSE=; b=YNd4A22aVKnpcn
	Et1nvPmRZf9/zTmiTacLpXyVdpnperax17ysrpfRHrA4Y46C8PqGkErm74onUmS4K/a5sXLLf+8Sl
	FkVOdnAz6XqDVy/EZu4na7z9GxDESuOBLRfpf9t/5kgl1iBUopZZwucNWI4o174zpV6FWrMm7bLOU
	BA+Rrw0rRUQyEyIK0ux2ghEoFcQb2pahRYJ+HYW6hyMdd84q0VjFHJEDteYAczyv2ggrcJXdg+qU5
	6gF/YAetXNmyrhyFoPevUNEdipZwWMD9EdANojXDpAxqJQEghn9wMGnsOga/f6mLq7Mf/TPByOrV4
	VvZY/4KZPniTkMYhTDEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDvg-0007GG-4W; Tue, 02 Jun 2020 20:54:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDvS-0007Eo-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:54:25 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jgDvL-0003XN-0L; Tue, 02 Jun 2020 22:54:15 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 4DB14100F18; Tue,  2 Jun 2020 22:54:14 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Herrenschmidt\, Benjamin" <benh@amazon.com>,
 "maz\@kernel.org" <maz@kernel.org>, "Saidi\, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <37e55e71faf76dc3db76d89c20c1bdfff942e380.camel@amazon.com>
References: <20200529015501.15771-1-alisaidi@amazon.com>
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
 <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
 <20200530174929.7bf6d5d7@why> <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
 <37e55e71faf76dc3db76d89c20c1bdfff942e380.camel@amazon.com>
Date: Tue, 02 Jun 2020 22:54:14 +0200
Message-ID: <87y2p5fatl.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_135423_072819_EC671115 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>, "Machulsky,
 Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"Herrenschmidt, Benjamin" <benh@amazon.com> writes:
> On Sun, 2020-05-31 at 12:09 +0100, Marc Zyngier wrote:
>> > The semantic of activate/deactivate (which maps to started/shutdown
>> > in the IRQ code) is that the HW resources for a given interrupt are
>> > only committed when the interrupt is activated. Trying to perform
>> > actions involving the HW on an interrupt that isn't active cannot be
>> > guaranteed to take effect.
>> > 
>> > I'd rather address it in the core code, by preventing set_affinity (and
>> > potentially others) to take place when the interrupt is not in the
>> > STARTED state. Userspace would get an error, which is perfectly
>> > legitimate, and which it already has to deal with it for plenty of
>> > other
>> > reasons.
>
> So I finally found time to dig a bit in there :) Code has changed a bit
> since last I looked. But I have memories of the startup code messing
> around with the affinity, and here it is. In irq_startup() :
>
>
> 		switch (__irq_startup_managed(desc, aff, force)) {
> 		case IRQ_STARTUP_NORMAL:
> 			ret = __irq_startup(desc);
> 			irq_setup_affinity(desc);
> 			break;
> 		case IRQ_STARTUP_MANAGED:
> 			irq_do_set_affinity(d, aff, false);
> 			ret = __irq_startup(desc);
> 			break;
> 		case IRQ_STARTUP_ABORT:
> 			irqd_set_managed_shutdown(d);
> 			return 0;
>
> So we have two cases here. Normal and managed.
>
> In the managed case, we set the affinity before startup. I feel like your
> patch might break that or am I missing something ?

It will break stuff because the affinity is not stored in case that the
interrupt is not started.

I think we can fix this in the core code but that needs more thought.
__irq_can_set_affinity() is definitely the wrong place.

Thanks,

        tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
