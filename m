Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5520C90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DObVz1kVro5/PIj785sT7ugPcQWXTyOIsXaymDlNdA=; b=ZZXYh3F0UeUnxi
	Hhz7UG3HuxPbhAAbBMVNdDG97TZR3GO+kfDFwNiDHPU17GCuGXxe0A9OcOUIiurorBJ8IrGtVTpkA
	qbdakgg859FwTQscVZMXqPlNwCqEY92BTZgSM2AE446z97MA4gvBu0o+0v6ww3h/pkNZfH+lnRayO
	YZXlVyGoTiMqwOm4frILrJbaq+/CZtsswgKwhqykfCVwVg0uY17rKxvucu/JAgnXyLAauH54eC6mz
	/uHuqz4BMOO5M+I7B5FdW9iwThGW7eoXFoqnMRwtWGPGedVEfRbJ4PTt2FzRxuw4dDE0y9GKKc+In
	6/o/QD+W7xKFpIhF6HkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIud-00085N-QT; Thu, 16 May 2019 16:07:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIuV-00084G-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:07:12 +0000
Received: by mail-oi1-x242.google.com with SMTP id w9so1118033oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=If7DIMq1Gfx6XG6/ApM/VqLufFm2C3KncjrdjTPi5fw=;
 b=W9HrIa/zrt9i9wWQLsWOgqvOcJ/ZEinVeMjhGTg/M6LgXGdcbPB38gp7CKW1Akzuix
 FZeEC2qxcJaDiDUQWE144oDzyC6CIY14bFcVik75qRdaFo6gpHvLaXMHScwpez/TBXDE
 LEJud/rc55JbTq4FLPH0uKppHUcREMpYUO0cWhrffQid3TzgZG0dj9tA79ffwhu7DX1L
 ARsIgzfa6OlYV0/AUIwNy4TqKQ6NF/L3JtlzigKT31jbr3qBLHxPDUBJIR439EiMSiLt
 zv6T7X7Lj9kuFbhIBO14quCYdRswsASy27tioqzSIKYGeVZBprXPfyb9dHAXh381oL9i
 Ed7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=If7DIMq1Gfx6XG6/ApM/VqLufFm2C3KncjrdjTPi5fw=;
 b=UFnIOYQg9sG/ly5bOt3f3t5kM5pwmmP83uYg3LU4B1d8PKe9ugYoSaEE7MbnCvL5IR
 +LGrzqbzoqWQPonzk5km+WDKatkUZmYGWLBwHLycJFf+48JCBsM18ebnRKGaOlQ5ZZc2
 Zs8g/jKpjr3y2qcRl0lbIDKgJS9fUDXWCmrC+6akql07N7lpfUZVPtyccYzSrkNLojn6
 6vdxKNyEkGN/oXUijPTGOOt9KR6o2RWQSZpxjE9sOsIGIHcf4O4kJFO7F0HYw7+7h506
 vQPPiqhYGliBpmPwOQAyyR2vs0R+IRmT+6791o4VYEv2VQjcnRKafbIgACq6eRJW2q2M
 ljFw==
X-Gm-Message-State: APjAAAVkzs2p+p0KGAnHlDYnUN+lk2+j7pO/SAAX/1/yOJ5Z8RlMJ94g
 rtOvcjAfdzg1KgYIZ3hGev87E4bxF8/uypXFL34=
X-Google-Smtp-Source: APXvYqxeWnmWZhffcM9dTuiS/N02EO1l6OnHcvpZADX+xNRI7YfuXCN7riZ/UAUEu9b/pdmZpShaSStxlQVSsRJkIpk=
X-Received: by 2002:aca:38d4:: with SMTP id f203mr1339419oia.88.1558022828175; 
 Thu, 16 May 2019 09:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
In-Reply-To: <20190516154820.GA10431@lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 16 May 2019 09:06:41 -0700
Message-ID: <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_090711_479511_7B6A6432 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 16, 2019 at 8:48 AM Torsten Duwe <duwe@lst.de> wrote:
>
> On Wed, May 15, 2019 at 08:08:57AM -0700, Vasily Khoruzhick wrote:
> > On Wed, May 15, 2019 at 12:32 AM Torsten Duwe <duwe@lst.de> wrote:
> > >
> > > It does comply with the bindings. The ports are all optional.
> > > As far as DT is concerned, the signal path ends here. This is also the
> > > final component _required_ to get the Linux kernel DRI up and running.
> >
> > Ugh, then bindings should be fixed. It's not optional. It may work if
> > bootloader enables power for you, but it won't if you disable display
> > driver in u-boot.
>
> I double-checked. On the Teres-I, mentioning the panel _is_ optional.

It's not. See power on sequence in
https://www.olimex.com/Products/DIY-Laptop/SPARE-PARTS/TERES-015-LCD11-6/resources/N116BGE-EA2.pdf

Driver can talk to the panel over AUX channel only after t1+t3, t1 is
up to 10ms, t3 is up to 200ms. It works with older version of driver
that keeps panel always on because it takes a while between driver
probe and pipeline start.

It'll likely break with newer version of driver that turns on panel
only when bridge is active. You'll see AUX timeouts - it won't be able
to probe EDID in some cases. Problem can be intermittent and device
dependent.

All in all - you don't need panel timings since there's EDID but you
still need panel delays. Anyway, it's up to you and maintainers.

> PD23 powers down panel and backlight as much as possible, see
> 24bd5d2cb93bc arm64: dts: allwinner: a64: teres-i: enable backlight
> (currently only in Maxime's repo) and the Teres-I schematics...
>
> And the driver in your repo neatly guards all accesses with
> "if (anx6345->panel)" -- good!
> But I found the Vdds are required, so I added them as such.
>
> > I guess you're testing it with older version of anx6345. Newer version
> > that supports power management [1] needs startup delay for panel.
> > Another issue that you're seeing is that backlight is not disabled on
> > DPMS events. All in all, you need to describe panel in dts.
> >
> > [1] https://github.com/anarsoul/linux-2.6/commit/2fbf9c242419c8bda698e8331a02d4312143ae2c
>
> > > Should I also have added a Tested-by: ? ;-)
> >
> > I don't have Teres, so I haven't tested these.
>
> *I* have one, and this works. I'll retest with your newer driver,
> just in case. Nonetheless, the changes in this series should be fine.
> Sending out v2 in a moment...
>
>         Torsten
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
