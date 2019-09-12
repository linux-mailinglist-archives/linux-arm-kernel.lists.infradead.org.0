Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E65B08DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MX9vCa6t1VVx9/4s1cLtdQkB2z5w2xfInyfQpNVVQO4=; b=Ht2Dbk14D0M//b
	p2b6bmpZMny+PkNPctpCV9bzx8Ex0GEcuWZ6V+5kWAHPtKXF3Q/ELZhJTcYhEiCwfKUORT+OJI9bk
	dWl5t96fPWnBoHDEEpIJROQNuPdMRkbGsxm5FzNrpbZ7LBxj0sCC6dhX7fM2lG8U71CqRIUZr8OOs
	P7lHUWif4dvTbES0JW7FR/muTNcnAyD1IGIiyhLyl7KjScM9Vey30prOJSaSYR8Qfo2njgsA63Ck1
	uZmdlfsLX5imCInMj3tz+GeZYIVkeaUHiQdkrMxLbIYzeXUQ7OrdUbMqnQfrOYyzy7skxCaeJgll4
	0UeLn5bFiGN5NT0h7x1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8IgI-0004iV-6Q; Thu, 12 Sep 2019 06:34:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ifz-0004i5-UY
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 06:33:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8Ifv-0002vC-Sp; Thu, 12 Sep 2019 08:33:51 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8Ifv-00085j-0O; Thu, 12 Sep 2019 08:33:51 +0200
Date: Thu, 12 Sep 2019 08:33:50 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Message-ID: <20190912063350.iavsyx7awdn6jezz@pengutronix.de>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VI1PR04MB70235FD928F65235B2252C6CEEB90@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <c0ddd111-5b2c-080f-373e-a595f5d2e386@televic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0ddd111-5b2c-080f-373e-a595f5d2e386@televic.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_233356_296383_94CBC4EB 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "thesven73@gmail.com" <thesven73@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[adding Lucas to Cc:]

Hello,

On Wed, Sep 04, 2019 at 02:26:17PM +0000, Jurgen Lambrecht wrote:
> On 9/3/19 4:48 PM, Leonard Crestez wrote:
> > On 03.09.2019 17:32, Jurgen Lambrecht wrote:
> >> On 9/3/19 7:57 AM, Robin Gong wrote:
> >>
> >>>> And that are the last commits on drivers/dma/imx-sdma.c for my 4.19.=
x+fslc
> >>>> branch. But I have already tried 5.1.x+fslc, and it also got stuck.
> >>> Sorry, I can't reproduce your issue on Linux 5.3-rc6 with 'CONFIG_SLO=
B=3Dy' and
> >>> SDMA firmware built in kernel, Could you have a try on our imx6ul-14x=
14-evk
> >>> board with Linux 5.3-rc6 directly(no any patch needed)?
> >> This works on our own board (with imx6ul)!
> > Something seems to be wrong with the fslc tree, using 5.1.x+fslc at
> > latest commit cd1d083333e76e03d16f015c23f1f1b8c8637381 I can reproduce
> > the issue on imx6ul-14x14-evk board.
> >
> > Running without SLOB and builtin firmware it's fine.
> >
> > I couldn't reproduce with latest 4.19.x+fslc (currently at commit
> > 91d5756ab9096bbec256115d1d6b85f5d7139f85), maybe some additional SDMA
> > patches were applied which fixed this issue?
> =

> My 4.19.x+fslc was a 4.19.56 (cda746ffc).
> =

> Now I updated to your version 4.19.66, and it does not hang anymore, but =

> I get a *kernel panic* (oops) (so with sdma FW and with the SLOB =

> allocator). Also when I remove earlycon and update the dts not to enable =

> sdma on the uart, it still panics. Also with our patches on top kernel =

> panics. To be completely sure, I compiled 4.19.66+fslc (so =

> 91d5756ab9096bbec256115d1d6b85f5d7139f85) with imx_v6_v7_defconfig =

> (instead of our minimal defconfig) and then it panics half of the time =

> (see below).
> =

> With SLUB, it works. And with SLOB without sdma it also works!
> =

> Here the kernel panic log:
> =

