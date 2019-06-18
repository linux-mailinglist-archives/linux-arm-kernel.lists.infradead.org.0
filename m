Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9F49E50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfJx39JYnk8gm61czlYOlIQNmIm4n8DdB2rngtju+Ss=; b=n/Zwnj02SD9pVM
	yFcGLzjimg59mQea6h97g5Hab1cPce5wxHrMmRzoki6EtM2Yr1D0wE2CobKUCjVDGi+WFPNG8Oj/Y
	XvFNYWjl9pIGjcm2Nfb50NlKa5tv1qQI49v1n00pSEZsRyngJKn8UJeQDTSsaVwEy5uv/GNxfT7Wz
	D8YbxS6HQXxzHhfkL3IMM0GJTWfCroZsTMyrUKr+LedCW4FuBB2QP0PJ+7DXj23JQ32BuneFCE4di
	BeyUlpAATIlBksgbNfIZ9qQtz0lX561Cs/cGH+QnZkdFeWOa+f4/i4q0qNGZ038jf1cDOs42a2P6Y
	/R2G+hCaUOAss85UKoaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBRg-00032U-P2; Tue, 18 Jun 2019 10:34:32 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBRW-00031W-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:34:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id u13so28679405iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wpQoG1Wc0XjuCAWhAB/s5GQOkrEUqtdWSybZNMgnLQo=;
 b=E1YxsQwklgb6VllZvWHSagrfUhBjoGsarhcjZOymEGPZQ99/5hS/nnHF84NGch8SZV
 CLBAmR5tEXQud+tNxydBa5d9QFQ4l+rZD4kUaGIymeyuVR9+deirqszWB2Id6vl1aXzU
 h6lw+s3ddlsDTKeC3GqGCMfI2FE4dJ3eSRuLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wpQoG1Wc0XjuCAWhAB/s5GQOkrEUqtdWSybZNMgnLQo=;
 b=CXEyc4Tlgj/QZQx2aYyDBUzAtYot+DMouAOg8mHxDdD0NJlSww13Ad6g0FyXqro39a
 4pcwDIR1/fkNXEDpPABnibnsTRsU6BEvw/P9qW2udApNC0ANC7f7jfRlcjFUf6SYTlKM
 R3Kowgh3/vkylbTgwUipl+YCUhHESjnjxYYe7N9NJ7hN1gkXU+O985xuD4LQxPo88NxF
 fXs16u5PKY9GYCsMzVkzuRMtQ8ov/Y9z+b/9yO3DMrTNF7mS2cEuKPE4FG88t2k+gI0I
 Uzaa6Pyj/CP+zYcvpQonjPg79yGx983z4WtnFwcGVaNcG8OVxzTIAlELzNxv+Pm4/Gbj
 1Frw==
X-Gm-Message-State: APjAAAXhOCuw1kHeC4ugq4KG/UBwcfifXlVOKhzv22OOB258PQswz3Hy
 5DapQEMCilj3fPTGtAfUJ7IRQlKq9ptjdSFFs8HXPw==
X-Google-Smtp-Source: APXvYqzO0nEX3fm1soaUqMo2bDslLyQffr3PNruZK0DCUBUy/ns1rEi9fPAESKSl/J4H4H1lmzd5kNngA/KmgcxyfnQ=
X-Received: by 2002:a5d:9ad6:: with SMTP id x22mr4603238ion.136.1560854058150; 
 Tue, 18 Jun 2019 03:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
 <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
 <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
 <CAMty3ZBUrGEi+e62sFe7GkXinK3q076sGLwpEVz67qeoV+1ZeA@mail.gmail.com>
 <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
