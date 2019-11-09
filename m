Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4C7F5E58
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 11:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eN9Xs/FPF65XNJduacBMRrWXWDKT8K1n+0xCgC59Fs=; b=HGT1lngzIBKUj8
	mekwNykfuNFSdR3jvyPCDMusspT4I5WR2FI+pvzxJh4uUMsjnUVJ5fTQA9/r2LjlalEFB6Lumq2uH
	HEOIGTsl+dxCJ1GP7N210J6Fpfm6gUgKQzyhGep/lmMRsXvjzoAZjxv0m9N2w19WkjWKjE28vbP/8
	hnMAol9tRNWsvcvdIvrxuN3kNYfecb21VDJ4r6dQdPcfAoBQ8YApIlW+eczkXSUShFOpcO1qLxYWB
	JYQktnH+wRT7Wm3c3gsGE/BDpN1O7M4t5XPOYDjgVKn/XcrrHM8JP5ku/KdHUH022rIPKXUjCK2ep
	dWrGq0Qj1X3GzXrXSJVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTNZW-0002yM-OF; Sat, 09 Nov 2019 10:02:22 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTNZO-0002xP-3n
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 10:02:15 +0000
Received: by mail-il1-x144.google.com with SMTP id n18so7362158ilt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 02:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vs+X/P6W6GYH7cIsgTvFIxrJJ1RMCt8vlHBVN9YTrLQ=;
 b=n+9KWcl8vOdYRTmaJECL2uOdZwgNRwme1qf9MpQEwyNYP4PJCvqjxwN7vOxarol1dX
 FBLk4FKdm7GqK9IjJ8HsQlqR1JJPgO9L4B0LVxq2BLFCIJNm7oHtLm3OnFq8bC59aw6o
 H9/ueLtU9mhhfTeq9r9Fgq/HCeY1W4kLqPnjmKIyQqGWZ1pDgh/XmyC6KAM7SIs/bUYj
 CDLEI0BZ/VcF4cqycI/Raj6wNkTaxv/a6K9v0QS1WdwKRP2Q4SmPxlfDJh8tiXmJ8jAy
 IjXQ2Rcauv8Zkh/LALFHochpqrGxBUxt2ndhlSEukqPP/VVUgobKszDXP18I8hee+AeV
 8yuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vs+X/P6W6GYH7cIsgTvFIxrJJ1RMCt8vlHBVN9YTrLQ=;
 b=Uze11NZxj8fMNLTFWWnuqYpUOgTZFgFkPj92jDRoqUvTT8NWg0Q46AZ8/1Mui7yqMU
 dU9G8YK/nGLsFfyGoKA7icR8TbUixKKKRSHufJ/2DZ4+k10FMpgBZex02sqCFp4snvWc
 Z1ac5P/Qt4IvzNb2EN0xK1vqF5p3Y/R1uFHgKjbeM39+4vSJtn0+vM8dIkGbJwoM887l
 OgxNYtwhx8wHW6MbeFmdtfor9rOEf+nO+8vohUaWxfsGAmTxHSwYgFycLilUpf3fTCpc
 AewZj03ytUXPv0Hkx5M613kfhe+quShBuOPSRDtXptmPw9oPpZaCvgXzoNPtjpCNDMBN
 wIZw==
X-Gm-Message-State: APjAAAXsagFpFrxJKx/TZoLt2XNfY9404WQ27Ab4vphEbT/nwtUB61KS
 z1uQb54aUl5ZeMpVbsbKKNGDBfhMvl/rGtMmFSE=
X-Google-Smtp-Source: APXvYqwianoJVEmtn2oB/9sgIxCrQXModFIIVSb6OLqRds94y5OawtkCJhr0dkaYju58pyUI6OozxaX3kdh3mBoWB0c=
X-Received: by 2002:a92:5c4f:: with SMTP id q76mr18038660ilb.158.1573293731681; 
 Sat, 09 Nov 2019 02:02:11 -0800 (PST)
