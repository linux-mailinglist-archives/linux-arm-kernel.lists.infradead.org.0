Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC504E18A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7n5EidaALB+lN0wyHbl+HVwOcwh4TZxz8kDXadGFvI=; b=HDEkUBSCUY4U1V
	/kiIdWdHf9LysRaV5/i4oWFIDz2gq8twXRkomNx7XibgU31RLjFaZb5F6rKPijs11N9TiWSY0v9vh
	afmSdF5Jk09jHsZDOkNlOG1+mvjmOg8jvo8fiGEGQLtD0r0JzDUeMgCz7EwqOGuLSftTMgQussu9/
	0c/9FUbXKpMI+Pp+Wje72pOfWApFzhleohZW0ymHQW1Lut54PgP6uK0RBon2Z+8DLhj3/3M9liBxI
	dtejImndyS7zwyr8kNGcT8BHOJlMY2/CWDLXE/b4MaSo7N9ituqXgU6QiSiKwcp58ZNLQcxUYnvcI
	hhm9XU+ney4HfuatRqrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEUH-0002P0-9b; Fri, 21 Jun 2019 08:01:33 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heETz-0002OX-0a
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:01:17 +0000
Received: by mail-ed1-f67.google.com with SMTP id i11so8818007edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 01:01:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gCeom1nFJ2arsBYjfG8dbuKtZ+vOlEvHFBBdljj8zQo=;
 b=MN2ZEQlgOJfEJsFXV6cxsBUC0Ely+eFtdQTcj4FGxEbkyc6UlKTqYQn88zxwZ/hiSN
 UUKgLA0TgHhdRU3mLlXDGRpoUyDzBBgG92ysEDLqXM2jQ3QUPtHAOfd4g1CnwK6K1uyE
 PpLIJckU+a7MWceEsZbz8mv+NwORsPZNB/IABjfy1V3Uf6XsSTBr48iPAsDQ1oVho7Gf
 bRBp8ESFs4DvDDfkIUe7cQi6UhJycgVtFiI7FEpzCrfptoMSSFB+yZaNJ3kWaXg7HEAp
 DsbN3P1LlNkBxj9eoAYTLVdscxcBo9hc2Il0UVlUs0NLRYIOgoGYq5UEg5rMxlEAFfpj
 glAg==
X-Gm-Message-State: APjAAAU4NH5tppJuOidmE3zfAql7h4ZOuCIgpA+e8SQgmhk5J9w6WVUF
 jjfvy18YOG8OW8iADgRFS7B5UyEdTVI=
X-Google-Smtp-Source: APXvYqz9FN5ArEfRhIbvGGouEdq2sxi+NfDaQGq73AAPdxeGg3r9/Q1jfBNxfMxv3m1qvdHuhOM+Vg==
X-Received: by 2002:a50:b343:: with SMTP id r3mr57770646edd.16.1561104072610; 
 Fri, 21 Jun 2019 01:01:12 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id z12sm594270edq.57.2019.06.21.01.01.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 01:01:11 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id x15so5417405wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 01:01:11 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr2869999wmc.25.1561104071096; 
 Fri, 21 Jun 2019 01:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
 <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
 <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
 <CAMty3ZBUrGEi+e62sFe7GkXinK3q076sGLwpEVz67qeoV+1ZeA@mail.gmail.com>
 <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
 <CAMty3ZA+hV_X0-=b83M3rDUhX=+g5RNC6EU-DzAS_pbvwc54FA@mail.gmail.com>
 <CAGb2v66onOEDPvXWLsLj7efxbReY0_z1HcQWkG78XUytLvMQ+g@mail.gmail.com>
 <CAMty3ZC=Mn2po=98onX7WcmTGOmV0aK+ZT5bYFEFw+q+SqK4FA@mail.gmail.com>
