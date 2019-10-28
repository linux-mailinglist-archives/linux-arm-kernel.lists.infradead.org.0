Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA03E7BA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AnvtEjpssd8UsDGVvxjGTD5d2Mlal4ny8qB1K1MQlw=; b=j5+F3fZK4JK71o
	zbh+CCZyd0pekIXhMsD5eW3lbGFWPTjBi7kd7olyJTIqAg2IDaV8VDkgpl+fGA1UgXRm65BYeRXVG
	8xFHFY8z2Yt5Gx/nnD/3Ps9j8Ve7KzkVNLJBsMJBlNplC/W/6xfRLG3ZKqIlL3JnHpjENqoUaBQbq
	uzxqGlYAae5zBC8fB498EgYDFNHktIV9CtQGWPFE/je3sNz79vRH0hgLJSVnwRDetkzFDVkjMerIG
	wATsGNMQESITh/KhBK2siPfyhY1xDfuzz5q9UIuk2zxiZIi7RyGAw1j8hsSbrKUr3pWqNirgJ6EG2
	g8WAA4YNWRGrh0xy1iKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCog-0006WF-0S; Mon, 28 Oct 2019 21:44:46 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCoV-0006V3-82
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:44:37 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 38FFB8365D;
 Tue, 29 Oct 2019 10:44:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572299068;
 bh=DYOidqT5tUCFVfyUT2GRpqixTq+ntsgXpdtqwuOAk6k=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=1q2fHQy6amqf2xgJs26FyQkL6UTYuUaWyZ+T+FwsxzszVBd7XPgzBMxyDVLYrZb0P
 23n0/Nt5U+HpPSNTNRF0YWRT8quYDB06byPzP6FKkhDRjh2vYoOEXWBfRgST6Yaxat
 xShZO9FyV2UtSP9TiIWOjUJJhdoktAa9bM2schseZXWv5TNercrQ5hLNSW9kvrhcb6
 SAjU61jBtv/8M/QjnnV0atlkMJ1my9SvzmpoR9gLG7a+ltoBySl5YN6nWycER4ddnU
 FTNc9gY0I/TreSpiR8NZ7SVQbM76cdv1S5QTIu9ehLyE0YgRlU/Sy9jmGLw7jWhgh/
 ma4ZSEsxA1nmg==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5db761390000>; Tue, 29 Oct 2019 10:44:29 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Tue, 29 Oct 2019 10:44:25 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 29 Oct 2019 10:44:25 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "sbranden@broadcom.com" <sbranden@broadcom.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rjui@broadcom.com" <rjui@broadcom.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] ARM: dts: NSP: avoid unnecessary probe deferrals
Thread-Topic: [PATCH 2/2] ARM: dts: NSP: avoid unnecessary probe deferrals
Thread-Index: AQHViujHZY98ZQ157ka0OeDhGPxOgadqws4AgAToBQCAABcnAA==
Date: Mon, 28 Oct 2019 21:44:24 +0000
Message-ID: <b8ef1b3d154e104d943d22dcb07bff2756a82315.camel@alliedtelesis.co.nz>
References: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
 <20191025040041.6210-3-chris.packham@alliedtelesis.co.nz>
 <5d75b0ba-81c6-3d54-5bef-1127cd1c9998@gmail.com>
 <c8c9df8f252ed42c4ac7f3a10e52bfa5f5e31d50.camel@alliedtelesis.co.nz>
