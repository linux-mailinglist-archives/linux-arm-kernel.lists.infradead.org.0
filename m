Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9C720E9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVl/MKJb5HH3RWU9Qo8WpgneU4Iwf0A9wHM4zmnDfDU=; b=Ig79GITyXE429s
	tAYbsbUjWuwuVc2q4swQmHi8iKM4bt7K3rwh4gARRRejmpaztkhV9Z2rCeEcmlF7dGSH1xBySXGr5
	aKSDa+NjhkFJVFhbt2YOeFPjELXhbSGZjZZf7zYiLb9r3mWBFCSinL4H0L8VE+lLJ0jJ6QuLeGMRC
	iNk+ru3k02cpzR8lEsHDkwalom/UPiPPsf3/2JQrW/ZcC6IFSIxNYnBCQE4Z+X51Q48YWbyvhPCQF
	otLajY1K+z2HJtqKYVQi5MOfziVZBXqA7UQ06AIVacqhVKY0HTuS6j4oH0ceqxOJQRJFnAQn6y3JH
	IPXb2NHhJ+QKAXHDd5Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRL5S-0002qn-5G; Thu, 16 May 2019 18:26:38 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRL5L-0002pf-8Z
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:26:32 +0000
Received: by mail-oi1-x244.google.com with SMTP id w144so3238243oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QOmJrz3t+ssW/c0JNL75BVKUs3lWPdi+hPwpLLqj0Y=;
 b=ZEpH+0epLMFSR18nfhuqzs+K3+pk1JK7FHLTbOUTQfU/wEjw2yw/OkaWvsmN+8euDm
 cpxhsPk10kP23ZWlHRbBYyqjuoOHCWxMJYUnlvztrx4pNOws3OHeTj/IEaoU3s72GxOH
 ZcjXTqYUWFIOQDh+ZtpROhV0KGHV+fHYmUSE8TdQHu2i3iO3sFJONBSJSOM6xSXnUWKp
 hZn1rCsMsGLLa2ctsLGmADOdhQ5tfUOZK5wdYIsBayPnaCHAzt7K37ipbtogV3WTG26v
 ctxFxluxhtaiN6LA+jEIcXU5x0lQQF1ok0OOcPaZ0wDldQf1BqXMRGl42fbGcfGQ66Cn
 YqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QOmJrz3t+ssW/c0JNL75BVKUs3lWPdi+hPwpLLqj0Y=;
 b=pUQTlMDUeuqKRbyw8cIAI49nn9A9yAtSpf2iZRZOxAlbBKxoVkOiMC156VoDwjqBGc
 qMT18Un4rWW8ZFVFy+W3E9NU23zcDLohR9fVijR4whXqsN7b2ANgyLm28Tn3jPvSp+oL
 EhCDvmSkq1NIEcPdTnL+qkPCyPHub3MASW2TtWXaVWfgxv5WXZpsytaD4yaeOADmRmEf
 dC32DmrSveqKj4skGI6GH7/UYZoZJDnr2bKYafZI3xSssy1giOrV9XYifVpQ61oUp19x
 6G6wVJOlr0xwnvIO9G5/Xxp5oO6chPURGSHsIAL09pdrfsolewNdQec55ABKTh8OzB65
 rAAQ==
X-Gm-Message-State: APjAAAVvRAaNJgp6f+YlXpHAzFUwR/pgGBWB8eMBOSrqysGfCeuebz7c
 lGgWjuyEgKd60CUKuSOPOzgd6/obZBX6Z7nf0xo=
X-Google-Smtp-Source: APXvYqxtsCkbedLuyoFQPMGbJweEX/2iUWRBGnKBlpw9mcsocW3dkMpvyrQjOnc7DiWR1WpZ0EsRJpTfOtCCQLhwvOE=
X-Received: by 2002:aca:240d:: with SMTP id n13mr11043400oic.145.1558031190251; 
 Thu, 16 May 2019 11:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de>
In-Reply-To: <20190516164859.GB10431@lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 16 May 2019 11:26:45 -0700
Message-ID: <CA+E=qVdxvU5t9MB447Zd+-MO7rw+qBxxaZApjp4fgDx=W47r-g@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_112631_301437_EE77AF5B 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

On Thu, May 16, 2019 at 9:49 AM Torsten Duwe <duwe@lst.de> wrote:
>
> On Thu, May 16, 2019 at 09:06:41AM -0700, Vasily Khoruzhick wrote:
> >
> > Driver can talk to the panel over AUX channel only after t1+t3, t1 is
> > up to 10ms, t3 is up to 200ms.
>
> This is after power-on. The boot loader needs to deal with this.

Actually panel driver has to deal with it and not bootloader.

> > It works with older version of driver
> > that keeps panel always on because it takes a while between driver
> > probe and pipeline start.
>
> No lid switch, no USB, no WiFi, no MMC. If you disable DCDC1 you'll
> run out of wakeup-sources ;-) IOW: I see no practical way any OS
> driver can switch this panel voltage off and survive...

Ouch, looks like someone made a huge mistake in HW design?

> > All in all - you don't need panel timings since there's EDID but you
> > still need panel delays. Anyway, it's up to you and maintainers.
>
> Let's give it a try.
>
>         Torsten
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
