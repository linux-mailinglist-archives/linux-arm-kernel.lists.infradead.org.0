Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2323821A83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBAU2dclxfQ0zU+0sFF5E+kDo+UrPSdrv+dhOXn91fo=; b=SDKEU8FueJ//0B
	SSWwUJEjK0/3HMIJYle6CHJboqea5yZqC1dNkcaaBeWEZ0I6U3dl0sCryUsACU1q6dhM549kqWRCT
	ntY1gOEytYHn1wQ/WgEegVpfsW5ulng1i5kzRrUJQgnf8QApAjzShyITy4WVGRk3/kyfgrvfGOsej
	KFKfZXfjdc7PD/iphc2DNrdlIwZWu49AneGacE5Sv7UtPuif7K+ukesVyB4xMEVRw220Ol5A7xKvj
	/FH8DptkX00huGOBdB57g/duh+llfEi45ImsJe9/gB/y6uSe96GF626YnMYenIt6BlKIAsuIJ5wvx
	kArITgNTRH7hcMrI2KYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReke-0003Po-Vk; Fri, 17 May 2019 15:26:29 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRekW-0003Ot-V5
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:26:22 +0000
Received: by mail-oi1-x244.google.com with SMTP id w144so5403506oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 08:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xu5A8L7ffk/VuZGGKLFuV6FJUYoNh1BlyhIBaFYJKc8=;
 b=fnGDVA/CPKgszzyvVNGPqdLlo3j4aBFjTJaRyaTzUsUqqtk3Ma/fdvvR6u0jV1QpnS
 ODbWVtFHuGlSkV64ydsIhDYXqWgNvxd9hUKbNVi5azAzpVFWM1JIDuYaGNdd8Pf7kLvX
 gOWTKjEWmmd5+7p/9sWiB9SWvYBGUPrXCEKwk5+wh97ypDgkeA/yPNjXzolAz6em//4Y
 QpgLVf7kpkbMl5b/Ilzqoh78hJdNKJDZRf2yAEaDS8wriC7brnX2Mbko/37I/M5hGoS6
 H4iTDp7tO94GqQ+BaRhwoGNj18Nk/9lxuceTbcsD1wfLtP0skneXJODVFpDmJzqZhHFJ
 vlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xu5A8L7ffk/VuZGGKLFuV6FJUYoNh1BlyhIBaFYJKc8=;
 b=fcoLEL3drSHNo/Et3e8nb7huQns3XdqtqPooHi0tFXrgx5lk+21TKlXykZbTf3mW2g
 ZIsI3Lc0K7RCO/DKLyqYTFUgFFbliubmVUFUOW1kCNxdvsOeIGToe920dNOg4uS73Rzp
 XKVxBs4BPfanDtaJvAsjyXkWiqy/6r+NWc65K/qK7gf7mxIA9ygP9f7j/9GLqKbH9kOr
 r+X67F0fv/nPsXR+FyShVeEoeVZNgRAW16c2ffXRVYvWd04eIKA0VN3d5w6kBSsfMHKb
 EpXe3Q9db8yw3dFUnVtXKThgScR/ePUrarF0sb2xFzzxG1OsRYRWrdYGYV/P4p9l259z
 3qbw==
X-Gm-Message-State: APjAAAWbU0/vuGvXh7SAqJiMF2LtBfL0h73XRP233X3Si+mexkyr01jj
 M6CXm/jyl2GwRAa+pEZd1fNmZPUpQnad0QvNBro=
X-Google-Smtp-Source: APXvYqwYlZSL66GeSU4TZbz+0EZuctc8xlZi5TZE8nl8m8iVOM29zqacKrtT9w5oMHvLig9tG04NA6RK4P6OxABQH90=
X-Received: by 2002:aca:38d4:: with SMTP id f203mr5209080oia.88.1558106779678; 
 Fri, 17 May 2019 08:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de> <20190517072738.deohh5fly4jxms7k@flea>
 <20190517101353.3e86d696@blackhole.lan> <20190517090845.oujs33nplbaxcyun@flea>
 <20190517094708.GA16858@lst.de>
In-Reply-To: <20190517094708.GA16858@lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 17 May 2019 08:25:53 -0700
Message-ID: <CA+E=qVcpMeFfC0EEZRpp3Hc_yBGFMv6cGKGSQENpUTw_ZH7UwQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_082621_027028_D9BA6569 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 2:47 AM Torsten Duwe <duwe@lst.de> wrote:
>
> On Fri, May 17, 2019 at 11:08:45AM +0200, Maxime Ripard wrote:
> > >
> > > So for all current practical purposes, we can assume the Teres-I panel
> > > to be powered properly and providing valid EDID; nothing to worry about
> > > in software.
> >
> > You're creating a generic binding for all the users of that bridge,
> > while considering only the specific case of the Teres-I.
>
> All I'm saying is that _this_ usage is also valid. Nothing keeps other
> users from defining the output panel; on the contrary: the driver at hand
> already considers an _optional_ panel and handles it, conditionally. So
> driver and binding spec are 100% in sync here.

Well, endpoint is not necessarily a panel. It can be another bridge or
connector - that's why panel can be optional in driver. But it don't
think that you can just omit an endpoint.

> This is much more straightforward than requiring an output and making up
> some dummy code and params because it cannot reasonably be handled.
> (Remember, if there is an output, the driver will make calls to the
> "attached device" driver.)

They aren't dummy. Moreover you have to attach backlight somewhere (to
panel) so it can be disabled when output is disabled.

Try 'xrandr --output eDP-1 --off' on teres with your current code and
see that backlight stays on.

>
>         Torsten
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
