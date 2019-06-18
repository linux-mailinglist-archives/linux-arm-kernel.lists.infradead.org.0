Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C59049B8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JP58aSWc/JN0jE1vnOQ0HTVlsurMyJQLWWpp045ojfA=; b=i5hWpl+i1aYQFS
	V3MFWBE2HsY2oAzEuo8EsPzG3c4a2m54sxDurseSOeQivT1z6bHYtGzhVeEdD6okrJQniY9mX91UA
	BTdNYIP2Cw3HLDwemwaXZeTvdIuI0/V4VfIB+Tk/FfU3i55cHGDnkXc/ZLCbsbJCSU/6zvJPaRlMN
	1UlNKCts+nlyrEcZlIvPQXJHT3NjaOfuLmwp3B5featGWy7k2BrLIreDnx8rRuWdyIdkdGqoDg+Yi
	442hwOzL18HI7J6YUJsLDEA7Y/ypLYmEdJ12wBZLdF8N8qfIiFBvTvlp6/oHT6++kfcSJYWAP1ora
	mKnHSqGXnJQl2RMX0R3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8w1-0001o9-29; Tue, 18 Jun 2019 07:53:41 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8vp-0001nh-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:53:31 +0000
Received: by mail-ed1-f67.google.com with SMTP id e3so20204304edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0J/MexkclOSTdAkeUoYoJIrIiMyfAXFCNVHplhB1QO0=;
 b=VCkdZjlSL2RVva+/Iv5xSycK3jSkTjhG6iFk7pR1QN1Xl1D0GPWs6FWh7c2j+TkhBL
 HrWklQ2eYz+SXmebv+y/FZdsfYVSXZaBPjMKofwCm+Z8TXvA4CCSegCnJTwndyBaNjGm
 5czI/2TAYETBnFW65HKiVn4cCq0PPU0xOq79wYYF4fMVgT+QVeRom0ztdQm6QD94KhIf
 gjp4pWFiIMfgGAWw6dCtgKxgYuepc/dIsuYqvZ1YMoeHjxf7Qx5UPbLUQ+tnKc03iS2p
 //6z9FIvAcd+iD1vKETuRT1LkekBF9wzvXXCfD7D9UART5mkjifK6rgHgZyFLQGhAc5n
 cLCg==
X-Gm-Message-State: APjAAAVkzF/laAC3HQEGxVRBiKsanLRp2XrAAUylk+WvUWALZr66vTD+
 xKuMXa6sWsR9Hw5qp8Un6FiWLdkEqmg=
X-Google-Smtp-Source: APXvYqywydKuWYihmBMDjJQcNszXw1tyJdyXT2bqqA6dCuxa+jXL/8f4QKjSIORkkndNxUeqFlDGcQ==
X-Received: by 2002:a05:6402:6cb:: with SMTP id
 n11mr9352453edy.101.1560844406823; 
 Tue, 18 Jun 2019 00:53:26 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id e10sm2565114ejx.89.2019.06.18.00.53.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 00:53:26 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id n9so12826277wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:53:25 -0700 (PDT)
X-Received: by 2002:adf:fc85:: with SMTP id g5mr80026097wrr.324.1560844405369; 
 Tue, 18 Jun 2019 00:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
 <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
 <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
 <CAMty3ZBUrGEi+e62sFe7GkXinK3q076sGLwpEVz67qeoV+1ZeA@mail.gmail.com>
