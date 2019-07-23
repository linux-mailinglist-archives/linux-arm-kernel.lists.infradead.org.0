Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D367372149
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIIPLPAF8d/N8gRFo3p6oZWawb57MKkm54ydmzuibvs=; b=VzHdvmbn2RcvvC
	6Ki3UPwEDxOMwMKcEzYkHxevuOgJtRqkLsX+vFkYoHnusW1d2hfOLVHT/YiD2Jvf7OJQJq+w5rF5M
	Qa+FcFuhmmR3pZM2UxFbJ28HprNEgmPlX/hu1/Mt2V27EldDSxpvhixZJZupTGEmP/zIGMjCAm4k0
	dkKyZwmfyhorsSAqRRknek12jomwqn5Gjj7SwFw/KP1kKwQ1w9UcOeFqB6wGkSgish1RJdkc+/Nq+
	gGkC4bn/J751cXCH638PedTldZPQPB2EAlTx1VpiUB65yxF+KvRa6iUJ2dWjcDxbPzQ78DMvLpqvx
	nG5Mf2D5FcX9vvgFi7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq21G-0001PT-NM; Tue, 23 Jul 2019 21:08:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq214-0001Oj-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LR+NzbwUUOab9ww0eeULhEKHr3bQ7W1LN5y9v6sncLM=; b=D3bEEkDmsFZmnJRbY+BtvUJNV
 CJPuFKKjI2kMYz+24RmYqyKjXgnniqUQSTRSvXNBIGpZl1m3ahR3ZSSnXquQt0j+T2hnRba9/34bj
 KTbrlHYL0/wdGfvRBca/w4PNFh0KV4AKgd+Xv7Wedm2sSkbkDR6oUxUvH6da+OFf/Mzoqx96dGE+M
 aLfWFItSWlfiA83IGW/RA77d/g/YXMfI3ZRSlEihLYXRsigpczCCNdqJBWiBsOiEqvGbls09wvJa1
 j2nzNSPZp0FsJzzDAVDormY1vO/MoJMlS98CQAKFF9+oWJQ6RbBsMrWNAn3OnaeV+MlMfNkym8yLE
 9wMw5dmNg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48620)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hq20r-0006Bj-Um; Tue, 23 Jul 2019 22:07:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hq20p-0004CE-H8; Tue, 23 Jul 2019 22:07:55 +0100
Date: Tue, 23 Jul 2019 22:07:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: Re: TS-219 RTC issue with Debian Buster
Message-ID: <20190723210755.GE1330@shell.armlinux.org.uk>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723161212.GA8095@lunn.ch>
 <8d771e5c-9df4-779c-5814-c8b62c309f82@hartkopp.net>
 <6ab1b4e0-3211-7cd4-306d-4b0077ed5e8e@hartkopp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ab1b4e0-3211-7cd4-306d-4b0077ed5e8e@hartkopp.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_140811_152806_E81469FF 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 07:56:46PM +0200, Oliver Hartkopp wrote:
> I just found an older log booting a Linux 4.9 where it was ok:
> =

> Jan  6 20:57:03 sam kernel: [    0.000000] Booting Linux on physical CPU =
0x0
> Jan  6 20:57:03 sam kernel: [    0.000000] Linux version 4.9.0-4-marvell
> (debian-kernel@lists.debian.org) (gcc version 6.3.0 20170516 (Debian
> 6.3.0-18) ) #1 Debian 4.9.51-1 (2017-09-28)
> Jan  6 20:57:03 sam kernel: [    0.000000] CPU: Feroceon 88FR131 [5625131=
1]
> revision 1 (ARMv5TE), cr=3D0005397f
> Jan  6 20:57:03 sam kernel: [    0.000000] CPU: VIVT data cache, VIVT
> instruction cache
> Jan  6 20:57:03 sam kernel: [    0.000000] OF: fdt:Machine model: QNAP TS=
219
> family
> =

> (..)
> =

> Jan  6 20:57:03 sam kernel: [    1.052175] mousedev: PS/2 mouse device
> common for all mice
> Jan  6 20:57:03 sam kernel: [    2.090654] rtc-mv f1010300.rtc: internal =
RTC
> not ticking
> Jan  6 20:57:03 sam kernel: [    2.096219] i2c /dev entries driver
> Jan  6 20:57:03 sam kernel: [    2.101859] rtc-s35390a 0-0030: rtc core:
> registered rtc-s35390a as rtc0
> Jan  6 20:57:03 sam kernel: [    2.109296] ledtrig-cpu: registered to
> indicate activity on CPUs
> Jan  6 20:57:03 sam kernel: [    2.115640] NET: Registered protocol family
> 17
> Jan  6 20:57:03 sam kernel: [    2.120536] registered taskstats version 1
> Jan  6 20:57:03 sam kernel: [    2.124695] zswap: loaded using pool lzo/z=
bud
> Jan  6 20:57:03 sam kernel: [    2.129852] random: fast init done
> Jan  6 20:57:03 sam kernel: [    2.133441] rtc-s35390a 0-0030: setting
> system clock to 2018-01-06 19:56:53 UTC (1515268613)
> Jan  6 20:57:03 sam kernel: [    2.143039] Freeing unused kernel memory:
> 296K
> =

> Just wondering whether this a kernel problem or a systemd thing.
> =

> At least the rtc-s35390a module is loaded before is is accessed.

This looks like it was built-in to this kernel.  The other kernel log
shows that it was loaded later.

> =

> Regards,
> Oliver
> =

> > Hi Andrew,
> > =

> > On 23.07.19 18:12, Andrew Lunn wrote:
> > > On Tue, Jul 23, 2019 at 05:30:48PM +0200, Oliver Hartkopp wrote:
> > =

