Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD3EF883A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqrPel/tZpIFCQtGrTxJ+RdbQCn9blnXRV5Cz+ixdRw=; b=Y0TwEWy7feJ1OB
	gyzudlPiBkSnFSDRFGu+9oI6uzomlHdvkmNqOzoA94wJ/oo28g4eQgJGW2VU+c0Sy7ikQizLO182F
	lQGP1wvcKAbg+CNN1J2kBdcA7RPCQVWQ10MKfUS777xcPOVdPEWe6ormkYUXY9MeZxRP4uYPDuo+/
	sHds+f4BuLH4PzTVetYH3U4RXRsrD9kyVS4JK6DDKNdR4JlZ1KkcUqt1rCCsxd+BVcXFF7LWwKf08
	yb8qlEAfOzU07AH/4HE01XOXEvVUZMQulg5GPjg7ntEVUxQDtpwlKlVEh4Ghb2BAQhKNqtDtN4mjC
	7hlPxfMf97XAOp+Hu9NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUP48-000482-BN; Tue, 12 Nov 2019 05:50:12 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUP3r-00046l-6f; Tue, 12 Nov 2019 05:49:57 +0000
Received: by mail-oi1-x243.google.com with SMTP id 22so13755437oip.7;
 Mon, 11 Nov 2019 21:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F7OGsdO2VbLEy7022hu/ffUq8d11VfcJnuAfwqP4bjw=;
 b=GmZ05pZVFWQYw5Cc7rmmqJEXJiVOGEiN7mjBfcE+5JrwhMU4SZDuIDs5VyLHG4HsdC
 ip5ONqRF27d43gnq0F/m375dkDOypulgy0ZD2AKWWFReOUdq4DUV2eAK5FFizL7J1zrr
 M8dxD5p3Q/WZqv6VGhze98DyPKYLCC5SPdv+XFWuMKaqy7rd/OXmQX5+7cPpNqDzNS5A
 zlCgd0P6WI+UjkaAXlI/0E3w7Adn0aczIZ/JqRzYeGlZOaTf7Tv5fvhfAZYBIYBY6X8Y
 dMvLP3YXPrsjPJvfoSerAO/AE7Yd/9kK/DWFRWyNjENeX3g8jnbWVbuwt+TcUBWYQwoA
 /mIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F7OGsdO2VbLEy7022hu/ffUq8d11VfcJnuAfwqP4bjw=;
 b=ZGjSGcCvm6I7jogMZDGKqrQ7DB5XU+xax+hZdjcawZsBi9yjcpwJPDfaHVNVF3fB8I
 rbctZbe1oqJNy40TNT/6rCNsz7SkEREjTLU1pVHP72u/ZfvP1tGCjB5Av10d0q14trUw
 UVxXjnAEL/u9h3qQ/m8oREG1o2GEGEECVFKwa3oECDshJbQI22lUA3rOeqKK1A0Q2U4s
 6S0Icqxy8IRNbyUoZrt9PAuMDSL74GAyRatkpV/xHA97o3QtebvGRjkK1+Sg5rGfmFVm
 V1tG7B4WuIKGVZW5rxZySD4iN/DaMS29r42eR8OJsuJHkz3jyK82Y27HV32mZIw9lM5s
 UphA==
X-Gm-Message-State: APjAAAUaPeYh7oSftlz+6EA7SCKnr8k/XbfNbqIvB7rywHLyNaXLgVVR
 /UMMlcYbzWYw0oVb8ReP3Ddx4194/xp5ufTKn5YulQ==
X-Google-Smtp-Source: APXvYqxv8NiTo1l3ovTjO2t2TROPS4E7UMnCTcFUmgnhxHjgD4s94Nba6pIpF6ISkkboTuZeV3xWFXuvTRL4XH8zy+s=
X-Received: by 2002:aca:5e03:: with SMTP id s3mr2535116oib.88.1573537793880;
 Mon, 11 Nov 2019 21:49:53 -0800 (PST)
MIME-Version: 1.0
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
 <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
 <CA+E=qVdy-wqmR+XOms5S2zMp+B0vM7Dj_fk9N=08-1WjfKDm0Q@mail.gmail.com>
 <CA+E=qVdLzHbNTemMSmhA=-0dsNumQZJhjE-EnXBDu+j7sXTnVw@mail.gmail.com>
 <81666aeb-f3d0-e653-6597-0711a05f9b8d@katsuster.net>
 <CA+E=qVcgs=2T_9axUCJwTKgmKhjsJJ9mUfvYJbyjg59rGGjcTg@mail.gmail.com>
