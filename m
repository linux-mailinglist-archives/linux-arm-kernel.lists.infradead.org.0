Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE612BAF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 21:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfMuWSRG5Wfldq3M80asvg9vmYSe/9nna2Zi5A7Tkm8=; b=C6Ii4JIo12TMLv
	nk6IDF3s2r7aKaQ4j6kbsb3sxSBvv7pzFxExlzcIdmp+mfaMLkdZNMG75LR6NWR+e8qdkJomR1qX/
	BWsXNBB4jf5nJP+D0s1nzgMb1/j62TPQlXmIbpZBTLCSEAkGaH7aeu8/GgF6AfIIhZcalhCzATBGY
	AkET0jeQVERgdk5qsj0SX0uLjSzY4TbZHtS3XpDsbJUmAb9m2nQboG6aPwW7kzMCA/VYkTfPIepJl
	MNYcBb+APnEV3KlV5jljHUBoRPOAb2f3kbpXcf1rq0b9E68YFRpAz0sG06Sz8lSitPP5RHwBKNju0
	e9A/FdpH1W8sfW00Hq9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLgk-00054z-6F; Mon, 27 May 2019 19:53:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLgc-00054U-37
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 19:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558986810; bh=TQm1z7XV9OcXC3zOVs+6uPifYNf994Ug5KfUvl6jkw8=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=MiChMqP4U9HE88aPO9vEKcSp8Jkx39Bk5JYJZZyrLUPRveB4GmNseExAgdpO1fx5y
 LTYKRGqy2jEcgC8v6Z3aeFiISGWD+syP8+yqb0uHMXdKmXh8dw7gt/kq2CEFqTd1Eu
 7RqduuUIm5Qw2K+82XUblNp+fMCH0WN6HnaYW3wI=
Date: Mon, 27 May 2019 21:53:30 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Subject: Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
Message-ID: <20190527195330.pugb7ypvnyv32fug@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
 <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
 <20190527163117.hpealt6cttqzqdxz@core.my.home>
 <20190527172337.5qxh5qeqnul55gsb@core.my.home>
 <CAJiuCccnRCqez2uG-pU8XY4Z=5S8rDwFB3rgsBovPHY1Uxyazw@mail.gmail.com>
 <20190527193016.yxngu5grsqnctx3z@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527193016.yxngu5grsqnctx3z@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_125334_475784_FCB04ACF 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cl=E9ment,

On Mon, May 27, 2019 at 09:30:16PM +0200, verejna wrote:
> Hi Cl=E9ment,
> =

> On Mon, May 27, 2019 at 08:49:59PM +0200, Cl=E9ment P=E9ron wrote:
> > Hi Ondrej,
> > =

> > >
> > > I'm testing on Orange Pi 3.
> > >
> > > With your patches, I get kernel lockup after ~1 minute of use (ssh st=
ops
> > > responding/serial console stops responding). I don't have RC controll=
er to test
> > > the CIR. But just enabling the CIR causes kernel to hang shortly afte=
r boot.
> > >
> > > I tried booting multiple times. Other results:
> > >
> > > boot 2:
> > >
> > > - ssh hangs even before connecting (ethernet crashes/is reset)
> > >
> > > INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/4091 f=
qs=3D2437
> > > dwmac-sun8i 5020000.ethernet eth0: Reset adapter.
> > > rcu: INFO: rcu_sched detected expedited stalls on CPUs/tasks: { 0-...=
 } 5696 jiffies s: 81 root: 0x1/.
> > > rcu: blocking rcu_node structures:
> > >  rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/4091 f=
qs=3D9714
> > > rcu: INFO: rcu_sched detected expedited stalls on CPUs/tasks: { 0-...=
 } 21568 jiffies s: 81 root: 0x1/.
