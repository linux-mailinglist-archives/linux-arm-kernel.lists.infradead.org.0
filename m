Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A70117758
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8goi0C88ZkHjjewkqH0tE1sqV6z8FCIQOWQqr3ZIPYA=; b=jQftbWZJXvzh+c
	Jb8+8PF8/pMt1J7orKWtGR94Agh7kWtQReRcf1vYKt9DQ9GZrJJuFxdfRtcadMV2dCgn1d6Ns0nZI
	Hw/E+t8Pretq2o/JTOjAv6PIb4JAz6rP7ErQX971TXuT09AEWKcKAUUcnhRZPs6Xpuq8JOQr+bJrR
	uPxazdDpMhA6R6oNV2EZJcWbR/dPSPTc04EJgrKzEso7rYuFyapmOwbXG2AE+gAi1JfF36G+mR86Y
	DJiUHwJGB6VyO+eIgRmjO7qF1pWPRbb+2uIkBe30VOkP0PyKqAOHcRnRUT3juUtM//DzpuLb3ShMi
	BpfrqTnbHbR+S2SUYO6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePZB-0005M1-9m; Mon, 09 Dec 2019 20:23:37 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePZ2-0005LY-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:23:29 +0000
Received: by mail-oi1-x244.google.com with SMTP id k196so7630092oib.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zb2z1zh/PIMzhw5YuaHgoz9OhiNEP+lZ66Mh07HK17M=;
 b=iEEtxuDJYa+g2J9VBtV1qwh8N5zKCj9QsMm9jTr2sOBLMb3hCbbxt7jYIbCz0YvFjk
 dTS6vE4Wn0E/mazaqxrbnwAHcGpEEqkMY3tX7vuNBvvps0U7k05iOuqBMUK9Ak1IIgba
 lzoceXwvdxIVz1m3hwg+mGQpGdwNVdipSkbGpWpiIAnZx6eDuigtTIKQnLa6B8W5Vab3
 2dmpKaxWL6+UEq6DxQYAG1iNuBqMbkt5Ivyf2rYGTliP8+zC4S0zVx2V1ORNTqa1YfZv
 m72I9kF/Y5ik/kzpfJAd8nCu9KRnAHlEDCiYrN9wqHjSqoS4ZIpqJkligqAAH60+7ujk
 3QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zb2z1zh/PIMzhw5YuaHgoz9OhiNEP+lZ66Mh07HK17M=;
 b=r1auSUc2xGHYH0hvmbddx84sMg8RCb8Ur7YLKzq/zq45ZeYioFoO0RR7mUVDGuuYBq
 4BVQaJdDmpzlVzdkMU6OrpwmSXTjtPNIF+9iWO4A5ZOPKVMVjz0kN5qPqG9uv8QgSgYX
 RrhhjjO6JXwNPE+Dm3koYZzEZhrgYEMJHAZQdzeldHR/9PFAXsbCb9MyqAmec+ufM3L+
 3iXujK691xZCrEMaxwI797MtyGEEYc9AtvaYnH4KeYo+uH3KTCptJqN6dqm5/aoZokB0
 2P0aoqKafGqX3ve8Vjrdf/njKfUJ/PE/LMrYTkH5hr3i1CiqY7V6jHRWJyUQ7zNmPUR8
 Mw1g==
X-Gm-Message-State: APjAAAVhwKrst/NfoK/LAi+yRwsFX22YSypiFVwWXCwokqMy8tKTNqt+
 4MoBE7mntzEa1cCHjysOPghoshWM55d6O/n+aVU=
X-Google-Smtp-Source: APXvYqyDDNE9/rLQegvz6/oBL9hwxhdlCfxJI17/tIDMmTvRsbRghB5eJVsPTc1bZqHpyayNj7SMNqn9hYbaHIoC7Ws=
X-Received: by 2002:aca:c3c6:: with SMTP id t189mr895697oif.98.1575923006414; 
 Mon, 09 Dec 2019 12:23:26 -0800 (PST)
MIME-Version: 1.0
References: <20191203021420.164129-1-anarsoul@gmail.com>
 <20191209193112.qr6un5ryhyxwu6a5@hendrix.lan>
In-Reply-To: <20191209193112.qr6un5ryhyxwu6a5@hendrix.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 9 Dec 2019 12:23:18 -0800
Message-ID: <CA+E=qVcxXu4CggnhZFti-J4MB5m3pvoxKCHnH6ap-4OSZMzCFQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: set GPU clock to 432 MHz
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_122328_169599_15252C28 
X-CRM114-Status: GOOD (  16.87  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 12:03 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Mon, Dec 02, 2019 at 06:14:20PM -0800, Vasily Khoruzhick wrote:
> > That's what BSP kernel sets it to and it seems to work fine.
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 27e48234f1c2..0051f39b3d98 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -976,6 +976,9 @@ mali: gpu@1c40000 {
> >                       clocks = <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
> >                       clock-names = "bus", "core";
> >                       resets = <&ccu RST_BUS_GPU>;
> > +
> > +                     assigned-clocks = <&ccu CLK_GPU>;
> > +                     assigned-clock-rates = <432000000>;
> >               };
>
> This doesn't really guarantee anything. If the GPU needs to remain at
> that rate, it should be set in the driver. I just saw that you did
> send a PR in github, I just merged it.

Lima doesn't set GPU frequency at all since it's different for
different SoCs and we don't support operation points nor frequency
scaling yet.

So this change effectively sets GPU frequency to 432MHz on A64 when using lima.

>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