MIME-Version: 1.0
References: <cover.1568224032.git.hns@goldelico.com>
 <CAHCN7xLvuj_LkvOV3YG5=0MZYsohbQArE0UCZx6pcRPwM5pkYg@mail.gmail.com>
 <4F6078BD-0759-4B47-933E-E29EE1D8AD18@goldelico.com>
In-Reply-To: <4F6078BD-0759-4B47-933E-E29EE1D8AD18@goldelico.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 9 Nov 2019 04:02:00 -0600
Message-ID: <CAHCN7x+EbJp2qrqB2DFZxogDt2yACRT=XqT7V-kcJbJ-4StEOw@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_020214_158507_1CB3461B 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux-OMAP <linux-omap@vger.kernel.org>, linux-pm@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 9, 2019 at 12:12 AM H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Hi Adam,
>
> > Am 08.11.2019 um 21:08 schrieb Adam Ford <aford173@gmail.com>:
> >
> >
> > Nikolaus,
> >
> > I am getting some notices sent to me when I apply your series.  It
> > works, but I want to clean up the notice.  Can you suggest what might
> > cause this:
> >
> >     debugfs: Directory 'cpu0-cpu0' with parent
> > '48070000.i2c:twl@48:regulator-vdd1-VDD1' already present!
> >
> > It wasn't present before your series.  It's not a big deal, but I'd
> > like to quiet down the messages if I can.
> > Thanks.
>
> I have checked and can also see this message - and it should be removed.
>
> There is a debugfs node at:
>
> /sys/kernel/debug/regulator/48070000.i2c:twl@48:regulator-vdd1-VDD1/cpu0-cpu0
>
> OMAP5 also has a similar node but no such debugfs warning:
>
> /sys/kernel/debug/regulator/smps123/cpu0-cpu0
>
> So what I suspect is some bug in the twl4030 regulator driver which is
> just revealed by my patch series for the first time.

I was wondering that too.

>
> Could it be that the debugfs node is created and not cleaned up by deferred
> probing?

That would make sense to me.

