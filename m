Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57319AD0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4EfPo4awkmxacRXeecaHJpR0QdnizvxfmcPfcAdzQo=; b=Yx+aVEgYrzENoc
	0FNB67A6dr0zYchZSVC4DsuTQFeOF/7LjKJsIKpACU0OelzYXBLU3+LfMejW/b8VGh/vUMLDzjvIa
	opnTFYLGJo3xWjyord0iSq9gCKYbZVoSIQZEALjEyIxTQh0nVjqOA33sdmmJ7IYps8gTehHDmeeDM
	vj3f8Dj1+x3N/rYCwKJi6Bx/s+02K+fabEJXobRJxoLGbqej8a/D+9ijiI2UceAVjvAfyelrbFo8D
	X/btZnN6cpQryxFNT6DLDAkJp9ZX8D2IxwLkh4aD6aDwXcaSkOQQxRpuwXrFE48vSDLC5XXnh+7pa
	gAf+meZ8UK23zWdEPt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16kw-0007qj-EB; Fri, 23 Aug 2019 10:25:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16kj-00071n-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566555903; bh=s3+8t5raJAu57uzI2j66XL5vmWrDNN4s7OqNz0XuY74=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=G6cNjhEL4gXabfOJtLMLF06hg7mqqqdSoBJG2OLFeqnL0TwIK/yd13XByKBdZCFON
 1zxKMXg2d51/X9WUpWfUKp78dpb7zQpU4KKQaBU0hUVD/YE0EAGw2DXnB93ZCgOa6S
 x3vqeIciy20uLyMKeF7nmvqY28EPND2IjROoxzlc=
Date: Fri, 23 Aug 2019 12:25:03 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable WiFi
Message-ID: <20190823102503.ymndnooyzahoi522@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20190823094228.6540-1-megous@megous.com>
 <20190823100807.22heh2gahi7owo4e@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823100807.22heh2gahi7owo4e@flea>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_032505_960636_F76105C4 
X-CRM114-Status: GOOD (  26.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

On Fri, Aug 23, 2019 at 12:08:07PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Fri, Aug 23, 2019 at 11:42:28AM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Orange Pi 3 has AP6256 WiFi/BT module. WiFi part of the module is called
> > bcm43356 and can be used with the brcmfmac driver. The module is powered by
> > the two always on regulators (not AXP805).
> >
> > WiFi uses a PG port with 1.8V voltage level signals. SoC needs to be
> > configured so that it sets up an 1.8V input bias on this port. This is done
> > by the pio driver by reading the vcc-pg-supply voltage.
> >
> > You'll need a fw_bcm43456c5_ag.bin firmware file and nvram.txt
> > configuration that can be found in the Xulongs's repository for H6:
> >
> > https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256
> >
> > Mainline brcmfmac driver expects the firmware and nvram at the following
> > paths relative to the firmware directory:
> >
> >   brcm/brcmfmac43456-sdio.bin
> >   brcm/brcmfmac43456-sdio.txt
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >
> > Since RTC patches for H6 were merged, this can now go in too, if it looks ok.
> >
> > Other patches for this WiFi chip support were merged in previous cycles,
> > so this just needs enabling in DTS now.
> >
> > Sorry for the links in the commit log, but this information is useful,
> > even if the link itself goes bad. Any pointer what to google for
> > (file names, tree name) is great for anyone searching in the future.
> 
> I understand, but this should (also?) be in the wiki. Please add it
> there too.

Added. Thank you.

  http://linux-sunxi.org/Xunlong_Orange_Pi_3#Firmware_files

regards,
	Ondrej

> > Please take a look.
> >
> > Thank you,
> > 	Ondrej
> >
> >  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > index eda9d5f640b9..49d954369087 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > @@ -56,6 +56,34 @@
> >  		regulator-max-microvolt = <5000000>;
> >  		regulator-always-on;
> >  	};
> > +
> > +	reg_vcc33_wifi: vcc33-wifi {
> > +		/* Always on 3.3V regulator for WiFi and BT */
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc33-wifi";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-always-on;
> > +		vin-supply = <&reg_vcc5v>;
> > +	};
> > +
> > +	reg_vcc_wifi_io: vcc-wifi-io {
> > +		/* Always on 1.8V/300mA regulator for WiFi and BT IO */
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc-wifi-io";
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		regulator-always-on;
> > +		vin-supply = <&reg_vcc33_wifi>;
> > +	};
> > +
> > +	wifi_pwrseq: wifi_pwrseq {
> > +		compatible = "mmc-pwrseq-simple";
> > +		clocks = <&rtc 1>;
> > +		clock-names = "ext_clock";
> > +		reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
> > +		post-power-on-delay-ms = <200>;
> > +	};
> >  };
> >
> >  &cpu0 {
> > @@ -91,6 +119,25 @@
> >  	status = "okay";
> >  };
> >
> > +&mmc1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&mmc1_pins>;
> 
> This is the default already. I've removed it and applied.
> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
