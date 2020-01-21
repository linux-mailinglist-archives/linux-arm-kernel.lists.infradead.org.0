Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4571439AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:40:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p/oqb6ai3MULJKykLQqDW39asFv5NlDPAq9FxHX5z3Y=; b=bwc/4bp1kC+Wb2kq93e7Ezzfo
	vrTCj1WIq2uLsF5kefRj6G5cpjpCuwnUoFZDcUh05Hd3ZhSoIEkU/wMZWLsB5qNbCjT7c50VDJlDh
	OJTs69h4bQO6+G36RtYKSyUNxtCmJdLmzUWAyiSJ/6Z7yw74gj5ZxO5hRu6tzPbwT5t6VcT3rkJd6
	5I9XiF8jUVINlU8f40CpFWSor/2nfaYH+6YhqLEgCcYOAONbHEBy2oH5NzoMxer2HW6B2Mts5hLIb
	RCeCcLRDLXiR/TTjzaziM6er9wIZGc85o4RRiI6h3eE4irZXkyiUbQYu0Q56ZGEpVklvR0oHfCAQI
	/2Puo6J1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itq1Z-0003MV-2y; Tue, 21 Jan 2020 09:40:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itq1K-0003Jw-AT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:40:31 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C82D217F4;
 Tue, 21 Jan 2020 09:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579599625;
 bh=VgJ+Vrsu4/FV5/6PAsTdWdGxtgPUJliPeEo6bRmPSso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GXUjcOC3q1e2ijdq7CvubBXfpev13jxYEqdLM8xXSThcO47M5bx29bmBsvYNzYxq7
 ZCEP1xeIeR18Hb9kQbX1LqfKYvPFOBhRzG9nTa310pSXrXCKU6f/mSXLFKCNFCTv+/
 5azhWFions6A06XsEpk/l/tjjehiG+IgEkKRmO9I=
Date: Tue, 21 Jan 2020 10:40:23 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: No master_xfer_atomic for i2c-mv64xxx.c
Message-ID: <20200121094023.jywheey6sjsgrr44@gilmour.lan>
References: <da0061d1-917f-d807-a7ac-05d302d88565@gmail.com>
MIME-Version: 1.0
In-Reply-To: <da0061d1-917f-d807-a7ac-05d302d88565@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_014026_401279_36F7EDAA 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2959843305263657007=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2959843305263657007==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ri2cc3wayxbar2zz"
Content-Disposition: inline


--ri2cc3wayxbar2zz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Florian,

On Sat, Jan 18, 2020 at 08:21:43PM -0800, Florian Fainelli wrote:
> Happy new year to all of you!

Happy new year to you too ;)