>
> But this is not explicitly done in drivers/regulator/twl-regulator.c
>
> BTW: twl6030 and palmas (twl6037) have separate driver, so that mentioning
> twl6030 in the comments in drivers/regulator/twl-regulator.c may be wrong.
> It also mentions some "TW5030" which I have never heard of.
>
> To find out the call sequence I added a dump_stack to start_creating()
> after the error message is printed:
>
>
> [    2.289947] debugfs: Directory 'cpu0-cpu0' with parent '48070000.i2c:twl@48:regulator-vdd1-VDD1' already present!
> [    2.301727] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc6-letux+ #1329
> [    2.309112] Hardware name: Generic OMAP36xx (Flattened Device Tree)
> [    2.315734] [<c0110028>] (unwind_backtrace) from [<c010b60c>] (show_stack+0x10/0x14)
> [    2.323852] [<c010b60c>] (show_stack) from [<c07b9b60>] (dump_stack+0x7c/0x9c)
> [    2.331420] [<c07b9b60>] (dump_stack) from [<c0373588>] (start_creating+0xa8/0x104)
> [    2.339477] [<c0373588>] (start_creating) from [<c0373fb0>] (debugfs_create_dir+0xc/0xc0)
> [    2.348052] [<c0373fb0>] (debugfs_create_dir) from [<c04e96e0>] (create_regulator+0xd0/0x1c8)
> [    2.356994] [<c04e96e0>] (create_regulator) from [<c04ec608>] (_regulator_get+0x190/0x224)
> [    2.365661] [<c04ec608>] (_regulator_get) from [<c06653d0>] (dt_cpufreq_probe+0x80/0x108)
> [    2.374237] [<c06653d0>] (dt_cpufreq_probe) from [<c053e018>] (platform_drv_probe+0x48/0x98)
> [    2.383087] [<c053e018>] (platform_drv_probe) from [<c053c3a8>] (really_probe+0x164/0x324)
> [    2.391754] [<c053c3a8>] (really_probe) from [<c053c7b8>] (driver_probe_device+0x10c/0x154)
> [    2.400512] [<c053c7b8>] (driver_probe_device) from [<c053a9f4>] (bus_for_each_drv+0x90/0xb8)
> [    2.409423] [<c053a9f4>] (bus_for_each_drv) from [<c053c5f8>] (__device_attach+0x90/0x120)
> [    2.418090] [<c053c5f8>] (__device_attach) from [<c053b628>] (bus_probe_device+0x28/0x80)
> [    2.426666] [<c053b628>] (bus_probe_device) from [<c05393ec>] (device_add+0x2f0/0x55c)
> [    2.434967] [<c05393ec>] (device_add) from [<c053decc>] (platform_device_add+0x12c/0x1b8)
> [    2.443542] [<c053decc>] (platform_device_add) from [<c053e954>] (platform_device_register_full+0xec/0x13c)
> [    2.453765] [<c053e954>] (platform_device_register_full) from [<c0665ff4>] (ti_cpufreq_probe+0x298/0x2fc)
> [    2.463775] [<c0665ff4>] (ti_cpufreq_probe) from [<c053e018>] (platform_drv_probe+0x48/0x98)
> [    2.472625] [<c053e018>] (platform_drv_probe) from [<c053c3a8>] (really_probe+0x164/0x324)
> [    2.481292] [<c053c3a8>] (really_probe) from [<c053c7b8>] (driver_probe_device+0x10c/0x154)
> [    2.490051] [<c053c7b8>] (driver_probe_device) from [<c053a9f4>] (bus_for_each_drv+0x90/0xb8)
> [    2.498992] [<c053a9f4>] (bus_for_each_drv) from [<c053c5f8>] (__device_attach+0x90/0x120)
> [    2.507629] [<c053c5f8>] (__device_attach) from [<c053b628>] (bus_probe_device+0x28/0x80)
> [    2.516204] [<c053b628>] (bus_probe_device) from [<c05393ec>] (device_add+0x2f0/0x55c)
> [    2.524505] [<c05393ec>] (device_add) from [<c053decc>] (platform_device_add+0x12c/0x1b8)
> [    2.533081] [<c053decc>] (platform_device_add) from [<c053e954>] (platform_device_register_full+0xec/0x13c)
> [    2.543304] [<c053e954>] (platform_device_register_full) from [<c0665d2c>] (ti_cpufreq_init+0x78/0xa8)
> [    2.553039] [<c0665d2c>] (ti_cpufreq_init) from [<c0102ed8>] (do_one_initcall+0xb4/0x268)
> [    2.561645] [<c0102ed8>] (do_one_initcall) from [<c0b00fe4>] (kernel_init_freeable+0x11c/0x1ec)
> [    2.570770] [<c0b00fe4>] (kernel_init_freeable) from [<c07cf1c8>] (kernel_init+0x8/0x110)
> [    2.579345] [<c07cf1c8>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> [    2.587249] Exception stack(0xde0b1fb0 to 0xde0b1ff8)
> [    2.592559] 1fa0:                                     00000000 00000000 00000000 00000000
> [    2.601135] 1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [    2.609680] 1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>
>
> So the problem seems to be that ti_cpufreq_probe() tries to register the regulators
> "vdd" and "vbb" without properly checking if they have been registered elsewhere.
>
> The second attempt to create the debugfs directory seems to come from resources_available()
> which thinks that it has to create the regulator (again) [around line 1935 in drivers/regulator/core.c].
>
> Hope this helps, although I have no idea why the vdd regulator already exists at that point.

Thank you for the detailed analysis.


>
> BR,
> Nikolaus
>
>
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
