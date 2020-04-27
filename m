Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22901B9FBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf/dneAwAY8EJlBUeiPHGeGv2ib2oeg+W8FpP8AruLM=; b=bIHukYLaSLVTis
	ss6DV8sOM/Nih3x9SQI/0a+vA/QGFsiGF8zFZBlHj7P8R1lSlVC3WlIadCT5IKT9CYXp+2IZ8yfK3
	PKoqr4xfkLj/7Q/MgEarzjhVxvMjNxilTa91jiLcgAr+vtsNR8/H2JXMvnIC8O3pNm8/if5MPSSW9
	QvkCt6Om8Ox7q559XAEDHhzV+EW5B+nixJhBNTDG6HFU8ugUs57zZoM+sIvgzouNVOdkUiz4BAMf9
	B6eQnKOCwp5ddCyXEcoDXGcfZwmhZGV0OW/kPuKHkZLuOhjV2f43Y1QWS2YSEvrsfbVC1xcQVtnZR
	YlHsqFny9A5510ovPytA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzxi-0000XU-U0; Mon, 27 Apr 2020 09:22:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzxZ-0000Wq-GO; Mon, 27 Apr 2020 09:21:54 +0000
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D06432075B;
 Mon, 27 Apr 2020 09:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587979313;
 bh=jKyA/Qjkmcdo4y/kF2F0R19weTj2X0wKUsAjpoDrwrA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qvjI3693uqXiyrz1pqnm09s+lMplQHHaPmABgh2Z4nWsmJgEbhO3H/67Qgj4bOGFV
 foiwHBi8Rpl68csholnG9+7Q0X70q3relP8nRyYR44jzf5AndCgj2LMH/b4Qe2pEmU
 Pus41UVX3ahsNGo3RFtIXM5j0qTTHA7TGjGkMzXw=
Received: by mail-lj1-f176.google.com with SMTP id h4so3214833ljg.12;
 Mon, 27 Apr 2020 02:21:52 -0700 (PDT)
X-Gm-Message-State: AGi0PuaDTGaLHZr3zClHvP1qTqv0KkCvMqHxEA2+olzPuNQq0RLoknz+
 eBjDLaKdRLQprz9p1MgQ+B2AM6sZyWWVU5EtD8Y=
X-Google-Smtp-Source: APiQypLonALPqCCxEkhgKW6hPj0VMnhh8js9Nzmi3hS5n1MUW4IMs8k0s21bp3PJw4RUgY/Fx25darDkQTSoNMmnPCw=
X-Received: by 2002:a2e:910e:: with SMTP id m14mr12450836ljg.141.1587979310912; 
 Mon, 27 Apr 2020 02:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200427073132.29997-2-wens@kernel.org>
 <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
In-Reply-To: <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 27 Apr 2020 17:21:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v645WU9mFeB83DvJcbfJ0xJswb3gq0NJLXwkVnPz8kcYNQ@mail.gmail.com>
Message-ID: <CAGb2v645WU9mFeB83DvJcbfJ0xJswb3gq0NJLXwkVnPz8kcYNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for
 linux, default-triggers
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_022153_585241_169327EF 
X-CRM114-Status: GOOD (  19.13  )
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

On Mon, Apr 27, 2020 at 4:33 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The bindings currently list a very small subset of valid triggers for
> > LEDs. Since many drivers or subsystems in Linux register custom
> > triggers, the list would become very hard to maintain.
> >
> > Instead, just drop the list and allow free form strings.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
> >  1 file changed, 1 insertion(+), 20 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> > index 4c270fde4567..3b3cdab3fc15 100644
> > --- a/Documentation/devicetree/bindings/leds/common.yaml
> > +++ b/Documentation/devicetree/bindings/leds/common.yaml
> > @@ -79,26 +79,7 @@ properties:
> >      description:
> >        This parameter, if present, is a string defining the trigger assigned to
> >        the LED.
> > -    allOf:
> > -      - $ref: /schemas/types.yaml#definitions/string
> > -    enum:
> > -        # LED will act as a back-light, controlled by the framebuffer system
> > -      - backlight
> > -        # LED will turn on (but for leds-gpio see "default-state" property in
> > -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> > -      - default-on
> > -        # LED "double" flashes at a load average based rate
> > -      - heartbeat
> > -        # LED indicates disk activity
> > -      - disk-activity
> > -        # LED indicates IDE disk activity (deprecated), in new implementations
> > -        # use "disk-activity"
> > -      - ide-disk
> > -        # LED flashes at a fixed, configurable rate
> > -      - timer
> > -        # LED alters the brightness for the specified duration with one software
> > -        # timer (requires "led-pattern" property)
> > -      - pattern
> > +    $ref: /schemas/types.yaml#definitions/string
>
> This makes it free form, but deletes the documentation of options that
> are standard available for people without custom driver.
> Where should that info go?

As far as I know, there is no canonical list of standard triggers.
In addition, what triggers are available also depend on the kernel
configuration, so there really is no "standard".

Since this is also configurable via sysfs, maybe it should be part
of the sysfs ABI document? Either way I believe this will be up to
the LED subsystem maintainers.

ChenYu

> >
> >    led-pattern:
> >      description: |
> > --
> > 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
