Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C318C81094
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 05:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SfkcWOFA33zvjwqhkF8A7h2NrK8SfDv1/fKZhYqImU=; b=IBQALv2Ir0GgUs
	LMlrx/5aTamAKwDhC9afFLcxIIe0xp+Z9wPO8F/vzbRql/4hWG6wFHIPhbMo+Eex3/u8C+7VQXxJq
	lIb/+3y9Hj2DO4C2xRzwDpBLy6p19Rg0SwcwLAIhoYxiIRy5T6tpteF4bI3MFshscRfmcD31Plc5x
	7GRjViRnOPdLzarZjs8ndDWMzI9c/u3Pc7ZMDAbYF5B84OqNA3zvW5Rrz/4+72eWr+l6TqgaxvRs3
	cqYb3KNgvcCPtI4lnKCyMqx7noRMZ3jPcYCKG4ps9kLNdi1N0CjWZeh3P5Wm6kqylHHPrGigAZVLR
	TnlSu4kghIQ4ZtBCkhLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huTnr-000877-Mq; Mon, 05 Aug 2019 03:36:55 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huTnh-00086g-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 03:36:46 +0000
Received: by mail-io1-xd41.google.com with SMTP id g20so164367442ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 20:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pcbyKLsQIg4Rsr0vub4ExOMjS5ylHDKCL4fjaV6rcWo=;
 b=Z3CkK3ohO9GZHGb2IDpKpfzz5eyy/HdDj6jYd2DG2zGaUAwqmlF5gIyy+1TKrzzUKX
 s363bzYfTyZ2tchkpGkAu/KIWAf4bfG5ByapUquNksQl3/t1O3MZKodwy/IvEEiQfotu
 zn3H4dkHBu8gXpHu/0lz6hn2i5MTtPVj/0YJiMTrRbfM9gOgLjn4pfvlRmbI9BkDALeb
 /4a7oFVNrolFDcE9k/lIhjLALTwKnQvhRR7aUvi+Q057/HcyAjpOzvk0pYC1jWBXQBWF
 7Xr/gwDuuAU/EScWjdFo1uLja2V9255AciRt+Va1Y0mOzcYg1rH1AEGX+zHhC1ggqAX7
 tomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pcbyKLsQIg4Rsr0vub4ExOMjS5ylHDKCL4fjaV6rcWo=;
 b=js9C1fj2ZQSool1iwljSZy0UFdCifI5rquM+vrThg+szXjd6FXFl2Pko2z3oc+dM3l
 tiwmIeW+umuZcjG7S7Tgq7Pd7qw0nDag1u3gHPlpbjpzh8fVc7YDJ9NlH2IlzJ4Bq7Jn
 GWfJZ0RkRXlythrt6MaVUzXLRwKe2fR0S3uaGnTnA6Ij+coDu4QQxY8SrdE13koqBqKg
 cywipdJZF6eMtCQ1Pmxl42qrDS/wkaE5GFXpoN9q+msq/VEYFArotSL7xZFLkOH2PZcJ
 Pj5ZS0dehIPINhuPkxT8Ba/BgWVie0bxEb78/AR08bugOnbyE9goZ2BooKoHAC1nC6oQ
 QhNQ==
X-Gm-Message-State: APjAAAWg8KlTKaCzlkic0LzoWsPYrrhC9PrG/q0pwLkzOutTqpZa42zL
 9dmENBCeojFroiqKLs+gBzJ0IDpQiTlSLn/i6yU=
X-Google-Smtp-Source: APXvYqxsU46Tq3pWH6yjG3uXM16AduF6Od2sRPr6n+HenkfrYtujNbUFRcLs7i9fjwtd/UyrreGmcLJDcc35trv4NFo=
X-Received: by 2002:a5d:9711:: with SMTP id h17mr64257105iol.280.1564976203442; 
 Sun, 04 Aug 2019 20:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
 <20190803135048.GL8870@X250.getinternet.no>