> [=A0=A0=A0 0.971298] io scheduler noop registered (default)
> [=A0=A0=A0 1.045927] imx-sdma 20ec000.sdma: loaded firmware 3.5
> [=A0=A0=A0 1.060382] console [ttymxc0] enabled
> [=A0=A0=A0 1.064199] bootconsole [ec_imx6q0] disabled
> [=A0=A0=A0 1.104663] Unable to handle kernel paging request at virtual ad=
dress ffffffe8
> [=A0=A0=A0 1.112035] pgd =3D (ptrval)
> [=A0=A0=A0 1.114772] [ffffffe8] *pgd=3D9ffff841, *pte=3D00000000, *ppte=
=3D00000000
> [=A0=A0=A0 1.121138] Internal error: Oops: 27 [#1] PREEMPT ARM
> [=A0=A0=A0 1.126212] Modules linked in:
> [=A0=A0=A0 1.129305] CPU: 0 PID: 1 Comm: swapper Not tainted 4.19.66-tele=
vic-rail-33.97.1802-00072-g39a835ebea4c #2
> [=A0=A0=A0 1.138979] Hardware name: Freescale i.MX6 Ultralite (Device Tre=
e)
> [=A0=A0=A0 1.145197] PC is at alloc_vmap_area+0x140/0x3ec
> [=A0=A0=A0 1.149836] LR is at 0x1000
> [=A0=A0=A0 1.152650] pc : [<c01cc150>]=A0=A0=A0 lr : [<00001000>]=A0=A0=
=A0 psr: 00000053
> [=A0=A0=A0 1.158937] sp : df055cb0=A0 ip : 00009000=A0 fp : ff800000
> [=A0=A0=A0 1.164183] r10: 00000001=A0 r9 : c0a74204=A0 r8 : 00000001
> [=A0=A0=A0 1.169430] r7 : c0a74204=A0 r6 : ffffffff=A0 r5 : 00000001=A0 r=
4 : 00009000
> [=A0=A0=A0 1.175980] r3 : 00000000=A0 r2 : 00000000=A0 r1 : c0a11df0=A0 r=
0 : e0876000
> [=A0=A0=A0 1.182533] Flags: nzcv=A0 IRQs on=A0 FIQs off=A0 Mode SVC_32=A0=
 ISA ARM=A0 Segment none
> [=A0=A0=A0 1.189778] Control: 10c53c7d=A0 Table: 80004059=A0 DAC: 00000051
> [=A0=A0=A0 1.195546] Process swapper (pid: 1, stack limit =3D 0x(ptrval))
> [=A0=A0=A0 1.201399] Stack: (0xdf055cb0 to 0xdf056000)
> [=A0=A0=A0 1.205785] 5ca0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 e0800000 00=
000000 e0809000 e0800000
> [=A0=A0=A0 1.213993] 5cc0: 00000000 df2ed640 df2d4d80 b65d4d11 ffffffff 0=
0009000 df2ed5c0 00000022
> [=A0=A0=A0 1.222202] 5ce0: 006080c0 00000001 e0800000 c0a03048 df2d4d80 c=
01cc490 ffffffff 006080c0
> [=A0=A0=A0 1.230412] 5d00: df2c1980 00008000 ffffffff ffffffff 006080c0 d=
f2d4d80 00000001 c01cd870
> [=A0=A0=A0 1.238621] 5d20: ff800000 ffffffff 006080c0 c0382754 c0a12028 c=
0382754 ffffffff 00000000
> [=A0=A0=A0 1.246829] 5d40: df2c1940 df2d4d80 00000001 c01cda50 006080c0 0=
000024f 00000000 ffffffff
> [=A0=A0=A0 1.255038] 5d60: c0382754 00000000 df2c1940 df2ed540 00000100 c=
01cdb1c ffffffff c0382754
> [=A0=A0=A0 1.263247] 5d80: df2d4d80 c0382754 df2d4d80 df2c1940 00000000 d=
f2d4d90 00000000 c03808d4
> [=A0=A0=A0 1.271457] 5da0: df2c1940 c037f4f0 c037f514 df2ec640 00000000 c=
037f520 df2c1940 df2d4d80
> [=A0=A0=A0 1.279666] 5dc0: c0a12030 c037d7d4 006000c0 00100000 00000013 c=
05ee130 00000200 df2c1940
> [=A0=A0=A0 1.287875] 5de0: 00000000 00000000 df2d4d90 00000000 00000001 c=
0a03048 df2d4d80 c02131cc
> [=A0=A0=A0 1.296082] 5e00: 00000000 c01f5640 00000000 b65d4d11 00000000 0=
0000000 df2d4d80 c0a03048
> [=A0=A0=A0 1.304290] 5e20: 00000001 00000000 df2c194c 00000001 df2d4d80 c=
02134a8 df2d4e70 00000001
> [=A0=A0=A0 1.312498] 5e40: 00000000 b65d4d11 c09005a4 c01f4bb8 df2d4df8 c=
02129a4 df2c19b0 b65d4d11
> [=A0=A0=A0 1.320707] 5e60: df2c1980 df2c1940 00000000 c0a03048 00000001 d=
f2c19b0 df2c194c 00000001
> [=A0=A0=A0 1.328915] 5e80: df2d4d80 c037f138 c037d7d4 c037f514 df2c1940 c=
0a1cd48 00100000 c05fcbcc
> [=A0=A0=A0 1.337124] 5ea0: 0000000d df29f5f0 c09005a4 b65d4d11 df29d740 d=
f2c3cc0 c0a1cd48 c0a1cd48
> [=A0=A0=A0 1.345333] 5ec0: c0a1cd4c 00000000 c0a1cd4c c0a1cd48 c09005a4 c=
091b158 c091ac58 00000000
> [=A0=A0=A0 1.353542] 5ee0: c0a2b080 00000006 c0a03048 c091b0a8 00000000 c=
0929830 c0929838 c0102658
> [=A0=A0=A0 1.361751] 5f00: 00000000 00000084 00000084 dfbea400 00000065 c=
081f5e4 00000084 c013845c
> [=A0=A0=A0 1.369959] 5f20: c081eba8 00000000 c09005a4 00000000 00000006 0=
0000006 00000000 dfbea401
> [=A0=A0=A0 1.378168] 5f40: 00000000 b65d4d11 00000000 b65d4d11 c0934f90 0=
0000006 c0a2b080 00000084
> [=A0=A0=A0 1.386376] 5f60: c0a2b080 c0929838 c09005a4 c0900dbc 00000006 0=
0000006 00000000 c09005a4
> [=A0=A0=A0 1.394584] 5f80: c05fd99c 00000000 c05fd99c 00000000 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 1.402792] 5fa0: 00000000 c05fd9a4 00000000 c01010e8 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 1.410998] 5fc0: 00000000 00000000 00000000 00000000 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 1.419205] 5fe0: 00000000 00000000 00000000 00000000 00000013 0=
0000000 00000000 00000000
> [=A0=A0=A0 1.427434] [<c01cc150>] (alloc_vmap_area) from [<c01cc490>] (__=
get_vm_area_node+0x94/0x168)
> [=A0=A0=A0 1.435917] [<c01cc490>] (__get_vm_area_node) from [<c01cd870>] =
(__vmalloc_node_range+0x58/0x1f4)
> [=A0=A0=A0 1.444825] [<c01cd870>] (__vmalloc_node_range) from [<c01cda50>=
] (__vmalloc_node+0x44/0x54)
> [=A0=A0=A0 1.453300] [<c01cda50>] (__vmalloc_node) from [<c01cdb1c>] (vza=
lloc+0x2c/0x3c)
> [=A0=A0=A0 1.460652] [<c01cdb1c>] (vzalloc) from [<c0382754>] (check_part=
ition+0x38/0x1d4)
> [=A0=A0=A0 1.468177] [<c0382754>] (check_partition) from [<c03808d4>] (re=
scan_partitions+0x78/0x440)
> [=A0=A0=A0 1.476567] [<c03808d4>] (rescan_partitions) from [<c02131cc>] (=
__blkdev_get+0x25c/0x414)
> [=A0=A0=A0 1.484779] [<c02131cc>] (__blkdev_get) from [<c02134a8>] (blkde=
v_get+0x124/0x3e8)
> [=A0=A0=A0 1.492385] [<c02134a8>] (blkdev_get) from [<c037f138>] (__devic=
e_add_disk+0x404/0x4b8)
> [=A0=A0=A0 1.500432] [<c037f138>] (__device_add_disk) from [<c091b158>] (=
brd_init+0xb0/0x170)
> [=A0=A0=A0 1.508218] [<c091b158>] (brd_init) from [<c0102658>] (do_one_in=
itcall+0x48/0x1a0)
> [=A0=A0=A0 1.515833] [<c0102658>] (do_one_initcall) from [<c0900dbc>] (ke=
rnel_init_freeable+0x100/0x1c8)
> [=A0=A0=A0 1.524579] [<c0900dbc>] (kernel_init_freeable) from [<c05fd9a4>=
] (kernel_init+0x8/0x11c)
> [=A0=A0=A0 1.532796] [<c05fd9a4>] (kernel_init) from [<c01010e8>] (ret_fr=
om_fork+0x14/0x2c)
> [=A0=A0=A0 1.540386] Exception stack(0xdf055fb0 to 0xdf055ff8)
> [=A0=A0=A0 1.545463] 5fa0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 00000000 00=
000000 00000000 00000000
> [=A0=A0=A0 1.553671] 5fc0: 00000000 00000000 00000000 00000000 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 1.561875] 5fe0: 00000000 00000000 00000000 00000000 00000013 0=
0000000
> [=A0=A0=A0 1.568522] Code: e5922018 e59f129c e1520001 0a00002f (e5121018)

