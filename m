Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BFF19EB04
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dx2R6RAhKPta2y8eHESx+Hhdk7ubzhno3mlvwl7qMqQ=; b=rMquf7XKUvDT2u
	/WNehyJhbZXe3WGN9bmTHo8fhUm2NMRV43XOVxNCDyAe31WxOd1TmXRiakO/G7N94LWUTR4pZgdlB
	8iE136DIIIGevWKtVkyh7YaPZc6nvOxXgNThFWDWhTQVyjpJ30+N2Tyex6V31jQGPNZmh8Sz+60gd
	UVnx1prKwmPvQ090DEcsHltE+VheujAmEdwiFAYyPhG/4sMt4Kj9xjoBU2+pf/amJIztQ118aQPae
	68VG0TWaplO5F3W043ixukR5CMOu8S7k6QZRTc/DBvnbOIRnP/9WZn1sqD9FP1EcAqGuxH5nTxcU2
	gJAEooUdS4WyXRc8Qb6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3od-0001UC-6m; Sun, 05 Apr 2020 11:51:51 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3oS-0001QA-I8
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 11:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1586087498; bh=NNWPYQmKXiUs070rAcv05Neys9flJOHGWA3PVq5buKk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=TIzjQu4Ta7udL+i4zYgBcZYi7l/NQ0qQ4myiGz3hM1O6UU7MbzPLt7FatSSdJPiGs
 IGsydDYXAlgZz2pu8uHJLRT9mL4xXBrDzDIOltqhpCkZJoaIoap7bU209SMa0DJMvP
 PBuGJwwbgJU//n3AJVKnNEIOQ2RnpsdmSXWV6Vc4=
Date: Sun, 5 Apr 2020 13:51:38 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200405115138.vrrvv7spnv6ifm6x@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_045140_781659_966C9688 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Sun, Apr 05, 2020 at 12:49:06PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Sunxi maintainers and members,
> =

> Now that required drivers are merged we can contibute on DVFS support for
> Allwinner H6.
> =

> This serie is based on Yangtao Li serie[0] and Megous works[1].
> =

> Most of the OPP tables are taken from original vendor kernel[2].
> Plus there is a new CPU frequency @1.8GHz.
> =

> I wrote a simple script to randomly set a frequency during a random time[=
3].
> With this script and using stress-ng during a day I didn't see any issue.
> Moreover I have tested specifically the 1.8GHz on my Beelink GS1, max the=
rmal
> 80=B0C is reached after ~10min and then the SoC oscillates quickly betwee=
n 1.5
> and 1.8GHz.

Thank you for working on this. :) I wonder what SoC bin you tested this on.

I have a patch to print it here:

  https://megous.com/git/linux/commit/?h=3Dths-5.7&id=3Dc5ddd2a45c7e04dcec3=
1619b58de7c798ad6594c

> I also test that that offlining CPU0 and doing DVFS on other CPUs works.
> As CPU regulator is only set for CPU0.
> =

> But maybe it doesn't cost much to set the regulator for all the CPUs?
> =

> Jernej test the GPU devfreq on several H6 board particulary the Tanix TX6=
 which
> doesn't have a proper dedicated PMIC and doesn't had any trouble with it.
> =

> Do you think I can enable GPU OPP for all H6 Boards?
> =

> Also Yangtao Li enable DVFS for OrangePi and Pine64, as I can't test them=
 I
> didn't reenable these boards. Please, let me know if you want me to add t=
hese
> boards in this serie.

Feel free to add these OPPs also to OrangePi 3 dts, I've been running mine =
with
this OPP table for at least a year already (I have the worst SoC bin).

Though I'll run a bit more comprehensive test for more frequencies, like you
did, just to be sure.

One thing I wonder about is if there should not be some small ramp delay on=
 the
CPU regulator node, because voltage change probably takes some small time to
apply, compared to changing the PLL frequency. And I have no idea if the CPU
is not running for some very small time out of spec during transitions.

I didn't find timing information in the PMIC datasheet, but I suppose based
on the DCDCA frequency of 3MHz that it will adapt to the new voltage in the
range of 1s-10s of microseconds.

In datasheet of the similar PMIC (AXP813) there is this note:

  DVM (Dynamic Voltage scaling Management) ramp rate: 2.5mV/us at buck freq=
uency 3MHz

I think it will be simiar with AXP805.

regards,
	o.

> Thanks,
> Cl=E9ment
> =

> 0: https://patchwork.kernel.org/cover/10815117/
> 1: https://megous.com/git/linux/log/?h=3Dths-5.7
> 2: https://github.com/orangepi-xunlong/OrangePiH6_Linux4_9/blob/master/ar=
ch/arm64/boot/dts/sunxi/sun50iw6p1.dtsi#L345-L517
> 3: https://gist.github.com/clementperon/55a055dae3f13bbd14fb39c0069fe2e2
> =

> Cl=E9ment P=E9ron (4):
>   arm64: dts: allwinner: h6: set thermal polling time
>   arm64: dts: allwinner: h6: Add GPU Operating Performance Points table
>   arm64: configs: Enable sun50i cpufreq nvmem
>   arm64: dts: allwinner: h6: Enable CPU and GPU opp tables for Beelink
>     GS1
> =

> Ondrej Jirman (2):
>   arm64: dts: allwinner: h6: Add thermal trip points/cooling map
>   arm64: dts: allwinner: h6: Add CPU Operating Performance Points table
> =

> Yangtao Li (1):
>   arm64: dts: allwinner: h6: Add clock to CPU cores
> =

>  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  10 +-
>  .../boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi | 103 ++++++++++++++++++
>  .../boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi |  74 +++++++++++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  44 +++++++-
>  arch/arm64/configs/defconfig                  |   1 +
>  5 files changed, 226 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi
> =

> -- =

> 2.20.1
> =

> -- =

> You received this message because you are subscribed to the Google Groups=
 "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msg=
id/linux-sunxi/20200405104913.22806-1-peron.clem%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
