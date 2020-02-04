Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26167151F64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwkTSIzzUBHLPRysvedNZ7eZrEUDtq6pBVQTNwM3+xA=; b=SRn6aeCCkeCXVY
	DFphjyZJg/4p3ASQtfLc87/qdDcIHRdoireH14NzKLUAvYrLcxTN574hrI6NvWxu4BJ3EIhw4h06Y
	pi5xmVBjcMqgqaytfi1HRLuA1+4N512E+MexFfe7jtprXS3sHsGPZ6Dg4XMe7L+0wbGG1+5pam4qw
	iqQ/ujTA/0EwoHDG7rGkX5CT8IkzD53tXPSJR1SkA/wCz8CO4qZbW7vNbXqrVyoFkSL7QXA6AOj2h
	ozJK2heh6x52n8i17gJQ/Pq8U6eHUDzw+frPv7ijUasYTyJ1EvrFY3K4bkZp71YQ812VbXxuwnsVJ
	dBB0SP+GQrWHqVbIwiBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz1xm-0004DW-4h; Tue, 04 Feb 2020 17:26:14 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz1xc-0004Bj-Sz; Tue, 04 Feb 2020 17:26:06 +0000
Received: by mail-qk1-x744.google.com with SMTP id 21so1639295qki.5;
 Tue, 04 Feb 2020 09:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3dP8VJDHTMwSCXPSHdUqgIsD/1oGvcYdJ0XWdse0x0E=;
 b=iNxhxxAlK98pJc1bhIqGosZiDe3zy99tDeHDb8GIh2oZOmfA8xQolmniJJ6hJmVD8/
 Z+/C9XInvo+E6zyhJ5ZQG4j9c1kHtsppMxiMpKkrUkYG5qeCtrc0G/bOWnmgB+kOaZHZ
 EAY6yVfS+Yt/Gc9lEs9y9dhaVNaWFTLKaXQkivVTbjdgbD14+Ivmgv4bj41XYwUA2lhj
 4LnkYNOtiFEBPy6RkLmhZDfn2sVEAjmigyPIrVs/dW1bugQAejahAfsr05f8O0Re9ggm
 L+Jkqrl6mIbl6KJitRxaubDBQiit2i0bvcnDESG2E3x8knK+O3rKaM2q9ZGRNRuQy8nS
 4kZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3dP8VJDHTMwSCXPSHdUqgIsD/1oGvcYdJ0XWdse0x0E=;
 b=r/Zwr4W5V43FoKiTvcYQbOPpPsRim6uCmGeHCg9IDQMIOgsvSliOWps9DdU3+lHqp7
 vOJk/WVdM6rxl9/u4QJJmHq3qVRXlW/dEyfKOHANQWEexhE48QdicimsFWBlkbAVc6fT
 JeaG761RyWSTQAYyEnLbW+qT8iA8CsnIfACHDCRr/HrBEQHCn72bzqLGzy9WsdTGKhjW
 GhquLDi85htUwTFTASrVqeYS+1cb8v7JcCWiUIZ4Ya/bR2vRCU+sRXef/j/kQ1sMBunw
 bCAJ3P7JXSrbCEM6h5+N+MCAES3g3hvr7coehlT/gRD8gr+kIa4FGCfsO/BX/sBiwrUM
 FAqQ==
X-Gm-Message-State: APjAAAV41qJSRcxxL/h5J0cfjXWisHp2fl5xSZLhqzKypNgDhQ4KWu9y
 iQefxgDQxglPFbN3cbq64D1Nlg6KlUQFZn9hJcjQHa5cFpA36w==
X-Google-Smtp-Source: APXvYqwmO26F2D8S/9kVTERuCdxC05/r6ZvOtRosSuTaB5YsvzlEoulDe+xpUf7ghMbc5RFAaELAguSN2yujPao290c=
X-Received: by 2002:a37:a482:: with SMTP id
 n124mr30322684qke.224.1580837161337; 
 Tue, 04 Feb 2020 09:26:01 -0800 (PST)