These instructions are:

	ldr r2, [r2, 0x18]
	ldr r1, [pc, 0x29c]
	cmp r2, r1
	beq 0xd0
	ldr r1, [r2, -0x18]

The last instruction tries to load from r2-0x18, but r2 is NULL.

I guess this is about inserting the new vmap area into the rbtree of
areas.

> [=A0=A0=A0 1.574733] ---[ end trace abfef683febb0cb6 ]---
> [=A0=A0=A0 1.579384] Kernel panic - not syncing: Fatal exception
> [=A0=A0=A0 1.584640] Rebooting in 180 seconds..
> =

> I checked the patches on drivers/dma/imx-sdma.c and "dmaengine: =

> imx-sdma: fix use-after-free on probe error path" =

> 09593c25b975458025fd4cd15d5861cbaa33683d seems to describe the issue.... =

> but not solving it for me. So that is why I put Sven in CC.
> =

> Also with 4.19.56 with our own patches on top, the kernel did not hang, =

> but panicked. It looks like a timing problem inside the sdma driver. =

> Because kernel did not crash always, sometimes it did boot. Also now, =

> but only with 4.19.66+fslc with imx_v6_v7_defconfig it booted the first =

> time correctly, after a reboot it panicked very late, I even got a login =

> console, but then it rebooted again, but again good. Here the log:
> =

