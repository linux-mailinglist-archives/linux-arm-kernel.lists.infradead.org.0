Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097702D620
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/yhRTjqUTMXTy5aK4dPgTzDPRurF7XRbSBGtJWoToHM=; b=iEjFZ9rNOuQEphcT8yi7ghMj4
	9DulUqaFiI0z/2eo2N8048j3wrXxX90/zMHB5gQywiof4Di6FLXBZIqKHs5UojLaELewXgRiPf2Dj
	oQx9W54Hc6GtpVqHJM9cI5wjItCUN1FNY1JQD2BeaCi95kEJpqCTvYANehWC2GFS/Yqj0seqEPENA
	/2zD6SvXAvgLHg1tISSldVhk6DjUtJOFgyh/aredr4P47b5wcuTrJF96ngDkQ902ux8ooI5hDNj52
	6vzzjhAzeVEeyX5zsYLzv37+1oPiUwwK4zWRVmAfXjF0YSao0tBAY8NTMHiIlsBoIJZL8CmLTdJ0R
	3NUv5CBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsse-00045O-LC; Wed, 29 May 2019 07:20:12 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVssT-0003SX-Be
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:20:03 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 740E3240014;
 Wed, 29 May 2019 07:19:46 +0000 (UTC)
Date: Wed, 29 May 2019 09:19:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Subject: Re: [linux-sunxi] Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
Message-ID: <20190529071945.mrbgurcvl2jvpm5r@flea>
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
 <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
 <20190527163117.hpealt6cttqzqdxz@core.my.home>
 <20190527172337.5qxh5qeqnul55gsb@core.my.home>
 <CAJiuCccnRCqez2uG-pU8XY4Z=5S8rDwFB3rgsBovPHY1Uxyazw@mail.gmail.com>
 <20190527193016.yxngu5grsqnctx3z@core.my.home>
 <20190527195330.pugb7ypvnyv32fug@core.my.home>
 <CAJiuCccpnEqw_tGXST+WtGmZLbE+=wN1Hn9HKrk1+4WsW-abiA@mail.gmail.com>
 <20190528180447.zlrdfmn73fntnf4n@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190528180447.zlrdfmn73fntnf4n@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002001_716289_9EA08C52 
