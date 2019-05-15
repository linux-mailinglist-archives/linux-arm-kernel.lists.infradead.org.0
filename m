Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230001FA31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xC/jaWBHBjpgWmnQTZmtnAaRTCfSV12/nlGr4SYibMk=; b=VFKNMrQnvmmn5e
	VHPECQL4hbiWC+4cqg67rnJE6+yvBcQkmXO8rKNVrfrL77MkEffcIey5zqGo7/XMXYS6gbNqwlPI8
	sFpDC2UtjeBsDGF0JDiF8pp42HclpHKBOX82HaJCb6WgMk1DI+RpkpBT/Gg6F6+eYUu6HuqNS/Vwh
	IGEHCGGEpmbmCI8kd174G04sG/AMYcU34kNKcdZOtXmiQF0i9bZiKk/xPRRhgQUsQZbRCZSiDPzJ9
	Hdh4ebvGZaf7mvfw8H86Fk91U2ca07R8haHUf2LvQqs+bp/CewpXkvFWo4WAaNe4zLtxszqybJK4i
	8tizU77YcfjwolZ7BZfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQysh-0002b4-PA; Wed, 15 May 2019 18:43:59 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQysZ-0002RC-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:43:52 +0000
Received: by mail-vk1-xa41.google.com with SMTP id v140so295976vkd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
 b=BQ9VXLFElWFzf7izK1ym/zFCq1WxsSoI7IZR/etFVJ3c6xH3PwVo3az6lB+MkUP/Gj
 PxZMwkXe1rl5EjO3Kxfks/TZY3oYrwLodR/8iZJr/9CDD59tWt7jhU4zsZs0BYYwMRNN
 Iey0Dt7PXFPRad8sX/uvZhi1xQzvN9Br//u9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
 b=gzyAKPmRkowOFZ2qAvRRTI88anU+nLutidpuTnkJDQZGwPf5q9KTyS5HZnKcjIZKwO
 yfY/Jdm/U6CmUWop6T2YKW94doWxKnuA13acE4UKeQac8JQ/VtQ6KddLXB3tWaVVpp7f
 2vlTbcNLLxaauKyx6zFkeBsZr+3+SoNiE/L8V0WBVH80hlrNrF8uQGB5FMFCNlg4fmw3
 h8RX5tuGiH/nLvtS0XE4mHH8aYvjxC6qc9u0lB2L8A+6FKeQp6MeHALYgUQogq9tMNL6
 f1/iPSE7+7Hty7m4PNGciJndgwL+CecwfdS/dsZbyu8JRnQQdwv6vc7EfBiWe2pw8GpI
 aTNw==
X-Gm-Message-State: APjAAAUfN1amKmdEO1Yz9pueq/99VIIpHF3ymrldQWsPEkJ8lk9Q+nDS
 gwWlNFBWy+g+jkPJdPHfbL/OqmZBz/M=
X-Google-Smtp-Source: APXvYqxESCS6YvJtis+JVYLWjUJOvLHnP5lvGMURd9c5yZ2FOmoRv1GWXJ13zKBAtOaHmGvFd0lZpA==
X-Received: by 2002:ac5:c7bb:: with SMTP id d27mr19484857vkn.79.1557945830037; 
 Wed, 15 May 2019 11:43:50 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47])
 by smtp.gmail.com with ESMTPSA id b2sm1062179vkf.16.2019.05.15.11.43.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id t18so262479uar.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr5386901uao.106.1557945821179; 
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org>
 <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
In-Reply-To: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:43:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288
 GPU
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_114351_622767_6A2B6F66 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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

Hi,

On Wed, May 15, 2019 at 10:59 AM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> > The Mali GPU of the rk3288 can be used as cooling device, add
> > a #cooling-cells entry for it.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >  arch/arm/boot/dts/rk3288.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> > index ca7d52daa8fb..767e62908a6e 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -1275,6 +1275,7 @@
> >                 interrupt-names = "job", "mmu", "gpu";
> >                 clocks = <&cru ACLK_GPU>;
> >                 operating-points-v2 = <&gpu_opp_table>;
> > +               #cooling-cells = <2>; /* min followed by max */
> >                 power-domains = <&power RK3288_PD_GPU>;
> >                 status = "disabled";
> >         };
>
> Seems like a good idea to me.  Presumably we should also add this to
> the bindings?
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

I guess we could now also do a follow-up CL that starts using the GPU
as a cooling device.  Presumably it's still OK to specify this and it
will just be ignored if there's no GPU driver?  It's a little funny
because the upstream device tree uses the CPU to cool things down if
the GPU temperature sensor trips.  Downstream uses the GPU to cool
down the GPU.  ...though, of course, it's not really all that simple
since everything is packed in so tightly.

The other case that sticks as a sore thumb is the upstream
"rk3288-veyron-mickey" where all the comments still talk about the GPU
cooling but we have only the CPU cooling actually in the device tree.
:-)

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
