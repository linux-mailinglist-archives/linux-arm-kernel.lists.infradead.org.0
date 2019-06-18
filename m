Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F3B49EAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3Wm5NLYwK8a7GOAxl8s2n367GDp5XaNDO3pyky8TL0=; b=mbToMNUtS0w4p7
	iTrXBnhVnf6MRlASyYlU6pMUhXMUGPrzmSKEU5bZ7GXrGHAu/3ZlAIpv17OqQsqhIS2FIzRUlYdKq
	GQjElqe4CyRL0MB/vfyqXSbQswRjxPs7oF/xb7fLXGwdcD+P1u2qzpgszwnsYwS8pB1oxNvXJLA+D
	YTyYOKAxmfiPWd2V7PrhCqcRLkL0GPp/n70GDu8eIgbZ9YcdPhoRrQ9htRal40pnsjl1Ya0q3v/gm
	VcVOLDJY1dKi1i4pyTTv2t5vSSNPo+yNt9CFy1/DvLK2uzOObf8JgzEzrpJMqdjP7pewymplkf8LC
	XBYoanfV3/WxxMRrmWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBlh-0002oq-TU; Tue, 18 Jun 2019 10:55:13 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBlL-0002np-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:54:57 +0000
Received: by mail-ed1-f68.google.com with SMTP id a14so21007879edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:54:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gPgMEOL4dHRWrvxMQ7ystpU+K87vLZf9P87ZKC49UHY=;
 b=I9awbsWwtpCE18gRw4XU7Ax8suTO6j1SrBxRv89h9YtaIkB/C1kn49wNiKchIiKqsr
 daDulWr2S8uBmZSVqDre9AwEaAxntqzy0PPVamu03I0Hbq6ktUS6jjW9rz/XcdDVyu79
 MheSP/gOaEW1avaj4lncmk5JKOdXqmt1VBNE06pyLH2fazxTz+Q6Mb2EkE9UHBS4am5J
 zG8bwCCPaW8+BAGp7NSvBS9HIj9rsuPKK1HRCUBRQuWCpuLe69eNkFiJexKskVhPsDM9
 SH23gYDFPhU3Bf0ieglFDI6oik5k9E9wg8L5CCvpzTEuJZwVnxnv7WXmH+DdJ37c0Wse
 qfMg==
X-Gm-Message-State: APjAAAVzVlv/QOvLua96yesn3KdtCf3s4kXiY8hle1zstYi8scsTLGir
 hwUm1TwUhSh2c4vxZ9QfduudE9UoFc4=
X-Google-Smtp-Source: APXvYqyZJunj/HkWLbIJx7292hDZ53E8LD/ECTwInlaiVaowA/itpRTkTBwVQuNauHN5d8MzbZXUag==
X-Received: by 2002:a17:906:13c7:: with SMTP id
 g7mr39913838ejc.1.1560855289103; 
 Tue, 18 Jun 2019 03:54:49 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id g7sm4592914eda.52.2019.06.18.03.54.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 03:54:48 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id u8so2736858wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:54:48 -0700 (PDT)
X-Received: by 2002:a1c:a186:: with SMTP id k128mr3096936wme.125.1560855288154; 
 Tue, 18 Jun 2019 03:54:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
 <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
 <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
 <CAMty3ZBUrGEi+e62sFe7GkXinK3q076sGLwpEVz67qeoV+1ZeA@mail.gmail.com>
 <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
 <CAMty3ZA+hV_X0-=b83M3rDUhX=+g5RNC6EU-DzAS_pbvwc54FA@mail.gmail.com>
