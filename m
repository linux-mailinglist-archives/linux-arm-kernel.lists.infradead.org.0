Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3799EE5E38
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 19:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4jZ/L8kYBpInVyu5fBy8fWq9tnV6Y6F1H3Zhnj8FPw=; b=PQsuipYTrqRCkB
	spIA/F4HxpCOUYM30c+zmSWbCT4Tb2DZXaEVqwB489NsqYqZATIiecrwsK6w5dHglvI9BNeBZEAgy
	NWiTGZRX7ezGndtG1RhIKR2zPdEU4Vd2pfvuncywIoWfzHChEzVD3ahnYEsMve3eAX/ABN7fHakKb
	7kkoGOZd22+UeDhHp5vbzng4vTsvmpYCY/60Awaep4pf+61epdc7M2rxhyit8rnT1CaZxQInD5k2R
	gkFCrG0IV/wp0YaVQO94MSqBvcu1oq++Nv0BqD+KtI9432U1wobyJgXH5yQmKZ75MV8y+n7h+PIJg
	m77xsInNZ+FH961Iak0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOQ2Q-0002ih-D3; Sat, 26 Oct 2019 17:39:42 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOQ2G-0002hU-L8
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 17:39:34 +0000
Received: by mail-qk1-x744.google.com with SMTP id q70so4736159qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 10:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WJj+XYLe3cMZIZoQ9vr6L71XNxTz/FYk/4q0duDThfY=;
 b=lmhZG5WmjZSGyG/n8DvvWPUtaIUQTSAcqfXm1lhQkFBllCnZ0iPY0qO+FfncxWVG1O
 iGaup108mV3brmcMFcKNNZG1pEu5uY5d31Q7MY//EU1hh+eyZ1YJmsNnwtuZu+TxM3uk
 uhzDUa/57Q+1Od0c9tEFXNNNfwOEFVHqPLRBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WJj+XYLe3cMZIZoQ9vr6L71XNxTz/FYk/4q0duDThfY=;
 b=TkfqN/BR3waKGDIJDNogyVDMBSs/AWNu71ICaS8LnvO/e29FY2ltq3cq8H7FRCfX3P
 ng3Raz3HH896bQXBm0WpUevWYm1MWbnycQWXhDHyaRfsl/WtxxZibG8aSNio7Ut6GTxe
 kGM3OqXy1ZXetcsHz6PBIw6idfq0ZREAZMf392wdYEMCNtaJEX8slI7P4mZUdA9KtPrT
 bS3ybUxrEjpMNpEjFbx77HjH65eOQrM6pMjMr5HvdmwlF6zaAJUNa6Kvv2RB8oiKRvTG
 SkAo3oUxUNleqLQsePHcfG9ZCMMCbP0lxVyIEe1w5Sf9KdDWBqvwvpsH1Ia7cRfDXIr/
 wU1A==
X-Gm-Message-State: APjAAAVXLk9nnySSJ+PDomwH4Ej4Xhdivc6E5qEYSMIg16NWEj7/419S
 +vN3s7P5RbqvXYeMesj2AlgwkDtYxdR6HtO2OOGI8Q==
X-Google-Smtp-Source: APXvYqxNNWzFrSsnCjh1NbFwr4AgLKBoBn+uLrUEM4+ByNDY81vMaaOzmML5AYyWCxiqf2lVQlNLxbhZNQL2Jn753dk=
X-Received: by 2002:a37:4dd1:: with SMTP id a200mr8422942qkb.419.1572111568786; 
 Sat, 26 Oct 2019 10:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
 <20191025215428.31607-4-abhishekpandit@chromium.org>
 <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
In-Reply-To: <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Sat, 26 Oct 2019 10:39:18 -0700
Message-ID: <CANFp7mX7LNxt5=6h-eMC+o1JtoJ1Mvwo2RLBYMhZ3fN5kyqGqQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Add brcm bluetooth module on uart0
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_103932_719517_ACD71E67 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marcel Holtmann <marcel@holtmann.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Yes, these shouldn't be for all of Veyron, only Minnie, Mickey and
Speedy -- my mistake. I'll send an updated patch with your
suggestions.

Thanks
Abhishek

On Fri, Oct 25, 2019 at 3:50 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Oct 25, 2019 at 2:55 PM Abhishek Pandit-Subedi
> <abhishekpandit@chromium.org> wrote:
> >
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> >   - CONFIG_BT_HCIUART_BCM
> >   - CONFIG_SERIAL_DEV
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> > ---
> >
> >  arch/arm/boot/dts/rk3288-veyron.dtsi | 31 +++++++---------------------
> >  1 file changed, 7 insertions(+), 24 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> > index 7525e3dd1fc1..8c9f91ba6f57 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> > +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
>
> You are changing this for _all_ veryon, not just those veyron devices
> using Broadcom.  I don't think you want to change the marvell-based
> boards.
>
> ...presumably you'll want to make you change only affect minnie,
> speedy, and mickey.
>
>
> > @@ -23,30 +23,6 @@
> >                 reg = <0x0 0x0 0x0 0x80000000>;
> >         };
> >
> > -       bt_activity: bt-activity {
> > -               compatible = "gpio-keys";
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&bt_host_wake>;
> > -
> > -               /*
> > -                * HACK: until we have an LPM driver, we'll use an
> > -                * ugly GPIO key to allow Bluetooth to wake from S3.
> > -                * This is expected to only be used by BT modules that
> > -                * use UART for comms.  For BT modules that talk over
> > -                * SDIO we should use a wakeup mechanism related to SDIO.
> > -                *
> > -                * Use KEY_RESERVED here since that will work as a wakeup but
> > -                * doesn't get reported to higher levels (so doesn't confuse
> > -                * Chrome).
> > -                */
> > -               bt-wake {
> > -                       label = "BT Wakeup";
> > -                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> > -                       linux,code = <KEY_RESERVED>;
> > -                       wakeup-source;
> > -               };
> > -
> > -       };
> >
> >         power_button: power-button {
> >                 compatible = "gpio-keys";
> > @@ -434,6 +410,13 @@
> >         /* Pins don't include flow control by default; add that in */
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> > +
> > +       bluetooth {
> > +               compatible = "brcm,bcm43540-bt";
>
> You probably need some pinctrl entries here to make sure that things
> are properly configured, like:
>
> pinctrl-names = "default";
> pinctrl-0 = <&bt_host_wake>, <&bt_dev_wake>, <&bt_enable>;
>
> This would require defining bt_dev_wake and bt_enable and removing the
> hacky output-only versions they have now.
>
>
> > +               host-wakeup-gpios       = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> > +               shutdown-gpios          = <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;
>
> Right now gpio4 RK_PD5 is controlled by the "sdio_pwrseq".  Should you
> remove it from there?  Looks like it was a no-op for marvell which
> makes it a little easier.
>
>
> > +               device-wakeup-gpios     = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
>
> You probably need to stop driving this in the pinctrl hogs for
> Broadcom boards...
>
>
> -Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
