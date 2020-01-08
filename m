Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F7A134B9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE1rQSUHkwdKNhDKhqTyB2NLWlBhsuLPW/yyCGFyAVE=; b=HVu8PyouxKa32T
	ccqTyx4P28YqJod/tXd5opWwyhnGlgZ3ddHjvFtl3P9eGoV7/RNFhmbwb+AKBX8r6Bw56QWS/myED
	0zV3hwRKtw+3Hfcr3tE/hqTZzkk1iW7tKdSTNx3K+xuGe1nTh9VoThlICrj0AJjfJvutjRjavhgzY
	BIlT3Dke78VhbTjxilcndPnMMNAmxB1UTOVUsP58HSdh0lFXDzjICcygwKg4Y5fT724gEg6OjTDOo
	3r3wE/TorO6U6E9M1f6wuVtCtOEjQiShyqgUAxCEBjAgeG8pyaG7hUrXTxfjpvq9Mh4xc9k4g9PcN
	uU+1Wrsy/wKyNkvA42DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHEB-0006Ba-C0; Wed, 08 Jan 2020 19:42:51 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHDu-0005uy-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:42:37 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 7BA768364F;
 Thu,  9 Jan 2020 08:42:12 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1578512532;
 bh=hpXV36CIsgy5ynnFu8u+VdStPHigm1kegpp8yqYEU8w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=l9vtLCRM1M+QJyLmUvGXsxi4BG04tEuHoCjgf3b4dnvUUudPXSgzDTeaLAVJNI1Oa
 3Dg/ix2J0MvB48mSua/QfKy0gFYWApVdDc+UFkAyEynOHdh4Tj9xmBAFUtpQrrsSkY
 pXuJwp73T941PmLKhRGoLA+HQoqXDNdzGQoZr3Qb+Qt2mw+ll5nv31bL+v97HA5Dri
 hFhaiJ/dCA62NbNjSoa6m6TwzKqrbkJUmwVGd6JeHiUgxkoCzkBE1dng7mX3Ns8GtG
 JhAjyDxjCvkSPQUcmgpUmBpehYgsibPQLwZ9hD7Z1OvXnoGPSDepKOr/jNUjQlHnLU
 blU0eaGdJYV9Q==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e1630940000>; Thu, 09 Jan 2020 08:42:12 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Jan 2020 08:42:12 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Thu, 9 Jan 2020 08:42:12 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "jason@lakedaemon.net" <jason@lakedaemon.net>, Joshua Scott
 <Joshua.Scott@alliedtelesis.co.nz>, "gregory.clement@bootlin.com"
 <gregory.clement@bootlin.com>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH] ARM: mvebu: Enable MBUS error propagation
Thread-Topic: [PATCH] ARM: mvebu: Enable MBUS error propagation
Thread-Index: AQHVoqqJx9twrZNTn0+9dczHY+j8Sqff+80AgACcYQA=
Date: Wed, 8 Jan 2020 19:42:12 +0000
Message-ID: <0285a09b2b1b7ae2ccc268a37e4357c95d270ac9.camel@alliedtelesis.co.nz>
References: <20191124093529.32399-1-chris.packham@alliedtelesis.co.nz>
 <8736cqb63d.fsf@FE-laptop>
In-Reply-To: <8736cqb63d.fsf@FE-laptop>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:cca2:aede:7cb9:9a1a]
Content-ID: <46151702CF11BB4B9A8821030BD57E40@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_114234_764651_22B789CC 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gregory,

On Wed, 2020-01-08 at 11:22 +0100, Gregory CLEMENT wrote:
> Hello Chris,
> 
> > U-boot disables MBUS error propagation for Armada-385. The effect of
> > this on the kernel is that any access to a mapped but inaccessible
> > address causes the system to hang.
> > 
> > By enabling MBUS error propagation the kernel can raise a Bus Error and
> > panic to restart the system.
> 
> Unless I miss it, it seems that nobody comment this patch: sorry for the
> delay.
> 

Thanks for the response.

