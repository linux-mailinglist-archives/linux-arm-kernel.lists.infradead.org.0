Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C10F882E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwYkE7+D349uy68rYIIZQ5zsXGdo7Rz/+dCvjLcqJzU=; b=L3yVtlJYgq0/eS
	I6nZThz8ejDaLfmDd/16MAH9fAyR4q0UxNzlkfs8Lojyjp/tkDRZTWmjHGinRuHdazHnReHSD+r8H
	YsTSlhEOWudwr7qzgwoCjGcZYDAgouYkMZj66pzRZV9V08s1YSq+fOWcaGkp6vjm58I0oaziIlkFS
	zgreDpyuy8myceRjqrgcBFp3p8jZwGazQWvqwNCKJmZkoPGWvEUV/MXMrjhUddokooLC3Dk5hRsQ2
	EHM4f5s0GkLHppP2j0vluWF0t6sFOAXjLAXA+gw3SVHqcF0i68SUwyZM9GKME0CukBe0rXV6U19Hm
	6ZHhBBKrGt9brHUMHroQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOy8-00025t-1V; Tue, 12 Nov 2019 05:44:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOxy-00024i-Hr; Tue, 12 Nov 2019 05:43:52 +0000
Received: by mail-ot1-x344.google.com with SMTP id u13so13325959ote.0;
 Mon, 11 Nov 2019 21:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Uacbzb5ehvusM6YL8eW+5LJlu+WzWeaYLCN57ZtcXM=;
 b=f8K1gKHFL4PQSnEkNMcCsc6dQmK0Cl8b0yhrLfmPd9+wHBlD6mKNXX0KZv2pBNQYOF
 ZLmo+TZnImgGWVbGGjAT9H5h2udgp+k66OvnfdxVIG0A//rJbtJSb9Swbn97JNRMQyhZ
 e5Z8BhW+anl+h5hgZ7nR39y1JRU2nqDqCtqsqkzr+Cl39T2BLpG2gQD+UVyC8fmFOOGs
 7OykvOoJO5iuQT2ypxKNmEBdRBaUYeoEGFZBYqYz9H/miDdHQL9ECdRJj1Chhi9cw/I0
 OuqfxadYHk+x4xIldkN12HxadhzTU/bSiMpJjRngUr9xf2l/22K/Gmn2ZZAUjgYXPGbK
 mliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Uacbzb5ehvusM6YL8eW+5LJlu+WzWeaYLCN57ZtcXM=;
 b=tkwJND8U+7AEsZFLsUsnyacr30EZTrCbIVdVa5bjR+ftE9is1Y6CBwCgSndjMNc4xB
 Y839rujElkuM2HhSLNt9CI2ZZU0n2tZkthPxb7TZAAm4Hs9Zq0MVeGOGN5/pK49dpFBn
 F37PWAnflp6OYZhN8XR0a95fl6lTftma+ktL4N9X+qs99esOHZRft454fnPC6ayKIBBH
 jvkv+H7tr0beNuTEpXDkpH+vhS3wI8XlDr+HE0QxtUapCGI+9AWF1HWpKpy9Ah/vhSWm
 h29YtGY0fYei0n8wBjNV8+J6cNLuMMp3/LVGaVC41drlRUGhO8ul2A2mN1uSSPuWIHFh
 30AQ==
X-Gm-Message-State: APjAAAUvUYLCfjL3HDj411Vt/fO4ZmgAHLQxGb3wKjat8gnSHp5cfcNJ
 BAETu4lI1dfX1MXba1108/uxRWn8L2TxesLgIBHGlA==
X-Google-Smtp-Source: APXvYqxrDqnvHsE1vKqqAGmfcDQynz+GKkL/Eb7FCfq2dHue9tzwgnHaJ2JYKT8yQOO8A8HImxw7zafjSpZFa0rxzPE=
X-Received: by 2002:a9d:6acf:: with SMTP id m15mr12436472otq.312.1573537429115; 
 Mon, 11 Nov 2019 21:43:49 -0800 (PST)
MIME-Version: 1.0
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
 <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
 <CA+E=qVdy-wqmR+XOms5S2zMp+B0vM7Dj_fk9N=08-1WjfKDm0Q@mail.gmail.com>
 <CA+E=qVdLzHbNTemMSmhA=-0dsNumQZJhjE-EnXBDu+j7sXTnVw@mail.gmail.com>
 <81666aeb-f3d0-e653-6597-0711a05f9b8d@katsuster.net>
