Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDE710E0ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 07:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qNlLaR5mjMyirRBqv2FVzbVbkEWVVz/+f9+ZRMCos1M=; b=M4KPochdtNqUHXSWDMz39+Y6vm
	Ti3dIyvIH13JM2OEvbysjbKZoptS9nJ5RsbToh+qQoCGyQWExRvXAbU4yUvl7Uw9HmJMinAtWLASf
	3mpw+wncyET9kwefIpdaeANUyvEEpJPMKMyihSyKNK1Shyqz68LAAF99x2pMovSvA697PLkjv5kEp
	Ng3rZkiPpIA+OuXq0dhKYvdkuxs/QKuRErQPQIbU2l0oJGYECwotGXYn/Blf7NqngQ3yIbPyCfPt4
	hvUeooLmfYceD2ucGgfGkiFfWeHEMvthziTeJT3ggirSEsl0Iu8gBJrsnGRfwLrsiusnPf4gtQ2w7
	y40KcDkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibJ0d-00024y-0C; Sun, 01 Dec 2019 06:47:07 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibJ0T-00024d-9N
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 06:46:59 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 0525B440022;
 Sun,  1 Dec 2019 08:46:43 +0200 (IST)
References: <3a870e11b152e2f8ffb2b3256c5ac42741658c4c.1574960406.git.baruch@tkos.co.il>
 <20191129170717.GC28308@lunn.ch>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: mvebu: add support for SolidRun Clearfog GTR
In-reply-to: <20191129170717.GC28308@lunn.ch>
Date: Sun, 01 Dec 2019 08:46:43 +0200
Message-ID: <871rto7dbg.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_224657_785072_274FEEA9 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

Thanks for your review.

On Fri, Nov 29 2019, Andrew Lunn wrote:

> On Thu, Nov 28, 2019 at 07:00:06PM +0200, Baruch Siach wrote:
>> SolidRun Clearfog GTR L8 and S4 SBCs are based on Armada 385. They
>> features 8 (L8) or 4 (S4) switched Ethernet ports, 1 1Gb Ethernet port,
>> 1 directly connected SFP port, 1 SFP port behind the switch (not
>> currently described in DT),
>
> Hi Baruch
>
> Did you try to add the SFP on the switch? What problems did you have?
> The general support for it should be there.

I have not tested this SFP yet.

>> +			i2c@11100 { /* SFP */
>> +				pinctrl-0 = <&cf_gtr_i2c1_pins>;
>> +				pinctrl-names = "default";
>> +				status = "okay";
>> +			};
>
> Since there are two SFPs, it would be a good idea to indicate which
> one this is.

This port is marked CON5/CON6 on the PCB. I'll extend the comment in v2.

>> +	sfp: sfp {
>> +		compatible = "sff,sfp";
>> +		i2c-bus = <&i2c1>;
>> +		los-gpio = <&gpio1 22 GPIO_ACTIVE_HIGH>;
>> +		mod-def0-gpio = <&gpio0 25 GPIO_ACTIVE_LOW>;
>> +		tx-disable-gpio = <&gpio1 14 GPIO_ACTIVE_HIGH>;
>> +	};
>
> when you get the second sfp working you are going to have naming
> issue. So maybe call this sfp0?

Good idea.

>> +		led1 {
>> +			label = "led1";
>> +			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		led2 {
>> +			label = "led2";
>> +			gpios = <&gpio1 20 GPIO_ACTIVE_HIGH>;
>> +		};
>
> There is a naming convention of LEDS labels. This does not fit it.

Indeed. The 'label' property is deprecated since commit
c5d18dd6b64. These are general propose GPIOs. Not sure what 'function'
property fits here. Also, these GPIOs go out to an optional front-panel
connector. The 'color' property does not make much sense in that
case. I'll stick LED_COLOR_ID_GREEN for the no front-panel option.

>> +&gpio0 {
>> +	pinctrl-0 = <&cf_gtr_fan_pwm>;
>> +	pinctrl-names = "default";
>> +
>> +	wifi-disable {
>> +		gpio-hog;
>> +		gpios = <30 GPIO_ACTIVE_LOW>, <31 GPIO_ACTIVE_LOW>;
>> +		output-low;
>> +		line-name = "wifi-disable";
>> +	};
>> +};
>
> Isn't there a generic rfkill GPIO driver? Never looked, but it seems
> like it should exist.

Over the years there were attempts to add DT binding to rfkill-regulator
or rfkill-gpio:

  https://patchwork.kernel.org/patch/9407171/

  http://lists.infradead.org/pipermail/linux-arm-kernel/2014-April/247328.html

  https://www.spinics.net/lists/linux-wireless/msg84462.html

Not sure what is the right way to let userspace know about GPIO that
serves as rfkill.

>> +	sar-isolation {
>> +		gpio-hog;
>> +		gpios = <15 GPIO_ACTIVE_LOW>;
>> +		output-low;
>> +		line-name = "sar-isolation";
>> +	};
>
> What is SAR?

Sample at Reset. That's the Armada 38x datasheet term. This GPIO is
active at reset time to isolate SAR signals from interference of
external devices. We deassert isolation after reset to make these signal
usable.

baruch

--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