> > 
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > ---
> > 
> > Notes:
> >     We've encountered an issue where rogue accesses to PCI-e space cause an
> >     Armada-385 system to lockup. We've found that enabling MBUS error
> >     propagation lets us get a bus error which at least gives us a panic to
> >     help identify what was accessed.
> >     
> >     U-boot clears the IO Err Prop Enable Bit[1] but so far no-one seems to
> >     know why.
> >     
> >     I wasn't sure where to put this code. There is similar code for kirwood
> >     in the equivalent dt_init function. On Armada-XP the register is part of
> >     the Core Coherency Fabric block (for A385 it's documented as part of the
> >     CCF block).
> 
> What about adding a new set of register to the mvebu mbus driver?
> 

After more testing we found that some previously "good" boards started
throwing up panics with this change. I think that this might require
handling some of the PCI-e interrupts (for correctable errors) via the
EDAC subsystem.

We're still working with Marvell to track down exactly why this is
happening on our system.

> In this case it will be called even earlier allowing to see bus error
> earlier.
> 
> In any case, you should separate the device tree change from the code
> change and at least provide 2 patches.

Agreed. If/when something solid eventuates we'll do it as a proper
series.

> 
> Gregory
> 
> >     
> >     --
> >     [1] - https://gitlab.denx.de/u-boot/u-boot/blob/master/arch/arm/mach-mvebu/cpu.c#L489
> > 
> >  arch/arm/boot/dts/armada-38x.dtsi |  5 +++++
> >  arch/arm/mach-mvebu/board-v7.c    | 27 +++++++++++++++++++++++++++
> >  2 files changed, 32 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
> > index 3f4bb44d85f0..3214c67433eb 100644
> > --- a/arch/arm/boot/dts/armada-38x.dtsi
> > +++ b/arch/arm/boot/dts/armada-38x.dtsi
> > @@ -386,6 +386,11 @@
> >  				      <0x20250 0x8>;
> >  			};
> >  
> > +			ioerrc: io-err-control@20200 {
> > +				compatible = "marvell,io-err-control";
> > +				reg = <0x20200 0x4>;
> > +			};
> > +
> >  			mpic: interrupt-controller@20a00 {
> >  				compatible = "marvell,mpic";
> >  				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
> > diff --git a/arch/arm/mach-mvebu/board-v7.c b/arch/arm/mach-mvebu/board-v7.c
> > index d2df5ef9382b..fb7718386ef9 100644
> > --- a/arch/arm/mach-mvebu/board-v7.c
> > +++ b/arch/arm/mach-mvebu/board-v7.c
> > @@ -138,10 +138,36 @@ static void __init i2c_quirk(void)
> >  	}
> >  }
> >  
> > +#define MBUS_ERR_PROP_EN BIT(8)
> > +
> > +/*
> > + * U-boot disables MBUS error propagation. Re-enable it so we
> > + * can handle them as Bus Errors.
> > + */
> > +static void __init enable_mbus_error_propagation(void)
> > +{
> > +	struct device_node *np =
> > +		of_find_compatible_node(NULL, NULL, "marvell,io-err-control");
> > +
> > +	if (np) {
> > +		void __iomem *reg;
> > +
> > +		reg = of_iomap(np, 0);
> > +		if (reg) {
> > +			u32 val;
> > +
> > +			val = readl_relaxed(reg);
> > +			writel_relaxed(val | MBUS_ERR_PROP_EN, reg);
> > +		}
> > +		of_node_put(np);
> > +	}
> > +}
> > +
> >  static void __init mvebu_dt_init(void)
> >  {
> >  	if (of_machine_is_compatible("marvell,armadaxp"))
> >  		i2c_quirk();
> > +	enable_mbus_error_propagation();
> >  }
> >  
> >  static void __init armada_370_xp_dt_fixup(void)
> > @@ -191,6 +217,7 @@ DT_MACHINE_START(ARMADA_38X_DT, "Marvell Armada 380/385 (Device Tree)")
> >  	.l2c_aux_val	= 0,
> >  	.l2c_aux_mask	= ~0,
> >  	.init_irq       = mvebu_init_irq,
> > +	.init_machine	= mvebu_dt_init,
> >  	.restart	= mvebu_restart,
> >  	.dt_compat	= armada_38x_dt_compat,
> >  MACHINE_END
> > -- 
> > 2.24.0
> > 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
