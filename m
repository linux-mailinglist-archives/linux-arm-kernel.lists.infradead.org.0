Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E563139FDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 15:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LO2B/8EngE8Xxwhqk2jFReW6x0LxWvVrsEn0QOHngg=; b=QGxafJc1F+mZyA
	7RXU42mSZgxeGMYpOq9QE6+xTtXZIjGssxnnAE9ACEYeeSSd4E39AiwecgU2WWL1VHMCgp3p5qb6k
	xI31KdKA8Kv9rUgoV52g08MRbSF7z6UZWxfYsiW+KbKrOZIMLNqmVx8rl5r/DwtyXkGbVr10hoG2G
	zIF2ezRibIugk6s9fjKKbwsn5vKSehAtsGKVHnitkIPYGBViW5PWnIwSdCcUopwah6/9NgkJBIl9L
	dFscc/Ad08LHaMKWPnvl6WroC5gLQ8KED8fvy5HioTT0oZPjh7scvU2ukd1S01ntRVOlph/96pf3x
	pXG7WJiVW6z17GLyOuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZb7b-0005dz-HA; Sat, 08 Jun 2019 13:10:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZb7Q-0005ce-0Y; Sat, 08 Jun 2019 13:10:49 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33622214D8;
 Sat,  8 Jun 2019 13:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559999447;
 bh=SH5hTI5c11OAq8te0ktGV7fuTcM1q8eDJlQcLervdqI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BR8O4kq34VZ4Ba7wqJ4OcPbhW9IvCm/fQ6ec14jvja6VdJGsxlHXSIxtg3Bts+cjk
 Xg2tw3F5wVxSchVgxhgoDpwwC5wy5lguwUoJ7kNcMdP0iUp+eKU05LW7jUAnf8hMsp
 G7HtMkUEv4kPprhb+fWPWY7oF0oKlLgrYvn/XcMQ=
Date: Sat, 8 Jun 2019 14:10:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/3] Documentation: dt-bindings: add the Amlogic Meson
 Temperature Sensor
Message-ID: <20190608141043.6c7d332e@archlinux>
In-Reply-To: <CAFBinCBN4QC2tPDEQmTW_c+PP5yu2qoK5M1eSye=SmvpieKWQg@mail.gmail.com>
References: <20190604144714.2009-1-glaroque@baylibre.com>
 <20190604144714.2009-2-glaroque@baylibre.com>
 <CAFBinCBN4QC2tPDEQmTW_c+PP5yu2qoK5M1eSye=SmvpieKWQg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_061048_089006_5C730C55 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, Guillaume La Roque <glaroque@baylibre.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 21:16:37 +0200
Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Guillaume,
> 
> thank you for working on this!
On comment from me inline.

Thanks,

Jonathan

> 
> On Tue, Jun 4, 2019 at 4:47 PM Guillaume La Roque <glaroque@baylibre.com> wrote:
> >
> > This adds the devicetree binding documentation for the Temperature
> > Sensor found in the Amlogic Meson G12 SoCs.
> > Currently only the G12A SoCs are supported.  
> so G12B is not supported (yet)?
> 
> > Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> > ---
> >  .../iio/temperature/amlogic,meson-tsensor.txt | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> >
> > diff --git a/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> > new file mode 100644
> > index 000000000000..d064db0e9cac
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> > @@ -0,0 +1,31 @@
> > +* Amlogic Meson Temperature Sensor
> > +
> > +Required properties:
> > +- compatible:  depending on the SoC and the position of the sensor,
> > +               this should be one of:
> > +               - "amlogic,meson-g12a-cpu-tsensor" for the CPU G12A SoC sensor
> > +               - "amlogic,meson-g12a-ddr-tsensor" for the DDR G12A SoC sensor
> > +               followed by the common :
> > +               - "amlogic,meson-g12a-tsensor" for G12A SoC family
> > +- reg:         the physical base address and length of the registers
> > +- interrupts:  the interrupt indicating end of sampling
> > +- clocks:      phandle identifier for the reference clock of temperature sensor
> > +- #io-channel-cells: must be 1, see ../iio-bindings.txt  
> have you considered using the thermal framework [0] instead of the iio
> framework (see below)?
I had the same thought.  Right now, this doesn't look generic enough
for IIO to make that much sense.

I'll review anyway as may give some useful pointers even if you do move
it over to thermal.

> 
> > +- amlogic,ao-secure: phandle to the ao-secure syscon  
> the driver has some "u_efuse_off" access. do we need to get some
> calibration values from the AO syscon or can we also fetch it from the
> eFuse? you can look at arch/arm/boot/dts/meson8.dtsi where I'm passing
> the temperature sensor calibration data to the SAR ADC (there's no
> dedicated temperature sensor IP block prior to G12A) while reading the
> data from the eFuse
> 
> > +Optional properties:
> > +- amlogic,critical-temperature: temperature value in milli degrees Celsius
> > +       to set automatic reboot on too high temperature  
> as far as I can tell the thermal framework supports multiple trip
> points. I'm seeing this as a benefit because the hardware can raise
> interrupts at four different temperatures (defined by the driver)
> 
> > +Example:
> > +       cpu_temp: temperature-sensor@ff634800 {
> > +               compatible = "amlogic,meson-g12a-cpu-tsensor",
> > +                            "amlogic,meson-g12a-tsensor";
> > +               reg = <0x0 0xff634800 0x0 0x50>;
> > +               interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
> > +               clocks = <&clkc CLKID_TS>;
> > +               status = "okay";  
> as far as I know the dt-bindings should not have a status property in
> the examples
> 
> 
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