> > > rcu: blocking rcu_node structures:
> > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/4091 f=
qs=3D17203
> > >
> > > above messages appear regularly.
> > >
> > > boot 3:
> > >
> > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (9 GPs behind) idle=3D992/0/0x3 softirq=3D6123/6123 f=
qs=3D2600
> > >
> > >
> > > Sometimes serial console keeps working. Sometimes it locks up too (bu=
t not
> > > frequently). Storage locks up always (any program that was not run be=
fore
> > > the crash can't be started and lock up the kernel hard, programs that
> > > were executed prior, can be run again).
> > >
> > >
> > > Exactly the same kernel build on H5 seems to work (or at least I was =
not able to
> > > trigger the crash). So this seems to be limited to H6 for now.
> > >
> > > I suspect that the crash occurs sooner if I vary the light (turn on/o=
ff the table
> > > lamp light).
> > >
> > > Without your patches, everything works fine on H6, and I never see
> > > crashes/lockups.
> > >
> > > I tired physically covering the IR receiver, and that helps preventin=
g the
> > > crash. As soon as I uncover it, the crash happens again in 1s or so:
> > >
> > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (1 GPs behind) idle=3D4ea/0/0x3 softirq=3D4483/4484 f=
qs=3D2444
> > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > rcu:    0-....: (1 GPs behind) idle=3D4ea/0/0x3 softirq=3D4483/4484 f=
qs=3D9777
> > >
> > > This time I got the hung task and reboot: (probably not directly rela=
ted)
> > >
> > > INFO: task find:560 blocked for more than 120 seconds.
> > >       Not tainted 5.2.0-rc2+ #7
> > > "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this mess=
age.
> > > find            D    0   560    551 0x00000000
> > > Call trace:
> > >  __switch_to+0x6c/0x90
> > >  __schedule+0x1f4/0x578
> > >  schedule+0x28/0xa8
> > >  io_schedule+0x18/0x38
> > >  __lock_page+0x12c/0x208
> > >  pagecache_get_page+0x238/0x2e8
> > >  __get_node_page+0x6c/0x310
> > >  f2fs_get_node_page+0x14/0x20
> > >  f2fs_iget+0x70/0xc60
> > >  f2fs_lookup+0xcc/0x218
> > >  __lookup_slow+0x78/0x160
> > >  lookup_slow+0x3c/0x60
> > >  walk_component+0x1e4/0x2e0
> > >  path_lookupat.isra.13+0x5c/0x1e0
> > >  filename_lookup.part.23+0x6c/0xe8
> > >  user_path_at_empty+0x4c/0x60
> > >  vfs_statx+0x78/0xd8
> > >  __se_sys_newfstatat+0x24/0x48
> > >  __arm64_sys_newfstatat+0x18/0x20
> > >  el0_svc_handler+0x9c/0x170
> > >  el0_svc+0x8/0xc
> > > Kernel panic - not syncing: hung_task: blocked tasks
> > > CPU: 1 PID: 34 Comm: khungtaskd Not tainted 5.2.0-rc2+ #7
> > > Hardware name: OrangePi 3 (DT)
> > > Call trace:
> > >  dump_backtrace+0x0/0xf8
> > >  show_stack+0x14/0x20
> > >  dump_stack+0xa8/0xcc
> > >  panic+0x124/0x2dc
> > >  proc_dohung_task_timeout_secs+0x0/0x40
> > >  kthread+0x120/0x128
> > >  ret_from_fork+0x10/0x18
> > > SMP: stopping secondary CPUs
> > > Kernel Offset: disabled
> > > CPU features: 0x0002,20002000
> > > Memory Limit: none
> > > Rebooting in 3 seconds..
> > >
> > >
> > > Meanwhile H5 based board now runs for 15 minutes without issues.
> > >
> > > So to sum up:
> > >
> > > - these crashes are definitely H6 IR related
> > >   - the same kernel, on H5 works
> > >   - covering the sensor prevents the crashes on H6
> > >
> > > So we should probably hold on with the series, until this is figured =
out.
> > =

> > Thanks for testing, but I think it's more hardware related.
> > It seems that your IR is flooded or misconfigured for your board.
> > Could you add a simple print in the "sunxi_ir_irq"
> =

> Yes, I get flood of IRQs with status =3D 0x30. (after I turn on the lamp,
> but it persists even after I turn it off and cover the IR sensor).

Interestingly, status also contains RAC, and it's 0 in this case. So the =

interrupt if firing with "No available data in RX FIFO" repeatedly. Regardl=
ess
of input.

So there's something else up.

regards,
	o.

> That's weird, because on H6 in CIR_RXSTA, bit 5 is undefined but correspo=
nding =

> bit in CIR_RXINT is DRQ_EN (RX FIFO DMA Enable)
> =

> So I'm not sure what it could be flooded with and why IRQs keep being
> fired, even with no sensor input after the FIFO is read.
> =

> regards,
> 	o.
> =

> > If it's confirmed, maybe tweak the threshold configuration or
> > implement the new active_threshold will help.
> > =

> > With my hardware Beelink GS1 and on Jernej's board (A64) there is no is=
sue.
> > =

> > I will disable all the other H6 boards until someone test it.
> > =

> > Regards,
> > Cl=E9ment
> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
