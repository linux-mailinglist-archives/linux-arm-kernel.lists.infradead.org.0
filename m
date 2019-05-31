Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF9B30B16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE+T5J5lrIInRtPcUGzp6qUiEwIIbZSy+RR1vMTNE0A=; b=NMYgG3syvoAHFK
	a1DNglLIISoRYJ2YWVlq1kgdVYyAL+jxcFigxO68AUsZlF1KqLRGKXnCA/Ol8PAy0nBUBpXo9IPcP
	BTmEFxMuY8WWBLJctESxYbH8zvAEPGnR2cbgdpYnz/PvGzRGGZDW6b+SG6rRa83OKa7GldX158fbk
	4QY9c8CqZgZN3azcJ0sUhRu+Gp6UCiVkC0cf1gHO+stKRdZZy4Kplr+6CjZ+nueMZxymQPqjRtwTp
	1RcegndznPzdopKOF6qUBjX97h0K3gvxseckvw7QTZUJvUfDVy4xYKN+PBtzHnvAvcZMHPauWZKeF
	yxJ52vJJSMm+U2hWf2Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdVL-000766-V7; Fri, 31 May 2019 09:07:15 +0000
Received: from mta-01.yadro.com ([89.207.88.251])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdVE-00075R-20
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:07:09 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 3F5C941908;
 Fri, 31 May 2019 09:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 user-agent:in-reply-to:content-disposition:content-type
 :content-type:mime-version:references:message-id:subject:subject
 :from:from:date:date:received:received:received; s=mta-01; t=
 1559293624; x=1561108025; bh=V2JYksw1ZpPn49A8Zy8oL1DLxXqIFwPGBxx
 0ZykK3RM=; b=ZWXV53Rs0HjRaijj7GccsS27X91FsXvdCKAEkgTbszlF1SNFbNu
 Recqa8xL9JFDzJdRk3eJxRKLci3VsBho2OKC8FptW7OC7vYdPcFzgSYGEaysKFa/
 uK7ox0LWLrCaYusGi/w5tqL6QflmSBAJeZPP3j2nCnQuwBn4Ul8TRqDs=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeODQLn3iRyt; Fri, 31 May 2019 12:07:04 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 7E16D41860;
 Fri, 31 May 2019 12:07:02 +0300 (MSK)
Received: from localhost (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Fri, 31
 May 2019 12:07:01 +0300
Date: Fri, 31 May 2019 12:07:01 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v3] ARM: dts: aspeed: Add YADRO VESNIN BMC
Message-ID: <20190531090701.GA12476@bbwork.lan>
References: <20190531061207.23079-1-a.filippov@yadro.com>
 <2966b961-77ca-4371-949c-195b623e344b@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2966b961-77ca-4371-949c-195b623e344b@www.fastmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_020708_478018_BF5E11C3 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.207.88.251 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 04:02:37PM +0930, Andrew Jeffery wrote:
> Hello Alexander,

Hi Andrew,

> 
> On Fri, 31 May 2019, at 15:42, Alexander Filippov wrote:
> > VESNIN is an OpenPower machine with an Aspeed 2400 BMC SoC manufactured
> > by YADRO.
> > 
> > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> > ---
> >  arch/arm/boot/dts/Makefile                  |   1 +
> >  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 234 ++++++++++++++++++++
> >  2 files changed, 235 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 834cce80d1b8..09a851a4705c 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1261,6 +1261,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
> >  	aspeed-bmc-opp-palmetto.dtb \
> >  	aspeed-bmc-opp-romulus.dtb \
> >  	aspeed-bmc-opp-swift.dtb \
> > +	aspeed-bmc-opp-vesnin.dtb \
> 
> The patch doesn't apply to upstream - the Swift machine only exists in the
> OpenBMC kernel tree. Please rebase the patch onto upstream and resend.

Done.

