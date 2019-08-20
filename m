Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145195D2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmhRkElmkIumbIkgBP1i2/gitEKPlNl1RvbS+QxcZRM=; b=cxR+Ok5tzeZkCq
	4yCCC4wG6mPXLNU53o3mMzSo+i3JZJLzAruyZPX174lqY4UZ4irMJI8wj3k07ZnU87WDC2+WgH4cJ
	oGLv6DqX3gW6K1Fuqou7FMKzhY2KqbTZb0idFBQXdkr2WNOrvSlfI++nBBsdc+fqhV+ekbxO+Qju6
	27PkyIMNmbsgWJibpQE9KXFLH9RyoseVBMsa76GIWY6oAzHitURKwGvMBZ+dJmFzIh6/x6Gi09Nh5
	nhI1ext8d0f7fHH8D8HK7x+2IW8jzKUWLzLmmZQPt6H2FUh4z3giAXSkrBgmUl8p+YCW97QaCPDB5
	qrG50fTBQ/FTjaBbp9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Fb-0005Kj-U6; Tue, 20 Aug 2019 11:24:32 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02FO-0005KJ-NB
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:24:20 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i02FB-000394-HA; Tue, 20 Aug 2019 13:24:05 +0200
Date: Tue, 20 Aug 2019 13:24:03 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH RFC] smp: Add cpu unstopped mask for
 smp_send_stop/stop_other_cpus
In-Reply-To: <20190820100843.3028-1-hsinyi@chromium.org>
Message-ID: <alpine.DEB.2.21.1908201321200.2223@nanos.tec.linutronix.de>
References: <20190820100843.3028-1-hsinyi@chromium.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_042418_903834_4750B3D3 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin \)" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Stephen Boyd <swboyd@chromium.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019, Hsin-Yi Wang wrote:

> In arm/arm64/x86, reboot IPI function uses CPU online mask to let
> primary CPU know how many secondary CPUs it has to wait for in
> smp_send_stop()/native_stop_other_cpus().
> 
> However, sometimes this would trigger unnecessary warnings, since
> interrupts and tasks might fall on a CPU that has already executed
> the reboot ipi function. This is fine since CPU is already in spinloop.
> But warnings are generated since it finds that the CPU is marked as
> offiline. The warnings are supposed to catch failures in normal hotplug
> offline CPUs, and reboot isn't a regular hotplug. So instead of reusing
> online masks, we should use a new mask in reboot IPI functions to do the
> work.
> 
> Take tick broadcast for example. If broadcast and smp_send_stop()
> happen together, most of the time, the CPU getting earliest broadcast
> is already in spinloop and thus won't do anything. If the first
> broadcast arrives to CPU that hasn't already executed reboot ipi, it
> would try to IPI another CPU, but the CPU is already marked as offline,
> and warning comes out:
> 
> [   22.481523] reboot: Restarting system
> [   22.481608] WARNING: CPU: 4 PID: 0 at ...

That is really the complete wrong approach. There is no valid reason that a
regular reboot needs to use a shortcut homebrewn variant of stopping CPUs.

The proper solution is to restrict this mechansim to emergency reboots and
let the normal reboot go through the regular CPU hotplug mechanism. That
avoids all that duct tape which is just bound to break tomorrow again.

In case of an emergency reboot, we really do not care about any extra stuff
triggered. The machine is hosed already.

Thanks

	tglx



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
