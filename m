Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6921B9F9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1I4sUGLeB+l110dhp87xOfAzgNUelcGksAaK6Mj078=; b=UvpmDd5XKBtNQP
	OuaDtXHQ3uaCYUuPSMMNRvgzxr/QsMDLI4qM1DeopbGp6hQaWzTucuT2MeLs4T/8aPZnPH5CQIUCF
	CzsULUXBMqlxNWiZ1bUy11PvZzdRFJn/g4TUWCHW9Wq/Yee0tRaRJHABBNV3y4LA1v4C9ME2SB3oZ
	qQKnD4Q7gLnRi6IgoJgt/w0fxJz6czFNUWBwOMA4CwhhSgk0e3T0rJIyy5TpSa225acMec4MbPSZT
	VJNPNe5hrFGQ75ydzyba5js1a9MYGSo5Ts1d8nd2JHVcmhSgNEmmckkv+Bm1ar0v8JOZsa9gIDzpk
	JZhESxx1xfFz8O7DRspw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSztU-0004qX-Pw; Mon, 27 Apr 2020 09:17:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSztL-0004pw-OQ; Mon, 27 Apr 2020 09:17:33 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAC8E206B6;
 Mon, 27 Apr 2020 09:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587979051;
 bh=0JQfGwBPW8HjbVmB+3oeIbQiiUMVtZ8rLy7VFh6Z++Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wFnNaMz3e85JoZrGYy0P3ue0v6+HWvyEG+x7gf1XtsPRx/14qvkvLyidqZmrJYh6y
 3DybE5nYwAfsVLsbXy3YYIMf+hXIL9+GrYq/BJ3WR7bPiIbl/l0eUDDEG2tbIp/xPN
 iWK73XUxIvpIbvyfbZJ6KyHK00ORj++O9r87ap1g=
Received: by mail-lf1-f47.google.com with SMTP id r17so13191571lff.2;
 Mon, 27 Apr 2020 02:17:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuYFVhBsO1Bh9cisFlg7onGSZfN4BmdZWfkXcRRA+GsRcE3VrdeB
 r5qvFcU9c2lUYnHZMEVZd2qC01iocdHX1u3SLWk=
X-Google-Smtp-Source: APiQypJtNE14qxYJUDlD1WTj8JHtL5qxZwtuov5fG7rWvNuBd12rJqXBM0FEM99dbe7wu5CMLVlzgmD7014xwvl4734=
X-Received: by 2002:ac2:4a9d:: with SMTP id l29mr14131057lfp.4.1587979048894; 
 Mon, 27 Apr 2020 02:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
In-Reply-To: <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 27 Apr 2020 17:17:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
Message-ID: <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021731_833707_9BC35665 
X-CRM114-Status: GOOD (  26.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Pavel Machek <pavel@ucw.cz>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 4:57 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > With SDIO now enabled, the numbering of the existing MMC host controllers
> > gets incremented by 1, as the SDIO host is the first one.
> >
> > Increment the numbering of the MMC LED triggers to match.
> >
> > Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
> >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
> >  2 files changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > index 2acb3d500fb9..f0686fc276be 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
> >       };
> >  };
> >
> > +&diy_led {
> > +     linux,default-trigger = "mmc2";
> > +};
> > +
> >  &pcie_phy {
> >       status = "okay";
> >  };
> > @@ -91,3 +95,7 @@ &uart0 {
> >       pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> >       status = "okay";
> >  };
> > +
> > +&yellow_led {
> > +     linux,default-trigger = "mmc1";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > index 9f225e9c3d54..bc060ac7972d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > @@ -70,14 +70,14 @@ work-led {
> >                       linux,default-trigger = "heartbeat";
> >               };
> >
>
> > -             diy-led {
> > +             diy_led: diy-led {
>
> This changes an existing nodename into something that is still not the
> preferred way. In the current Rockchip dts there are nodenames like
> 'work', 'yellow' that causing warnings with the command:

This doesn't change the node name at all. It only adds a label.
If it doesn't pass the check now, it didn't pass the check before.

I just realized that the footnote I added before is gone because I
regenerated the patches. The original footnote was something along
the lines of:

I opted to not change the node names nor the labels as the discussion
had not concluded. The other reason being that people may have scripts
or device tree overlays depending on the existing node names.

Previously I asked the following but got no response:

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

> make -k ARCH=arm dtbs_check
>
> Could you give a generic guide line/example, so all these changes are
> treated the same way? As if the naming follows the preferred 'led-0' line.

I'm not sure what you are asking for.

ChenYu

> >                       label = "red:diy";
> >                       gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> >                       default-state = "off";
> >                       linux,default-trigger = "mmc1";
> >               };
> >
> > -             yellow-led {
> > +             yellow_led: yellow-led {
> >                       label = "yellow:yellow-led";
> >                       gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> >                       default-state = "off";
> > --
> > 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
