Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1284C1FC4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 23:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ7m9MvxletpqkzzhN5fKf1uOFzV2y8Da2qPEkyw7Fk=; b=VMleRb8HKQbug0
	AEJjR3Cq8vidd/XFZ9av3EPIme+/waa9gUFOBlwK2VMz/dO2ZH36/A+WRe5u+QmJ0qBXQLYmOjgB8
	i0Fat2t+uYw0VLq3eNIoA2fQVhoRYl00rmgljTWyP6WLtiO+weKPmr32Im0AfZ1XB9hE0VCcgRCPP
	oarnys9p5Ah+HGCvc16MBOrGTjneKw9G8TNjfdN/qr0Sh1qqDIXZcakiGg0f5APq6psvZeytBrT+w
	GHl1NHNQxO4gRZBrMOqTIlSkrxsU/mGcKBy+j1zQvpWpM89TfwZMAlGVG4qL0uRfR8z5vVOvfxzTl
	tIKy2W2QIJR079ekIYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR1aK-0007W8-GS; Wed, 15 May 2019 21:37:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR1aD-0007V6-OQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 21:37:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so503161plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 14:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sAyYd7Pec4gg4Zl5/b6GbJ3Lhmz83i6aehOb2aZw1ro=;
 b=EvIBHM9Mo9vFpQUMxFf658yZkkY5dVan5FwYFk7XQjrefRysWBk3ZQvleVivTl8WEg
 yGsgkIci+3QXrOpBs7AluJ54pjlX/BMGjRs+gz/YpHjrgdJbHhmsF1dmVSNbGhtgchVi
 U/adQE+kIwDBIDEQnhjnkHhI0yBiCEF8Y+GLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sAyYd7Pec4gg4Zl5/b6GbJ3Lhmz83i6aehOb2aZw1ro=;
 b=o2ZlerYGaWF0sSMPIDA0JHZEwsLWX648ZuUp7xubIDH91L+ixKuyrad57GBVELsyUZ
 ygGT4pbkLjmtg13lSxbQn3jr4xtHJsb9G5VWEJZ3vOqqwglqbrtnsU+yD/0W0jNHjJbC
 BbYADmOWJ76qofkXsFGlKrnPq/SpFjdHqJbjAEd9pOa71dHrAofL35qTO1D72x4EKGsx
 bu8au2CzCYhkY0qiYnvPt4r1/lWTMaPjy0W/OCouwfdRL5r7YDh9fA84Wx/J0CLV7x8k
 Qq4FwZYjJoHQTwXpQzQjPQRzf8cLm/k6KW1KVd+CriqYXZknUPkCVKNNL6pGwNocRhy4
 6S8g==
X-Gm-Message-State: APjAAAVbQZ2HwgO4BHArNYrSmrJfF4/Ds+qC0uZRjiVmymlO1iPFMBNN
 g7lZsTgqjHNKiW6KdvjNqxGGSQ==
X-Google-Smtp-Source: APXvYqxyhkmCbMue4Dl52l51XVW4EiT6xf/ZY+zI2fdisxugkpbOQnjZfg8mMjHbUnr9gGPnm0w9QQ==
X-Received: by 2002:a17:902:b58f:: with SMTP id
 a15mr2363024pls.201.1557956224865; 
 Wed, 15 May 2019 14:37:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f29sm8844632pfq.11.2019.05.15.14.37.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 14:37:03 -0700 (PDT)
Date: Wed, 15 May 2019 14:37:03 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] dts: rockchip: raise GPU trip point temperature for
 veyron to 72.5 degC
Message-ID: <20190515213703.GE40515@google.com>
References: <20190515153127.24626-1-mka@chromium.org>
 <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_143705_823947_1588C11C 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

thanks for the review!

On Wed, May 15, 2019 at 11:30:24AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 15, 2019 at 8:31 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> 
> > This value matches what is used by the downstream Chrome OS 3.14
> > kernel, the 'official' kernel for veyron devices.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> > index 1252522392c7..169da06e1c09 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> > +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> > @@ -446,6 +446,14 @@
> >         status = "okay";
> >  };
> >
> > +&gpu_thermal {
> > +       trips {
> > +               gpu_alert0: gpu_alert0 {
> > +                       temperature = <72500>; /* millicelsius */
> > +               };
> > +       };
> > +};
> > +
> 
> This should be sorted alphabetically.  Thus this should sort right
> after this in rk3288-veyron.dtsi
> 
> &gpu {
>   mali-supply = <&vdd_gpu>;
>   status = "okay";
> };

will do in the next revision.

> Also you don't need to replicate the whole structure?  I think the
> above should just be:
> 
> &gpu_alert0 {
>   temperature = <72500>; /* millicelsius */
> };

ack

> NOTE also that that gpu and cpu critical is 100 C downstream.  Should
> we do that too?

I missed this delta, yes let's do this too in this series.

> Ah, but before we do that I guess we'd need to also  override the
> "rockchip,hw-tshut-temp" to 125000 to match downstream. I guess that
> could be a separate series?

Yes, the value should at least be higher than the critical trip point,
matching downstream seems to make sense.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
