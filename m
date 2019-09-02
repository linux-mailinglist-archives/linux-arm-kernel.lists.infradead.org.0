Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE185A58B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcUcBR1yIwxalC0hyXkd3F5Tkt3zkbA0IQGvOB5weIU=; b=n/dc/N3EECgdi8
	AMYTGGQ1N5ClnxEng/Lr71unPQNE1NfPZRXD6c2z0ZxcPvRRI7ybkTi2DAlgXWOVxN4dD97I+JLhX
	O2BnrB8nMXqXEAHFjlXaA3tFc/2fM1SKir6+frqHwHmShgdLVSVhaziqQ9x6zb4XafRvJ19mpXAl7
	Tpp9HAYdid01lNFmk21WNSJlqPINejXNhLFBa85x3bgOyO7lsY47QYgRJlajvADwRjIbgWK3z2rNj
	PATe0sIpCDj16ttdL5GJYViN6Q1+t+QlZp+dT2XoqdpCRfIqtiPv7h67PXXlDEzP47Pj1o3NwY8vz
	H8PF7Zu26asyvxvuN0uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mvj-00069e-CF; Mon, 02 Sep 2019 14:03:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mvW-00068k-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1567433004; bh=PIZR0w2A/4yebx5N98JZFq5HnRwp3i+09UDZyZKFhJg=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=aynYSKF6bVmhcvJuC139QvR0C8HJJb5VJKWPq7VfJaFlkBnvBYDScjhMpL0Scs1cv
 keN8Ong6vJuGEaVrZczvmiZBmYwVOQuNBvImPWvyXrUOhDKD78dPfdDISy+3l5SOwn
 Sd6zcnfIZJWzynwdBsycqGIUQoUuBE+1perL7TJ0=
Date: Mon, 2 Sep 2019 16:03:23 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 00/10] arm64: dts: allwinner: h5: Enable CPU DVFS (cpufreq)
Message-ID: <20190902140323.fgfrifyow5qgoce4@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 devicetree@vger.kernel.org, Sergey Matyukevich <geomatsi@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>,
 linux-kernel@vger.kernel.org, Emmanuel Vadot <manu@freebsd.org>,
 linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
References: <20190130084203.25053-1-wens@csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190130084203.25053-1-wens@csie.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_070327_187670_C72311C5 
X-CRM114-Status: GOOD (  19.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sergey Matyukevich <geomatsi@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Andre Przywara <andre.przywara@arm.com>, linux-kernel@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jan 30, 2019 at 04:41:53PM +0800, Chen-Yu Tsai wrote:
> Hi everyone,
> 
> This series enables DVFS for the CPU cores (aka cpufreq) on the
> Allwinner H5 SoC. The OPP table was taken from Armbian, with minor
> tweaks to the maximum voltage to account for slightly increased voltage
> on some of the boards.
> 
> This has been tested on the Bananapi M2+ v1.2 and Libre Computer
> ALL-H3-CC H5 ver..  I do not have the remaining boards so I've CC-ed
> people who did the original submission or have modified the board
> specifically later on.
> 
> Patch 1 fixes the voltages specified for the GPIO-controlled regulator
> on the Bananapi M2+ v1.2. The voltages are slightly higher than what
> was originally written.
> 
> Patch 2 adds a fixed regulator for the CPU on the original Bananapi M2+.
> This is for the retail version, not the engineering samples that had an
> even higher voltage setting.
> 
> Patch 3 hooks up the CPU regulator supply for H5 boards that already
> define the regulator, but were missing the property to tie it to the
> CPUs.
> 
> Patch 4 ~ 8 adds the CPU regulator for boards that don't have it
> defined. This is based on each vendor's schematics. I need people
> to test each of these specifically and the whole series.
> 
> Patch 9 ties the CPU clock to the CPU cores.
> 
> Patch 10 adds the OPP table, based on the one from Armbian.
> 
> Please have a look and please help test this.

Looks like this patch series got forgotten. Or is it waiting for some
user testing?

regards,
	o.

> 
> Regards
> ChenYu
> 
> 
> Chen-Yu Tsai (10):
>   ARM: dts: sunxi: bananapi-m2-plus-v1.2: Fix CPU supply voltages
>   ARM: dts: bananapi-m2-plus: Add CPU supply regulator
>   arm64: dts: allwinner: h5: Hook up cpu regulator supplies
>   arm64: dts: allwinner: h5: nanopi-neo2: Add CPU regulator supply
>   arm64: dts: allwinner: h5: orange-pi-zero-plus: Add CPU regulator
>     supply
>   arm64: dts: allwinner: h5: orange-pi-zero-plus2: Add CPU regulator
>     supply
>   arm64: dts: allwinner: h5: orange-pi-pc2: Add CPU regulator supply
>   arm64: dts: allwinner: h5: orange-pi-prime: Add CPU regulator supply
>   arm64: dts: allwinner: h5: Add clock to CPU cores
>   arm64: dts: allwinner: h5: Add CPU Operating Performance Points table
> 
>  .../boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi | 30 +++-----
>  arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi | 14 ++++
>  .../sun50i-h5-emlid-neutis-n5-devboard.dts    |  4 +
>  .../allwinner/sun50i-h5-nanopi-neo-plus2.dts  |  4 +
>  .../dts/allwinner/sun50i-h5-nanopi-neo2.dts   | 20 +++++
>  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 28 +++++++
>  .../allwinner/sun50i-h5-orangepi-prime.dts    | 28 +++++++
>  .../sun50i-h5-orangepi-zero-plus.dts          | 20 +++++
>  .../sun50i-h5-orangepi-zero-plus2.dts         | 20 +++++
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  | 75 +++++++++++++++++++
>  10 files changed, 224 insertions(+), 19 deletions(-)
> 
> -- 
> 2.20.1
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
