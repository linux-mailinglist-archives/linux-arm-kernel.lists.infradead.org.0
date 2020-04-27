Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0A71B9F6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bO7pmJUm/VmFadLcyikmJRWj8ZEHE5s067gIiH0y1OM=; b=kcXgy1sGzsCFIg
	pQr6ASNrtVHCs0Gqkr7d7f/tCzheo+W4Osyb6UVBD4xY041PKph6vjHuNoo6teh/OoRI9n1KbjLMg
	5HFe0OaB4iZZhUHElAR9D+TjlhgHaNmVu/OVrN7Nc6ZSpqFsJVmfcGBmTRSJeMG6g6PA57FEmxcxR
	imqgy43RsIoasPyjD/rJk8ic1fDBUsABpOQ8/a7qKuu6i4wvT5roWjrFbaPv53CTO2/Pk9RXJrS13
	Mt7doIwcVaptFTtrmwPLmnCtkC7ebkyutmsZlcTHpQryWjHFEWQXyyBOXCsLmdl1xLvM5mOWkYcQ6
	cann3zkPbocIaFx9maZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzmw-00007o-Ec; Mon, 27 Apr 2020 09:10:54 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzmm-00006n-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:10:46 +0000
Received: by mail-ot1-f67.google.com with SMTP id z17so25010486oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:10:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qcNlgT253Q+mnyb0dmPBeKwZupVLUVCEsXLGGQlN7mU=;
 b=aFv3ujDYUeRMF1ReNHYrCqFg88TgEeaxWEVGkIkunJI8HHWDY/zj+V8Ifld5uuKSJr
 KK3YmQQWf/x17MgAyTJxSE7a/+7ibC2v/ReSUeLqsEU5/inxK/VUvLggkPC6r3gvbMLM
 4HBt6RMIR2StEbes5oy3gimeMHOZgTlwCSDEzRYAdFQwX+XzrmH1s8JwxSXegTAV9TNh
 zeNMPSPEx8yphMyqL9JUyLRM4uYlyjny5qQmlj6bSEvKNAQvPR4eLMXrGH5OqnPRgfXM
 qLa1MDSF0HZR7Puu36cY96s2skODh2m1H56TQn49uF6z8weNPiWQqioqJAb4iBzYEAaI
 bC2g==
X-Gm-Message-State: AGi0PubsZYijuOwxLjd7bETgw2GHfDB0mk61UFyqkybB8Lj7ijXsTfAJ
 c+zdbjkLHNyJ+3CGdjtcRgDr7vcLLGpMgOmL+4U=
X-Google-Smtp-Source: APiQypKw19uX7pNh+s25tQlcVi6u/qoBo4l+PDXl+dtgYprl6i34GYCNk/rsJvOcHawKKsX52BSbZ5FC/bbkN04OYi4=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr11539338otm.145.1587978640642; 
 Mon, 27 Apr 2020 02:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 11:10:29 +0200
Message-ID: <CAMuHMdUmj+m8WLaSfwELD0VGYFpDaACTLgerbznBeqfVVy2nzw@mail.gmail.com>
Subject: Re: [PATCH 08/10] clk: renesas: cpg-mssr: Add R8A7742 support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021044_813183_AACDAA06 
X-CRM114-Status: GOOD (  17.02  )
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
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add RZ/G1H (R8A7742) Clock Pulse Generator / Module Standby and Software
> Reset support, using the CPG/MSSR driver core and the common R-Car Gen2
> (and RZ/G) code.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/clk/renesas/r8a7742-cpg-mssr.c