> [=A0=A0 49.763843] Unable to handle kernel paging request at virtual addr=
ess =

> a72e118d
> [=A0=A0 49.772789] pgd =3D b60d9f54
> [=A0=A0 49.775817] [a72e118d] *pgd=3D00000000
> [=A0=A0 49.779501] Internal error: Oops: 5 [#1] SMP ARM
> [=A0=A0 49.784152] Modules linked in:
> [=A0=A0 49.787259] CPU: 0 PID: 455 Comm: ntpd Not tainted =

> 4.19.66-00020-g91d5756ab909 #3
> [=A0=A0 49.794770] Hardware name: Freescale i.MX6 Ultralite (Device Tree)
> [=A0=A0 49.800991] PC is at find_entry+0x5c/0xc4
> [=A0=A0 49.805032] LR is at find_entry+0x88/0xc4
> [=A0=A0 49.809073] pc : [<c03090fc>]=A0=A0=A0 lr : [<c0309128>]=A0=A0=A0 =
psr: a0070013
> [=A0=A0 49.815365] sp : d96c9d40=A0 ip : e9cb8463=A0 fp : d96c9d74
> [=A0=A0 49.820616] r10: 00000001=A0 r9 : 00000002=A0 r8 : d8864040
> [=A0=A0 49.825870] r7 : d88640bc=A0 r6 : c0e70108=A0 r5 : d96c48fc=A0 r4 =
: 0000000b
> [=A0=A0 49.832425] r3 : 0000006e=A0 r2 : 00000009=A0 r1 : c0e70108=A0 r0 =
: ffffffff
> [=A0=A0 49.838982] Flags: NzCv=A0 IRQs on=A0 FIQs on=A0 Mode SVC_32=A0 IS=
A ARM=A0 =

> Segment none
> [=A0=A0 49.846146] Control: 10c5387d=A0 Table: 996cc06a=A0 DAC: 00000051
> [=A0=A0 49.851924] Process ntpd (pid: 455, stack limit =3D 0x873acf61)
> [=A0=A0 49.857699] Stack: (0xd96c9d40 to 0xd96ca000)
> [=A0=A0 49.862095] 9d40: d96c9d74 d96c9d88 c0ba1030 c1132fb4 0000000b d80=
90040 d96c48c0 c1108908
> [=A0=A0 49.870308] 9d60: d90f44d8 00000000 d96c9dbc d96c9d78 c030a94c c03=
090ac c02a2d04 d96c48fc
> [=A0=A0 49.878519] 9d80: 00000001 00000000 c0294844 7d9fdb21 d96c9dbc 000=
00000 d90f0f18 00000000
> [=A0=A0 49.886732] 9da0: d96c9e90 d96c9f50 d96c48c0 d96c48c0 d96c9e8c d96=
c9dc0 c0294ff4 c030a8e4
> [=A0=A0 49.894945] 9dc0: d96c9e7c d96c9dd0 c017eb8c c017e028 d96c48c0 000=
00000 00000000 00000000
> [=A0=A0 49.903157] 9de0: d90f44d8 00000041 00000000 d96c2140 00000004 000=
00000 00000000 c1748cc0
> [=A0=A0 49.911370] 9e00: 00000000 d96ae4f0 6ca44a47 00000000 dead4ead fff=
fffff ffffffff c193441c
> [=A0=A0 49.919581] 9e20: 00000000 00000000 c0e795c8 d96c9e2c d96c9e2c 000=
00000 dead4ead ffffffff
> [=A0=A0 49.927794] 9e40: ffffffff c193441c 00000000 00000000 c0e795c8 d96=
c9e2c d96c9e2c 7d9fdb21
> [=A0=A0 49.936006] 9e60: 00000000 00000003 d96c9f50 d96c9e90 c1108908 000=
00001 d96c8000 00000142
> [=A0=A0 49.944219] 9e80: d96c9f44 d96c9e90 c02966e4 c02942a8 d8f0ad10 d90=
f0f18 04ff40f7 0000000b
> [=A0=A0 49.952433] 9ea0: d96dd021 60070013 d8e9d3d0 d8ed0960 d90f44d8 000=
00101 c030ac14 0000005c
> [=A0=A0 49.960645] 9ec0: 00000000 00000000 00000000 d96c9ed0 d96c9ef4 d96=
c9ee0 c0ba1258 c0184904
> [=A0=A0 49.968856] 9ee0: 00000000 d96acd24 d96c9f34 d96c9ef8 c02a80d4 c0b=
a123c d96c9f34 00000000
> [=A0=A0 49.977069] 9f00: d96dd000 00000000 00000000 00000002 ffffff9c fff=
fff9c d96dd000 7d9fdb21
> [=A0=A0 49.985282] 9f20: d96c8000 00000003 c1108908 ffffff9c d96dd000 c01=
011e4 d96c9f94 d96c9f48
> [=A0=A0 49.993493] 9f40: c0281ccc c029667c d96ae000 00000001 00000000 000=
00000 00000004 00000100
> [=A0=A0 50.001704] 9f60: 00000001 7d9fdb21 00000000 00000003 01b9da68 000=
003e6 00000142 c01011e4
> [=A0=A0 50.009917] 9f80: d96c8000 00000142 d96c9fa4 d96c9f98 c0281dd0 c02=
81bb4 00000000 d96c9fa8
> [=A0=A0 50.018130] 9fa0: c0101000 c0281dc8 00000003 01b9da68 ffffff9c b6c=
d6c68 00000000 00000000
> [=A0=A0 50.026343] 9fc0: 00000003 01b9da68 000003e6 00000142 b6f7c900 005=
8ead8 bee697bc 0053b50c
> [=A0=A0 50.034555] 9fe0: 00000142 bee696c8 b6c930d5 b6c1a6c6 20070030 fff=
fff9c 00000000 00000000
> [=A0=A0 50.042753] Backtrace:
> [=A0=A0 50.045258] [<c03090a0>] (find_entry) from [<c030a94c>] (proc_sys_=
lookup+0x74/0x180)
> [=A0=A0 50.053042]=A0 r10:00000000 r9:d90f44d8 r8:c1108908 r7:d96c48c0 r6=
:d8090040 r5:0000000b
> [=A0=A0 50.060897]=A0 r4:c1132fb4
> [=A0=A0 50.063472] [<c030a8d8>] (proc_sys_lookup) from [<c0294ff4>] (path=
_openat+0xd58/0x108c)
> [=A0=A0 50.071511]=A0 r10:d96c48c0 r9:d96c48c0 r8:d96c9f50 r7:d96c9e90 r6=
:00000000 r5:d90f0f18
> [=A0=A0 50.079366]=A0 r4:00000000
> [=A0=A0 50.081939] [<c029429c>] (path_openat) from [<c02966e4>] (do_filp_=
open+0x74/0xe4)
> [=A0=A0 50.089459]=A0 r10:00000142 r9:d96c8000 r8:00000001 r7:c1108908 r6=
:d96c9e90 r5:d96c9f50
> [=A0=A0 50.097311]=A0 r4:00000003
> [=A0=A0 50.099884] [<c0296670>] (do_filp_open) from [<c0281ccc>] (do_sys_=
open+0x124/0x1ec)
> [=A0=A0 50.107574]=A0 r8:c01011e4 r7:d96dd000 r6:ffffff9c r5:c1108908 r4:=
00000003
> [=A0=A0 50.114311] [<c0281ba8>] (do_sys_open) from [<c0281dd0>] (sys_open=
at+0x14/0x18)
> [=A0=A0 50.121656]=A0 r10:00000142 r9:d96c8000 r8:c01011e4 r7:00000142 r6=
:000003e6 r5:01b9da68
> [=A0=A0 50.129511]=A0 r4:00000003
> [=A0=A0 50.132083] [<c0281dbc>] (sys_openat) from [<c0101000>] (ret_fast_=
syscall+0x0/0x28)
> [=A0=A0 50.139766] Exception stack(0xd96c9fa8 to 0xd96c9ff0)
> [=A0=A0 50.144851] 9fa0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 00000003 01b9da68 ffffff9c b6cd6c68 00000000 00000000
> [=A0=A0 50.153063] 9fc0: 00000003 01b9da68 000003e6 00000142 b6f7c900 005=
8ead8 bee697bc 0053b50c
> [=A0=A0 50.161269] 9fe0: 00000142 bee696c8 b6c930d5 b6c1a6c6
> [=A0=A0 50.166357] Code: e598a000 e06cc007 e1a0c24c e08cc18c (e79a610c)
> [=A0=A0 50.172754] ---[ end trace 9e22ce3f534d2b3d ]---
> =

> Then I logged into the serial console, rebooted, and again a kernel =

> panic, but much sooner :
> =

> [=A0=A0=A0 3.711085] imx-sdma 20ec000.sdma: loaded firmware 3.5
> [=A0=A0=A0 3.739709] console [ttymxc0] enabled
> [=A0=A0=A0 3.743626] bootconsole [ec_imx6q0] disabled
> [=A0=A0=A0 4.078675] brd: module loaded
> [=A0=A0=A0 4.327831] loop: module loaded
> [=A0=A0=A0 4.343852] at24 0-0050: 256 byte 24c02 EEPROM, writable, 8 byte=
s/write
> [=A0=A0=A0 4.434753] nand: device found, Manufacturer ID: 0x2c, Chip ID: =
0xdc
> [=A0=A0=A0 4.441437] nand: Micron MT29F4G08ABADAH4
> [=A0=A0=A0 4.445582] nand: 512 MiB, SLC, erase size: 128 KiB, page size: =
2048, OOB size: 64
> [=A0=A0=A0 4.466637] Bad block table not found for chip 0
> [=A0=A0=A0 4.474598] Bad block table not found for chip 0
> [=A0=A0=A0 4.479535] Scanning device for bad blocks
> [=A0=A0=A0 7.108753] Bad block table written to 0x00001ffe0000, version 0=
x01
> [=A0=A0=A0 7.118100] Bad block table written to 0x00001ffc0000, version 0=
x01
> [=A0=A0=A0 7.125068] 1 cmdlinepart partitions found on MTD device gpmi-na=
nd
> [=A0=A0=A0 7.131616] Creating 1 MTD partitions on "gpmi-nand":
> [=A0=A0=A0 7.137028] 0x000000000000-0x000020000000 : "nandflash"
> [=A0=A0=A0 7.166797] random: crng init done
> [=A0=A0=A0 8.081299] gpmi-nand 1806000.gpmi-nand: driver registered.
> [=A0=A0=A0 8.089377] Unable to handle kernel NULL pointer dereference at =
virtual address 00000070
> [=A0=A0=A0 8.098055] pgd =3D a7175e07
> [=A0=A0=A0 8.100896] [00000070] *pgd=3D00000000
> [=A0=A0=A0 8.104636] Internal error: Oops: 5 [#1] SMP ARM
> [=A0=A0=A0 8.109316] Modules linked in:
> [=A0=A0=A0 8.112459] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.19.66-00=
020-g91d5756ab909 #3
> [=A0=A0=A0 8.120255] Hardware name: Freescale i.MX6 Ultralite (Device Tre=
e)
> [=A0=A0=A0 8.126506] PC is at strcmp+0x18/0x44
> [=A0=A0=A0 8.130236] LR is at kset_find_obj+0x44/0x8c
> [=A0=A0=A0 8.134568] pc : [<c0b9358c>]=A0=A0=A0 lr : [<c0b88054>]=A0=A0=
=A0 psr: 20000013
> [=A0=A0=A0 8.140887] sp : d80a9e50=A0 ip : d80a9e60=A0 fp : d80a9e5c
> [=A0=A0=A0 8.146165] r10: 00000000=A0 r9 : c1108930=A0 r8 : c1108908
> [=A0=A0=A0 8.151444] r7 : d8139e88=A0 r6 : c0edbd04=A0 r5 : d8139e80=A0 r=
4 : c0eba704
> [=A0=A0=A0 8.158023] r3 : 00000070=A0 r2 : 00000066=A0 r1 : c0edbd04=A0 r=
0 : 00000070
> [=A0=A0=A0 8.164608] Flags: nzCv=A0 IRQs on=A0 FIQs on=A0 Mode SVC_32=A0 =
ISA ARM=A0 Segment none
> [=A0=A0=A0 8.171797] Control: 10c5387d=A0 Table: 8000406a=A0 DAC: 00000051
> [=A0=A0=A0 8.177602] Process swapper/0 (pid: 1, stack limit =3D 0x0e667d5=
1)
> [=A0=A0=A0 8.183664] Stack: (0xd80a9e50 to 0xd80aa000)
> [=A0=A0=A0 8.188084] 9e40:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 d80a9e7c d8=
0a9e60 c0b88054 c0b93580
> [=A0=A0=A0 8.196328] 9e60: c117f87c c105f984 c10a7dc4 c11d7ac0 d80a9e94 d=
80a9e80 c0612c60 c0b8801c
> [=A0=A0=A0 8.204570] 9e80: c1174e28 c117f87c d80a9eac d80a9e98 c0612cf0 c=
0612c50 c11d6970 c105f984
> [=A0=A0=A0 8.212813] 9ea0: d80a9ebc d80a9eb0 c0613d68 c0612c88 d80a9ecc d=
80a9ec0 c105f99c c0613d3c
> [=A0=A0=A0 8.221056] 9ec0: d80a9f4c d80a9ed0 c01031f4 c105f990 00000000 c=
0f8f438 000000f7 dffffb00
> [=A0=A0=A0 8.229298] 9ee0: d80a9f4c d80a9ef0 c014f5a8 c1000710 00000000 0=
0000006 d8092000 00000000
> [=A0=A0=A0 8.237542] 9f00: 60000053 c11d6970 c11dc900 c11d7ac0 d80a9f34 d=
80a9f20 c017bf04 7d9fdb21
> [=A0=A0=A0 8.245785] 9f20: c115d3c4 00000006 c1090850 c10a7dc4 c11dc900 c=
11d7ac0 d80a8000 00000000
> [=A0=A0=A0 8.254027] 9f40: d80a9f94 d80a9f50 c10011d4 c0103178 00000006 0=
0000006 00000000 c1000704
> [=A0=A0=A0 8.262270] 9f60: c0ba1310 000000f7 d8092000 00000000 c0b99d14 0=
0000000 00000000 00000000
> [=A0=A0=A0 8.270511] 9f80: 00000000 00000000 d80a9fac d80a9f98 c0b99d24 c=
1000f24 d8092000 00000000
> [=A0=A0=A0 8.278753] 9fa0: 00000000 d80a9fb0 c01010b4 c0b99d20 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 8.286993] 9fc0: 00000000 00000000 00000000 00000000 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 8.295233] 9fe0: 00000000 00000000 00000000 00000000 00000013 0=
0000000 00000000 00000000
> [=A0=A0=A0 8.303456] Backtrace:
> [=A0=A0=A0 8.305993] [<c0b93574>] (strcmp) from [<c0b88054>] (kset_find_o=
bj+0x44/0x8c)
> [=A0=A0=A0 8.313208] [<c0b88010>] (kset_find_obj) from [<c0612c60>] (driv=
er_find+0x1c/0x38)
> [=A0=A0=A0 8.320846]=A0 r7:c11d7ac0 r6:c10a7dc4 r5:c105f984 r4:c117f87c
> [=A0=A0=A0 8.326575] [<c0612c44>] (driver_find) from [<c0612cf0>] (driver=
_register+0x74/0x11c)
> [=A0=A0=A0 8.334465]=A0 r4:c117f87c r3:c1174e28
> [=A0=A0=A0 8.338114] [<c0612c7c>] (driver_register) from [<c0613d68>] (__=
platform_driver_register+0x38/0x4c)
> [=A0=A0=A0 8.347215]=A0 r5:c105f984 r4:c11d6970
> [=A0=A0=A0 8.350865] [<c0613d30>] (__platform_driver_register) from [<c10=
5f99c>] (fsl_qspi_driver_init+0x18/0x20)
> [=A0=A0=A0 8.360415] [<c105f984>] (fsl_qspi_driver_init) from [<c01031f4>=
] (do_one_initcall+0x88/0x31c)
> [=A0=A0=A0 8.369103] [<c010316c>] (do_one_initcall) from [<c10011d4>] (ke=
rnel_init_freeable+0x2bc/0x3e8)
> [=A0=A0=A0 8.377871]=A0 r10:00000000 r9:d80a8000 r8:c11d7ac0 r7:c11dc900 =
r6:c10a7dc4 r5:c1090850
> [=A0=A0=A0 8.385750]=A0 r4:00000006
> [=A0=A0=A0 8.388356] [<c1000f18>] (kernel_init_freeable) from [<c0b99d24>=
] (kernel_init+0x10/0x120)
> [=A0=A0=A0 8.396688]=A0 r10:00000000 r9:00000000 r8:00000000 r7:00000000 =
r6:00000000 r5:c0b99d14
> [=A0=A0=A0 8.404567]=A0 r4:00000000
> [=A0=A0=A0 8.407169] [<c0b99d14>] (kernel_init) from [<c01010b4>] (ret_fr=
om_fork+0x14/0x20)
> [=A0=A0=A0 8.414792] Exception stack(0xd80a9fb0 to 0xd80a9ff8)
> [=A0=A0=A0 8.419902] 9fa0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 00000000 00=
000000 00000000 00000000
> [=A0=A0=A0 8.428143] 9fc0: 00000000 00000000 00000000 00000000 00000000 0=
0000000 00000000 00000000
> [=A0=A0=A0 8.436379] 9fe0: 00000000 00000000 00000000 00000000 00000013 0=
0000000
> [=A0=A0=A0 8.443049]=A0 r4:00000000 r3:d8092000
> [=A0=A0=A0 8.446690] Code: e24cb004 ea000001 e3530000 0a000008 (e4d03001)
> [=A0=A0=A0 8.453044] ---[ end trace b6f2a017d259fade ]---
> [=A0=A0=A0 8.457941] Kernel panic - not syncing: Attempted to kill init! =
 exitcode=3D0x0000000b
> [=A0=A0=A0 8.457941]
> [=A0=A0=A0 8.467193] ---[ end Kernel panic - not syncing: Attempted to ki=
ll init! exitcode=3D0x0000000b
> [=A0=A0=A0 8.467193]=A0 ]---

this is something different:

	sub fp, ip, 4
	b 0x10
	cmp r3, 0
	beq 0x34
	ldrb r3, [r0], 1

Maybe the sdma driver does something strage that confused SLOB but not
the other allocaters?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