In-Reply-To: <CAMty3ZA+hV_X0-=b83M3rDUhX=+g5RNC6EU-DzAS_pbvwc54FA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 18 Jun 2019 18:54:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66onOEDPvXWLsLj7efxbReY0_z1HcQWkG78XUytLvMQ+g@mail.gmail.com>
Message-ID: <CAGb2v66onOEDPvXWLsLj7efxbReY0_z1HcQWkG78XUytLvMQ+g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_035455_294438_17A3240A 
X-CRM114-Status: GOOD (  36.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Jun 18, 2019 at 6:34 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Tue, Jun 18, 2019 at 1:23 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Tue, Jun 18, 2019 at 3:45 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > On Tue, Jun 18, 2019 at 12:49 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Mon, Jun 17, 2019 at 6:30 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > >
> > > > > On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > > > > >
> > > > > > On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > > > >
> > > > > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > > > > now these are register during bind call.
> > > > > > >
> > > > > > > Of which, dsi clock gate would required during DPHY probe
> > > > > > > but same can miss to get since tcon top is not bound at
> > > > > > > that time.
> > > > > > >
> > > > > > > To solve, this circular dependency move the clock gate
> > > > > > > registration from bind to probe so-that DPHY can get the
> > > > > > > dsi gate clock on time.
> > > > > > >
> > > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> > > > > > >  1 file changed, 49 insertions(+), 45 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > index 465e9b0cdfee..a8978b3fe851 100644
> > > > > > > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> > > > > > >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> > > > > > >                                void *data)
> > > > > > >  {
> > > > > > > -       struct platform_device *pdev = to_platform_device(dev);
> > > > > > > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > > > > > > +       int ret;
> > > > > > > +
> > > > > > > +       ret = reset_control_deassert(tcon_top->rst);
> > > > > > > +       if (ret) {
> > > > > > > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > > > > > > +               return ret;
> > > > > > > +       }
> > > > > > > +
> > > > > > > +       ret = clk_prepare_enable(tcon_top->bus);
> > > > > > > +       if (ret) {
> > > > > > > +               dev_err(dev, "Could not enable bus clock\n");
> > > > > > > +               goto err_assert_reset;
> > > > > > > +       }
> > > > > >
> > > > > > You have to de-assert the reset control and enable the clock before the
> > > > > > clocks it provides are registered. Otherwise a consumer may come in and
> > > > > > ask for the provided clock to be enabled, but since the TCON TOP's own
> > > > > > reset and clock are still disabled, you can't actually access the registers
> > > > > > that controls the provided clock.
> > > > >
> > > > > These rst and bus are common reset and bus clocks not tcon top clocks
> > > > > that are trying to register here. ie reason I have not moved it in
> > > > > top.
> > > >
> > > > And you're sure that toggling bits in the TCON TOP block doesn't require
> > > > the reset to be de-asserted and the bus clock enabled?
> > > >
> > > > Somehow I doubt that.
> > > >
> > > > Once the driver register the clocks it provides, they absolutely must work.
> > > > They can't only work after the bind phase when the reset gets de-asserted
> > > > and the bus clock enabled. Or you should provide proper error reporting
> > > > in the clock ops. I doubt you want to go that way either.
> > >
> > > Why would they won't work after bind phase? unlike tcon top gates,
> > > these reset, and bus are common like  what we have in other DE block
> > > so enable them in bind won't be an issue as per as I understand. let
> > > me know if you want me to check in other directions.
> >
> > You misunderstood. When you moved the clock registering parts to the probe
> > phase, but didn't move the clock enable and reset de-assert parts to go with,
> > the clock ops will not work as expected between probe and bind time.
>
> If I understand correctly, I have moved tcon clock gates, not the bus
> clock or the reset. Both have independent enablement phase, the bus
> clock is enable in tcon top bind and the clock gate ("dsi") enable in
> init call of phy_ops. is both bus clock and clock gates are same and
> related that is what you are saying?

I am saying that you may need the tcon top bus gates and resets properly
configured to be able to read/write the tcon top address range. That includes
enabling/disabling the clocks that the tcon top driver registers.

In other words, the TCON TOP's bus gate and reset control have everything to do
with what you can do within the TCON TOP block or address range.

> >
> > Simple way to verify it: Just use devmem to disable the TCON TOP bus gate
> > and/or assert its reset control. Then try to toggle any of the bits in the
> > TCON TOP block and see if it works, or if the bits stick.
>
> Yes I have verified "dsi" gate enablement before via devmem. Below is
> the bus, reset disablement and re-enablement and result is similar for
> the reset, bus clock in bind and even in probe.
>
> 00. get the existing value
>
> # devmem 0x1c70020
> 0x00010000
> # devmem 0x1c20064
> 0x44021000
> # devmem 0x1c202c4
> 0x44021000
>
> 01: disable bus, and assert reset
>
> # devmem 0x1c20064 32 0x4021000
> # devmem 0x1c202c4 32 0x4021000
> # devmem 0x1c20064
> 0x04021000
> # devmem 0x1c202c4
> 0x04021000
> # devmem 0x1c70020
> 0x00000000

See here. The value became 0 when it was still 0x10000 in the previous phase.
Any guesses to why this happened, assuming you didn't touch it?

Now if you keep the bus gate disabled and the reset control asserted, and
try to write some non-zero value to 0x1c70020, and read it back, does the
value stick?

If you don't have the bus gate enabled and the reset control de-asserted,
any operations you do to the TCON TOP is essentially not happening. Including
bit operations that the clocks you registered are required to do.

Get what I'm saying?

You need to have the bus gate enabled and the reset control de-asserted
BEFORE you register the clocks you are providing, or something is going
to go very wrong.

Worst case scenario: the reset control was left de-asserted by the bootloader
but the bus gate was disabled. When you register the clocks, the CCF tries
to read back the current status of the clocks, and the I/O stalls because
the bus gate wasn't enabled. System stalls.

Do I need to draw a time flow chart for you?

Also see the very simple example:

    https://elixir.bootlin.com/linux/latest/source/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c#L113

where the bus gate is enabled before registering the clocks. This hardware
block doesn't have a reset control for it, but the same principle applies.

> 02: enable bus, and dessert reset
>
> # devmem 0x1c20064 32 0x44021000
> # devmem 0x1c202c4 32 0x44021000
> # devmem 0x1c20064
> 0x44021000
> # devmem 0x1c202c4
> 0x44021000
> # devmem 0x1c70020
> 0x00000000

And it's still zero here, meaning the reset control does have an effect
on the TCON TOP registers.

> 03: enable gate
>
> # devmem 0x1c70020 32 0x00010000
> # devmem 0x1c70020
> 0x00010000

This is irrelevant and not what I wanted you to try.

> >
> > Whether another driver actually does so is not the question. It is just bad
> > implementation.
>
> Not sure, I understand this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
