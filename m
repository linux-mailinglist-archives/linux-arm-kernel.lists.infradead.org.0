Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2D316A980
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9MZ25jPG6n02fAjPREsEkb6uJ+Rw/j1IDiO8hdUM/w=; b=aVUmE3ANHqQJOc
	hacAuRNulk9UqTEZhuMH0hdiT5r66PPc8Br0FPS8ZNqqP16UjdVZwjoFgP9Grgahd4d+pTrnhXMfH
	msQCYREab2g39uCufhYCpO6d+RkbwnQUgKQwDTjPUAQT6K5mr2yN10NVjEaQNFgiUCu6NDZMsQo2/
	ePaAa1Jaenpc5wApuKS3aL/eNWVceI4x7Ut7ArVEOiyw4kLMwDRTRKsUS91zU4+p8V+9/p6YL6Z93
	1yrVxsbx9rHmDK/K6h+HfBYGOU1Hf24EqR/OezkQIr3TzXi8hZtvi6+HSPnfebDEmvLPETPPE1cpQ
	CZTB5L1xJGSjiBBsvKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FOY-0001h6-Lw; Mon, 24 Feb 2020 15:11:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FOQ-0001gF-5i
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582557091; bh=9aE+a8E4LVEOkt4HFGQF11TSms2VZ1eBDyNQaeKqK74=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=tfQ1X2cSGvWyWkk8cfn533l5XKTK8qIsCqHpeifhVET6YwxrfV/c4HQ7kAgDyZtg1
 EemSNHRmabcJvOtTSMSP1I33wJwaxrfobg/YeZItZIRq2JW7elPmz3bbDuCsibqTVH
 aM1WXmMSCOmobj2LdNFrUK8MQqCd/7ErnT0+zGIU=
Date: Mon, 24 Feb 2020 16:11:31 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] arm64: dts: sun50i-h5-orange-pi-pc2: Add CPUX voltage
 regulator
Message-ID: <20200224151131.fw7to7pmegj5ylqy@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime@cerno.tech>,
 linux-sunxi@googlegroups.com, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200223104019.527587-1-megous@megous.com>
 <20200224092704.gnnjwds3zmmravrw@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224092704.gnnjwds3zmmravrw@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_071134_548045_36A98003 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:27:04AM +0100, Maxime Ripard wrote:
> On Sun, Feb 23, 2020 at 11:40:19AM +0100, Ondrej Jirman wrote:
> > Orange Pi PC2 features sy8106a regulator just like Orange Pi PC.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Reviewed-by: Samuel Holland <samuel@sholland.org>
> > ---
> >  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> 
> Having a changelog would be great
> 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > index 70b5f09984218..7b2572dc84857 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> > @@ -93,6 +93,10 @@ &codec {
> >  	status = "okay";
> >  };
> >
> > +&cpu0 {
> > +	cpu-supply = <&reg_vdd_cpux>;
> > +};
> > +
> >  &de {
> >  	status = "okay";
> >  };
> > @@ -168,6 +172,22 @@ &ohci3 {
> >  	status = "okay";
> >  };
> >
> > +&r_i2c {
> > +	status = "okay";
> > +
> > +	reg_vdd_cpux: regulator@65 {
> > +		compatible = "silergy,sy8106a";
> > +		reg = <0x65>;
> > +		regulator-name = "vdd-cpux";
> > +		silergy,fixed-microvolt = <1100000>;
> > +		regulator-min-microvolt = <1000000>;
> > +		regulator-max-microvolt = <1400000>;
> > +		regulator-ramp-delay = <200>;
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +	};
> > +};
> > +
> 
> Looks like you fixed the issues reported by Samuel though. I've
> applied it.

Sorry, yes, I just did that. Re-ordering + removing a comment and changing the
fixed voltage.

Thank you,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
