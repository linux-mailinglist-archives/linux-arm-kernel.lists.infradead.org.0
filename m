Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34587DAE56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ewOGYmoxaMS++dPlZLmSKXslX+BVX43+mNhZOXLfK8I=; b=keXCg8Be2b32jYDHLRB/Sk6bo
	dNZgtB+w2bbwuur8uqkItxaMfsWD8kg5lNPFWjGMJd4Dm2M3+Z8csXqlKsqVOU+mbjG0khngS2uiZ
	zMFOCwgqgUqjIR+7cWWGgrmDWorOdnnXtp2lCy2CfVGfY+HajJt7jewKB4S34VN+IjbSfjECaZyXY
	eKG1jBpOwu8JnWRnn8RL3qHXdCAQWnEfufncDCX2lUaySJ62XfzWrsE+1Ux809z3ZysZ1epHtU5GA
	meQkHEzVukeCPounIMw1Lt7mK/X5MRF2KMhX0s1ZG6Y5K0EK3WZXY/LFuag2dxJ//derZi9U8KXv9
	7qaiw/2vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5oC-0003j1-RV; Thu, 17 Oct 2019 13:27:16 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5nz-0003h9-Se; Thu, 17 Oct 2019 13:27:06 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iL5nq-0005dJ-1S; Thu, 17 Oct 2019 15:26:54 +0200
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 x9HDQp2F004459
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 17 Oct 2019 15:26:52 +0200
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To: Jagan Teki <jagan@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
Date: Thu, 17 Oct 2019 15:26:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1571318823;
 d7047079; 