> +static struct cpg_core_clk r8a7742_core_clks[] __initdata = {
> +       /* External Clock Inputs */
> +       DEF_INPUT("extal",      CLK_EXTAL),
> +       DEF_INPUT("usb_extal",  CLK_USB_EXTAL),
> +
> +       /* Internal Core Clocks */
> +       DEF_BASE(".main",       CLK_MAIN, CLK_TYPE_GEN2_MAIN, CLK_EXTAL),
> +       DEF_BASE(".pll0",       CLK_PLL0, CLK_TYPE_GEN2_PLL0, CLK_MAIN),
> +       DEF_BASE(".pll1",       CLK_PLL1, CLK_TYPE_GEN2_PLL1, CLK_MAIN),
> +       DEF_BASE(".pll3",       CLK_PLL3, CLK_TYPE_GEN2_PLL3, CLK_MAIN),
> +
> +       DEF_FIXED(".pll1_div2", CLK_PLL1_DIV2, CLK_PLL1, 2, 1),
> +
> +       /* Core Clock Outputs */
> +       DEF_BASE("z",    R8A7742_CLK_Z,    CLK_TYPE_GEN2_Z,     CLK_PLL0),
> +       DEF_BASE("sdh",  R8A7742_CLK_SDH,  CLK_TYPE_GEN2_SDH,   CLK_PLL1),
> +       DEF_BASE("sd0",  R8A7742_CLK_SD0,  CLK_TYPE_GEN2_SD0,   CLK_PLL1),
> +       DEF_BASE("sd1",  R8A7742_CLK_SD1,  CLK_TYPE_GEN2_SD1,   CLK_PLL1),
> +       DEF_BASE("qspi", R8A7742_CLK_QSPI, CLK_TYPE_GEN2_QSPI,  CLK_PLL1_DIV2),
> +       DEF_BASE("rcan", R8A7742_CLK_RCAN, CLK_TYPE_GEN2_RCAN,  CLK_USB_EXTAL),
> +
> +       DEF_FIXED("z2",    R8A7742_CLK_Z2,      CLK_PLL1,           2, 1),
> +       DEF_FIXED("zg",    R8A7742_CLK_ZG,      CLK_PLL1,           3, 1),
> +       DEF_FIXED("zt",    R8A7742_CLK_ZT,      CLK_PLL1,           5, 1),
> +       DEF_FIXED("ztr",   R8A7742_CLK_ZTR,     CLK_PLL1,           4, 1),
> +       DEF_FIXED("ztrd2", R8A7742_CLK_ZTRD2,   CLK_PLL1,           12, 1),

The ZT* clocks are not fixed-factor clocks, but use programmable
dividers in FRQCRB.
So either you implement them correctly, or you drop them, like we did
for the other R-Car Gen2 and RZ/G1 SoCs (there are no users yet).

> +       DEF_FIXED("zx",    R8A7742_CLK_ZX,      CLK_PLL1,           3, 1),
> +       DEF_FIXED("zs",    R8A7742_CLK_ZS,      CLK_PLL1,           6, 1),
> +       DEF_FIXED("hp",    R8A7742_CLK_HP,      CLK_PLL1,          12, 1),
> +       DEF_FIXED("b",     R8A7742_CLK_B,       CLK_PLL1,          12, 1),
> +       DEF_FIXED("lb",    R8A7742_CLK_LB,      CLK_PLL1,          24, 1),

Please use CLK_TYPE_GEN2_LB, as the LB divider depends on the state of
mode pin MD18.

> +       DEF_FIXED("p",     R8A7742_CLK_P,       CLK_PLL1,          24, 1),
> +       DEF_FIXED("cl",    R8A7742_CLK_CL,      CLK_PLL1,          48, 1),
> +       DEF_FIXED("m2",    R8A7742_CLK_M2,      CLK_PLL1,           8, 1),
> +       DEF_FIXED("zb3",   R8A7742_CLK_ZB3,     CLK_PLL3,           4, 1),
> +       DEF_FIXED("zb3d2", R8A7742_CLK_ZB3D2,   CLK_PLL3,           8, 1),
> +       DEF_FIXED("ddr",   R8A7742_CLK_DDR,     CLK_PLL3,           8, 1),
> +       DEF_FIXED("mp",    R8A7742_CLK_MP,      CLK_PLL1_DIV2,     15, 1),
> +       DEF_FIXED("cp",    R8A7742_CLK_CP,      CLK_EXTAL,          2, 1),
> +       DEF_FIXED("r",     R8A7742_CLK_R,       CLK_PLL1,       49152, 1),
> +       DEF_FIXED("osc",   R8A7742_CLK_OSC,     CLK_PLL1,       12288, 1),
> +
> +       DEF_DIV6P1("sd2",  R8A7742_CLK_SD2,     CLK_PLL1_DIV2,  0x078),
> +       DEF_DIV6P1("sd3",  R8A7742_CLK_SD3,     CLK_PLL1_DIV2,  0x26c),
> +       DEF_DIV6P1("mmc0", R8A7742_CLK_MMC0,    CLK_PLL1_DIV2,  0x240),
> +       DEF_DIV6P1("mmc1", R8A7742_CLK_MMC1,    CLK_PLL1_DIV2,  0x244),
> +};
> +
> +static const struct mssr_mod_clk r8a7742_mod_clks[] __initconst = {
> +       DEF_MOD("msiof0",                  0,   R8A7742_CLK_MP),
> +       DEF_MOD("vcp1",                  100,   R8A7742_CLK_ZS),
> +       DEF_MOD("vcp0",                  101,   R8A7742_CLK_ZS),
> +       DEF_MOD("vpc1",                  102,   R8A7742_CLK_ZS),
> +       DEF_MOD("vpc0",                  103,   R8A7742_CLK_ZS),
> +       DEF_MOD("tmu1",                  111,   R8A7742_CLK_P),
> +       DEF_MOD("3dg",                   112,   R8A7742_CLK_ZG),
> +       DEF_MOD("2d-dmac",               115,   R8A7742_CLK_ZS),
> +       DEF_MOD("fdp1-2",                117,   R8A7742_CLK_ZS),
> +       DEF_MOD("fdp1-1",                118,   R8A7742_CLK_ZS),
> +       DEF_MOD("fdp1-0",                119,   R8A7742_CLK_ZS),
> +       DEF_MOD("tmu3",                  121,   R8A7742_CLK_P),
> +       DEF_MOD("tmu2",                  122,   R8A7742_CLK_P),
> +       DEF_MOD("cmt0",                  124,   R8A7742_CLK_R),
> +       DEF_MOD("tmu0",                  125,   R8A7742_CLK_CP),
> +       DEF_MOD("vsp1du1",               127,   R8A7742_CLK_ZS),
> +       DEF_MOD("vsp1du0",               128,   R8A7742_CLK_ZS),
> +       DEF_MOD("vsp1-sy",               131,   R8A7742_CLK_ZS),
> +       DEF_MOD("scifa2",                202,   R8A7742_CLK_MP),
> +       DEF_MOD("scifa1",                203,   R8A7742_CLK_MP),
> +       DEF_MOD("scifa0",                204,   R8A7742_CLK_MP),
> +       DEF_MOD("msiof2",                205,   R8A7742_CLK_MP),
> +       DEF_MOD("scifb0",                206,   R8A7742_CLK_MP),
> +       DEF_MOD("scifb1",                207,   R8A7742_CLK_MP),
> +       DEF_MOD("msiof1",                208,   R8A7742_CLK_MP),
> +       DEF_MOD("msiof3",                215,   R8A7742_CLK_MP),
> +       DEF_MOD("scifb2",                216,   R8A7742_CLK_MP),
> +       DEF_MOD("sys-dmac1",             218,   R8A7742_CLK_ZS),
> +       DEF_MOD("sys-dmac0",             219,   R8A7742_CLK_ZS),
> +       DEF_MOD("iic2",                  300,   R8A7742_CLK_CP),

Parent should be R8A7742_CLK_HP.

> +       DEF_MOD("tpu0",                  304,   R8A7742_CLK_CP),
> +       DEF_MOD("mmcif1",                305,   R8A7742_CLK_MMC1),
> +       DEF_MOD("scif2",                 310,   R8A7742_CLK_CP),

Parent should be R8A7742_CLK_P.

> +       DEF_MOD("sdhi3",                 311,   R8A7742_CLK_SD3),
> +       DEF_MOD("sdhi2",                 312,   R8A7742_CLK_SD2),
> +       DEF_MOD("sdhi1",                 313,   R8A7742_CLK_SD2),

Parent should be R8A7742_CLK_SD1.

> +static int __init r8a7742_cpg_mssr_init(struct device *dev)
> +{
> +       const struct rcar_gen2_cpg_pll_config *cpg_pll_config;
> +       struct device_node *np = dev->of_node;
> +       unsigned int i;
> +       u32 cpg_mode;
> +       int error;
> +
> +       error = rcar_rst_read_mode_pins(&cpg_mode);
> +       if (error)
> +               return error;
> +
> +       cpg_pll_config = &cpg_pll_configs[CPG_PLL_CONFIG_INDEX(cpg_mode)];
> +
> +       if (of_device_is_compatible(np, "renesas,r8a7742-cpg-mssr")) {
> +               /* RZ/G1H uses a 1/3 divider for ZG */
> +               for (i = 0; i < ARRAY_SIZE(r8a7742_core_clks); i++)
> +                       if (r8a7742_core_clks[i].id == R8A7742_CLK_ZG) {
> +                               r8a7742_core_clks[i].div = 3;
> +                               break;
> +                       }
> +       }

Do you really need this part? (copied from r8a7743-cpg-mssr.c ;-)
If you remove it, r8a7742_core_clks[] can be const, and <linux/of.h> is
no longer needed,

> +       return rcar_gen2_cpg_init(cpg_pll_config, 2, cpg_mode);
> +}

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
