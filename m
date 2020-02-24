Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6B316A813
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp0OPhbP0mj19g5JlkkAjkEtVelMx65QQ+q6pHPbx8o=; b=UrzreruoDlbKBP
	l84301gbh8ssrzfy5tIWYHi1tYmIcZBDN0e9oqKev+vz4k0rJaNfvsKmpd2nRwCdmVhac/O84p+X7
	HbU1n905LVplamLdDyf5M6vbNAONYmCEQ3jcy2iyuNvba4943lLCVPcPo/Kt2ejJfTxoFUpFFfn12
	mcl9nYrNlWgwLVAqRIsBebNtvoxOOBechTYtl/54POX5a+0m3OrJh9yNWaAaiTxG5ejzN/YUEcQ/I
	cajDgvElK5kOBMmPIFTVC9aPZ4lrGOW3ceSfhz56D2Bl9tNBCzNdu710uHHOHg2XizgYM6BV1FZBe
	4XyB5MsYzxrLA57U9Seg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6EVZ-00006u-Tj; Mon, 24 Feb 2020 14:14:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6EVM-00005f-Ed
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582553677; bh=4qDdtHK5hpCLQh/4Uxuvof/n91iXc4o9/kYFieclHC8=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=CwmjtlevBGOGFS8tVAlWHK3CGBEAbWk3XpVkFnTMNxRatJOHfMJRhY/V+cJaC9zkG
 kFFMrySU1yL2EhmJVrqKIs2OUozxpQaH0D0Mi30i/jvrY2o06kF1QS38dP51YcxIo+
 9SvdGqY+Z+0RUU6DBQ99AxkJxqCUok4wPDxeL7oc=
Date: Mon, 24 Feb 2020 15:14:37 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/4] ARM: dts: sun8i-a83t-tbs-a711: Add support for the
 vibrator motor
Message-ID: <20200224141437.opcsfhozfppulu4g@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime@cerno.tech>,
 linux-sunxi@googlegroups.com,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200222231428.233621-1-megous@megous.com>
 <20200222231428.233621-4-megous@megous.com>
 <20200224091059.lljffogofbexhudt@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224091059.lljffogofbexhudt@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_061440_819646_4B6CCE76 
X-CRM114-Status: GOOD (  16.38  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Feb 24, 2020 at 10:10:59AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Sun, Feb 23, 2020 at 12:14:27AM +0100, Ondrej Jirman wrote:
> > The board has a vibrator mottor. Hook it to the input subsystem.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > index 2fd31a0a0b344..a22920275e99b 100644
> > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > @@ -99,6 +99,11 @@ panel_input: endpoint {
> >  		};
> >  	};
> >
> > +	vibrator {
> > +		compatible = "gpio-vibrator";
> > +		vcc-supply = <&reg_ldo_io1>;
> > +	};
> > +
> 
> LDO IO1 can also be muxed in as a GPIO iirc, why did you choose the
> regulator instead?

According to the specification, LDO needs to be enabled (value 0b11)
to achieve the specified max driving current of 150mA:

  https://megous.com/dl/tmp/92b7d9d94820c3ba.png

Otherwise the chip is probably just using the regular CMOS logic output
(typically limited to around 20-35mA, but not specified in this datasheet),
which would be probably overdriven, if we try to drive the motor with it.

And since we're driving a motor directly, the more the better.

thank you and regards,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