In-Reply-To: <CA+E=qVcgs=2T_9axUCJwTKgmKhjsJJ9mUfvYJbyjg59rGGjcTg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 11 Nov 2019 21:49:28 -0800
Message-ID: <CA+E=qVe5QmJ8-zSbKj23mb-GksjD+qN=aFaCT7OGUYPYc9Y_ow@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_214955_270500_A917E9C2 
X-CRM114-Status: GOOD (  33.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 9:43 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Mon, Nov 11, 2019 at 9:34 PM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
> >
> > Hello Vasily,
> >
> > Thank you for valuable information.
> >
> > On 2019/11/12 4:25, Vasily Khoruzhick wrote:
> > > On Sun, Nov 10, 2019 at 9:40 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> > >>
> > >> On Sun, Nov 10, 2019 at 7:30 PM Katsuhiro Suzuki
> > >> <katsuhiro@katsuster.net> wrote:
> > >>>
> > >>> Hello Vasily,
> > >>
> > >> Hi Katsuhiro,
> > >>
> > >> Thanks for response!
> > >
> > > Looks like on my board codec sits at address 0x10, and according to
> > > schematics that's what its address is supposed to be.
> > >
> > > See http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> > >
> > > Codec address is selected by pin CE of ES8316, and on rockpro64 it
> > > goes to GND through R226. So address should be 0x10.
> > >
> >
> > Yes, I agree. The schematics both v2.0 and v2.1 say that ES8316
> > address is 0x10. Thank you for pointing.
> >
> > But I wonder that my RockPro64 behavior is strange, he is in address
> > 0x11. (R226 on my board is broken...??)
> >
> > root@rockpro64:~# i2cdetect 1
> > WARNING! This program can confuse your I2C bus, cause data loss and worse!
> > I will probe file /dev/i2c-1.
> > I will probe address range 0x03-0x77.
> > Continue? [Y/n] y
> >       0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> > 00:          -- -- -- -- -- -- -- -- -- -- -- -- --
> > 10: -- UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > 70: -- -- -- -- -- -- -- --
> >
> > I plan to check R226 resistance value to judge R226 is broken or not
> > after return to home. And share the result with you.
> > Please give me a time.
>
> Thanks for confirming that on your board it's on address 0x11. I
> checked with some other rockpro64 owners and they have it on 0x10, but
> looks like we have boards with codec on different address in the wild.

Another datapoint is that my board is 2.0. If yours is 2.1 it can be a
difference between 2.0 and 2.1.

> > Best Regards,
> > Katsuhiro Suzuki
> >
> >
> > >>> Thank you for reporting.
> > >>>
> > >>> On 2019/11/11 9:17, Vasily Khoruzhick wrote:
> > >>>> On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
> > >>>> <katsuhiro@katsuster.net> wrote:
> > >>>>>
> > >>>>> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> > >>>>> RK3399 RockPro64.
> > >>>>
> > >>>> Hi Katsuhiro,
> > >>>>
> > >>>> I tested your patch with my rockpro64 on 5.4-rc6 which has your other
> > >>>> patches to es8316 driver, but apparently it doesn't work.
> > >>>>
> > >>>> 'alsamixer' complains 'cannot load mixer controls: No such device or
> > >>>> address' and if I try to play audio with mpg123 it pretends that it
> > >>>> plays something but there's no sound.
> > >>>>
> > >>>> Any idea what can be wrong?
> > >>>>
> > >>>
> > >>> Do you use defconfig? If so I guess we need turn on more configs:
> > >>>
> > >>> - simple-graph-card driver (CONFIG_SND_AUDIO_GRAPH_CARD)
> > >>> - ES8316 (SND_SOC_ES8316)
> > >>
> > >> I have these enabled, card is present in /proc/asound/cards, but
> > >> alsamixer doesn't work with it.
> > >>
> > >>> FYI) ASoC related status or logs in my environment as follows:
> > >>>
> > >>> root@rockpro64:~# uname -a
> > >>> Linux rockpro64 5.4.0-rc6-next-20191108 #169 SMP PREEMPT Mon Nov 11 12:21:44 JST 2019 aarch64 GNU/Linux
> > >>
> > >> I'm running 5.4.0-rc6  (commit
> > >> 00aff6836241ae5654895dcea10e6d4fc5878ca6) with your patch "arm64: dts:
> > >> rockchip: add analog audio nodes on rk3399-rockpro64" on top of it.
> > >>
> > >>> root@rockpro64:~# dmesg | grep -i asoc
> > >>> [   21.509903] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
> > >>> [   21.510550] asoc-simple-card hdmi-sound: ASoC: no DMI vendor name!
> > >>> [   21.567906] asoc-audio-graph-card sound: ES8316 HiFi <-> ff890000.i2s mapping ok
> > >>> [   21.568565] asoc-audio-graph-card sound: ASoC: no DMI vendor name!
> > >>
> > >> Similar here:
> > >>
> > >> [vasilykh@rockpro64 ~]$ dmesg | grep -i asoc
> > >> [   15.627685] asoc-audio-graph-card sound: ES8316 HiFi <->
> > >> ff890000.i2s mapping ok
> > >> [   16.250196] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
> > >>
> > >>> root@rockpro64:~# cat /proc/asound/pcm
> > >>> 00-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi i2s-hifi-0 : playback 1
> > >>> 01-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : playback 1 : capture 1
> > >>
> > >> Same here:
> > >>
> > >> [vasilykh@rockpro64 ~]$ cat /proc/asound/pcm
> > >> 00-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316
> > >> HiFi ES8316 HiFi-0 : playback 1 : capture 1
> > >> 01-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi
> > >> i2s-hifi-0 : playback
> > >>
> > >>> root@rockpro64:~# cat /sys/kernel/debug/asoc/components
> > >>> hdmi-audio-codec.3.auto
> > >>> ff8a0000.i2s
> > >>> ff8a0000.i2s
> > >>> ff890000.i2s
> > >>> ff890000.i2s
> > >>> ff880000.i2s
> > >>> ff880000.i2s
> > >>> es8316.1-0011
> > >>> snd-soc-dummy
> > >>> snd-soc-dummy
> > >>
> > >> Same here.
> > >>
> > >>> root@rockpro64:~# cat /sys/kernel/debug/asoc/dais
> > >>> i2s-hifi
> > >>> ff8a0000.i2s
> > >>> ff890000.i2s
> > >>> ff880000.i2s
> > >>> ES8316 HiFi
> > >>> snd-soc-dummy-dai
> > >>
> > >> Same here.
> > >>
> > >> Yet alsamixer doesn't work for me. It terminates with 'cannot load
> > >> mixer controls: No such device or address'. Strace shows that fails
> > >> here:
> > >>
> > >> openat(AT_FDCWD, "/dev/snd/controlC0", O_RDWR|O_CLOEXEC) = 3
> > >> fcntl(3, F_SETFD, FD_CLOEXEC)           = 0
> > >> ioctl(3, SNDRV_CTL_IOCTL_PVERSION, 0xfffffd3ad04c) = 0
> > >> fcntl(3, F_GETFL)                       = 0x20002 (flags O_RDWR|O_LARGEFILE)
> > >> fcntl(3, F_SETFL, O_RDWR|O_NONBLOCK|O_LARGEFILE) = 0
> > >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> > >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> > >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_INFO, 0xfffffd3ace38) = 0
> > >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_READ, 0xfffffd3ac160) = -1 ENXIO (No
> > >> such device or address)
> > >>
> > >> Looks like it fails to talk to the codec?
> > >>
> > >> mpg123 thinks that it's playing audio, but my headphones connected to
> > >> 3.5mm output are silent.
> > >>
> > >> Regards,
> > >> Vasily
> > >>
> > >>
> > >>> Best Regards,
> > >>> Katsuhiro Suzuki
> > >>>
> > >>>
> > >>>> Regards,
> > >>>> Vasily
> > >>>>
> > >>>>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> > >>>>> ---
> > >>>>>    .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
> > >>>>>    1 file changed, 28 insertions(+)
> > >>>>>
> > >>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >>>>> index 0401d4ec1f45..8b1e6382b140 100644
> > >>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >>>>> @@ -81,6 +81,12 @@
> > >>>>>                   reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> > >>>>>           };
> > >>>>>
> > >>>>> +       sound {
> > >>>>> +               compatible = "audio-graph-card";
> > >>>>> +               label = "rockchip,rk3399";
> > >>>>> +               dais = <&i2s1_p0>;
> > >>>>> +       };
> > >>>>> +
> > >>>>>           vcc12v_dcin: vcc12v-dcin {
> > >>>>>                   compatible = "regulator-fixed";
> > >>>>>                   regulator-name = "vcc12v_dcin";
> > >>>>> @@ -470,6 +476,20 @@
> > >>>>>           i2c-scl-rising-time-ns = <300>;
> > >>>>>           i2c-scl-falling-time-ns = <15>;
> > >>>>>           status = "okay";
> > >>>>> +
> > >>>>> +       es8316: codec@11 {
> > >>>>> +               compatible = "everest,es8316";
> > >>>>> +               reg = <0x11>;
> > >>>>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> > >>>>> +               clock-names = "mclk";
> > >>>>> +               #sound-dai-cells = <0>;
> > >>>>> +
> > >>>>> +               port {
> > >>>>> +                       es8316_p0_0: endpoint {
> > >>>>> +                               remote-endpoint = <&i2s1_p0_0>;
> > >>>>> +                       };
> > >>>>> +               };
> > >>>>> +       };
> > >>>>>    };
> > >>>>>
> > >>>>>    &i2c3 {
> > >>>>> @@ -505,6 +525,14 @@
> > >>>>>           rockchip,playback-channels = <2>;
> > >>>>>           rockchip,capture-channels = <2>;
> > >>>>>           status = "okay";
> > >>>>> +
> > >>>>> +       i2s1_p0: port {
> > >>>>> +               i2s1_p0_0: endpoint {
> > >>>>> +                       dai-format = "i2s";
> > >>>>> +                       mclk-fs = <256>;
> > >>>>> +                       remote-endpoint = <&es8316_p0_0>;
> > >>>>> +               };
> > >>>>> +       };
> > >>>>>    };
> > >>>>>
> > >>>>>    &i2s2 {
> > >>>>> --
> > >>>>> 2.23.0.rc1
> > >>>>>
> > >>>>>
> > >>>>> _______________________________________________
> > >>>>> linux-arm-kernel mailing list
> > >>>>> linux-arm-kernel@lists.infradead.org
> > >>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > >>>>
> > >>>
> > >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