X-CRM114-Status: GOOD (  34.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============8465683024680271823=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8465683024680271823==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o7ly3ahra6ipavvh"
Content-Disposition: inline


--o7ly3ahra6ipavvh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2019 at 08:04:47PM +0200, Ond=C5=99ej Jirman wrote:
> Hello Cl=C3=A9ment,
>
> On Tue, May 28, 2019 at 06:21:19PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> > Hi Ond=C5=99ej,
> >
> > On Mon, 27 May 2019 at 21:53, 'Ond=C5=99ej Jirman' via linux-sunxi
> > <linux-sunxi@googlegroups.com> wrote:
> > >
> > > Hi Cl=C3=A9ment,
> > >
> > > On Mon, May 27, 2019 at 09:30:16PM +0200, verejna wrote:
> > > > Hi Cl=C3=A9ment,
> > > >
> > > > On Mon, May 27, 2019 at 08:49:59PM +0200, Cl=C3=A9ment P=C3=A9ron w=
rote:
> > > > > Hi Ondrej,
> > > > >
> > > > > >
> > > > > > I'm testing on Orange Pi 3.
> > > > > >
> > > > > > With your patches, I get kernel lockup after ~1 minute of use (=
ssh stops
> > > > > > responding/serial console stops responding). I don't have RC co=
ntroller to test
> > > > > > the CIR. But just enabling the CIR causes kernel to hang shortl=
y after boot.
> > > > > >
> > > > > > I tried booting multiple times. Other results:
> > > > > >
> > > > > > boot 2:
> > > > > >
> > > > > > - ssh hangs even before connecting (ethernet crashes/is reset)
> > > > > >
> > > > > > INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/=
4091 fqs=3D2437
> > > > > > dwmac-sun8i 5020000.ethernet eth0: Reset adapter.
> > > > > > rcu: INFO: rcu_sched detected expedited stalls on CPUs/tasks: {=
 0-... } 5696 jiffies s: 81 root: 0x1/.
> > > > > > rcu: blocking rcu_node structures:
> > > > > >  rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/=
4091 fqs=3D9714
> > > > > > rcu: INFO: rcu_sched detected expedited stalls on CPUs/tasks: {=
 0-... } 21568 jiffies s: 81 root: 0x1/.
> > > > > > rcu: blocking rcu_node structures:
> > > > > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (1 GPs behind) idle=3D64a/0/0x3 softirq=3D4091/=
4091 fqs=3D17203
> > > > > >
> > > > > > above messages appear regularly.
> > > > > >
> > > > > > boot 3:
> > > > > >
> > > > > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (9 GPs behind) idle=3D992/0/0x3 softirq=3D6123/=
6123 fqs=3D2600
> > > > > >
> > > > > >
> > > > > > Sometimes serial console keeps working. Sometimes it locks up t=
oo (but not
> > > > > > frequently). Storage locks up always (any program that was not =
run before
> > > > > > the crash can't be started and lock up the kernel hard, program=
s that
> > > > > > were executed prior, can be run again).
> > > > > >
> > > > > >
> > > > > > Exactly the same kernel build on H5 seems to work (or at least =
I was not able to
> > > > > > trigger the crash). So this seems to be limited to H6 for now.
> > > > > >
> > > > > > I suspect that the crash occurs sooner if I vary the light (tur=
n on/off the table
> > > > > > lamp light).
> > > > > >
> > > > > > Without your patches, everything works fine on H6, and I never =
see
> > > > > > crashes/lockups.
> > > > > >
> > > > > > I tired physically covering the IR receiver, and that helps pre=
venting the
> > > > > > crash. As soon as I uncover it, the crash happens again in 1s o=
r so:
> > > > > >
> > > > > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (1 GPs behind) idle=3D4ea/0/0x3 softirq=3D4483/=
4484 fqs=3D2444
> > > > > > rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> > > > > > rcu:    0-....: (1 GPs behind) idle=3D4ea/0/0x3 softirq=3D4483/=
4484 fqs=3D9777
> > > > > >
> > > > > > This time I got the hung task and reboot: (probably not directl=
y related)
> > > > > >
> > > > > > INFO: task find:560 blocked for more than 120 seconds.
> > > > > >       Not tainted 5.2.0-rc2+ #7
> > > > > > "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables thi=
s message.
> > > > > > find            D    0   560    551 0x00000000
> > > > > > Call trace:
> > > > > >  __switch_to+0x6c/0x90
> > > > > >  __schedule+0x1f4/0x578
> > > > > >  schedule+0x28/0xa8
> > > > > >  io_schedule+0x18/0x38
> > > > > >  __lock_page+0x12c/0x208
> > > > > >  pagecache_get_page+0x238/0x2e8
> > > > > >  __get_node_page+0x6c/0x310
> > > > > >  f2fs_get_node_page+0x14/0x20
> > > > > >  f2fs_iget+0x70/0xc60
> > > > > >  f2fs_lookup+0xcc/0x218
> > > > > >  __lookup_slow+0x78/0x160
> > > > > >  lookup_slow+0x3c/0x60
> > > > > >  walk_component+0x1e4/0x2e0
> > > > > >  path_lookupat.isra.13+0x5c/0x1e0
> > > > > >  filename_lookup.part.23+0x6c/0xe8
> > > > > >  user_path_at_empty+0x4c/0x60
> > > > > >  vfs_statx+0x78/0xd8
> > > > > >  __se_sys_newfstatat+0x24/0x48
> > > > > >  __arm64_sys_newfstatat+0x18/0x20
> > > > > >  el0_svc_handler+0x9c/0x170
> > > > > >  el0_svc+0x8/0xc
> > > > > > Kernel panic - not syncing: hung_task: blocked tasks
> > > > > > CPU: 1 PID: 34 Comm: khungtaskd Not tainted 5.2.0-rc2+ #7
> > > > > > Hardware name: OrangePi 3 (DT)
> > > > > > Call trace:
> > > > > >  dump_backtrace+0x0/0xf8
> > > > > >  show_stack+0x14/0x20
> > > > > >  dump_stack+0xa8/0xcc
> > > > > >  panic+0x124/0x2dc
> > > > > >  proc_dohung_task_timeout_secs+0x0/0x40
> > > > > >  kthread+0x120/0x128
> > > > > >  ret_from_fork+0x10/0x18
> > > > > > SMP: stopping secondary CPUs
> > > > > > Kernel Offset: disabled
> > > > > > CPU features: 0x0002,20002000
> > > > > > Memory Limit: none
> > > > > > Rebooting in 3 seconds..
> > > > > >
> > > > > >
> > > > > > Meanwhile H5 based board now runs for 15 minutes without issues.
> > > > > >
> > > > > > So to sum up:
> > > > > >
> > > > > > - these crashes are definitely H6 IR related
> > > > > >   - the same kernel, on H5 works
> > > > > >   - covering the sensor prevents the crashes on H6
> > > > > >
> > > > > > So we should probably hold on with the series, until this is fi=
gured out.
> > > > >
> > > > > Thanks for testing, but I think it's more hardware related.
> > > > > It seems that your IR is flooded or misconfigured for your board.
> > > > > Could you add a simple print in the "sunxi_ir_irq"
> > > >
> > > > Yes, I get flood of IRQs with status =3D 0x30. (after I turn on the=
 lamp,
> > > > but it persists even after I turn it off and cover the IR sensor).
> > >
> > > Interestingly, status also contains RAC, and it's 0 in this case. So =
the
> > > interrupt if firing with "No available data in RX FIFO" repeatedly. R=
egardless
> > > of input.
> > >
> > > So there's something else up.
> >
> > Really weird indeed...
> >
> > I have pushed a new version, where I didn't enabled the support for
> > others H6 board and the cover letter include a link to this thread.
> >
> > It would be great if other sunxi users could test this series, to
> > check if this issue in present in other OPi3 / Pine H64.
>
> I don't know if this is enough. I'd rather prefer if the driver has a way
> of detecting this situation and shutting the module down, at the very lea=
st,
> instead of taking down the entire system with IRQ flood.
>
> It may be detectable by checking RAC =3D=3D 0 when RX FIFO available inte=
rrupt
> flag is set.
>
> Otherwise, this will eventually be forgotten (cover letters are not even =
stored
> in git), and someone will fall into the trap again, after enabling r_ir on
> their board, and end up chasing their tail for a day. I've initially only=
 found
> this is IR driver issue after a long unpleasant debugging session, chasin=
g other
> more obvious ideas (as when this happens there's absolutely nothing in th=
e log
> indicating this is IR issue).

Returning IRQ_NONE in the handler will disable the interrupt line
after 100,000 (I think?) occurences. That might be a good workaround,
but we definitely want to have a comment there :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o7ly3ahra6ipavvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO4ykQAKCRDj7w1vZxhR
xb1NAQDNa15Jo+iKDcJUUbYL1BxtfxSwU8hyju1duEPWEdh9IgEAhopDq0liLqdG
T92UnkB3/xmbiRXIsrutMI+zxSNBvgU=
=MPUW
-----END PGP SIGNATURE-----

--o7ly3ahra6ipavvh--


--===============8465683024680271823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8465683024680271823==--