> > > > I upgraded my TS-219 to Debian Buster with Kernel 4.19.0-5-marvell.
> > > =

> > > Hi Oliver
> > > =

> > > Did the same test work with older Debians?
> > > =

> > =

> > I'm not really sure when it happened, as I was using the 'testing'
> > release which now lead to Buster. I have no clear point where to look.
> > Just detected some boot delay and looked into the sysctl log wich moved
> > the clock forward based on fact, that the installed binaries where
> > younger than the system clock. %-(
> > =

> > > > I wonder whether the problem comes from a missing interrupt assignm=
ent
> > > > =

> > > > rtc: rtc@10300 {
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "marvell,kir=
kwood-rtc", "marvell,orion-rtc";
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x10300 0x20>;
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupts =3D <53>;=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 <- HERE!?!
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clocks =3D <&gate_clk 7>;
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > > > =

> > > > ... I found in linux/arch/arm/boot/dts/kirkwood-6282.dtsi ?!?
> > > > =

> > > > In /proc/interrupts there's no rtc assigned to an interrupt 53.
> > > =

> > > There is code in the driver to request this interrupt. Do you see an
> > > error message like:
> > > =

> > > interrupt not available.
> > > =

> > =

> > No.
> > =

> > > > Accessing the rtc values (time/date) via /sys/class/rtc/rtc0
> > > > entries works
> > > > well and setting the date/time via "hwclock --systohc" does its
> > > > job too. So
> > > > I2C and the rtc_s35390a driver seem to work so far.
> > > =

> > > Now i'm confused. I don't see any mention of s35390a for any TS
> > > devices. Some kirkwood machines do make use of an external RTC, not
> > > the built in. But not this machine, as far as i know.
> > =

> > I snipped some dmesg log pointing to the machine & clock/rtc:
> > =

> > [=A0=A0=A0 0.000000] Booting Linux on physical CPU 0x0
> > [=A0=A0=A0 0.000000] Linux version 4.19.0-5-marvell
> > (debian-kernel@lists.debian.org) (gcc version 8.3.0 (Debian 8.3.0-7)) #1
> > Debian 4.19.37-5 (2019-06-19)
> > [=A0=A0=A0 0.000000] CPU: Feroceon 88FR131 [56251311] revision 1 (ARMv5=
TE),
> > cr=3D0005397f
> > [=A0=A0=A0 0.000000] CPU: VIVT data cache, VIVT instruction cache
> > [=A0=A0=A0 0.000000] OF: fdt: Machine model: QNAP TS219 family
> > =

> > (..)
> > =

> > [=A0=A0=A0 0.000000] clocksource: orion_clocksource: mask: 0xffffffff
> > max_cycles: 0xffffffff, max_idle_ns: 9556302233 ns
> > [=A0=A0=A0 0.000006] sched_clock: 32 bits at 200MHz, resolution 5ns, wr=
aps
> > every 10737418237ns
> > [=A0=A0=A0 0.000030] Switching to timer-based delay loop, resolution 5ns
> > [=A0=A0=A0 0.000099] Calibrating delay loop (skipped), value calculated=
 using
> > timer frequency.. 400.00 BogoMIPS (lpj=3D800000)
> > [=A0=A0=A0 0.000117] pid_max: default: 32768 minimum: 301
> > [=A0=A0=A0 0.000329] Security Framework initialized
> > [=A0=A0=A0 0.000344] Yama: disabled by default; enable with sysctl kern=
el.yama.*
> > [=A0=A0=A0 0.000427] AppArmor: AppArmor initialized
> > [=A0=A0=A0 0.000528] Mount-cache hash table entries: 1024 (order: 0, 40=
96 bytes)
> > [=A0=A0=A0 0.000544] Mountpoint-cache hash table entries: 1024 (order: =
0, 4096
> > bytes)
> > [=A0=A0=A0 0.001288] CPU: Testing write buffer coherency: ok
> > [=A0=A0=A0 0.002027] Setting up static identity map for 0x8200 - 0x823c
> > [=A0=A0=A0 0.002207] mvebu-soc-id: MVEBU SoC ID=3D0x6282, Rev=3D0x0
> > [=A0=A0=A0 0.003536] devtmpfs: initialized
> > [=A0=A0=A0 0.006261] VFP support v0.3: not present
> > [=A0=A0=A0 0.006378] clocksource: jiffies: mask: 0xffffffff max_cycles:
> > 0xffffffff, max_idle_ns: 7645041785100000 ns
> > =

> > (..)
> > =

> > [=A0=A0=A0 1.198026] hctosys: unable to open rtc device (rtc0)
> > [=A0=A0=A0 1.205324] Freeing unused kernel memory: 312K
> > [=A0=A0=A0 1.209804] This architecture does not have kernel memory prot=
ection.
> > [=A0=A0=A0 1.216276] Run /init as init process
> > [=A0=A0=A0 1.299536] random: fast init done
> > [=A0=A0=A0 1.581741] rtc-s35390a 0-0030: rtc core: registered rtc-s3539=
0a as rtc0
> > =

> > (..)
> > =

> > [=A0=A0 11.395565] rtc-mv f1010300.rtc: internal RTC not ticking
> > =

> > I got the information from Martin Michlmayr's Quap Debian pages:
> > http://www.cyrius.com/debian/kirkwood/qnap/ts-219/status/
> > http://www.cyrius.com/debian/kirkwood/qnap/ts-119/status/
> > =

> > RTC: Supported in the kernel by the rtc-s35390a module
> > =

> > Thanks for your help!
> > =

> > Best,
> > Oliver
> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
