Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F1C153878
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 19:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP+4JWgabilRdtbe/WjoJgEzZPmcLIFV9WeS7yh+9Eo=; b=I3Oo1sO4YLNykQ
	vcTrloeK/C5xihj8RONyKbFqwBpT3LAGutu5zAxVzFSECquBF3UTqVptnsw+IQ5O8nYcr/CfWdcaV
	2fEa+CEvntNDm61cHQ+Nk/Mkmf/ImpjGWd2EksfiDB6uljM8vPXMpp7sftGa7uIC4ozxmppszGBRB
	XZdWD7a9gba8bb9nkgZYow4NwMWEZp4Y2yg7/EvhIKEqIVXU9Ch+yaAZdyHWQHrGDb54b1LXFo/ov
	Un5QON5KmcTscLbaiXwLC0ud/iLl7cnZh+v615JImkECeeH5JumiHXE0rcTWUzAmFnOJlCiSzFbAF
	8cl4E8BP0zn2lI7v5wfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPhY-00049S-N0; Wed, 05 Feb 2020 18:47:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPeN-0000a3-AT; Wed, 05 Feb 2020 18:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=hvTbTHXBPYmTKy/lixN/eo8AcNiWyE/v1TmVf+b4g3U=; b=AwYs0VKhWtnrePgcmfvR5lh/gh
 TLf9V+H6k2l6vDfFc6jAScD8FNe3ZYfJMqvBZz0Et+5H7gJtRnPM0fG7+cwrcDBF0maND+PEMl6h4
 KqbWiaSpP43wbegvwxmkp2WWKo+dDJG/VZbIHjqKR2HaydypzmqRZ2ElvAupCb02Io3Ny86dkX2nZ
 VAMxEKVKG0BGYBNr5NV+2bYWFB3MezcClE7/lwXlKY/AeO67mLTDJc34K7rk+/G/69LJ7fexUMKCC
 nLs7e0xQcO7Y+zrwIyHO/cpgWdxvgu3oz+qJedVHwh3bSweZQa7aXRX9sCSLgrIGvQg79uP6kcSpo
 nqk41pxA==;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPMb-0007Ed-Ik; Wed, 05 Feb 2020 18:25:30 +0000
Received: by mail-qt1-f195.google.com with SMTP id v25so2367130qto.7;
 Wed, 05 Feb 2020 10:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hvTbTHXBPYmTKy/lixN/eo8AcNiWyE/v1TmVf+b4g3U=;
 b=X7FnXU3fn7P0eWQCjRWn/KeBrCdCKW7tBIQW6jqjXaMA0ETOcWqt2KepYfFhRAB7n8
 BYgDr68Kp23BfSjurmPUFkCQQvhItVIln+ZSYIgvLCeY4V8YHmLwrGumwlP2S9xrjHht
 j5UynVFd/7Qgl2vfYPPOjDomQwV7cP/zpmAKoPLNbCGvBsCQf0u4RgtFojsni8i7lykZ
 ohpkvw2mpVwF0FhAJuV7k6XpsQlnYPu1FUsvhiZmbnKvxRMi0JOHTXN4AzqQKhQxg7yt
 GcAXOoY4lt/hq4FJQDuLoy2xxwElCxpdON8PtFBFSLBHlEc5yvBm29OXme7j5VGm8o8D
 YpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hvTbTHXBPYmTKy/lixN/eo8AcNiWyE/v1TmVf+b4g3U=;
 b=fW1QDV1M2Syzej0XhLAlctQdNj1i1QnpNuioMH55g6rVRHDgEHE9r7Opt407M9ODtk
 ul1d7ImPCNGrIyP8J7ZDqzM3vfMb9Nc9QwwLj6WBtC1rkSOnypm0Uw1Nr6EHzlW5KTJk
 h7qtNwg7BN7ROIS5FXg502dWrRHb3DgY0CfZ9MHHglS7BHaYu6uvjTDsc5MkfGyvC5tA
 NCGziei31f6g+3znk3LcUG2Kh1k/J476KJawiAuXPzyjIg6hgjXeYYeEuwGjriEFtjxe
 1llzQisDiUiVvlcleT5qtUNhkk/gBg/pv7JjwMxeCRB5BSSGtnVwHInap8VhGuQr1ZnV
 U6wQ==
X-Gm-Message-State: APjAAAV7A61MrOOa3qQ17CtuWcz8TClUsTz1t84jH9IvvltpW69+tTJ9
 V8ezluRJv5JmsywxWWNO7V9lftVeKEFpI69/mSPcdRg9
X-Google-Smtp-Source: APXvYqzLPt8bs2iJ2XZWuNSreVWL5BIaP30HvuaREZPiz30t5W3yK1Q+fak7WY+zM3I2wmFW+jg9XDnby19u/CAri84=
X-Received: by 2002:ac8:4749:: with SMTP id k9mr34934803qtp.16.1580928213098; 
 Wed, 05 Feb 2020 10:43:33 -0800 (PST)
