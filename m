Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EF713829E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 18:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SbUrUVi0njsoQNYgkTQkQ3jeSlKaZGaQTwjsK44chs=; b=hoKipzVG5s6X7/
	0O0W1Rkz2hkBHTPSQa3Qr3S2p7TF9Ao6vF4A+J1agp71gUP8hqfWmRvWkgxQZwXXJKj1aoNGNwSSz
	dwT3cMpJDwFdeunm3kAI9yfQCFRLof+rI0loY+me2kJ7YPCosP843eOrmZlIZse5tL11w+9LUkwQI
	U4ocSvH8/kTtdbz4+0FvmNh30KjFOrArkcS11kvPdKtlHlItrFVu3ZhGQ7rbCutM7uagRLnx4J2jE
	pGQpyl1PF9chpF509TfU9IKBPcugPpdoUEPoIrKtddvm90xDyU1Hw807/m0a7dfp8LwbR8vctNkcs
	0/bAw5S128T1d55bFeXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqKXG-00035O-Vx; Sat, 11 Jan 2020 17:26:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqKX5-00034s-44
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 17:26:44 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA2B6206ED;
 Sat, 11 Jan 2020 17:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578763602;
 bh=ktFS9YWjiT6ht7tc+v11qTbRy7B1vTvUdZZhKJ0Egnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MVi3m3sZJlBPvA51bmf/sgXDrDsOxKOQ3pU47IiGlF7fi3vkjBCtPAK/evnvnIW0b
 N/SukqfHK00DO9Ix+FNtpuGle7O6iweMUvBkPN1rhwNke2cKxyRlMapRr32lo+/7M0
 RZy/zc7DJGUoa0MATrwjwkCRusi9Lwsxx0M2bLKM=
Date: Sat, 11 Jan 2020 18:26:39 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI controllers nodes
 and pinmuxes
Message-ID: <20200111172639.to3lhzros6ca5hj2@gilmour.lan>
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108101006.150706-2-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_092643_192157_87D29AA8 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 10:10:05AM +0000, Andre Przywara wrote:
> The Allwinner H6 SoC contains two SPI controllers similar to the H3/A64,
> but with the added capability of 3-wire and 4-wire operation modes.
> For now the driver does not support those, but the SPI registers are
> fully backwards-compatible, just adding bits and registers which were
> formerly reserved. So we can use the existing driver for the "normal" SPI
> modes, for instance to access the SPI NOR flash soldered on the PineH64
> board.
> We use an H6 specific compatible string in addition to the existing H3
> string, so when the driver later gains Quad SPI support, it should work
> automatically without any DT changes.
>
> Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
> connecting another SPI flash to the SPI1 header pins.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 3329283e38ab..40835850893e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -338,6 +338,30 @@
>  				bias-pull-up;
>  			};
>
> +			/omit-if-no-ref/
> +			spi0_pins: spi0-pins {
> +				pins = "PC0", "PC2", "PC3";
> +				function = "spi0";
> +			};
> +
> +			/omit-if-no-ref/
> +			spi0_cs_pin: spi0-cs-pin {
> +				pins = "PC5";
> +				function = "spi0";
> +			};

It seems suspicious to use it in the Pine H64, since PC5 is also used
by the eMMC (and this prevents either the SPI or the emmc controller
to probe, depending on which probed first).

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
