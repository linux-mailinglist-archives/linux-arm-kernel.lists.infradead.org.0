Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE19C1168B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5NIX1tO8LA0Nf9TnnUXsY03z8MIHErn4zWf7chazwwI=; b=V1LZKLH5BQ2M+kho3elbK80M2
	VxSD/VRWUFm7li9f7ozhZZ2CxMqLmFzuOuEafa9fBQMvu4oh0ko3SFWgOvacPJ0ipezriZegCMGey
	jnc8TXRYmsp1u3WTGbKlY/KpfZamKNWOH+0vLQnWqts5GLUZsFLG3bPFttrXlycoANPLOvycXGdHI
	/JxZAdKfRf4mTrHbcEH7X4ecoude+0SWgCifKYKUPms+ZXAO/86o1m+Quc902736Ab8Ukryqpyzip
	dUzEPE1FF6qDDD9uZeXNC8NzBBKPkfO7mvFzwGQu6xe/arMOo0/PB/IJ/+PJn2Zkr42D0UQ40Nm+O
	/KsAwW3SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEo2-0006LS-NH; Mon, 09 Dec 2019 08:54:14 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEnt-0006Ks-Qs
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:54:08 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BB64323061;
 Mon,  9 Dec 2019 09:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575881643;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4riFmKf9tBgbsf4/e3IuOdl1wAdjwDAfAlAXK9IfW+Q=;
 b=FB9aNPDa2D+WzDu0C91tIjIQjZlceuZ4d/EKTo8n0Zl6z84jY2MAIdFBhrBS3v4sLLCXIH
 VQb7h7kiw2rPvVbQfnnBfnM1HGrwZXmKA5jhFkrpM0bNj/Cb/DCXj9PeMkBveMAfaPSuWE
 SDDDZuTyV1uOLQ21cOo4Yc9DmwzgKFk=
MIME-Version: 1.0
Date: Mon, 09 Dec 2019 09:54:03 +0100
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: freescale: add Kontron sl28 support
In-Reply-To: <20191209064356.GD3365@dragon>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-5-michael@walle.cc> <20191209064356.GD3365@dragon>
Message-ID: <ef2438b502d84127c4bca201e2dcc0f8@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: BB64323061
X-Spamd-Result: default: False [1.40 / 15.00]; TO_DN_SOME(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[7]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.4.147.224:email,0.0.0.4:email,0.0.0.50:email,0.0.0.5:email,0.0.39.16:email,0.0.0.32:email,0.3.13.64:email,0.1.134.160:email,0.3.52.80:email,0.5.48.32:email,0.0.0.0:email];
 NEURAL_HAM(-0.00)[-0.655]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_005406_174710_FF7358BA 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2019-12-09 07:43, schrieb Shawn Guo:
> On Sat, Nov 23, 2019 at 09:13:17PM +0100, Michael Walle wrote:
>> Add device tree files for the Kontron SMARC-sAL28 board and its
>> carriers.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  arch/arm64/boot/dts/freescale/Makefile        |   4 +
>>  .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     |  27 +++
>>  .../fsl-ls1028a-kontron-sl28-var3-ads2.dts    |  73 ++++++++
>>  .../fsl-ls1028a-kontron-sl28-var4.dts         |  34 ++++
>>  .../freescale/fsl-ls1028a-kontron-sl28.dts    | 158 
>> ++++++++++++++++++
>>  5 files changed, 296 insertions(+)
>>  create mode 100644 
>> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
>>  create mode 100644 
>> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
>>  create mode 100644 
>> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
>>  create mode 100644 
>> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
>> 
>> diff --git a/arch/arm64/boot/dts/freescale/Makefile 
>> b/arch/arm64/boot/dts/freescale/Makefile
>> index 93fce8f0c66d..080c5a59d6bd 100644
>> --- a/arch/arm64/boot/dts/freescale/Makefile
>> +++ b/arch/arm64/boot/dts/freescale/Makefile
>> @@ -4,6 +4,10 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frwy.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-oxalis.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-qds.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-rdb.dtb
>> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += 
>> fsl-ls1028a-kontron-kbox-a-230-ls.dtb
>> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28.dtb
>> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += 
>> fsl-ls1028a-kontron-sl28-var3-ads2.dtb
>> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
>>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
>> diff --git 
>> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
>> new file mode 100644
>> index 000000000000..97e72c94b7fc
>> --- /dev/null
>> +++ 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
>> @@ -0,0 +1,27 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Device Tree File for the Kontron KBox A-230-LS.
>> + *
>> + * This consists of a Kontron SMARC-sAL28 (Dual PHY) and a special
>> + * carrier (s1914).
>> + *
>> + * Copyright (C) 2019 Michael Walle <michael@walle.cc>
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +#include "fsl-ls1028a-kontron-sl28-var4.dts"
>> +
>> +/ {
>> +	model = "Kontron KBox A-230-LS";
>> +	compatible = "kontron,kbox-a-230-ls", "kontron,sl28-var3",
>> +		     "kontron,sl28", "fsl,ls1028a";
> 
> Any new compatible needs to be documented.

There is actually no ls1028a board documented ;) I'd add the rdb as well 
as the qds to Documentation/devicetree/bindings/arm/fsl.yaml in the next 
series. Or is that just for arm and not arm64?


