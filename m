Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110EAF7FDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmX77/YE/in0rQdP6QXlDehFfta/Qlv7isY+LIlxIOs=; b=OSCDa20A67kVMM
	Ak1BT3Q+uMa3ubV1+wGycXHWn8xZ1HYn/P9UsISrlM6c/NyXnlELg2gxei+bRqWfrlOHbT91uG+2I
	aFEM5+0Z/q2XQTYpsJ8/deYoituUYdJWjdklMiq0jYgsr2lEoCJmyRrppwtWyqDC0Ys+y0I2ph1gu
	1we9zr1BXNMdtt6p75cQ5FEU1hcIMvM1gwWcB0O6zZtmUGETT3nrQWom8JDls/9TkSPnCov/7vvzc
	dpL3Qtuih9GttAB8sgsGoDSo0v0EgZzyxfVuPDaFcPA3cQp201Ke6RlE3pgT7LZSuCyhR8xlB2Zje
	QvlC1cKq3lct1GdfQNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFKq-0006pH-Jl; Mon, 11 Nov 2019 19:26:48 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFKS-0006b6-Ob; Mon, 11 Nov 2019 19:26:26 +0000
Received: by mail-oi1-x243.google.com with SMTP id l20so12497227oie.10;
 Mon, 11 Nov 2019 11:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tZzh1Ex9ZdXCo9TXeCCIknPHlre0k+c4oPEzpW65C30=;
 b=S6Qh/qIU+Y1N82mm958h1PBbGUral3TH1yFTB7b5i1T02F2nMJ5/MS1daY11cKqUzJ
 bvag4kgaJyCeBv94BgfK5TVojYsFoEhcqf+o0qGJ6oRdpqGDxWd6DqeUqd1ne/I1FUfj
 y8CsCvNxAAZUzk7bZZrqSfiLo8ByC7SEDDWFJ/wnH8BiKXwDoC5/vKcosm+wo0u6pPXn
 vXvc4BCKP15K+ofeXxnwNfRZCyfCSa1RyD+inrAIPAc28thGpUNy05cZcJqtbjBvqcmv
 iXkxc0ovV33KbqbSvMnqewrEctZd4syiVTZ3peVkDRAdo4EGOcH+pnhb4diGHoNMVCvt
 75Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tZzh1Ex9ZdXCo9TXeCCIknPHlre0k+c4oPEzpW65C30=;
 b=B78ZmDizpO7W9kmm2Ok4+bwETwgFBp4QBNuen8kUaZ+46/TRv+lwP7YG6z06eTLceA
 rLw7zwElLhBzat8dXH4sfhhiKv1bE3hhzC41e41wSXLa8tBVnpvAw7exSyXKLYrPBRb0
 2jtxwkymcusH+bb7eluWyDq8w1OmI8yvUhs7ozfCL2YW6NeJM2fO/yO4bEAH2ORyuuDb
 BlsBUpjoRnKNXUETRiErbXBBHIrU8jkjG00Tmh2FNrQhnPWvAsYOw5Rn//BH4cTOFgJ0
 9iURs9DXRAXoBaH4+zRAeqGsakM1JhJ0RlQsCJEAJ/7ntLCE9087eUJroim6xwk4szsu
 1dVw==
X-Gm-Message-State: APjAAAWziVmtpRaEPySYcLsng4X1qqFg43MgmtZJRRTKiOCAjOdjbEH2
 ohEvbIqin6OFcFI+v8nvWHdsugjB/DPDbp4JZQs=
X-Google-Smtp-Source: APXvYqycLeytYmMe71q7G23bQ7Ku/ehgUySrFtbrdw+1tpqpbASH71BGLABOtIFpVmbsi5fGIZ433uPaxD0juq+3BWY=
X-Received: by 2002:aca:6547:: with SMTP id j7mr529837oiw.98.1573500383120;
 Mon, 11 Nov 2019 11:26:23 -0800 (PST)