In-Reply-To: <c8c9df8f252ed42c4ac7f3a10e52bfa5f5e31d50.camel@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:54a5:7b66:76cf:b046]
Content-ID: <6C26432F61A07B46A928981BB4283381@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_144435_851683_6ED2BA04 
X-CRM114-Status: GOOD (  28.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-29 at 09:21 +1300, Chris Packham wrote:
> On Fri, 2019-10-25 at 10:26 -0700, Florian Fainelli wrote:
> > On 10/24/19 9:00 PM, Chris Packham wrote:
> > > The pinctrl node is used by the gpioa node. Which may have more
> > > descendants at a board level. If the pinctrl node isn't probed first the
> > > gpio is deferred and anything that needs a gpio pin on that chip is also
> > > deferred.
> > 
> > If what you care is to optimize your boot flow such that no re-probing
> > occurs, maybe another solution to look at is to re-order the order in
> > which subsystems are initialized or built (_initcall changes or
> > drivers/Makefile changes), because changing Device Tree certainly does
> > not scale over platforms and I recall Rob indicating that he wanted to
> > introduce randomized platform_device creation from
> > of_platform_bus_populate() at one point or another.
> > 
> 
> Hmm. I might be missing something. pinctrl-nsp-gpio.c uses
> arch_initcall_sync() and pinctrl-nsp-mux.c uses arch_initcall() so in
> theory they are already in the right order.
> 

Actually the init calls are made in the required order w.r.t each
other. But they are both before of_platform_populate, so it's back to
the device tree being the determining factor for when the probe()
functions are run.

With the current kernel I get

nsp_pinmux_init:
nsp_gpio_init:
OF: of_platform_populate:
OF: of_platform_bus_create: /axi@18000000/gpio@20
nsp_gpio_probe:
gpiochip_add_data_with_key: GPIOs 480..511 (18000020.gpio) failed to
register, -517
nsp-gpio-a 18000020.gpio: unable to add GPIO chip
OF: of_platform_bus_create: /axi@18000000/pinctrl@3f1c0
nsp_pinmux_probe:
... much later ...
nsp_gpio_probe:

Would it be acceptable to change the init calls to device_initcall()
and device_initcall_sync()? pinctrl-nsp-mux.c could even be converted
to (builtin_)platform_driver.

> > > 
> > > Normally we and nodes in the device tree to be listed in their natural
> > > memory mapped address order but putting the pinctrl node first avoids
> > > the deferral of numerous devices so make an exception in this case.
> > 
> > That is a workaround more than a real solution, though I understand why
> > you would to do that. One downside is that the entries are no longer in
> > incrementing register address order and that is visually disturbing and
> > who knows, maybe a drive by contributor whose pet project will be to
> > order the Device Tree entries by incrementing addresses will change that
> > in the future...
> > 
> 
> I guess really what's needed is something that understands phandles and
> tries to produce a dependency tree based on that.
> 
> > > 
> > > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > > ---
> > >  arch/arm/boot/dts/bcm-nsp.dtsi | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
> > > index da6d70f09ef1..dd7a65743c08 100644
> > > --- a/arch/arm/boot/dts/bcm-nsp.dtsi
> > > +++ b/arch/arm/boot/dts/bcm-nsp.dtsi
> > > @@ -172,6 +172,13 @@
> > >  		#address-cells = <1>;
> > >  		#size-cells = <1>;
> > >  
> > > +		pinctrl: pinctrl@3f1c0 {
> > > +			compatible = "brcm,nsp-pinmux";
> > > +			reg = <0x3f1c0 0x04>,
> > > +			      <0x30028 0x04>,
> > > +			      <0x3f408 0x04>;
> > > +		};
> > > +
> > >  		gpioa: gpio@20 {
> > >  			compatible = "brcm,nsp-gpio-a";
> > >  			reg = <0x0020 0x70>,
> > > @@ -458,13 +465,6 @@
> > >  					     "sata2";
> > >  		};
> > >  
> > > -		pinctrl: pinctrl@3f1c0 {
> > > -			compatible = "brcm,nsp-pinmux";
> > > -			reg = <0x3f1c0 0x04>,
> > > -			      <0x30028 0x04>,
> > > -			      <0x3f408 0x04>;
> > > -		};
> > > -
> > >  		thermal: thermal@3f2c0 {
> > >  			compatible = "brcm,ns-thermal";
> > >  			reg = <0x3f2c0 0x10>;
> > > 
> > 
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