In-Reply-To: <CAMty3ZBUrGEi+e62sFe7GkXinK3q076sGLwpEVz67qeoV+1ZeA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 18 Jun 2019 15:53:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
Message-ID: <CAGb2v65YRVSv2mFfE2e=vqDOSu4Nie_oLQ-qpaDsTWKJwf-aeA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005329_053947_73D86936 
X-CRM114-Status: GOOD (  35.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Tue, Jun 18, 2019 at 3:45 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Tue, Jun 18, 2019 at 12:49 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Mon, Jun 17, 2019 at 6:30 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > >
> > > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > > now these are register during bind call.
> > > > >
> > > > > Of which, dsi clock gate would required during DPHY probe
> > > > > but same can miss to get since tcon top is not bound at
> > > > > that time.
> > > > >
> > > > > To solve, this circular dependency move the clock gate
> > > > > registration from bind to probe so-that DPHY can get the
> > > > > dsi gate clock on time.
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > ---
> > > > >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> > > > >  1 file changed, 49 insertions(+), 45 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > index 465e9b0cdfee..a8978b3fe851 100644
> > > > > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > > > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> > > > >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> > > > >                                void *data)
> > > > >  {
> > > > > -       struct platform_device *pdev = to_platform_device(dev);
> > > > > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > > > > +       int ret;
> > > > > +
> > > > > +       ret = reset_control_deassert(tcon_top->rst);
> > > > > +       if (ret) {
> > > > > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > > > > +               return ret;
> > > > > +       }
> > > > > +
> > > > > +       ret = clk_prepare_enable(tcon_top->bus);
> > > > > +       if (ret) {
> > > > > +               dev_err(dev, "Could not enable bus clock\n");
> > > > > +               goto err_assert_reset;
> > > > > +       }
> > > >
> > > > You have to de-assert the reset control and enable the clock before the
> > > > clocks it provides are registered. Otherwise a consumer may come in and
> > > > ask for the provided clock to be enabled, but since the TCON TOP's own
> > > > reset and clock are still disabled, you can't actually access the registers
> > > > that controls the provided clock.
> > >
> > > These rst and bus are common reset and bus clocks not tcon top clocks
> > > that are trying to register here. ie reason I have not moved it in
> > > top.
> >
> > And you're sure that toggling bits in the TCON TOP block doesn't require
> > the reset to be de-asserted and the bus clock enabled?
> >
> > Somehow I doubt that.
> >
> > Once the driver register the clocks it provides, they absolutely must work.
> > They can't only work after the bind phase when the reset gets de-asserted
> > and the bus clock enabled. Or you should provide proper error reporting
> > in the clock ops. I doubt you want to go that way either.
>
> Why would they won't work after bind phase? unlike tcon top gates,
> these reset, and bus are common like  what we have in other DE block
> so enable them in bind won't be an issue as per as I understand. let
> me know if you want me to check in other directions.

You misunderstood. When you moved the clock registering parts to the probe
phase, but didn't move the clock enable and reset de-assert parts to go with,
the clock ops will not work as expected between probe and bind time.

Simple way to verify it: Just use devmem to disable the TCON TOP bus gate
and/or assert its reset control. Then try to toggle any of the bits in the
TCON TOP block and see if it works, or if the bits stick.

Whether another driver actually does so is not the question. It is just bad
implementation.

> Log:
> [    1.381410] sun6i-mipi-dsi 1ca0000.dsi: Attached panel s070wv20-ct16-icn62
> [    1.398405] sun4i-drm display-engine: bound 1100000.mixer (ops 0xc074ce64)
> [    1.407134] sun4i-drm display-engine: bound 1200000.mixer (ops 0xc074ce64)
> [    1.414043] sun4i-drm display-engine: bound 1c70000.tcon-top (ops 0xc0750e80)
> [    1.421407] sun4i_dclk_recalc_rate: val = 1, rate = 297000000
> [    1.427358] sun4i-drm display-engine: No panel or bridge found...
> RGB output disabled
> [    1.435217] sun4i-drm display-engine: bound 1c71000.lcd-controller
> (ops 0xc0749594)
> [    1.442891] 0.0 drm_connector_init
> [    1.446294] 0. -1066106880-1-0 (null)
> [    1.449965] 0.1 drm_connector_init
> [    1.453368] 0.2 drm_connector_init
> [    1.456768] 1. drm_connector_init
> [    1.460094] 2. drm_connector_init
> [    1.463413] drm_connector_init: connector name = DSI-1
> [    1.468560] sun4i-drm display-engine: bound 1ca0000.dsi (ops 0xc074c0e4)
> [    1.475272] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> [    1.481892] [drm] No driver support for vblank timestamp query.
> [    1.488240] [drm] Initialized sun4i-drm 1.0.0 20150629 for
> display-engine on minor 0
> [    1.497996] sun4i_dclk_round_rate: min_div = 6 max_div = 6, rate = 30000000
> [    1.498106] ideal = 1800000, rounded = 180000000
> [    1.498111] sun4i_dclk_round_rate: div = 6 rate = 29700000
> [    1.498116] sun4i_dclk_round_rate: min_div = 6 max_div = 6, rate = 30000000
> [    1.498154] ideal = 1800000, rounded = 180000000
> [    1.498158] sun4i_dclk_round_rate: div = 6 rate = 29700000
> [    1.498217] sun4i_dclk_recalc_rate: val = 1, rate = 178200000
> [    1.498251] rate = 178200000
> [    1.498253] parent_rate = 297000000
> [    1.498256] reg = 0x80c00000
> [    1.498259] _nkm.n = 3, nkm->n.offset = 0x1, nkm->n.shift = 8
> [    1.498262] _nkm.k = 2, nkm->k.offset = 0x1, nkm->k.shift = 4
> [    1.498265] _nkm.m = 10, nkm->m.offset = 0x1, nkm->m.shift = 0
> [    1.499594] sun4i_dclk_set_rate div 6
> [    1.499603] sun4i_dclk_recalc_rate: val = 6, rate = 29700000
> [    1.499680] sun6i_dsi_get_video_start_delay: delay = 513
> [    1.499687] sun6i_dsi_setup_inst_loop: delay = 49
> [    1.499706] hsa = 134, hbp = 114, hfp = 114, hblk = 2630, vblk = 0
> [    1.509103] mmc0: host does not support reading read-only switch,
> assuming write-enable
> [    1.512693] mmc0: new high speed SDHC card at address 4001
> [    1.513723] mmcblk0: mmc0:4001 R04GS 3.71 GiB
> [    1.515577]  mmcblk0: p1 p2
> [    1.658838] mmc2: new DDR MMC card at address 0001
> [    1.659934] mmcblk2: mmc2:0001 8WPD3R 7.28 GiB
> [    1.660657] mmcblk2boot0: mmc2:0001 8WPD3R partition 1 4.00 MiB
> [    1.661387] mmcblk2boot1: mmc2:0001 8WPD3R partition 2 4.00 MiB
> [    1.819586] TYPE#0x23, BYTE0#0x7a00, BYTE1#0xc10000
> [    1.849570] TYPE#0x23, BYTE0#0x2000, BYTE1#0x200000
> [    1.879569] TYPE#0x23, BYTE0#0x2100, BYTE1#0xe00000
> [    1.909580] TYPE#0x23, BYTE0#0x2200, BYTE1#0x130000
> [    1.939569] TYPE#0x23, BYTE0#0x2300, BYTE1#0x280000
> [    1.969569] TYPE#0x23, BYTE0#0x2400, BYTE1#0x300000
> [    1.999569] TYPE#0x23, BYTE0#0x2500, BYTE1#0x280000
> [    2.029569] TYPE#0x23, BYTE0#0x2600, BYTE1#0x0
> [    2.059569] TYPE#0x23, BYTE0#0x2700, BYTE1#0xd0000
> [    2.089598] TYPE#0x23, BYTE0#0x2800, BYTE1#0x30000
> [    2.119579] TYPE#0x23, BYTE0#0x2900, BYTE1#0x1d0000
> [    2.149569] TYPE#0x23, BYTE0#0x3400, BYTE1#0x800000
> [    2.179569] TYPE#0x23, BYTE0#0x3600, BYTE1#0x280000
> [    2.209569] TYPE#0x23, BYTE0#0xb500, BYTE1#0xa00000
> [    2.239569] TYPE#0x23, BYTE0#0x5c00, BYTE1#0xff0000
> [    2.269569] TYPE#0x23, BYTE0#0x2a00, BYTE1#0x10000
> [    2.299569] TYPE#0x23, BYTE0#0x5600, BYTE1#0x920000
> [    2.329578] TYPE#0x23, BYTE0#0x6b00, BYTE1#0x710000
> [    2.359569] TYPE#0x23, BYTE0#0x6900, BYTE1#0x2b0000
> [    2.389569] TYPE#0x23, BYTE0#0x1000, BYTE1#0x400000
> [    2.419569] TYPE#0x23, BYTE0#0x1100, BYTE1#0x980000
> [    2.449569] TYPE#0x23, BYTE0#0xb600, BYTE1#0x200000
> [    2.479569] TYPE#0x23, BYTE0#0x5100, BYTE1#0x200000
> [    2.509569] TYPE#0x23, BYTE0#0x900, BYTE1#0x100000
> [    2.679570] TYPE#0x5, BYTE0#0x2900, BYTE1#0x940000
> [    2.767213] Console: switching to colour frame buffer device 100x30
> [    3.144604] sun4i-drm display-engine: fb0: sun4i-drmdrmfb frame buffer device
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CAMty3ZBUrGEi%2Be62sFe7GkXinK3q076sGLwpEVz67qeoV%2B1ZeA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