MIME-Version: 1.0
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
In-Reply-To: <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 4 Feb 2020 12:25:46 -0500
Message-ID: <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_092604_938662_D0BDEB9B 
X-CRM114-Status: GOOD (  33.21  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 11:14 AM Adam Van Ymeren <adam@vany.ca> wrote:
>
>
> On 2020-02-04 10:15 a.m., Peter Geis wrote:
> > I'm interested in this, since I've encountered some oddities with the
> > sdcard on this board.
> > With the recent addition of support for ddr4 tpl init in u-boot I
> > started playing with it again.
> > I couldn't get the sdcard to detect leaving tpl into spl, causing a
> > boot failure.
> > The exact same image works when flashed to the emmc though.
>
> Awesome I was hoping to get mainline u-boot loading this board as well.
> However I don't know how to setup the sdram-params for the dd4 on this
> board.  Do you have the appropriate config?  Would be great not to
> require the vendor's blob for booting.
>
> >
> > Once we are in the kernel the sdcard detects fine.
> >
> > I noticed u-boot doesn't have a grf-gpio driver, so the 3.3v/1.8v
> > regulator is unavailable.
> >
> > root@firefly:/sys/kernel/debug/mmc1# cat ios
> > clock:          150000000 Hz
> > actual clock:   150000000 Hz
> > vdd:            21 (3.3 ~ 3.4 V)
> > bus mode:       2 (push-pull)
> > chip select:    0 (don't care)
> > power mode:     2 (on)
> > bus width:      2 (4 bits)
> > timing spec:    6 (sd uhs SDR104)
> > signal voltage: 1 (1.80 V)
> > driver type:    0 (driver type B)
> >
> > root@firefly:/sys/kernel/debug# cat gpio
> > gpiochip0: GPIOs 0-31, parent: platform/pinctrl, gpio0:
> >  gpio-0   (                    |vcc-host-5v-regulato) out hi
> >  gpio-30  (                    |sdmmc-regulator     ) out lo ACTIVE LOW
> >
> > gpiochip1: GPIOs 32-63, parent: platform/pinctrl, gpio1:
> >  gpio-50  (                    |snps,reset          ) out hi ACTIVE LOW
> >  gpio-58  (                    |vcc-host1-5v-regulat) out hi
> >
> > gpiochip2: GPIOs 64-95, parent: platform/pinctrl, gpio2:
> >
> > gpiochip3: GPIOs 96-127, parent: platform/pinctrl, gpio3:
> >
> > gpiochip5: GPIOs 509-510, parent: platform/rk805-pinctrl, rk805-gpio, can sleep:
> >  gpio-509 (                    |?                   ) out hi ACTIVE LOW
> >  gpio-510 (                    |?                   ) out hi ACTIVE LOW
> >
> > gpiochip4: GPIOs 511-511, parent: platform/ff100000.syscon:grf-gpio,
> > ff100000.syscon:grf-gpio:
> >  gpio-511 (                    |vcc_sdio            ) out hi
>
>
> On my board I tried every combination of GPIO_ACTIVE_HIGH/LOW,
> enable-active-high or not, and state = <18... 0x1 33... 0x0> vs state =
> <18... 0x0 33...0x1> for the vcc_sdio regulator.  None of those allowed
> my kernel to detect the SD Card.  The only reliable method so far seem
> to be setting the gpio of the regulator to some non existent pin, but
> that clearly isn't the corrent answer.  Both gpios = <&gpio0 25
> GPIO_ACTIVE_HIGH> and gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH> allow the
> board to board, both of which are non-existent pins from my reading of
> the datasheet.

First question, which kernel are you running?
Current mainline (5.4.17) works out of the box for the rk3328-roc-cc.

Second question, do you have the libre board or the team firefly board?

Third question, what is the current state of the grf-gpio pin?
Also, what is the state of the regmap for register 428 at
/sys/kernel/debug/regmap/dummy-syscon@ff100000/registers

Also, it likely works because those GPIOs don't exist, as such it is
leaving the grf registers as is from u-boot.

>
> I'm beginning to suspect that it may be a bug in the gpio-syscon driver,
> or that the actual circuit on the board just doesn't work as the vendor
> intended.
>
> In my dmesg I see
>
> [    0.406830] gpio-syscon ff100000.syscon:grf-gpio: can't read the data
> register offset!
>
> which is awfully suspicious.  But this doesn't appear to be a fatal
> error for the driver, logging _regmap_write calls shows that it appears
> to be updating the correct register (0x428)

I get the same error, it doesn't appear to affect the end behavior.

>
>
> From gpio-syscon.c:134
>
> |
>
> static void rockchip_gpio_set(struct gpio_chip *chip, unsigned int offset,
>                               int val)
> {
>         struct syscon_gpio_priv *priv = gpiochip_get_data(chip);
>         unsigned int offs;
>         u8 bit;
>         u32 data;
>         int ret;
>
>         offs = priv->dreg_offset + priv->data->dat_bit_offset + offset;
>         bit = offs % SYSCON_REG_BITS;
>         data = (val ? BIT(bit) : 0) | BIT(bit + 16);
>         ret = regmap_write(priv->syscon,
>                            (offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
>                            data);
>         if (ret < 0)
>                 dev_err(chip->parent, "gpio write failed ret(%d)\n", ret);
> }
>
> Calling regmap_write seems wrong, as we end up setting all bits in the register, so this should probably be regmap_update_bits.  The top 16-bits are write-enable for the lower 16-bits, but I can't find documentation if it works to set both the write enable bit and the target bit at the same time.

data = (val ? BIT(bit) : 0) | BIT(bit + 16); handles setting both the
bit and the write bit.

>
> Tonight I will try splitting that into two calls to update the high bit first as well as changing to regmap_update_bits.  Any other ideas welcome.
>
> Sorry if this was too verbose or too much context, I'm new to this kind of work.

I hate to say it, but you probably have something else going on here.
From my ouya porting experience, sdmmc can be very touchy in odd configurations.
I would try reducing the clock rate and trying again, also you can
limit the timing spec mode as well.

Could you send the data from the following sources?
/sys/kernel/debug/mmc1/ios
/sys/kernel/debug/gpio

Also, try reseating the sdcard.
I submitted a patch in October which fixes the sdcard on boot.
Recently gpio functionality on the rk3328 was fixed which allowed
vcc_sd to shut down during boot.
Reseating the card would trigger card detection, which powers the
regulator back up and the card enumerates.
Check that regulator-boot-on; is under the vcc_sd: sdmmc-regulator.

>
> |
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