> 
> >  	aspeed-bmc-opp-witherspoon.dtb \
> >  	aspeed-bmc-opp-zaius.dtb \
> >  	aspeed-bmc-portwell-neptune.dtb \
> > diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts 
> > b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> > new file mode 100644
> > index 000000000000..20f07f5bb4f4
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> > @@ -0,0 +1,234 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +// Copyright 2019 YADRO
> > +/dts-v1/;
> > +
> > +#include "aspeed-g4.dtsi"
> > +#include <dt-bindings/gpio/aspeed-gpio.h>
> > +
> > +/ {
> > +	model = "Vesnin BMC";
> > +	compatible = "yadro,vesnin-bmc", "aspeed,ast2400";
> > +
> > +	chosen {
> > +		stdout-path = &uart5;
> > +		bootargs = "console=ttyS4,115200 earlyprintk";
> > +	};
> > +
> > +	memory {
> > +		reg = <0x40000000 0x20000000>;
> > +	};
> > +
> > +	reserved-memory {
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges;
> > +
> > +		vga_memory: framebuffer@5f000000 {
> > +			no-map;
> > +			reg = <0x5f000000 0x01000000>; /* 16MB */
> > +		};
> > +		flash_memory: region@5c000000 {
> > +			no-map;
> > +			reg = <0x5c000000 0x02000000>; /* 32M */
> > +		};
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		heartbeat {
> > +			gpios = <&gpio ASPEED_GPIO(R, 4) GPIO_ACTIVE_LOW>;
> > +		};
> > +		power_red {
> > +			gpios = <&gpio ASPEED_GPIO(N, 1) GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		id_blue {
> > +			gpios = <&gpio ASPEED_GPIO(O, 0) GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		alarm_red {
> > +			gpios = <&gpio ASPEED_GPIO(N, 6) GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		alarm_yel {
> > +			gpios = <&gpio ASPEED_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +
> > +		button_checkstop {
> > +			label = "checkstop";
> > +			linux,code = <74>;
> > +			gpios = <&gpio ASPEED_GPIO(P, 5) GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		button_identify {
> > +			label = "identify";
> > +			linux,code = <152>;
> > +			gpios = <&gpio ASPEED_GPIO(O, 7) GPIO_ACTIVE_LOW>;
> > +		};
> > +	};
> > +};
> > +
> > +&fmc {
> > +	status = "okay";
> > +	flash@0 {
> > +		status = "okay";
> > +		m25p,fast-read;
> > +        label = "bmc";
> > +#include "openbmc-flash-layout.dtsi"
> > +	};
> > +};
> > +
> > +&spi {
> > +	status = "okay";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_spi1debug_default>;
> 
> Is this how the board is strapped? I'm asking in case it's just copy/paste
> from Palmetto, which was (unfortunately) strapped this way.

Yes, the board is strapped in such manner.
I guess it was brought from barreleye which was a prototype for vesnin.

Setting this pin to &pinctrl_spi1_default leads to warning:
  kernel: aspeed-smc 1e630000.spi: Error applying setting, reverse things back

> 
> > +
> > +	flash@0 {
> > +		status = "okay";
> > +		label = "pnor";
> > +		m25p,fast-read;
> > +	};
> > +};
> > +
> > +&mac0 {
> > +	status = "okay";
> > +
> > +	use-ncsi;
> > +	no-hw-checksum;
> > +
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_rmii1_default>;
> > +};
> > +
> > +
> > +&uart5 {
> > +	status = "okay";
> > +};
> > +
> > +&lpc_ctrl {
> > +	status = "okay";
> > +	memory-region = <&flash_memory>;
> > +	flash = <&spi>;
> > +};
> > +
> > +&ibt {
> > +	status = "okay";
> > +};
> > +
> > +&lpc_host {
> > +    sio_regs: regs {
> > +        compatible = "aspeed,bmc-misc";
> 
> The patches for this are not upstream, and won't make it in their current
> form. Please drop this node from the patch.
> 

Done.

> > +    };
> > +};
> > +
> > +&mbox {
> > +	status = "okay";
> 
> This driver is not upstream either, and we plan on dropping it from the
> OpenBMC tree too. Please remove this node from the patch.

Done.

> 
> Cheers,
> 
> Andrew
> 
> > +};
> > +
> > +&uart3 {
> > +	status = "okay";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_txd2_default &pinctrl_rxd2_default>;
> > +};
> > +
> > +&i2c0 {
> > +	status = "okay";
> > +
> > +	eeprom@50 {
> > +		compatible = "atmel,24c256";
> > +		reg = <0x50>;
> > +		pagesize = <64>;
> > +	};
> > +};
> > +
> > +&i2c1 {
> > +	status = "okay";
> > +
> > +	tmp75@49 {
> > +		compatible = "ti,tmp75";
> > +		reg = <0x49>;
> > +	};
> > +};
> > +
> > +&i2c2 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c3 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c4 {
> > +	status = "okay";
> > +
> > +	occ-hwmon@50 {
> > +		compatible = "ibm,p8-occ-hwmon";
> > +		reg = <0x50>;
> > +	};
> > +};
> > +
> > +&i2c5 {
> > +	status = "okay";
> > +
> > +	occ-hwmon@51 {
> > +		compatible = "ibm,p8-occ-hwmon";
> > +		reg = <0x51>;
> > +	};
> > +};
> > +
> > +&i2c6 {
> > +	status = "okay";
> > +
> > +	w83795g@2f {
> > +		compatible = "nuvoton,w83795g";
> > +		reg = <0x2f>;
> > +	};
> > +};
> > +
> > +&i2c7 {
> > +	status = "okay";
> > +
> > +	occ-hwmon@56 {
> > +		compatible = "ibm,p8-occ-hwmon";
> > +		reg = <0x56>;
> > +	};
> > +};
> > +
> > +&i2c9 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c10 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c11 {
> > +	status = "okay";
> > +
> > +	occ-hwmon@57 {
> > +		compatible = "ibm,p8-occ-hwmon";
> > +		reg = <0x57>;
> > +	};
> > +};
> > +
> > +&i2c12 {
> > +	status = "okay";
> > +
> > +	rtc@68 {
> > +		compatible = "maxim,ds3231";
> > +		reg = <0x68>;
> > +	};
> > +};
> > +
> > +&i2c13 {
> > +	status = "okay";
> > +};
> > +
> > +&vuart {
> > +	status = "okay";
> > +};
> > -- 
> > 2.20.1
> > 
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