In-Reply-To: <CAMty3ZC=Mn2po=98onX7WcmTGOmV0aK+ZT5bYFEFw+q+SqK4FA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 21 Jun 2019 16:00:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v65NYRkz=0_6jBg3kEyxmuGNv62pYp3dLk0P909T7_waCg@mail.gmail.com>
Message-ID: <CAGb2v65NYRkz=0_6jBg3kEyxmuGNv62pYp3dLk0P909T7_waCg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_010115_061719_5DB5BFA8 
X-CRM114-Status: GOOD (  47.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 12:24 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Tue, Jun 18, 2019 at 4:24 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Tue, Jun 18, 2019 at 6:34 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > On Tue, Jun 18, 2019 at 1:23 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Tue, Jun 18, 2019 at 3:45 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > >
> > > > > On Tue, Jun 18, 2019 at 12:49 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > > > >
> > > > > > On Mon, Jun 17, 2019 at 6:30 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > > > >
> > > > > > > On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > > > > > > >
> > > > > > > > On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > > > > > >
> > > > > > > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > > > > > > now these are register during bind call.
> > > > > > > > >
> > > > > > > > > Of which, dsi clock gate would required during DPHY probe
> > > > > > > > > but same can miss to get since tcon top is not bound at
> > > > > > > > > that time.
> > > > > > > > >
> > > > > > > > > To solve, this circular dependency move the clock gate
> > > > > > > > > registration from bind to probe so-that DPHY can get the
> > > > > > > > > dsi gate clock on time.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> > > > > > > > >  1 file changed, 49 insertions(+), 45 deletions(-)
> > > > > > > > >
> > > > > > > > > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > > > index 465e9b0cdfee..a8978b3fe851 100644
> > > > > > > > > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > > > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > > > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> > > > > > > > >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> > > > > > > > >                                void *data)
> > > > > > > > >  {
> > > > > > > > > -       struct platform_device *pdev = to_platform_device(dev);
> > > > > > > > > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > > > > > > > > +       int ret;
> > > > > > > > > +
> > > > > > > > > +       ret = reset_control_deassert(tcon_top->rst);
> > > > > > > > > +       if (ret) {
> > > > > > > > > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > > > > > > > > +               return ret;
> > > > > > > > > +       }
> > > > > > > > > +
> > > > > > > > > +       ret = clk_prepare_enable(tcon_top->bus);
> > > > > > > > > +       if (ret) {
> > > > > > > > > +               dev_err(dev, "Could not enable bus clock\n");
> > > > > > > > > +               goto err_assert_reset;
> > > > > > > > > +       }
> > > > > > > >
> > > > > > > > You have to de-assert the reset control and enable the clock before the
> > > > > > > > clocks it provides are registered. Otherwise a consumer may come in and
> > > > > > > > ask for the provided clock to be enabled, but since the TCON TOP's own
> > > > > > > > reset and clock are still disabled, you can't actually access the registers
> > > > > > > > that controls the provided clock.
> > > > > > >
> > > > > > > These rst and bus are common reset and bus clocks not tcon top clocks
> > > > > > > that are trying to register here. ie reason I have not moved it in
> > > > > > > top.
> > > > > >
> > > > > > And you're sure that toggling bits in the TCON TOP block doesn't require
> > > > > > the reset to be de-asserted and the bus clock enabled?
> > > > > >
> > > > > > Somehow I doubt that.
> > > > > >
> > > > > > Once the driver register the clocks it provides, they absolutely must work.
> > > > > > They can't only work after the bind phase when the reset gets de-asserted
> > > > > > and the bus clock enabled. Or you should provide proper error reporting
> > > > > > in the clock ops. I doubt you want to go that way either.
> > > > >
> > > > > Why would they won't work after bind phase? unlike tcon top gates,
> > > > > these reset, and bus are common like  what we have in other DE block
> > > > > so enable them in bind won't be an issue as per as I understand. let
> > > > > me know if you want me to check in other directions.
> > > >
> > > > You misunderstood. When you moved the clock registering parts to the probe
> > > > phase, but didn't move the clock enable and reset de-assert parts to go with,
> > > > the clock ops will not work as expected between probe and bind time.
> > >
> > > If I understand correctly, I have moved tcon clock gates, not the bus
> > > clock or the reset. Both have independent enablement phase, the bus
> > > clock is enable in tcon top bind and the clock gate ("dsi") enable in
> > > init call of phy_ops. is both bus clock and clock gates are same and
> > > related that is what you are saying?
> >
> > I am saying that you may need the tcon top bus gates and resets properly
> > configured to be able to read/write the tcon top address range. That includes
> > enabling/disabling the clocks that the tcon top driver registers.
> >
> > In other words, the TCON TOP's bus gate and reset control have everything to do
> > with what you can do within the TCON TOP block or address range.
> >
> > > >
> > > > Simple way to verify it: Just use devmem to disable the TCON TOP bus gate
> > > > and/or assert its reset control. Then try to toggle any of the bits in the
> > > > TCON TOP block and see if it works, or if the bits stick.
> > >
> > > Yes I have verified "dsi" gate enablement before via devmem. Below is
> > > the bus, reset disablement and re-enablement and result is similar for
> > > the reset, bus clock in bind and even in probe.
> > >
> > > 00. get the existing value
> > >
> > > # devmem 0x1c70020
> > > 0x00010000
> > > # devmem 0x1c20064
> > > 0x44021000
> > > # devmem 0x1c202c4
> > > 0x44021000
> > >
> > > 01: disable bus, and assert reset
> > >
> > > # devmem 0x1c20064 32 0x4021000
> > > # devmem 0x1c202c4 32 0x4021000
> > > # devmem 0x1c20064
> > > 0x04021000
> > > # devmem 0x1c202c4
> > > 0x04021000
> > > # devmem 0x1c70020
> > > 0x00000000
> >
> > See here. The value became 0 when it was still 0x10000 in the previous phase.
> > Any guesses to why this happened, assuming you didn't touch it?
>
> Yes, I didn't touch anything here. and it indeed expected since the
> bus and reset line goes disabled and asserted.

OK. So you understand what's going on in the hardware.

> >
> > Now if you keep the bus gate disabled and the reset control asserted, and
> > try to write some non-zero value to 0x1c70020, and read it back, does the
> > value stick?
>
> No, value is not stick. what ever I wrote on on 0x1c70020 it is not taking.

Yes. And that is expected since the reset is asserted.

> >
> > If you don't have the bus gate enabled and the reset control de-asserted,
> > any operations you do to the TCON TOP is essentially not happening. Including
> > bit operations that the clocks you registered are required to do.
> >
> > Get what I'm saying?
>
> I understand it, the for accessing tcon space we have bus and reset
> line to be enabled and desserted. But the thing is I didn't see any
> difference in the behavior even If I enable or deassert the bus and
> reset in probe or in bind.

You mean the display pipeline bind as usual, regardless of whether
you reset in probe or in bind, right?

That is because the TCON and DSI blocks bind _after_ the TCON TOP block.
The display component is traversed breadth first, and components bind
in that order.

What I'm trying to tell you is not that the display pipeline will stop
working, but that you have a problem with how you use the API in the
TCON TOP driver.


When you call clk_hw_register_gate(), you are saying that from this point
onward, the clock that got registered is available and will work properly,
or it will return an error if not.

That is not the case here. Because the TCON TOP reset control is deasserted
and the bus clock enabled much later, right _now_ any attempts to control
the newly registered gate will silently fail, because writes to the register
do not go through.

> The devmem numbers which I have listed above is same for both the
> cases, one with this patch and another one is handle via probe
> https://paste.ubuntu.com/p/ndHj9wHzvX/
>
> >
> > You need to have the bus gate enabled and the reset control de-asserted
> > BEFORE you register the clocks you are providing, or something is going
> > to go very wrong.
> >
> > Worst case scenario: the reset control was left de-asserted by the bootloader
> > but the bus gate was disabled. When you register the clocks, the CCF tries
> > to read back the current status of the clocks, and the I/O stalls because
> > the bus gate wasn't enabled. System stalls.
> >
> > Do I need to draw a time flow chart for you?
>
> Sure, please.

    tcon top probe                        tcon top bind
--[--------------|-]------------>-------[------|--------]------------->
                 |                             |
                 clk_hw_register_gate()        |
                                               reset_control_deassert()
                                               clk_prepare_enable()


So the above is what is happening with your patch:

Between the two square bracket blocks, if any consumer tries to use the
clocks created by clk_hw_register_gate(), it will silently fail, because
the function calls enabling the TCON TOP block happen much later.

Again, the problem is not that the display pipeline stops working. Instead
it is more fundamental: the code is not living up to the API contract that
it declared it is following.

There is also another register/unregister mismatch in this driver. You
moved clk_hw_register_gate(), but the corresponding clk_hw_unregister_gate()
calls that need to happen are still in the unbind function.

So if I were to probe but not bind the driver, and then subsequently
remove the driver, it would be leaking the registered clocks. (At this
point the clocks might not even have code backing them, since I might
have removed the module. I'm not sure if that's possible.) If I try
to probe the driver again, it will fail because it tries to register
clocks with the same names as the ones leaked in the previous round.


ChenYu

> > Also see the very simple example:
> >
> >     https://elixir.bootlin.com/linux/latest/source/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c#L113
> >
> > where the bus gate is enabled before registering the clocks. This hardware
> > block doesn't have a reset control for it, but the same principle applies.
>
> Got it, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
