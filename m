Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C031F727
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgJrhYZRGUp+Ol/0HfW1/lU0npdCYlRDbUT4xsAHf1w=; b=TYzxWmtY13KFf7
	Z8C+MhwCzztYG/PfswGUKdojZ0/GtLoRtglP032/sklO3Qa9+WKNzXQDuwooX4Vjj0i9yvpJaH+Zz
	sbxYZcMOPAaSdH7XDVbBBBgFSaHfNHVCFtd7W7Ci/WGn5Y8WNRd1oiCbstGGWFb27Un4Ut+ZJmcfS
	j9LIMRCoIFLx88eXXuhECiax8Cb1+q3R0sBCCgM5O5+FxryAHCofVK9F7kCJpLJ+BDPZ/IApI9wfw
	UnOGim59hjuO1i3FF0C03UfdNtYw3WfZo866NZmJQ9BbijXuC5t8Ypaw4oPr4WQOP4M3d5Le0Qqpn
	CLDy6jkxM6zs/Q87gndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvXB-0006Hn-49; Wed, 15 May 2019 15:09:33 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvX4-0006Gx-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:09:27 +0000
Received: by mail-oi1-x242.google.com with SMTP id m204so48509oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FzdAY9eNLFH6q18HeEB4S9VM37pJLDSHQjylPsT3TbY=;
 b=MjJ+LF+8pBMZJmrf/PUQGYzx6jkAIvZXVOaDkwDUy9j8LjnckyRKVimNt3qRpZ7QXs
 odt09gcUESirFG4LKGWD8wrs44NwvpmYA2lxf+ihQ7feGSSECN829NXz97xTZk1YqWok
 35/lGba1azoqDEabJk9bWsU7/bkhsjO9nkRYDhC0oT9sbfj+MNtAHSqEKLAJhOF3S6Rs
 R+rUWZGYA0dVjK3uQ9i1dVZfPXcCRFzlBj3LZ2YdHmMedSaa4kOtX9v0QZ8SKRLyhu7Z
 yvA1skM2zKLs6y+yPy3x/+CSXqODR2VRcyLDYU2/3JhylYVvTFrpq49h0oyAJEL7ENkN
 jPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FzdAY9eNLFH6q18HeEB4S9VM37pJLDSHQjylPsT3TbY=;
 b=exJW5jK9JdTQWufhw1C7NsjiySggmO4SWGEiFpnNWIJMA6C6ti4cvCoQEWFG2JTjSO
 fZL3mUUOzOk4LlKFlZlQq4vjrwdBkgZtdQTNcRmvGpQYpdgDS0qASggNt9Zbsv3Dvgri
 0iuQbJhg6ioPgGyvg74YFJn2xGmRtbuKccUFNTLhMJFxRLwjRKmLax+095QeMUN61ZSN
 qZVEkXYqOsGppMNwRpg1etVA+vkZsODOs957NwH2yCA+C3Qf1vOKQxXrwPhCs+2G0Ywl
 VSYqr5fxDOQbzvjR9ZqBFMxAnK5PMjCmcV0YAcct/bVLfU8v/8LwIb2nRU78DZmYC+l9
 j+0w==
X-Gm-Message-State: APjAAAVVAv/LvqeNVVeG5+N/fqJxq2caNvJmZeGhqu+WVIpOYuWQ/NyS
 qxkdMeCBio9kP5caFoksFH7fByylrJTwfCTz2Ac=
X-Google-Smtp-Source: APXvYqx2op3tX9A4P1hZwzw0eFhbk5CfYg0Tbl3ieHQEQJwA11MZzaowFPPO1ZfSsj+7d5NaD8TUBJpiL4dsKvwOW9o=
X-Received: by 2002:aca:240d:: with SMTP id n13mr6735433oic.145.1557932964018; 
 Wed, 15 May 2019 08:09:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
In-Reply-To: <20190515093141.41016b11@blackhole.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 15 May 2019 08:08:57 -0700
Message-ID: <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_080926_362224_0C449E2B 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 12:32 AM Torsten Duwe <duwe@lst.de> wrote:
>
> On Tue, 14 May 2019 10:48:40 -0700
> Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> > > +       anx6345: anx6345@38 {
> > > +               compatible = "analogix,anx6345";
> > > +               reg = <0x38>;
> > > +               reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24
> > > */
> > > +               dvdd25-supply = <&reg_dldo2>;
> > > +               dvdd12-supply = <&reg_dldo3>;
> > > +
> > > +               port {
> > > +                       anx6345_in: endpoint {
> > > +                               remote-endpoint =
> > > <&tcon0_out_anx6345>;
> > > +                       };
> > > +               };
> >
> > It doesn't comply with bindings document. You need to add out endpoint
>
> It does comply with the bindings. The ports are all optional.
> As far as DT is concerned, the signal path ends here. This is also the
> final component _required_ to get the Linux kernel DRI up and running.

Ugh, then bindings should be fixed. It's not optional. It may work if
bootloader enables power for you, but it won't if you disable display
driver in u-boot.

> > as well, and to do so you need to add bindings for eDP connector first
> > and then implement panel driver.
> > See Rob's suggestions here: http://patchwork.ozlabs.org/patch/1042593/
>
> Well, one *could* extend the hardware description down to the actual
> panel if necessary, but on the Teres-I it is not. I assume the panel
> they ship provides proper EDID to the anx6345, because the display
> works fine here with this DT.

I guess you're testing it with older version of anx6345. Newer version
that supports power management [1] needs startup delay for panel.
Another issue that you're seeing is that backlight is not disabled on
DPMS events. All in all, you need to describe panel in dts.

[1] https://github.com/anarsoul/linux-2.6/commit/2fbf9c242419c8bda698e8331a02d4312143ae2c


> Do I understand this correctly that the (3 different?) pinebook panels
> are not that easy to handle? I try to include the pinebook wherever
> possible, just because it's so similar, but here I'm a bit lost, so I
> had to omit these parts.
>
> Should I also have added a Tested-by: ? ;-)

I don't have Teres, so I haven't tested these.

>
>         Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
