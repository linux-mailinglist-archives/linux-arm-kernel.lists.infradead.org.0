Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD99510F22C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 22:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8Tz7PJltKgX6o5ZR+wRoY+Qpsfj21req6AZDOWKo+s=; b=jqWCaWA4EPUi44
	0PUdkfRTKYOM2cwoHig8ke2N/tk7xPNjERqifm+AGY4fGkfcWyZP5jXXiavw5v5s12mKh32g9/ljC
	sBEnNQRbOhYtGm7XNx3ZYJz954U8i+AIPNgh6SDFdIQhcFFY8GSTmcvU6cWvUnve1SEcWxhU7mFmN
	6C9Byjuq4wgHqH71NPnoiZ/32dbpGnTmDVoojMVIAFeKipDDz3XsTn5oTNkqNwE2VCGbwflVMeyBe
	9s2b898e5+zNRfX3qgTlMxr6ofSmTrqPYG0Bxg9zTQNswmAr5wfyda4ozshxuHZJ9SiKeGySWX4Ay
	cv1PcAMmtUibdWl1wFJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtGq-0002DJ-0X; Mon, 02 Dec 2019 21:30:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtGU-0002Cv-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 21:29:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ibtGO-0000eE-V5; Mon, 02 Dec 2019 22:29:48 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ibtGO-0008HH-Dj; Mon, 02 Dec 2019 22:29:48 +0100
Date: Mon, 2 Dec 2019 22:29:48 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Andre Renaud <arenaud@designa-electronics.com>
Subject: Re: iMX6/UART imprecise external abort
Message-ID: <20191202212948.c6dp7ifcvmjpwfhj@pengutronix.de>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_132954_274836_B0FA2530 
X-CRM114-Status: GOOD (  16.18  )
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andre,

On Tue, Dec 03, 2019 at 09:40:28AM +1300, Andre Renaud wrote:
> I am working with an iMX6Q system that is exhibiting a crash when
> using the serial ports.
> We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
> 'imprecise external abort' after some time of use (panic listed
> below).
> =

> We are able to replicate this both on the custom kernel we're using,
> as well as on the 5.3.x+fslc image from
> https://github.com/Freescale/linux-fslc
> =

> To replicate it we have the mx6 hooked up to a PC, with each end
> sending short 3-4 character messages every second. The fault kicks in

Are you closing the UART between the sendings?

> after about 15-30 minutes. This seems similar to the fault described
> here: https://lkml.org/lkml/2019/11/11/588. We have tried shutting
> down DMA and various performance/cpuidle systems, but that doesn't
> seem to have any impact.
> =

> Does anyone have any thoughts on how to solve this?
> =

> Regards,
> Andre
> =

> [ 5047.074427] Unhandled fault: imprecise external abort (0x1406) at 0xb6=
e00f78
> [ 5047.081498] pgd =3D c0004000
> [ 5047.084213] [b6e00f78] *pgd=3D00000000
> [ 5047.087813] Internal error: : 1406 [#1] SMP ARM
> [ 5047.092348] Modules linked in:
> [ 5047.095429] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.8.0+ #19
> [ 5047.101440] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [ 5047.107974] task: ef0ecd00 task.stack: ef158000
> [ 5047.112521] PC is at arch_cpu_idle+0x48/0x4c
> [ 5047.116799] LR is at arch_cpu_idle+0x44/0x4c
> [ 5047.121077] pc : [<c0108c70>]    lr : [<c0108c6c>]    psr: 60070013
> [ 5047.121077] sp : ef159f98  ip : ef159fa8  fp : ef159fa4
> [ 5047.132560] r10: 00000000  r9 : 00000002  r8 : c0d025dc
> [ 5047.137791] r7 : c0d95448  r6 : ef158000  r5 : c0d02648  r4 : ef158000
> [ 5047.144324] r3 : c011a140  r2 : 005bc18a  r1 : ef7ae3c0  r0 : 00000000
> [ 5047.150858] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segme=
nt none
> [ 5047.157998] Control: 10c5387d  Table: 3dd9804a  DAC: 00000051
> [ 5047.163748] Process swapper/1 (pid: 0, stack limit =3D 0xef158210)
> [ 5047.169759] Stack: (0xef159f98 to 0xef15a000)
> [ 5047.174124] 9f80:                                                     =
  ef159fb4 ef159fa8
> [ 5047.182310] 9fa0: c0170b54 c0108c34 ef159fdc ef159fb8 c0170da4 c0170b3=
0 c0a8fb48 c0d8b845
> [ 5047.190496] 9fc0: c0d8c48c c0d025dc 10c0387d c0d95448 ef159ff4 ef159fe=
0 c010e6cc c0170b6c
> [ 5047.198682] 9fe0: 3f0fc06a 00000051 00000000 ef159ff8 101018cc c010e58=
0 edddf4eb ffeebffd
> [ 5047.206887] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>] (default_id=
le_call+0x30/0x3c)
> [ 5047.214993] [<c0170b54>] (default_idle_call) from [<c0170da4>] (cpu_st=
artup_entry+0x244/0x298)
> [ 5047.223619] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>] (second=
ary_start_kernel+0x158/0x164)
> [ 5047.232677] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>] (0=
x101018cc)
> [ 5047.240083] Code: e34c30d0 e5933014 e12fff33 f1080080 (e89da800)
> [ 5047.246190] ---[ end trace 853e028df8c9b7cd ]---

I saw a similar problem some time ago on a 4.14.69 and 4.19.72 with a
backport of the UART driver from some newer release (around 5.4-rc1)
plus some rs485 improvments and the -rt patch applied. I got some input
by RMK on that and the situation is difficult.  The address where the
fault is reported to have happend doesn't say anything for an imprecise
external abort.

On our end the problem doesn't reproduce so easily up to now.

I didn't come around to debug this problem, yet. I would do some =

shooting in the dark and start with:

 - disable DMA (doesn't help according to your report)
 - reproduce without -rt (still happens according to your report)
 - keep the UART clocks on. (Try removing
   "clk_disable_unprepare(sport->clk_ipg);" from imx_uart_probe())
 - try to reproduce in rs232 mode
 - try to record some traces of the problem
   (i.e. add tracing_off() to the fault handler and enable ftrace with a
   large enough trace buffer.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