In-Reply-To: <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 16:04:06 +0530
Message-ID: <CAMty3ZA+hV_X0-=b83M3rDUhX=+g5RNC6EU-DzAS_pbvwc54FA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_033422_341855_3E233881 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jun 18, 2019 at 1:23 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jun 18, 2019 at 3:45 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Tue, Jun 18, 2019 at 12:49 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Mon, Jun 17, 2019 at 6:30 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > >
> > > > On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > > > >
> > > > > On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > > >
> > > > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > > > now these are register during bind call.
> > > > > >
> > > > > > Of which, dsi clock gate would required during DPHY probe
> > > > > > but same can miss to get since tcon top is not bound at
> > > > > > that time.
> > > > > >
> > > > > > To solve, this circular dependency move the clock gate
> > > > > > registration from bind to probe so-that DPHY can get the
> > > > > > dsi gate clock on time.
> > > > > >
> > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> > > > > >  1 file changed, 49 insertions(+), 45 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > index 465e9b0cdfee..a8978b3fe851 100644
> > > > > > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> > > > > >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> > > > > >                                void *data)
> > > > > >  {
> > > > > > -       struct platform_device *pdev = to_platform_device(dev);
> > > > > > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > > > > > +       int ret;
> > > > > > +
> > > > > > +       ret = reset_control_deassert(tcon_top->rst);
> > > > > > +       if (ret) {
> > > > > > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > > > > > +               return ret;
> > > > > > +       }
> > > > > > +
> > > > > > +       ret = clk_prepare_enable(tcon_top->bus);
> > > > > > +       if (ret) {
> > > > > > +               dev_err(dev, "Could not enable bus clock\n");
> > > > > > +               goto err_assert_reset;
> > > > > > +       }
> > > > >
> > > > > You have to de-assert the reset control and enable the clock before the
> > > > > clocks it provides are registered. Otherwise a consumer may come in and
> > > > > ask for the provided clock to be enabled, but since the TCON TOP's own
> > > > > reset and clock are still disabled, you can't actually access the registers
> > > > > that controls the provided clock.
> > > >
> > > > These rst and bus are common reset and bus clocks not tcon top clocks
> > > > that are trying to register here. ie reason I have not moved it in
> > > > top.
> > >
> > > And you're sure that toggling bits in the TCON TOP block doesn't require
> > > the reset to be de-asserted and the bus clock enabled?
> > >
> > > Somehow I doubt that.
> > >
> > > Once the driver register the clocks it provides, they absolutely must work.
> > > They can't only work after the bind phase when the reset gets de-asserted
> > > and the bus clock enabled. Or you should provide proper error reporting
> > > in the clock ops. I doubt you want to go that way either.
> >
> > Why would they won't work after bind phase? unlike tcon top gates,
> > these reset, and bus are common like  what we have in other DE block
> > so enable them in bind won't be an issue as per as I understand. let
> > me know if you want me to check in other directions.
>
> You misunderstood. When you moved the clock registering parts to the probe
> phase, but didn't move the clock enable and reset de-assert parts to go with,
> the clock ops will not work as expected between probe and bind time.

If I understand correctly, I have moved tcon clock gates, not the bus
clock or the reset. Both have independent enablement phase, the bus
clock is enable in tcon top bind and the clock gate ("dsi") enable in
init call of phy_ops. is both bus clock and clock gates are same and
related that is what you are saying?

>
> Simple way to verify it: Just use devmem to disable the TCON TOP bus gate
> and/or assert its reset control. Then try to toggle any of the bits in the
> TCON TOP block and see if it works, or if the bits stick.

Yes I have verified "dsi" gate enablement before via devmem. Below is
the bus, reset disablement and re-enablement and result is similar for
the reset, bus clock in bind and even in probe.

00. get the existing value

# devmem 0x1c70020
0x00010000
# devmem 0x1c20064
0x44021000
# devmem 0x1c202c4
0x44021000

01: disable bus, and assert reset

# devmem 0x1c20064 32 0x4021000
# devmem 0x1c202c4 32 0x4021000
# devmem 0x1c20064
0x04021000
# devmem 0x1c202c4
0x04021000
# devmem 0x1c70020
0x00000000

02: enable bus, and dessert reset

# devmem 0x1c20064 32 0x44021000
# devmem 0x1c202c4 32 0x44021000
# devmem 0x1c20064
0x44021000
# devmem 0x1c202c4
0x44021000
# devmem 0x1c70020
0x00000000

03: enable gate

# devmem 0x1c70020 32 0x00010000
# devmem 0x1c70020
0x00010000

>
> Whether another driver actually does so is not the question. It is just bad
> implementation.

Not sure, I understand this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