> 
>> +};
>> +
>> +&i2c4 {
>> +	eeprom@50 {
>> +		compatible = "atmel,24c32";
>> +		reg = <0x50>;
>> +		pagesize = <32>;
>> +	};
>> +};
>> diff --git 
>> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
>> new file mode 100644
>> index 000000000000..a4640e6b3928
>> --- /dev/null
>> +++ 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
>> @@ -0,0 +1,73 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Device Tree file for the Kontron SMARC-sAL28 board on a SMARC Eval 
>> 2.0
>> + * carrier (ADS2).
>> + *
>> + * Copyright (C) 2019 Michael Walle <michael@walle.cc>
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +#include "fsl-ls1028a-kontron-sl28.dts"
>> +
>> +/ {
>> +	model = "Kontron SMARC-sAL28 (Single PHY) on SMARC Eval 2.0 
>> carrier";
>> +	compatible = "kontron,sl28-var3-ads2", "kontron,sl28", 
>> "fsl,ls1028a";
>> +
>> +	sound {
>> +		compatible = "simple-audio-card";
>> +		simple-audio-card,format = "i2s";
>> +		simple-audio-card,widgets =
>> +			"Headphone", "Headphone Jack",
>> +			"Line", "Line Out Jack";
>> +		simple-audio-card,routing =
>> +			"Line Out Jack", "LINEOUTR",
>> +			"Line Out Jack", "LINEOUTL",
>> +			"Headphone Jack", "HPOUTR",
>> +			"Headphone Jack", "HPOUTL";
>> +		simple-audio-card,mclk-fs = <256>;
>> +
>> +		simple-audio-card,cpu {
>> +			sound-dai = <&sai6>;
>> +		};
>> +
>> +		simple-audio-card,codec {
>> +			sound-dai = <&wm8904>;
>> +			frame-master;
>> +			bitclock-master;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c4 {
>> +	status = "okay";
>> +
>> +	wm8904: wm8904@1a {
> 
> audio-codec for node name.
ok

> 
>> +		#sound-dai-cells = <0>;
>> +		compatible = "wlf,wm8904";
>> +		reg = <0x1a>;
>> +		clocks = <&wm8904_mclk>;
>> +		clock-names = "mclk";
>> +		assigned-clocks = <&wm8904_mclk>;
>> +		assigned-clock-rates = <1250000>;
>> +	};
>> +
>> +	eeprom@50 {
>> +		compatible = "atmel,24c32";
>> +		reg = <0x50>;
>> +		pagesize = <32>;
>> +	};
>> +};
>> +
>> +&sai6 {
>> +	status = "okay";
>> +};
>> +
>> +&soc {
>> +	wm8904_mclk: wm8904-mclk@f130080 {
>> +		compatible = "fsl,vf610-sai-clock";
> 
> Unsupported/undocumented binding?

under review here:
https://lore.kernel.org/linux-devicetree/20191122235622.8818-1-michael@walle.cc/

> 
>> +		reg = <0x0 0xf130080 0x0 0x80>;
>> +		clocks = <&clockgen 4 1>;
>> +		#clock-cells = <0>;
>> +	};
>> +};
>> diff --git 
>> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
>> new file mode 100644
>> index 000000000000..5c8b13108e4d
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
>> @@ -0,0 +1,34 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Device Tree file for the Kontron SMARC-sAL28 board.
>> + *
>> + * This is for the network variant 4 which has two ethernet ports. It
>> + * extends the base and provides one more port connected via RGMII.
>> + *
>> + * Copyright (C) 2019 Michael Walle <michael@walle.cc>
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +#include "fsl-ls1028a-kontron-sl28.dts"
>> +
>> +/ {
>> +	model = "Kontron SMARC-sAL28 (Dual PHY)";
>> +	compatible = "kontron,sl28-var4", "kontron,sl28", "fsl,ls1028a";
>> +};
>> +
>> +&enetc_port1 {
>> +	phy-handle = <&phy1>;
>> +	phy-connection-type = "rgmii-id";
>> +
>> +	mdio {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		phy1: ethernet-phy@4 {
>> +			reg = <0x4>;
>> +			eee-broken-1000t;
>> +			eee-broken-100tx;
>> +		};
>> +	};
>> +};
>> diff --git 
>> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
>> new file mode 100644
>> index 000000000000..a18cb4395ad0
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
>> @@ -0,0 +1,158 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Device Tree file for the Kontron SMARC-sAL28 board.
>> + *
>> + * Copyright (C) 2019 Michael Walle <michael@walle.cc>
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +#include "fsl-ls1028a.dtsi"
>> +
>> +/ {
>> +	model = "Kontron SMARC-sAL28";
>> +	compatible = "kontron,sl28", "fsl,ls1028a";
>> +
>> +	aliases {
>> +		crypto = &crypto;
>> +		serial0 = &duart0;
>> +		serial1 = &duart1;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +};
>> +
>> +&duart0 {
>> +	status = "okay";
>> +};
>> +
>> +&duart1 {
>> +	status = "okay";
>> +};
>> +
>> +&enetc_port0 {
>> +	phy-handle = <&phy0>;
>> +	phy-connection-type = "sgmii";
>> +
>> +	mdio {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		phy0: ethernet-phy@5 {
>> +			reg = <0x5>;
>> +			eee-broken-1000t;
>> +			eee-broken-100tx;
>> +		};
>> +	};
>> +};
>> +
>> +&esdhc {
>> +	sd-uhs-sdr104;
>> +	sd-uhs-sdr50;
>> +	sd-uhs-sdr25;
>> +	sd-uhs-sdr12;
>> +	status = "okay";
>> +};
>> +
>> +&esdhc1 {
>> +	mmc-hs200-1_8v;
>> +	mmc-hs400-1_8v;
>> +	bus-width = <8>;
>> +	status = "okay";
>> +};
>> +
>> +&fspi {
>> +	status = "okay";
>> +
>> +	w25q32jw@0 {
> 
> Use a generic node name.
> 
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		compatible = "w25q32jw", "jedec,spi-nor";
> 
> Is "w25q32jw" documented somewhere?

seems like it should only be "jedec,spi-nor" anyway:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=10a6a6975691775bbcc677a04c6fd3120b5c1160


I'll send a v2 series. There were updates to the sound node in the 
meantime.

> 
> Shawn
> 
>> +		m25p,fast-read;
>> +		spi-max-frequency = <133000000>;
>> +		reg = <0>;
>> +		/* The following setting enables 1-1-2 (CMD-ADDR-DATA) mode */
>> +		spi-rx-bus-width = <2>; /* 2 SPI Rx lines */
>> +		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
>> +
>> +		partition@0 {
>> +			reg = <0x000000 0x010000>;
>> +			label = "rcw";
>> +			read-only;
>> +		};
>> +
>> +		partition@10000 {
>> +			reg = <0x010000 0x0f0000>;
>> +			label = "failsafe bootloader";
>> +			read-only;
>> +		};
>> +
>> +		partition@100000 {
>> +			reg = <0x100000 0x040000>;
>> +			label = "failsafe DP firmware";
>> +			read-only;
>> +		};
>> +
>> +		partition@140000 {
>> +			reg = <0x140000 0x0a0000>;
>> +			label = "failsafe trusted firmware";
>> +			read-only;
>> +		};
>> +
>> +		partition@1e0000 {
>> +			reg = <0x1e0000 0x020000>;
>> +			label = "reserved";
>> +			read-only;
>> +		};
>> +
>> +		partition@200000 {
>> +			reg = <0x200000 0x010000>;
>> +			label = "configuration store";
>> +		};
>> +
>> +		partition@210000 {
>> +			reg = <0x210000 0x0f0000>;
>> +			label = "bootloader";
>> +		};
>> +
>> +		partition@300000 {
>> +			reg = <0x300000 0x040000>;
>> +			label = "DP firmware";
>> +		};
>> +
>> +		partition@340000 {
>> +			reg = <0x340000 0x0a0000>;
>> +			label = "trusted firmware";
>> +		};
>> +
>> +		partition@3e0000 {
>> +			reg = <0x3e0000 0x020000>;
>> +			label = "bootloader environment";
>> +		};
>> +	};
>> +};
>> +
>> +&i2c0 {
>> +	status = "okay";
>> +
>> +	rtc@32 {
>> +		compatible = "microcrystal,rv8803";
>> +		reg = <0x32>;
>> +	};
>> +
>> +	eeprom@50 {
>> +		compatible = "atmel,24c32";
>> +		reg = <0x50>;
>> +		pagesize = <32>;
>> +	};
>> +};
>> +
>> +&i2c3 {
>> +	status = "okay";
>> +};
>> +
>> +&i2c4 {
>> +	status = "okay";
>> +};
>> --
>> 2.20.1
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
