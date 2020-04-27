Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD9F1BA0ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHtYJ2/UdsmcHp0O+UVIgjsjoRc9p966SGwvfLHsrOY=; b=Xty3M9TJJNqoA/
	6WomWXoLOwnXmlJvCs99/bkTOZWYumkJpLqNiWUXtuh/Nd5amXjoXMH9whsbpwQfsLvehqMUJmR9N
	EuOanv5B9JGWPMKDMpAh3/7AchYEYPb6jg4LarHL5D9bho+1dLGDV3RseBhnJlx8Mua52y3InrSuB
	ueGEuSi0+NQoXtId0XXaPBQZ454abkDZPCAipnNG3Lt9aUEvoGIsvDGVS0GUrv3jhvy0eR75QH3n4
	WX4FNxWC++gufDsZqqmtnpNXSKUDwwST8WtM8CZXpN1j/v33K6xeUX7LU/+xR7t/f2YtQyBPSUR2s
	vp4uaVUg1l1KSZiUXWRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0r2-0001my-E1; Mon, 27 Apr 2020 10:19:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0qs-0001m0-56
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:19:03 +0000
Received: by mail-ot1-f67.google.com with SMTP id g19so25203860otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 03:19:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q/ranIBWOXV+r1vGh7d3Ut57KQGbxJBp56NZiYevesc=;
 b=Is+vq7ue9yoMR5DD06WoKwwanT4KZBm5WmPGwCP/r8Nr4+pgw30dVJDVKzjm2BttQw
 4xdjgrE3oPYMtytzsqAD+wCtBCQ7w3Uq3JYwOzXU0lXcNmAlwZg4xD/iLgLp94onUeTE
 0OGDd3YVNO4ddfIG1g1qpJuFSXzxmejGhBcXNrBBzKh7kS+wQ8hDLmW1Equ7ujSfToge
 w+sRZs/jPz8x+wfaumsespRM31+jlcdxwJ+6S20XvUprNvSdfDB71Xw7jKCv5idHAfPa
 wJ94iB1+/UQ31jS8nDtJsdpqSw728s0XkwUebvmwxlXazpGGUNAtIeuqvNGNseJVUPTm
 zKkg==
X-Gm-Message-State: AGi0PuaznvSs4ptv9qzNplf29Q8XA15sjib1hukrePw3FjM/XxaNDcbf
 P+MWz+ztH01LpKunDB+DTvdBsRhmrl8jbsEcWgU=
X-Google-Smtp-Source: APiQypLL/90KXHP4+lnbdlxks4rEa4T5zKfZNHUlLZcWix+pIRFzwlLNsl3kVuOJ8sLeCNhHBWF42/Nz02oQnLqOfXY=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr15376635oig.54.1587982741263; 
 Mon, 27 Apr 2020 03:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdUmj+m8WLaSfwELD0VGYFpDaACTLgerbznBeqfVVy2nzw@mail.gmail.com>
 <CA+V-a8s6RacEpZ+Z5M8ftKq9NGsVgizdBY137YiYuK_yg-Ozxg@mail.gmail.com>
In-Reply-To: <CA+V-a8s6RacEpZ+Z5M8ftKq9NGsVgizdBY137YiYuK_yg-Ozxg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 12:18:50 +0200
Message-ID: <CAMuHMdVrft9Ln=DSKv2hrVcZBuOo9fvbvD_s0JDo0xUQAoG=tQ@mail.gmail.com>
Subject: Re: [PATCH 08/10] clk: renesas: cpg-mssr: Add R8A7742 support
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_031902_192765_601C7EFA 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Apr 27, 2020 at 12:07 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
> On Mon, Apr 27, 2020 at 10:10 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > > Add RZ/G1H (R8A7742) Clock Pulse Generator / Module Standby and Software
> > > Reset support, using the CPG/MSSR driver core and the common R-Car Gen2
> > > (and RZ/G) code.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- /dev/null
> > > +++ b/drivers/clk/renesas/r8a7742-cpg-mssr.c
> >
> > > +static struct cpg_core_clk r8a7742_core_clks[] __initdata = {

> > > +       DEF_FIXED("zg",    R8A7742_CLK_ZG,      CLK_PLL1,           3, 1),

> > > +static int __init r8a7742_cpg_mssr_init(struct device *dev)
> > > +{
> > > +       const struct rcar_gen2_cpg_pll_config *cpg_pll_config;
> > > +       struct device_node *np = dev->of_node;
> > > +       unsigned int i;
> > > +       u32 cpg_mode;
> > > +       int error;
> > > +
> > > +       error = rcar_rst_read_mode_pins(&cpg_mode);
> > > +       if (error)
> > > +               return error;
> > > +
> > > +       cpg_pll_config = &cpg_pll_configs[CPG_PLL_CONFIG_INDEX(cpg_mode)];
> > > +
> > > +       if (of_device_is_compatible(np, "renesas,r8a7742-cpg-mssr")) {
> > > +               /* RZ/G1H uses a 1/3 divider for ZG */
> > > +               for (i = 0; i < ARRAY_SIZE(r8a7742_core_clks); i++)
> > > +                       if (r8a7742_core_clks[i].id == R8A7742_CLK_ZG) {
> > > +                               r8a7742_core_clks[i].div = 3;
> > > +                               break;
> > > +                       }
> > > +       }
> >
> > Do you really need this part? (copied from r8a7743-cpg-mssr.c ;-)
> > If you remove it, r8a7742_core_clks[] can be const, and <linux/of.h> is
> > no longer needed,
> >
> I haven't come far enough to test the GPU yet, so Ill drop this for
> now and add this later if needed.

The divider is already set to 3 in the table above.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