MIME-Version: 1.0
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
 <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
 <CA+E=qVdy-wqmR+XOms5S2zMp+B0vM7Dj_fk9N=08-1WjfKDm0Q@mail.gmail.com>
In-Reply-To: <CA+E=qVdy-wqmR+XOms5S2zMp+B0vM7Dj_fk9N=08-1WjfKDm0Q@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 11 Nov 2019 11:25:57 -0800
Message-ID: <CA+E=qVdLzHbNTemMSmhA=-0dsNumQZJhjE-EnXBDu+j7sXTnVw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_112624_837825_B02E86D9 
X-CRM114-Status: GOOD (  27.63  )
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

On Sun, Nov 10, 2019 at 9:40 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Sun, Nov 10, 2019 at 7:30 PM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
> >
> > Hello Vasily,
>
> Hi Katsuhiro,
>
> Thanks for response!

Looks like on my board codec sits at address 0x10, and according to
schematics that's what its address is supposed to be.

See http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Codec address is selected by pin CE of ES8316, and on rockpro64 it
goes to GND through R226. So address should be 0x10.

> > Thank you for reporting.
> >
> > On 2019/11/11 9:17, Vasily Khoruzhick wrote:
> > > On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
> > > <katsuhiro@katsuster.net> wrote:
> > >>
> > >> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> > >> RK3399 RockPro64.
> > >
> > > Hi Katsuhiro,
> > >
> > > I tested your patch with my rockpro64 on 5.4-rc6 which has your other
> > > patches to es8316 driver, but apparently it doesn't work.
> > >
> > > 'alsamixer' complains 'cannot load mixer controls: No such device or
> > > address' and if I try to play audio with mpg123 it pretends that it
> > > plays something but there's no sound.
> > >
> > > Any idea what can be wrong?
> > >
> >
> > Do you use defconfig? If so I guess we need turn on more configs:
> >
> > - simple-graph-card driver (CONFIG_SND_AUDIO_GRAPH_CARD)
> > - ES8316 (SND_SOC_ES8316)
>
> I have these enabled, card is present in /proc/asound/cards, but
> alsamixer doesn't work with it.
>
> > FYI) ASoC related status or logs in my environment as follows:
> >
> > root@rockpro64:~# uname -a
> > Linux rockpro64 5.4.0-rc6-next-20191108 #169 SMP PREEMPT Mon Nov 11 12:21:44 JST 2019 aarch64 GNU/Linux
>
> I'm running 5.4.0-rc6  (commit
> 00aff6836241ae5654895dcea10e6d4fc5878ca6) with your patch "arm64: dts:
> rockchip: add analog audio nodes on rk3399-rockpro64" on top of it.
>
> > root@rockpro64:~# dmesg | grep -i asoc
> > [   21.509903] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
> > [   21.510550] asoc-simple-card hdmi-sound: ASoC: no DMI vendor name!
> > [   21.567906] asoc-audio-graph-card sound: ES8316 HiFi <-> ff890000.i2s mapping ok
> > [   21.568565] asoc-audio-graph-card sound: ASoC: no DMI vendor name!
>
> Similar here:
>
> [vasilykh@rockpro64 ~]$ dmesg | grep -i asoc
> [   15.627685] asoc-audio-graph-card sound: ES8316 HiFi <->
> ff890000.i2s mapping ok
> [   16.250196] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
>
> > root@rockpro64:~# cat /proc/asound/pcm
> > 00-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi i2s-hifi-0 : playback 1
> > 01-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : playback 1 : capture 1
>
> Same here:
>
> [vasilykh@rockpro64 ~]$ cat /proc/asound/pcm
> 00-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316
> HiFi ES8316 HiFi-0 : playback 1 : capture 1
> 01-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi
> i2s-hifi-0 : playback
>
> > root@rockpro64:~# cat /sys/kernel/debug/asoc/components
> > hdmi-audio-codec.3.auto
> > ff8a0000.i2s
> > ff8a0000.i2s
> > ff890000.i2s
> > ff890000.i2s
> > ff880000.i2s
> > ff880000.i2s
> > es8316.1-0011
> > snd-soc-dummy
> > snd-soc-dummy
>
> Same here.
>
> > root@rockpro64:~# cat /sys/kernel/debug/asoc/dais
> > i2s-hifi
> > ff8a0000.i2s
> > ff890000.i2s
> > ff880000.i2s
> > ES8316 HiFi
> > snd-soc-dummy-dai
>
> Same here.
>
> Yet alsamixer doesn't work for me. It terminates with 'cannot load
> mixer controls: No such device or address'. Strace shows that fails
> here:
>
> openat(AT_FDCWD, "/dev/snd/controlC0", O_RDWR|O_CLOEXEC) = 3
> fcntl(3, F_SETFD, FD_CLOEXEC)           = 0
> ioctl(3, SNDRV_CTL_IOCTL_PVERSION, 0xfffffd3ad04c) = 0
> fcntl(3, F_GETFL)                       = 0x20002 (flags O_RDWR|O_LARGEFILE)
> fcntl(3, F_SETFL, O_RDWR|O_NONBLOCK|O_LARGEFILE) = 0
> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> ioctl(3, SNDRV_CTL_IOCTL_ELEM_LIST, 0xfffffd3ad228) = 0
> ioctl(3, SNDRV_CTL_IOCTL_ELEM_INFO, 0xfffffd3ace38) = 0
> ioctl(3, SNDRV_CTL_IOCTL_ELEM_READ, 0xfffffd3ac160) = -1 ENXIO (No
> such device or address)
>
> Looks like it fails to talk to the codec?
>
> mpg123 thinks that it's playing audio, but my headphones connected to
> 3.5mm output are silent.
>
> Regards,
> Vasily
>
>
> > Best Regards,
> > Katsuhiro Suzuki
> >
> >
> > > Regards,
> > > Vasily
> > >
> > >> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> > >> ---
> > >>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
> > >>   1 file changed, 28 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >> index 0401d4ec1f45..8b1e6382b140 100644
> > >> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> > >> @@ -81,6 +81,12 @@
> > >>                  reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> > >>          };
> > >>
> > >> +       sound {
> > >> +               compatible = "audio-graph-card";
> > >> +               label = "rockchip,rk3399";
> > >> +               dais = <&i2s1_p0>;
> > >> +       };
> > >> +
> > >>          vcc12v_dcin: vcc12v-dcin {
> > >>                  compatible = "regulator-fixed";
> > >>                  regulator-name = "vcc12v_dcin";
> > >> @@ -470,6 +476,20 @@
> > >>          i2c-scl-rising-time-ns = <300>;
> > >>          i2c-scl-falling-time-ns = <15>;
> > >>          status = "okay";
> > >> +
> > >> +       es8316: codec@11 {
> > >> +               compatible = "everest,es8316";
> > >> +               reg = <0x11>;
> > >> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> > >> +               clock-names = "mclk";
> > >> +               #sound-dai-cells = <0>;
> > >> +
> > >> +               port {
> > >> +                       es8316_p0_0: endpoint {
> > >> +                               remote-endpoint = <&i2s1_p0_0>;
> > >> +                       };
> > >> +               };
> > >> +       };
> > >>   };
> > >>
> > >>   &i2c3 {
> > >> @@ -505,6 +525,14 @@
> > >>          rockchip,playback-channels = <2>;
> > >>          rockchip,capture-channels = <2>;
> > >>          status = "okay";
> > >> +
> > >> +       i2s1_p0: port {
> > >> +               i2s1_p0_0: endpoint {
> > >> +                       dai-format = "i2s";
> > >> +                       mclk-fs = <256>;
> > >> +                       remote-endpoint = <&es8316_p0_0>;
> > >> +               };
> > >> +       };
> > >>   };
> > >>
> > >>   &i2s2 {
> > >> --
> > >> 2.23.0.rc1
> > >>
> > >>
> > >> _______________________________________________
> > >> linux-arm-kernel mailing list
> > >> linux-arm-kernel@lists.infradead.org
> > >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