In-Reply-To: <20190803135048.GL8870@X250.getinternet.no>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 5 Aug 2019 11:27:20 +0800
Message-ID: <CAA+hA=TVv8m2GZr0W-u+S6XzJUCYrFDF95iyUGyAsbYMwatyZg@mail.gmail.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_203645_302042_58C4CFB9 
X-CRM114-Status: GOOD (  28.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, sboyd@kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 11:45 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Jul 16, 2019 at 11:00:56PM +0800, Dong Aisheng wrote:
> > MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
> > in different subsystems across CPUs and also vary a bit on the availability.
> >
> > Same as SCU clock, we want to move the clock definition into device tree
> > which can fully decouple the dependency of Clock ID definition from device
> > tree and make us be able to write a fully generic lpcg clock driver.
> >
> > And we can also use the existence of clock nodes in device tree to address
> > the device and clock availability differences across different SoCs.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <kernel@pengutronix.de>
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> > ChangeLog:
> > v2->v3:
> >  * no changes
> > v1->v2:
> >  * Update example
> >  * Add power domain property
> > ---
> >  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34 ++++++++++++++++++----
> >  1 file changed, 28 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> > index 965cfa4..6fc2fd8 100644
> > --- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> > +++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> > @@ -11,6 +11,21 @@ enabled by these control bits, it might still not be running based
> >  on the base resource.
> >
> >  Required properties:
> > +- compatible:                Should be one of:
> > +                       "fsl,imx8qxp-lpcg"
> > +                       "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> > +- reg:                       Address and length of the register set.
> > +- #clock-cells:              Should be 1. One LPCG supports multiple clocks.
> > +- clocks:            Input parent clocks phandle array for each clock.
> > +- bit-offset:                An integer array indicating the bit offset for each clock.
>
> I guess that the driver should be able to figure bit offset from
> 'clock-indices' property.
>

Yes, it can be done in theory.
Then the binding may look like:
sdhc0_lpcg: clock-controller@5b200000 {
        ...
        #clock-cells = <1>;
        clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
                 <&conn_ipg_clk>, <&conn_axi_clk>;
        clock-indices = <0>, <16>, <20>;
        clock-output-names = "sdhc0_lpcg_per_clk",
                             "sdhc0_lpcg_ipg_clk",
                             "sdhc0_lpcg_ahb_clk";
        power-domains = <&pd IMX_SC_R_SDHC_0>;
};

usdhc1: mmc@5b010000 {
        ...
        clocks = <&sdhc0_lpcg 16>,
                 <&sdhc0_lpcg 0>,
                 <&sdhc0_lpcg 20>;
        clock-names = "ipg", "per", "ahb";
};

However, after trying, i found  one limitation if using clock-indices
that users have to do a secondary search for the indices value from clock names
which is not very friendly.

Formerly from the clock output names, user can easily get the clock
index as they're
in fixed orders as output names, so very easily to use.
e.g.
clocks = <&sdhc0_lpcg 1>,
         <&sdhc0_lpcg 0>,
         <&sdhc0_lpcg 2>;

If using clock-indices, users have no way to know it's clock index
from clock output names order
unless they do a secondary search from the clock-indice array accordingly.
For example, for "sdhc0_lpcg_ahb_clk", user can easily know its
reference is <&sdhc0_lpcg 2>.
But if using clock-indice, we need search clock-indices array to find
its reference
becomes <&sdhc0_lpcg 20>. So this seems like a drawback if using clock-indices.

Therefore, personally i'm still a bit intend to the original way which
is more simple and
straightforward from user point of view, unless there's a strong
objections on define another
vendor private property.

Shawn,
How do you think?
Should we enforce the complexity to users?

> > +- hw-autogate:               Boolean array indicating whether supports HW autogate for
> > +                     each clock.
>
> Not sure why it needs to be a property in DT.  Or asking it different
> way, when it should be true and when false?
>

It is one LPCG feature.
For some specific device LPCGs, it may support clock auto gating. (depends on
IP's capability. e.g. uSDHC).
So we define this feature in DT as well in case if user may want to
use it in the future.

But AFAIK, there's still no one using it. Most drivers reply on runtime PM to do
clock management. Did not use LPCG auto gate off feature.
But the current LPCG driver API does support this parameter.

If you think it's unnecessary to define it in DT as there're still no
users, i can remove it
and disabling autogate in driver by default.

Regards
Aisheng

> Shawn
>
> > +- clock-output-names:        Shall be the corresponding names of the outputs.
> > +                     NOTE this property must be specified in the same order
> > +                     as the clock bit-offset and hw-autogate property.
> > +- power-domains:     Should contain the power domain used by this clock.
> > +
> > +Legacy binding (DEPRECATED):
> >  - compatible:        Should be one of:
> >                 "fsl,imx8qxp-lpcg-adma",
> >                 "fsl,imx8qxp-lpcg-conn",
> > @@ -33,10 +48,17 @@ Examples:
> >
> >  #include <dt-bindings/clock/imx8qxp-clock.h>
> >
> > -conn_lpcg: clock-controller@5b200000 {
> > -     compatible = "fsl,imx8qxp-lpcg-conn";
> > -     reg = <0x5b200000 0xb0000>;
> > +sdhc0_lpcg: clock-controller@5b200000 {
> > +     compatible = "fsl,imx8qxp-lpcg";
> > +     reg = <0x5b200000 0x10000>;
> >       #clock-cells = <1>;
> > +     clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
> > +              <&conn_ipg_clk>, <&conn_axi_clk>;
> > +     bit-offset = <0 16 20>;
> > +     clock-output-names = "sdhc0_lpcg_per_clk",
> > +                          "sdhc0_lpcg_ipg_clk",
> > +                          "sdhc0_lpcg_ahb_clk";
> > +     power-domains = <&pd IMX_SC_R_SDHC_0>;
> >  };
> >
> >  usdhc1: mmc@5b010000 {
> > @@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
> >       interrupt-parent = <&gic>;
> >       interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
> >       reg = <0x5b010000 0x10000>;
> > -     clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
> > -              <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
> > -              <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
> > +     clocks = <&sdhc0_lpcg 1>,
> > +              <&sdhc0_lpcg 0>,
> > +              <&sdhc0_lpcg 2>;
> >       clock-names = "ipg", "per", "ahb";
> >  };
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