> On a lamobo R1 (A20) the trace below can be seen by typing "halt"
> which makes us try to perform an i2c transaction in atomic context
> by the X-powers AXP20x driver while the i2c-mv64xxx.c driver does
> not support it.
>
> I am not familiar enough with this i2c controller to suggest a way to
> refactor it such that it would easily gain master_xfer_atomic support.
> Is this something you could look at?
>
> Thanks!
>
> [ 1617.999014] reboot: Power down
> [ 1618.002111] ------------[ cut here ]------------
> [ 1618.006752] WARNING: CPU: 0 PID: 2427 at drivers/i2c/i2c-core.h:41
> i2c_transfer+0x108/0x144
> [ 1618.015092] No atomic I2C transfer handler for 'i2c-0'
> [ 1618.020222] Modules linked in: pppoe ppp_async pppox ppp_generic slhc
> crc_ccitt cmac
> [ 1618.027987] CPU: 0 PID: 2427 Comm: procd Not tainted 5.5.0-rc5+ #0
> [ 1618.034158] Hardware name: Allwinner sun7i (A20) Family
> [ 1618.039376] Backtrace:
> [ 1618.041837] [<c0238488>] (dump_backtrace) from [<c0238710>]
> (show_stack+0x20/0x24)
> [ 1618.049400]  r7:00000029 r6:60000093 r5:00000000 r4:c10a197c
> [ 1618.055061] [<c02386f0>] (show_stack) from [<c096ae4c>]
> (dump_stack+0x9c/0xb0)
> [ 1618.062282] [<c096adb0>] (dump_stack) from [<c0252548>]
> (__warn+0xe0/0x108)
> [ 1618.069237]  r7:00000029 r6:00000009 r5:c075d948 r4:c0aefafc
> [ 1618.074895] [<c0252468>] (__warn) from [<c0252944>]
> (warn_slowpath_fmt+0x94/0x9c)
> [ 1618.082369]  r7:c075d948 r6:00000029 r5:c0aefafc r4:c0aefbc0
> [ 1618.088026] [<c02528b4>] (warn_slowpath_fmt) from [<c075d948>]
> (i2c_transfer+0x108/0x144)
> [ 1618.096195]  r8:00000032 r7:c10a93e4 r6:00000001 r5:ea32fd3c r4:ea945ca8
> [ 1618.102892] [<c075d840>] (i2c_transfer) from [<c075d9d0>]
> (i2c_transfer_buffer_flags+0x4c/0x5c)
> [ 1618.111579]  r6:eb3c6501 r5:00000001 r4:00000002
> [ 1618.116199] [<c075d984>] (i2c_transfer_buffer_flags) from
> [<c0675658>] (regmap_i2c_write+0x24/0x40)
> [ 1618.125229]  r4:00000002
> [ 1618.127768] [<c0675634>] (regmap_i2c_write) from [<c06703d8>]
> (_regmap_raw_write_impl+0x72c/0x908)
> [ 1618.136713]  r5:00000001 r4:ea8d9c00
> [ 1618.140291] [<c066fcac>] (_regmap_raw_write_impl) from [<c0670630>]
> (_regmap_bus_raw_write+0x7c/0xa0)
> [ 1618.149501]  r10:00000058 r9:ea32e000 r8:fee1dead r7:00000080
> r6:00000032 r5:c066be98
> [ 1618.157319]  r4:ea8d9c00
> [ 1618.159857] [<c06705b4>] (_regmap_bus_raw_write) from [<c066fa08>]
> (_regmap_write+0x7c/0x164)
> [ 1618.168371]  r7:ea8d9c00 r6:00000080 r5:00000032 r4:ea8d9c00
> [ 1618.174029] [<c066f98c>] (_regmap_write) from [<c0671294>]
> (regmap_write+0x4c/0x6c)
> [ 1618.181679]  r9:ea32e000 r8:fee1dead r7:0002e574 r6:00000080
> r5:00000032 r4:ea8d9c00
> [ 1618.189420] [<c0671248>] (regmap_write) from [<c067d0ac>]
> (axp20x_power_off+0x3c/0x48)
> [ 1618.197328]  r7:0002e574 r6:28121969 r5:c1004e90 r4:4321fedc
> [ 1618.202985] [<c067d070>] (axp20x_power_off) from [<c023605c>]
> (machine_power_off+0x34/0x38)
> [ 1618.211332] [<c0236028>] (machine_power_off) from [<c027850c>]
> (kernel_power_off+0x7c/0x80)
> [ 1618.219676] [<c0278490>] (kernel_power_off) from [<c02786a0>]
> (__do_sys_reboot+0x190/0x1f4)
> [ 1618.228019] [<c0278510>] (__do_sys_reboot) from [<c0278774>]
> (sys_reboot+0x18/0x1c)
> [ 1618.235669]  r8:c0201324 r7:00000058 r6:b6f69010 r5:becbbe2c r4:00000000
> [ 1618.242366] [<c027875c>] (sys_reboot) from [<c0201120>]
> (ret_fast_syscall+0x0/0x4c)
> [ 1618.250013] Exception stack(0xea32ffa8 to 0xea32fff0)
> [ 1618.255062] ffa0:                   00000000 becbbe2c fee1dead
> 28121969 4321fedc 0002e574
> [ 1618.263231] ffc0: 00000000 becbbe2c b6f69010 00000058 ffffffff
> 00000000 0000201d 00000001
> [ 1618.271398] ffe0: 0002de54 becbbd5c 0001ac8c b6f8e408
> [ 1618.276443] ---[ end trace 526da779414c6638 ]---

Is that on every reboot?

However, I'm not entirely sure how we could implement it without
sleeping. The controller is basically a state machine that triggers an
interrupt on each state change, so you first set the address, get an
interrupt, then set the direction, then you get an interrupt, etc.

I guess we could implement it using polling, but I'm not sure if
that's wise in an interrupt context either.

Maxime

--ri2cc3wayxbar2zz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXibHBwAKCRDj7w1vZxhR
xed3AQDW98W0fhDteKz/9jBs4zA1M/HReTMmE/nSSDc3j9xl4AEA2f79EAP6nRnf
qq8Yym9sFmc671FrxOQSpEBvO2L2nQE=
=oMXB
-----END PGP SIGNATURE-----

--ri2cc3wayxbar2zz--


--===============2959843305263657007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2959843305263657007==--