X-HE-SMSGID: 1iL5nq-0005dJ-1S
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_062704_223051_ED8DEC84 
X-CRM114-Status: GOOD (  27.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4853232508975546053=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4853232508975546053==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC
Content-Type: multipart/mixed; boundary="eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV";
 protected-headers="v1"
From: Markus Reichl <m.reichl@fivetechno.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Message-ID: <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
In-Reply-To: <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>

--eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Jagan,

your patch fixes booting my rk3399-roc-pc with 5.4.0-rc3-next-20191017.
Without your patch roc-pc hangs here:
[    9.703526] pwm-regulator: supplied by regulator-dummy

Am 16.10.19 um 19:09 schrieb Jagan Teki:
> Hi Levin,
>=20
> On Tue, Oct 8, 2019 at 8:42 AM <djw@t-chip.com.cn> wrote:
>>
>> Jagan Teki <jagan@amarulasolutions.com> writes:
>>
>> > Hi Heiko,
>> >
>> > On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wro=
te:
>> >>
>> >> Hi Jagan,
>> >>
>> >> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki=
:
>> >> > ROC-PC is not able to boot linux console if PWM2_d is
>> >> > unattached to any pinctrl logic.
>> >> >
>> >> > To be precise the linux boot hang with last logs as,
>> >> > ...
>> >> > .....
>> >> > [    0.003367] Console: colour dummy device 80x25
>> >> > [    0.003788] printk: console [tty0] enabled
>> >> > [    0.004178] printk: bootconsole [uart8250] disabled
>> >> >
>> >> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
>> >> > VDD_LOG. So, for normal working operations this needs to
>> >> > active and pull-down.
>> >> >
>> >> > This patch fix, by attaching pinctrl active and pull-down
>> >> > the pwm2.
>> >>
>> >> This looks highly dubious on first glance. The pwm subsystem nor
>> >> the Rockchip pwm driver do not do any pinctrl handling.
>> >>
>> >> So I don't really see where that "active" pinctrl state is supposed=

>> >> to come from.
>> >>
>> >> Comparing with the pwm driver in the vendor tree I see that there
>> >> is such a state defined there. But that code there also looks stran=
ge
>> >> as that driver never again leaves this active state after entering =
it.
>> >>
>> >> Also for example all the Gru devices run with quite a number of pwm=
-
>> >> regulators without needing additional fiddling with the pwm itself,=
 so
>> >> I don't really see why that should be different here.
>> >
>> > I deed, I was supposed to think the same. but the vendor kernel dts
>> > from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
>> > information other than this vensor information, ie one of the reason=
 I
>> > have marked "Levin Du" who initially supported this board.
>> >
>> > One, think I have seen was this pinctrl active fixed the boot hang.
>> > any inputs from would be very helpful.
>> >
>> > Levin Du, any inputs?
>> >
>> > [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-lin=
ux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>> >
>>
>> A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.d=
tsi:
>>
>>     &pwm2 {
>>             pinctrl-names =3D "active";
>>             pinctrl-0 =3D <&pwm2_pin_pull_down>;
>>             status =3D "okay";
>>     };
>>
>> But last time I checked, using the mainline U-Boot (the roc-rk3399-pc =
is
>> in mainline now) with mainline linux v5.2-rc7, no such setting is
>> necessary, and the board boots happily.
>>
>> I cannot find the use of "active" pinctrl state in the
>> `drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup a=
s
>> default, the `pinctrl-names` needs to be "default" or "init" (see
>> `drivers/base/pinctrl.c`) .
>>
>> Jagan, what version of board do you use? I checked with
>> "ROC-RK3399-PC-V1.0-A 2018-07-12".
>=20
> I have ROC-RK3399-PC-V1.A 2018.09.25 and powering with TYPE-C0 port.
>=20
> And here the boot log
>=20
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> [    0.000000] Linux version 5.4.0-rc3-next-20191016
> (jagan@jagan-XPS-13-9350) (gcc version 6.3.1 20170109 (Linaro GCC
> 6.3-2017.02)) #1 SMP PREEMPT Wed Oct 16 21:17:23 IST 2019
> [    0.000000] Machine model: Firefly ROC-RK3399-PC Board
> [    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options=
 '')
> [    0.000000] printk: bootconsole [uart8250] enabled
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
> [    0.000000] NUMA: No NUMA configuration found
> [    0.000000] NUMA: Faking a node at [mem
> 0x0000000000200000-0x00000000f7ffffff]
> [    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
> [    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f=
7ffffff]
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: PSCIv1.1 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> [    0.000000] psci: SMC Calling Convention v1.1
> [    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112=

> [    0.000000] Detected VIPT I-cache on CPU0
> [    0.000000] CPU features: detected: ARM erratum 845719
> [    0.000000] CPU features: detected: GIC system register CPU interfac=
e
> [    0.000000] Speculative Store Bypass Disable mitigation not required=

> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 9=
99432
> [    0.000000] Policy zone: DMA32
> [    0.000000] Kernel command line:
> earlycon=3Duart8250,mmio32,0xff1a0000 root=3D/dev/mmcblk1p1 rootwait
> [    0.000000] Dentry cache hash table entries: 524288 (order: 10,
> 4194304 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 262144 (order: 9,
> 2097152 bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] software IO TLB: mapped [mem 0x3a000000-0x3e000000] (64M=
B)
> [    0.000000] Memory: 3856004K/4061184K available (12028K kernel
> code, 1870K rwdata, 6440K rodata, 5056K init, 451K bss, 172412K
> reserved, 32768K cma-reserved)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
6, Nodes=3D1
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_c=
pu_ids=3D6.
> [    0.000000]  Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
> is 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu=
_ids=3D6
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> [    0.000000] GICv3: 256 SPIs implemented
> [    0.000000] GICv3: 0 Extended SPIs implemented
> [    0.000000] GICv3: Distributor has no Range Selector support
> [    0.000000] GICv3: 16 PPIs implemented
> [    0.000000] GICv3: no VLPI support, no direct LPI support
> [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fe=
f00000
> [    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
> [    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices
> @f6880000 (flat, esz 8, psz 64K, shr 0)
> [    0.000000] ITS: using cache flushing for cmd queue
> [    0.000000] GICv3: using LPI property table @0x00000000f6840000
> [    0.000000] GIC: using cache flushing for LPI property table
> [    0.000000] GICv3: CPU0: using allocated LPI pending table
> @0x00000000f6850000
> [    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] {
> /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
> [    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] {
> /cpus/cpu@100[4] /cpus/cpu@101[5] }
> [    0.000000] random: get_random_bytes called from
> start_kernel+0x2b8/0x454 with crng_init=3D0
> [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> [    0.000006] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
> every 4398046511097ns
> [    0.003201] Console: colour dummy device 80x25
> [    0.003624] printk: console [tty0] enabled
> [    0.004020] printk: bootconsole [uart8250] disabled

I had to put "console=3DttyS2,1500000" in kernel command line to get furt=
her logging beyond this point.

>=20
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20

Gru=C3=9F,
--=20
Markus Reichl


--eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV--

--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVKeIeBh0ZWJOldzLOiXeDmsa/bIFAl2obBsACgkQOiXeDmsa
/bI9KQwAgQfw3C+rC34IN8Q9bXiz6TNeMZKEMllj2WeYpNb5Jjv46Df6sJ2NDFTI
LLlGGcdm0nCcS/EQPeQaJd47ezOonE+0J7SV9W/JCku9agyYNv+pBFfS83zGkwFZ
Z+mKgdjedqrcEwtGrhVChVxFJm1wHJ5u8NkQHcY9CIw5Z8kS91mO3vXqtu2qU3p8
csS/aJb4suWiSUSyuwWcKCnOMJAf6AB+b6HQEZiiM6hyQqJqQequ3RmAo3YPLTOo
REKCHSdUrK/x2NstwWSuu2pooHcH4jnvo4hCkG7jp08MJJsw7UlSVgua0PSvoDbj
5bWAVb/nJ768yrdhFFJHVwIjDj9HuTbrXwANZz6EZZOvDa2m3wqUbS2Oq39QUXeI
ImH6vQQjmB9dCiuiLNYFcS1R0JgIHIXl2+Mh95sVjjZYDDX7PrLZ8fpZgkjqI7VB
X88BQBvBz/y6IaVoqNGJd2aGEapS9X3HaTHJ+YqY5m+Y4dKEMMDMDBIvlf/5A3x3
QFaC6ens
=AEAy
-----END PGP SIGNATURE-----

--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC--


--===============4853232508975546053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4853232508975546053==--