In-Reply-To: <81666aeb-f3d0-e653-6597-0711a05f9b8d@katsuster.net>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 11 Nov 2019 21:43:23 -0800
Message-ID: <CA+E=qVcgs=2T_9axUCJwTKgmKhjsJJ9mUfvYJbyjg59rGGjcTg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_214350_613182_1C8E998F 
X-CRM114-Status: GOOD (  31.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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

On Mon, Nov 11, 2019 at 9:34 PM Katsuhiro Suzuki
<katsuhiro@katsuster.net> wrote:
>
> Hello Vasily,
>
> Thank you for valuable information.
>
> On 2019/11/12 4:25, Vasily Khoruzhick wrote:
> > On Sun, Nov 10, 2019 at 9:40 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >>
> >> On Sun, Nov 10, 2019 at 7:30 PM Katsuhiro Suzuki
> >> <katsuhiro@katsuster.net> wrote:
> >>>
> >>> Hello Vasily,
> >>
> >> Hi Katsuhiro,
> >>
> >> Thanks for response!
> >
> > Looks like on my board codec sits at address 0x10, and according to
> > schematics that's what its address is supposed to be.
> >
> > See http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> >
> > Codec address is selected by pin CE of ES8316, and on rockpro64 it
> > goes to GND through R226. So address should be 0x10.
> >
>
> Yes, I agree. The schematics both v2.0 and v2.1 say that ES8316
> address is 0x10. Thank you for pointing.
>
> But I wonder that my RockPro64 behavior is strange, he is in address
> 0x11. (R226 on my board is broken...??)
>
> root@rockpro64:~# i2cdetect 1
> WARNING! This program can confuse your I2C bus, cause data loss and worse!
> I will probe file /dev/i2c-1.
> I will probe address range 0x03-0x77.
> Continue? [Y/n] y
>       0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:          -- -- -- -- -- -- -- -- -- -- -- -- --
> 10: -- UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 70: -- -- -- -- -- -- -- --
>
> I plan to check R226 resistance value to judge R226 is broken or not
> after return to home. And share the result with you.
> Please give me a time.

Thanks for confirming that on your board it's on address 0x11. I
checked with some other rockpro64 owners and they have it on 0x10, but
looks like we have boards with codec on different address in the wild.

> Best Regards,
> Katsuhiro Suzuki
>
>
> >>> Thank you for reporting.
> >>>
> >>> On 2019/11/11 9:17, Vasily Khoruzhick wrote:
> >>>> On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
> >>>> <katsuhiro@katsuster.net> wrote:
> >>>>>
> >>>>> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> >>>>> RK3399 RockPro64.
> >>>>
> >>>> Hi Katsuhiro,
> >>>>
> >>>> I tested your patch with my rockpro64 on 5.4-rc6 which has your other
> >>>> patches to es8316 driver, but apparently it doesn't work.
> >>>>
> >>>> 'alsamixer' complains 'cannot load mixer controls: No such device or
> >>>> address' and if I try to play audio with mpg123 it pretends that it
> >>>> plays something but there's no sound.
> >>>>
> >>>> Any idea what can be wrong?
> >>>>
> >>>
> >>> Do you use defconfig? If so I guess we need turn on more configs:
> >>>
> >>> - simple-graph-card driver (CONFIG_SND_AUDIO_GRAPH_CARD)
> >>> - ES8316 (SND_SOC_ES8316)
> >>
> >> I have these enabled, card is present in /proc/asound/cards, but
> >> alsamixer doesn't work with it.
> >>
> >>> FYI) ASoC related status or logs in my environment as follows:
> >>>
> >>> root@rockpro64:~# uname -a
> >>> Linux rockpro64 5.4.0-rc6-next-20191108 #169 SMP PREEMPT Mon Nov 11 12:21:44 JST 2019 aarch64 GNU/Linux
> >>
> >> I'm running 5.4.0-rc6  (commit
> >> 00aff6836241ae5654895dcea10e6d4fc5878ca6) with your patch "arm64: dts:
> >> rockchip: add analog audio nodes on rk3399-rockpro64" on top of it.
> >>
> >>> root@rockpro64:~# dmesg | grep -i asoc
> >>> [   21.509903] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
> >>> [   21.510550] asoc-simple-card hdmi-sound: ASoC: no DMI vendor name!
> >>> [   21.567906] asoc-audio-graph-card sound: ES8316 HiFi <-> ff890000.i2s mapping ok
> >>> [   21.568565] asoc-audio-graph-card sound: ASoC: no DMI vendor name!
> >>
> >> Similar here:
> >>
> >> [vasilykh@rockpro64 ~]$ dmesg | grep -i asoc
> >> [   15.627685] asoc-audio-graph-card sound: ES8316 HiFi <->
> >> ff890000.i2s mapping ok
> >> [   16.250196] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
> >>
> >>> root@rockpro64:~# cat /proc/asound/pcm
> >>> 00-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi i2s-hifi-0 : playback 1
> >>> 01-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : playback 1 : capture 1
> >>
> >> Same here:
> >>
> >> [vasilykh@rockpro64 ~]$ cat /proc/asound/pcm
> >> 00-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316
> >> HiFi ES8316 HiFi-0 : playback 1 : capture 1
> >> 01-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi
> >> i2s-hifi-0 : playback
> >>
> >>> root@rockpro64:~# cat /sys/kernel/debug/asoc/components
> >>> hdmi-audio-codec.3.auto
> >>> ff8a0000.i2s
> >>> ff8a0000.i2s
> >>> ff890000.i2s
> >>> ff890000.i2s
> >>> ff880000.i2s
> >>> ff880000.i2s
> >>> es8316.1-0011
> >>> snd-soc-dummy
> >>> snd-soc-dummy
> >>
> >> Same here.
> >>
> >>> root@rockpro64:~# cat /sys/kernel/debug/asoc/dais
> >>> i2s-hifi
> >>> ff8a0000.i2s
> >>> ff890000.i2s
> >>> ff880000.i2s
> >>> ES8316 HiFi
> >>> snd-soc-dummy-dai
> >>
> >> Same here.
> >>
> >> Yet alsamixer doesn't work for me. It terminates with 'cannot load
> >> mixer controls: No such device or address'. Strace shows that fails
> >> here:
> >>
> >> openat(AT_FDCWD, "/dev/snd/controlC0", O_RDWR|O_CLOEXEC) = 3
> >> fcntl(3, F_SETFD, FD_CLOEXEC)           = 0
> >> ioctl(3, SNDRV_CTL_IOCTL_PVERSION, 0xfffffd3ad04c) = 0
> >> fcntl(3, F_GETFL)                       = 0x20002 (flags O_RDWR|O_LARGEFILE)
> >> fcntl(3, F_SETFL, O_RDWR|O_NONBLOCK|O_LARGEFILE) = 0
> >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_INFO, 0xfffffd3ace38) = 0
> >> ioctl(3, SNDRV_CTL_IOCTL_ELEM_READ, 0xfffffd3ac160) = -1 ENXIO (No
> >> such device or address)
> >>
> >> Looks like it fails to talk to the codec?
> >>
> >> mpg123 thinks that it's playing audio, but my headphones connected to
> >> 3.5mm output are silent.
> >>
> >> Regards,
> >> Vasily
> >>
> >>
> >>> Best Regards,
> >>> Katsuhiro Suzuki
> >>>
> >>>
> >>>> Regards,
> >>>> Vasily
> >>>>
> >>>>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> >>>>> ---
> >>>>>    .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
> >>>>>    1 file changed, 28 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>>> index 0401d4ec1f45..8b1e6382b140 100644
> >>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>>> @@ -81,6 +81,12 @@
> >>>>>                   reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> >>>>>           };
> >>>>>
> >>>>> +       sound {
> >>>>> +               compatible = "audio-graph-card";
> >>>>> +               label = "rockchip,rk3399";
> >>>>> +               dais = <&i2s1_p0>;
> >>>>> +       };
> >>>>> +
> >>>>>           vcc12v_dcin: vcc12v-dcin {
> >>>>>                   compatible = "regulator-fixed";
> >>>>>                   regulator-name = "vcc12v_dcin";
> >>>>> @@ -470,6 +476,20 @@
> >>>>>           i2c-scl-rising-time-ns = <300>;
> >>>>>           i2c-scl-falling-time-ns = <15>;
> >>>>>           status = "okay";
> >>>>> +
> >>>>> +       es8316: codec@11 {
> >>>>> +               compatible = "everest,es8316";
> >>>>> +               reg = <0x11>;
> >>>>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> >>>>> +               clock-names = "mclk";
> >>>>> +               #sound-dai-cells = <0>;
> >>>>> +
> >>>>> +               port {
> >>>>> +                       es8316_p0_0: endpoint {
> >>>>> +                               remote-endpoint = <&i2s1_p0_0>;
> >>>>> +                       };
> >>>>> +               };
> >>>>> +       };
> >>>>>    };
> >>>>>
> >>>>>    &i2c3 {
> >>>>> @@ -505,6 +525,14 @@
> >>>>>           rockchip,playback-channels = <2>;
> >>>>>           rockchip,capture-channels = <2>;
> >>>>>           status = "okay";
> >>>>> +
> >>>>> +       i2s1_p0: port {
> >>>>> +               i2s1_p0_0: endpoint {
> >>>>> +                       dai-format = "i2s";
> >>>>> +                       mclk-fs = <256>;
> >>>>> +                       remote-endpoint = <&es8316_p0_0>;
> >>>>> +               };
> >>>>> +       };
> >>>>>    };
> >>>>>
> >>>>>    &i2s2 {
> >>>>> --
> >>>>> 2.23.0.rc1
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> linux-arm-kernel mailing list
> >>>>> linux-arm-kernel@lists.infradead.org
> >>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>>>
> >>>
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
