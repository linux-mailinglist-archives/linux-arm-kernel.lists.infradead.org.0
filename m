Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22CCF119
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 05:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjhYASvM+FvOSWF9KBxbyDUBgJyUxZNYnpG+xikWB5Y=; b=rvugG9+HpqE6cQ
	WX8QllooucRi4/RXK4tdEgHSeTvfLZws8SXIwRpxHik31rVH6oybh077wQFOxL5lXnlVp3fwYCLYg
	8yP1nMcQVWEEPPqK6bscqXfUZR9jGQcnJ7sigJnvW7ffeRfEJ6dXHJ0HX0Oi2kkkeJbJF7ark/7IJ
	TF9+21fhvOq8Wx7dbNxSBMiAXfZ9oytEBE4ZMFbphUqWat+21gYgMvUYIpL1/JzpA0GJviYgid55Y
	+cXWCdn9lfv5pZR+Bmc/Bhb+mAT839POUFHBu57g/IRC451J6/zAjGrqX0X2j3nc4XTzSoewERkYR
	siUpwoKFV15lcioYN9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHfvW-0003mr-Es; Tue, 08 Oct 2019 03:12:42 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHfvO-0003m3-7X; Tue, 08 Oct 2019 03:12:36 +0000
Received: from localhost (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 8722E5EB;
 Tue,  8 Oct 2019 11:12:21 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P628T140409852389120S1570504336050683_; 
 Tue, 08 Oct 2019 11:12:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <05ed1e03424721773edf294b718993ad>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: jagan@amarulasolutions.com
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: djw@t-chip.com.cn
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Organization: Firefly Team
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com>
 <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
Date: Tue, 08 Oct 2019 11:11:10 +0800
In-Reply-To: <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 (Jagan Teki's message of "Tue, 1 Oct 2019 15:56:14 +0530")
Message-ID: <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_201234_594251_59F3F303 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jagan Teki <jagan@amarulasolutions.com> writes:

> Hi Heiko,
>
> On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
>>
>> Hi Jagan,
>>
>> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
>> > ROC-PC is not able to boot linux console if PWM2_d is
>> > unattached to any pinctrl logic.
>> >
>> > To be precise the linux boot hang with last logs as,
>> > ...
>> > .....
>> > [    0.003367] Console: colour dummy device 80x25
>> > [    0.003788] printk: console [tty0] enabled
>> > [    0.004178] printk: bootconsole [uart8250] disabled
>> >
>> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
>> > VDD_LOG. So, for normal working operations this needs to
>> > active and pull-down.
>> >
>> > This patch fix, by attaching pinctrl active and pull-down
>> > the pwm2.
>>
>> This looks highly dubious on first glance. The pwm subsystem nor
>> the Rockchip pwm driver do not do any pinctrl handling.
>>
>> So I don't really see where that "active" pinctrl state is supposed
>> to come from.
>>
>> Comparing with the pwm driver in the vendor tree I see that there
>> is such a state defined there. But that code there also looks strange
>> as that driver never again leaves this active state after entering it.
>>
>> Also for example all the Gru devices run with quite a number of pwm-
>> regulators without needing additional fiddling with the pwm itself, so
>> I don't really see why that should be different here.
>
> I deed, I was supposed to think the same. but the vendor kernel dts
> from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
> information other than this vensor information, ie one of the reason I
> have marked "Levin Du" who initially supported this board.
>
> One, think I have seen was this pinctrl active fixed the boot hang.
> any inputs from would be very helpful.
>
> Levin Du, any inputs?
>
> [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>

A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.dtsi:

    &pwm2 {
            pinctrl-names = "active";
            pinctrl-0 = <&pwm2_pin_pull_down>;
            status = "okay";
    };

But last time I checked, using the mainline U-Boot (the roc-rk3399-pc is
in mainline now) with mainline linux v5.2-rc7, no such setting is
necessary, and the board boots happily.

I cannot find the use of "active" pinctrl state in the
`drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup as
default, the `pinctrl-names` needs to be "default" or "init" (see
`drivers/base/pinctrl.c`) .

Jagan, what version of board do you use? I checked with
"ROC-RK3399-PC-V1.0-A 2018-07-12". 

Thanks

--
Levin Du



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
