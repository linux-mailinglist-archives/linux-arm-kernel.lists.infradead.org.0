Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B3BF5DA9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 07:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkbojfZ2S9mwKWzkkk4RP05dN/XEsF0Uhn/8NQnTVR8=; b=qifqIvp3mI6jQV
	I++oPFa9KDuorZTQuO63mxIrTcaBVVViOnOTnbDfLdRKW6AHlN60W5PczcoJdBbmc0jvgWCA82xW+
	KYOS9qYLaPegjv7HD7jUA/5IEA/zkXa+p1EC+MF9X2DfI1DTqonBuTkCCNABY959UlpYPhHXPl79+
	KdWFV0tPx+3ibgSJP9PaxFl4VU1z2Ovcjw6YgJaeF4y/BOkh9kFln00Hq0jFhH+bL6KSTXpp0jZNl
	nrvpQuTWnkdqVW3aQx9eq+6bCKAghzZ88gLtgUoI0w3UdObhbb1zZxvbtvTi5zdxOsjSFvdNSTcyi
	ND8dxiT4JT1bFKOSKV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTJzB-0008Aj-Jn; Sat, 09 Nov 2019 06:12:37 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTJz3-0008A3-U8
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 06:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573279944;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=WMmQ4+DDSXPayYeZHO1v0pTuWaWEXdBQOD1L/vQ0wYA=;
 b=qVe//qZQqOL1uTLnKNhnbfDTo81GTmDBoFLeb4dLijTXqWgFWlp1gsY0WzEc3+cYKJ
 m4Ep55aAg+gqqTEQ80GWA7SuTfDWTExJ/CdlvmJS2/MroBGoWFaHaHKeTq47j00YgNzM
 cu1hyT0UlTgSDRtV5oHeTPDwvzKzE/0Kd1hGGCw3W3h/P/QEUlkoQ6AtgSDBmZH2bAgH
 caj6P06fjAUoDae20EWfMg6PC9s+yvp1/7yK1YrENuiJUCB1RyjOvpGpLR+3qw7rCFDn
 afOmVwgvyDI3yHBXqDZTmgX+rnwCMDkeN3FkMaPzyPoyUTcfonq4p8d1jXFPOKOXD599
 k08Q==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PrwDOi71s="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vA96CMnPU
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 9 Nov 2019 07:12:22 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAHCN7xLvuj_LkvOV3YG5=0MZYsohbQArE0UCZx6pcRPwM5pkYg@mail.gmail.com>
Date: Sat, 9 Nov 2019 07:12:22 +0100
Message-Id: <4F6078BD-0759-4B47-933E-E29EE1D8AD18@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <CAHCN7xLvuj_LkvOV3YG5=0MZYsohbQArE0UCZx6pcRPwM5pkYg@mail.gmail.com>
To: Adam Ford <aford173@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_221230_561841_F10AA4A4 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-pm@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

> Am 08.11.2019 um 21:08 schrieb Adam Ford <aford173@gmail.com>:
> 
> 
> Nikolaus,
> 
> I am getting some notices sent to me when I apply your series.  It
> works, but I want to clean up the notice.  Can you suggest what might
> cause this:
> 
>     debugfs: Directory 'cpu0-cpu0' with parent
> '48070000.i2c:twl@48:regulator-vdd1-VDD1' already present!
> 
> It wasn't present before your series.  It's not a big deal, but I'd
> like to quiet down the messages if I can.
> Thanks.

I have checked and can also see this message - and it should be removed.

There is a debugfs node at:

/sys/kernel/debug/regulator/48070000.i2c:twl@48:regulator-vdd1-VDD1/cpu0-cpu0

OMAP5 also has a similar node but no such debugfs warning:

/sys/kernel/debug/regulator/smps123/cpu0-cpu0

So what I suspect is some bug in the twl4030 regulator driver which is
just revealed by my patch series for the first time.

Could it be that the debugfs node is created and not cleaned up by deferred
probing?

But this is not explicitly done in drivers/regulator/twl-regulator.c

BTW: twl6030 and palmas (twl6037) have separate driver, so that mentioning
twl6030 in the comments in drivers/regulator/twl-regulator.c may be wrong.
It also mentions some "TW5030" which I have never heard of.

To find out the call sequence I added a dump_stack to start_creating()
after the error message is printed:


[    2.289947] debugfs: Directory 'cpu0-cpu0' with parent '48070000.i2c:twl@48:regulator-vdd1-VDD1' already present!
[    2.301727] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc6-letux+ #1329
[    2.309112] Hardware name: Generic OMAP36xx (Flattened Device Tree)
[    2.315734] [<c0110028>] (unwind_backtrace) from [<c010b60c>] (show_stack+0x10/0x14)
[    2.323852] [<c010b60c>] (show_stack) from [<c07b9b60>] (dump_stack+0x7c/0x9c)
[    2.331420] [<c07b9b60>] (dump_stack) from [<c0373588>] (start_creating+0xa8/0x104)
[    2.339477] [<c0373588>] (start_creating) from [<c0373fb0>] (debugfs_create_dir+0xc/0xc0)
[    2.348052] [<c0373fb0>] (debugfs_create_dir) from [<c04e96e0>] (create_regulator+0xd0/0x1c8)
[    2.356994] [<c04e96e0>] (create_regulator) from [<c04ec608>] (_regulator_get+0x190/0x224)
[    2.365661] [<c04ec608>] (_regulator_get) from [<c06653d0>] (dt_cpufreq_probe+0x80/0x108)
[    2.374237] [<c06653d0>] (dt_cpufreq_probe) from [<c053e018>] (platform_drv_probe+0x48/0x98)
[    2.383087] [<c053e018>] (platform_drv_probe) from [<c053c3a8>] (really_probe+0x164/0x324)
[    2.391754] [<c053c3a8>] (really_probe) from [<c053c7b8>] (driver_probe_device+0x10c/0x154)
[    2.400512] [<c053c7b8>] (driver_probe_device) from [<c053a9f4>] (bus_for_each_drv+0x90/0xb8)
[    2.409423] [<c053a9f4>] (bus_for_each_drv) from [<c053c5f8>] (__device_attach+0x90/0x120)
[    2.418090] [<c053c5f8>] (__device_attach) from [<c053b628>] (bus_probe_device+0x28/0x80)
[    2.426666] [<c053b628>] (bus_probe_device) from [<c05393ec>] (device_add+0x2f0/0x55c)
[    2.434967] [<c05393ec>] (device_add) from [<c053decc>] (platform_device_add+0x12c/0x1b8)
[    2.443542] [<c053decc>] (platform_device_add) from [<c053e954>] (platform_device_register_full+0xec/0x13c)
[    2.453765] [<c053e954>] (platform_device_register_full) from [<c0665ff4>] (ti_cpufreq_probe+0x298/0x2fc)
[    2.463775] [<c0665ff4>] (ti_cpufreq_probe) from [<c053e018>] (platform_drv_probe+0x48/0x98)
[    2.472625] [<c053e018>] (platform_drv_probe) from [<c053c3a8>] (really_probe+0x164/0x324)
[    2.481292] [<c053c3a8>] (really_probe) from [<c053c7b8>] (driver_probe_device+0x10c/0x154)
[    2.490051] [<c053c7b8>] (driver_probe_device) from [<c053a9f4>] (bus_for_each_drv+0x90/0xb8)
[    2.498992] [<c053a9f4>] (bus_for_each_drv) from [<c053c5f8>] (__device_attach+0x90/0x120)
[    2.507629] [<c053c5f8>] (__device_attach) from [<c053b628>] (bus_probe_device+0x28/0x80)
[    2.516204] [<c053b628>] (bus_probe_device) from [<c05393ec>] (device_add+0x2f0/0x55c)
[    2.524505] [<c05393ec>] (device_add) from [<c053decc>] (platform_device_add+0x12c/0x1b8)
[    2.533081] [<c053decc>] (platform_device_add) from [<c053e954>] (platform_device_register_full+0xec/0x13c)
[    2.543304] [<c053e954>] (platform_device_register_full) from [<c0665d2c>] (ti_cpufreq_init+0x78/0xa8)
[    2.553039] [<c0665d2c>] (ti_cpufreq_init) from [<c0102ed8>] (do_one_initcall+0xb4/0x268)
[    2.561645] [<c0102ed8>] (do_one_initcall) from [<c0b00fe4>] (kernel_init_freeable+0x11c/0x1ec)
[    2.570770] [<c0b00fe4>] (kernel_init_freeable) from [<c07cf1c8>] (kernel_init+0x8/0x110)
[    2.579345] [<c07cf1c8>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    2.587249] Exception stack(0xde0b1fb0 to 0xde0b1ff8)
[    2.592559] 1fa0:                                     00000000 00000000 00000000 00000000
[    2.601135] 1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    2.609680] 1fe0: 00000000 00000000 00000000 00000000 00000013 00000000


So the problem seems to be that ti_cpufreq_probe() tries to register the regulators
"vdd" and "vbb" without properly checking if they have been registered elsewhere.

The second attempt to create the debugfs directory seems to come from resources_available()
which thinks that it has to create the regulator (again) [around line 1935 in drivers/regulator/core.c].

Hope this helps, although I have no idea why the vdd regulator already exists at that point.

BR,
Nikolaus




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
