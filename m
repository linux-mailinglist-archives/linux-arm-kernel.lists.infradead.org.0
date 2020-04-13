Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7091A6261
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 07:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4D3l6tewM2fmnHOCMnPywNpWtb9+KiBQKtC4zWPp08=; b=ZnxXBU9Hc8O7je
	OOBGmVD4GoPN/P6Uf1Ghl5Xql9/Q1Jt3tffVrWu62NPrY9v6Cj8GYZt+mBqwZWcpHf6FhXgzH8TB6
	27BB4IreOuKEEC8QwdlrdvHzuARgidb6ErqRjP7ymr5gkJ/A/uFf7TPHewXXpsC0noEZPeTiK+beU
	pRR7OW7h47Aj+t6eka9VX9uIo3Ie2ajgxExIKUOBGMRrgHhg170zc1LTNkffPwpVNNxzQHspeBqo3
	CnP3fIb9hnWDu7as9dsyta/im4vjEt4K2RvaaE2PZNCsGoPJokXFjcgxvfj037n5TOTzm4NeN919F
	MynQgkaPBalG8dHwQ/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNrjW-00055H-Ch; Mon, 13 Apr 2020 05:34:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNrjM-00054r-9l; Mon, 13 Apr 2020 05:34:02 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A9A92076B;
 Mon, 13 Apr 2020 05:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586756039;
 bh=qt4NrQHfEP5adB0UUWrWKeKpLWTnRpj9zG8trfqPOIY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VndDFV/LAmxNxyZTDsCrBrgVrIh/nLeNPouMebChS7yrWETkr5J8Nnx2q88B5oV0E
 XsD3CAqnUwg6xPP+bXZX0hYv0gLkJVr9SyFZIe4OOvGxL0QjRr703qXbA49oohR1yf
 w25tl0GPD5wC7YgRTjLx24o6+SWxXKPHrbvqagkU=
Received: by mail-wr1-f47.google.com with SMTP id i10so9021114wrv.10;
 Sun, 12 Apr 2020 22:33:59 -0700 (PDT)
X-Gm-Message-State: AGi0Pub/nnXzw4KA1augoKAB8VNd/Jl8AOWccq5WKRqrXDr7syhRO6Z2
 xFeWTp97AWpgrgVEkOT1sNRFZY29DZt2JNqWRxk=
X-Google-Smtp-Source: APiQypLgboXHD3XZiUO90AwxZLJ/yV/Vrt0c+3sy6PCwIvSdLMeJ7KtlYHXP+6JpGZSwGC046WzmNEMiiA47Tvr5sAU=
X-Received: by 2002:adf:f04a:: with SMTP id t10mr4827742wro.64.1586756037667; 
 Sun, 12 Apr 2020 22:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
 <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
 <20200406091313.GF31120@duo.ucw.cz>
In-Reply-To: <20200406091313.GF31120@duo.ucw.cz>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2020 13:33:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v64bcVLmQPxfAUafa-Grbr1MRCVb0j=HYUrXdihbmVB2Mw@mail.gmail.com>
Message-ID: <CAGb2v64bcVLmQPxfAUafa-Grbr1MRCVb0j=HYUrXdihbmVB2Mw@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_223400_379564_B3C58D57 
X-CRM114-Status: GOOD (  25.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Mon, Apr 6, 2020 at 5:13 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> > > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > > diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
> > > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> > > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > > yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> > > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> > >
> > > Maybe we should just get rid of linux,default-trigger then?
> >
> > In this particular case, I'd say it's probably time to reevaluate the rather
> > out-of-date binding. The apparent intent of the "linux,default-trigger"
> > property seems to be to describe any trigger supported by Linux, so either
> > the binding wants to be kept in sync with all the triggers Linux actually
> > supports, or perhaps it should just be redefined as a free-form
>
> It is enough to keep it in sync with all the triggers we actually use :-).
>
> > I'd be slightly inclined towards the latter, since the schema validator
> > can't know whether the given trigger actually corresponds to the correct
> > thing for whatever the LED is physically labelled on the board/case, nor
> > whether the version(s) of Linux that people intend to use actually support
> > that trigger (since it doesn't have to be the version contemporary with the
> > schema definition), so strict validation of this particular property seems
> > to be of limited value.
>
> But freeform seems acceptable, too.

I'd say free form is easier to manage. Being in the list of valid triggers
doesn't mean the kernel actually has support for it enabled.

> > > > > -             diy-led {
> > > > > +             diy_led: diy-led {
> > > > >                        label = "red:diy";
> > > > >                        gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> > > > >                        default-state = "off";
> > > > >                        linux,default-trigger = "mmc1";
> > > > >                };
>
> This label probably should be "mmc1:red:activity" or something like that.

Is changing this after it has been in some kernel releases OK? Wouldn't
it be considered a break of sysfs ABI?

Also, is there some guideline on how to name the labels? For sunxi we've
been doing "${vendor}:${color}:${function}" since forever.

As far as I can tell, the hardware vendor [1] has no specific uses for
these two (red and yellow) LEDs designed in. And their GPIO lines are
simply labeled "DIY" (for the red one) and "YELLOW". So I'm not sure
if putting "our" interpretations and the default-trigger into the
label is wise.

For reference, the green one has its GPIO line labeled "WORK", and their
intention from [1] is to have it as some sort of power / activity indicator.
Hence it is named / labeled "work".

As for the node names, I think we can keep it as is for now. It's not
the preferred form, but there's really no need to change it either.
And some overlay or script might actually expect that name.

Regards
ChenYu


[1] http://wiki.t-firefly.com/en/ROC-RK3399-PC/driver_led.html

> > > > > -             yellow-led {
> > > > > +             yellow_led: yellow-led {
> > > > >                        label = "yellow:yellow-led";
> > > > >                        gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > > > >                        default-state = "off";
>
> And this label should be changed, too.
>
> Best regards,
>                                                                         Pavel
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
