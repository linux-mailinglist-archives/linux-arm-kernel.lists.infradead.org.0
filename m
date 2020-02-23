Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8209169737
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 11:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JXdzPgkVSNL1BRAFMhgHKTqQRi8T6TxfAOvmjDbnO0=; b=IcAKyYtfLlKlr/
	9BTXdFarJCRMzfWFkfYkjQ1n6aZYVabmqvw8eLtOmPMOuqSxd/9W6kOE6V9CEoqta19ARCrqm2MFw
	Up8x5IcEtGhUSOMTY34XxYGGeQSeFRz9qMjKtCPNbswkkYdXjAzF35J6FvZDnDmWreiJBLBFHY1+Y
	3yGtLBDirtk/YslC2uQXllwl0HM2T4CW5B0pNsmK0ET3pBaDnnDjV5wFzv2/rEQhSDoHxUc0FDHG3
	O12FWFNzQG+cGaj2LHHgE3EyWIpCMRBWV7fcj4CHn86Pee4J6g1bpwRCQzTqC4aSah287ptkYXp7o
	mzvbG6KrCEBI4TtID8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5odw-0007pX-Vj; Sun, 23 Feb 2020 10:37:49 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5odn-0007p6-4D
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 10:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582454257; bh=F25Sml78iMjr19VTKxWNGaFjBxZ6Zvw7TPMvdEJ0DF4=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=ASvUC3zf8QJbFhXlpMHCkWZXJ4yNj/Er35jQ9uYfRm12wUeXCv+IZsFmYNnteKbk5
 +JyoBmlQhB6r4G2ZFAEg+OgaJAjsX0O9Kbcoyl+J1bbDbkJQc7oojR/f0lhdJLaVEu
 OodwRFVhGKOfUkl3hMi7Ghobo7toW5CF5vA4nB08=
Date: Sun, 23 Feb 2020 11:37:36 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: sun50i-h5-orange-pi-pc2: Add
 CPUX voltage regulator
Message-ID: <20200223103736.5uigz2nvvee3w5yr@core.my.home>
Mail-Followup-To: Samuel Holland <samuel@sholland.org>,
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200222214541.210318-1-megous@megous.com>
 <92a2b808-8280-7ad4-cfb4-8ff9488c02c8@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92a2b808-8280-7ad4-cfb4-8ff9488c02c8@sholland.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_023739_502984_34F9C2B1 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel,

On Sat, Feb 22, 2020 at 09:26:30PM -0600, Samuel Holland wrote:
> Hi Ondrej,
> 
> On 2/22/20 3:45 PM, Ondrej Jirman wrote:
> > Orange Pi PC2 features sy8106a regulator just like Orange Pi PC.
> > 
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 29 +++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > index 70b5f09984218..5feedde95b5fc 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > @@ -85,6 +85,10 @@ reg_usb0_vbus: usb0-vbus {
> >  	};
> >  };
> >  
> > +&cpu0 {
> > +	cpu-supply = <&reg_vdd_cpux>;
> > +};
> > +
> 
> This should go alphabetically after "codec".
> 
> >  &codec {
> >  	allwinner,audio-routing =
> >  		"Line Out", "LINEOUT",
> > @@ -180,6 +184,31 @@ flash@0 {
> >  	};
> >  };
> >  
> > +&r_i2c {
> 
> This should go alphabetically before "spi0".
> 
> > +	status = "okay";
> > +
> > +	reg_vdd_cpux: regulator@65 {
> > +		compatible = "silergy,sy8106a";
> > +		reg = <0x65>;
> > +		regulator-name = "vdd-cpux";
> > +		silergy,fixed-microvolt = <1200000>;
> 
> The resistors in the datasheet (10k/11.8k) make this 1.1V.

Ah, you're right. I didn't notice the fine print bellow:

  https://megous.com/dl/tmp/e696b6042b80bf2e.png

only the big number above. Hehe.

> > +		/*
> > +		 * The datasheet uses 1.1V as the minimum value of VDD-CPUX,
> > +		 * however both the Armbian DVFS table and the official one
> > +		 * have operating points with voltage under 1.1V, and both
> > +		 * DVFS table are known to work properly at the lowest
> > +		 * operating point.
> > +		 *
> > +		 * Use 1.0V as the minimum voltage instead.
> > +		 */
> 
> The datasheet I have for H5 has "TBD" for the VDD-CPUX volatage range. I think
> this comment only applies to H3 and is not necessary here.

Ok.

> > +		regulator-min-microvolt = <1000000>;
> > +		regulator-max-microvolt = <1400000>;
> > +		regulator-ramp-delay = <200>;
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +	};
> > +};
> > +
> >  &uart0 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&uart0_pa_pins>;
> > 
> 
> Otherwise,
> Reviewed-by: Samuel Holland <samuel@sholland.org>

Thanks for the feedback.

regards,
	o.

> Regards,
> Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