MIME-Version: 1.0
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
In-Reply-To: <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 5 Feb 2020 13:43:21 -0500
Message-ID: <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_182525_731100_59AEC4EE 
X-CRM114-Status: GOOD (  50.66  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > First question, which kernel are you running?
> > Current mainline (5.4.17) works out of the box for the rk3328-roc-cc.
>
> Not from my experience.  I'm trying 5.5, but I also tried a fresh build
> ot 5.4.17 and neither will load from the sdcard in their default
> configuration.  If you have this working can you share your kernel config?

Considering all of the components to boot off emmc (which you are
clearly doing since you boot at all) are the same as the ones required
for sdmmc I doubt it's a configuration issue.
But to answer your question, I used the defconfig, stripped all of the
non rockchip components out, and made the base drivers builtin.

>
> >
> > Second question, do you have the libre board or the team firefly board?
>
> The libre.computer board.
>
> >
> > Third question, what is the current state of the grf-gpio pin?
> > Also, what is the state of the regmap for register 428 at
> > /sys/kernel/debug/regmap/dummy-syscon@ff100000/registers
> >
> > Also, it likely works because those GPIOs don't exist, as such it is
> > leaving the grf registers as is from u-boot.
>
> Makes sense.  If I remove vcc_sdio from the device tree, and remove the
> vqmmc entry from the sdmmc node, then the kernel continues to boot.  In
> that case I have
>
> # cat /sys/kernel/debug/regmap/dummy-syscon\@ff100000/registers | grep 428
>
> 428: 0000f800

As it should be, this should mean your mute pin is off (default state)
and the vqmmc voltage should be 3.3v.

>
> # cat /sys/kernel/debug/mmc1/ios
> clock:        0 Hz
> vdd:        0 (invalid)
> bus mode:    2 (push-pull)
> chip select:    0 (don't care)
> power mode:    0 (off)
> bus width:    0 (1 bits)
> timing spec:    0 (legacy)
> signal voltage:    0 (3.30 V)
> driver type:    0 (driver type B)

It's not detecting anything at all.
You say you booted off this card?

Could you run a `dmesg | grep mmc` and send all the results?

>
> # cat /sys/kernel/debug/gpio
> gpiochip0: GPIOs 0-31, parent: platform/pinctrl, gpio0:
>  gpio-30  (                    |sdmmc-regulator     ) out lo ACTIVE LOW
>
> gpiochip1: GPIOs 32-63, parent: platform/pinctrl, gpio1:
>  gpio-58  (                    |vcc-host1-5v-regulat) out hi
>
> gpiochip2: GPIOs 64-95, parent: platform/pinctrl, gpio2:
>
> gpiochip3: GPIOs 96-127, parent: platform/pinctrl, gpio3:
>
> gpiochip4: GPIOs 511-511, parent: platform/ff100000.syscon:grf-gpio,
> ff100000.syscon:grf-gpio:
>
>
> I notice that I don't have the entry for vcc-host-5v-regulator.  In fact
> vcc-host-5v-regulator doesn't appear in the device tree anywhere that I
> can find.  It only appears in the rock64 device tree.  What device
> tree/kernel version are you using?

I've got usb 2 and 3 fully working, that regulator is part of the usb subsystem.

>
> $ grep -R vcc-host-5v-regulat linux-5.5/
> linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts:
> vcc_host_5v: vcc-host-5v-regulator {
>
> $ grep -R vcc-host-5v-regulat linux-5.4.17/
> linux-5.4.17/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts:
> vcc_host_5v: vcc-host-5v-regulator {
>
> >>
> >> Calling regmap_write seems wrong, as we end up setting all bits in the register, so this should probably be regmap_update_bits.  The top 16-bits are write-enable for the lower 16-bits, but I can't find documentation if it works to set both the write enable bit and the target bit at the same time.
> > data = (val ? BIT(bit) : 0) | BIT(bit + 16); handles setting both the
> > bit and the write bit.
> Right I saw that, I was more wondering if it's legal to set both in the
> same operation, or if the chip requires you to set the write bit, and
> then the data bit in a subsequent write.
> >> Tonight I will try splitting that into two calls to update the high bit first as well as changing to regmap_update_bits.  Any other ideas welcome.
> >>
> >> Sorry if this was too verbose or too much context, I'm new to this kind of work.
> > I hate to say it, but you probably have something else going on here.
> > From my ouya porting experience, sdmmc can be very touchy in odd configurations.
> > I would try reducing the clock rate and trying again, also you can
> > limit the timing spec mode as well.
>
> Any advice on how to reduce the clock rate/timing spec mode?  I also
> just found a PDF showing the position of the components on the board, so
> I should be able to find a test point to see if the regulator is
> producing 1.8V vs 3.3V as its supposed to.

Documentation/devicetree/bindings/mmc/mmc-controller.yaml
max-frequency for frequency cap.
sd-uhs-sdr12 through sd-uhs-ddr50 set sd card modes.
You can also try bus-width = <1>;

>
> >
> > Could you send the data from the following sources?
> > /sys/kernel/debug/mmc1/ios
> > /sys/kernel/debug/gpio
>
>
> Pasted above.
>
>
> > Also, try reseating the sdcard.
> > I submitted a patch in October which fixes the sdcard on boot.
> > Recently gpio functionality on the rk3328 was fixed which allowed
> > vcc_sd to shut down during boot.
> > Reseating the card would trigger card detection, which powers the
> > regulator back up and the card enumerates.
> > Check that regulator-boot-on; is under the vcc_sd: sdmmc-regulator.
>
> I've re-seated the sdcard a bunch. If I do nothing but reboot the board
> and toggle between the stock device tree and one with vcc_sdio/vqmmc
> removed I can reliably boot vs not-boot the board.  regulator-boot-on is
> there for vcc_sd.
>
>
> I really appreciate the help!
>

I hate to ask the dumb questions, but I have a few just for clarity.
With no emmc attached, does your board boot off the sdcard?
Are you sure the sdcard is good?

> One thing I did notice, though, is that GPIO_MUTE seems to have some
> inherent coupling to the analog codec, as the value automatically goes
> high when starting to play audio, and low again when stopping (but can
> still be manually toggled in between). Thus unless there's some secret
> to disabling that behaviour then it might not be safe to enable analog
> audio on these ROC-CC boards for fear of messing up peoples' SD cards.

Robin,
Do you know if that is the SOC doing that or the drivers?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
