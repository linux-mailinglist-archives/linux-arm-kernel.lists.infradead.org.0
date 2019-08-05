Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85F2810A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 05:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7h3yWdNHu802/hSv5rZpzSjFQkpo8WDbsiCyc/UCQ6s=; b=ar7nQZdU93uSHN
	ijiUhVl49R1rsbNGZfj6ATuDiqKZx0nlNGAGmlCfWA53dCpcE5c1wMaeeBmq2AUBacnxrnRpW2k78
	rGsnh6G3XH0G/+CwpTJUgQLThKCKCelcZX+uEjXNRTYaEXhZdUIycHwmzidBSL6f02BEx/eMjUMLf
	fDVE/f+V51qx591MCB6W0dPYYvDDPEDFHigUed6fsuoYyEHmfPf6eBPYCE+nAr54FIr7Ftwd2npKA
	5/80MpWRVG2K9O150aBx8OeByYRPK/7NFSELtr8YibTebocD670i+IoiMti5giqlbvPSDbtuz62UN
	CjlJdwL057UBnIEct2rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huU8N-0005Pb-DN; Mon, 05 Aug 2019 03:58:07 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huU8C-0005P9-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 03:57:58 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so23284129iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 20:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qz/MoLLlSkJY20V2cyugR1tHjtS6GkFWnF+GIM8vIoQ=;
 b=eoOV7bRDx1Xa45V4Rk0VtDZ3ojxBFIYnD8EChRIuDnwItBqJexTK8HzjTQA46modBJ
 LT1YLFR4COFqZhBD7kyA1GNDpas9w6xhyE1FojDA6YLTBVDxH1b/NVn96+NYAyG4eEDT
 mvDyJUgMlcvsPI44AdAEwybXJENG+gQ7JqziEet3+uB97Lof1DQsWIlWwP0vQ9bAsnso
 R/ac5cCDrmM7xKgV8sXatt/YCXx4885ZORtkBLUw52Sivei+3FLWy4MEcltQBf/Yw7uX
 NIAXO1mq/yJ5Q0nJVBIpSb73q7XM/ADtv92OTXA/J7NqXS/i1APu0R/lm7eCIldBS+Ox
 666Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qz/MoLLlSkJY20V2cyugR1tHjtS6GkFWnF+GIM8vIoQ=;
 b=UI2p4olaWcpwbXi/ZQ8FEdWZLuRTfEW70qhLFN3WVbg6ORjKP0L5N6xpuZEKpJndPJ
 o504gIuMhvmAXsiYAEZXFcFbEwM2KKx0168v7egHTo/YT9pLTXpHUdNrSxH1eaOyNqCH
 nVNIO6mpiUKcUqZai0mY8WygJKk0aibJBsVeJ+AUSO8YzdfRDj+UB1Qo5/RLhxUasamA
 F953o4sVI4dQw7uV4njevAPFqWI6gfkRKwOd12pVsC42FeRIA05YW0xDuyT2yrnONxTq
 jn/bCDrwFxITfOZni2OQJnx1B6ASLe326g5FT8L4Ph7Pm1/2PQWnTXdwprlKsupVExeF
 b+DQ==
X-Gm-Message-State: APjAAAWa5eQ4oGrlPa3Ghda9/KeGb2jCcBZK0loN74QoZQ9QsRkVm+R8
 W+NqvA/WtZGN0M3ed/qz32IlvrwzSxTaUISq+K0=
X-Google-Smtp-Source: APXvYqzlM/sygSpqZQGNaTUEGA8/jEOI8rTtvIJVlIDP3rywY3YdmWrdQiAPauDVhJkcDbizxVMfAuyU7h5BF9UXLpM=
X-Received: by 2002:a6b:bf01:: with SMTP id p1mr9943054iof.181.1564977473126; 
 Sun, 04 Aug 2019 20:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-2-git-send-email-aisheng.dong@nxp.com>
 <20190803144246.GM8870@X250.getinternet.no>
In-Reply-To: <20190803144246.GM8870@X250.getinternet.no>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 5 Aug 2019 11:48:29 +0800
Message-ID: <CAA+hA=Sm0MAHNwH1sZQfK8cO+3jLkue97u=ceFiUv34+qGos1Q@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_205756_740042_8CE57AAF 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Sun, Aug 4, 2019 at 11:49 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Jul 16, 2019 at 11:00:55PM +0800, Dong Aisheng wrote:
> > There's a few limitations on the original one cell clock binding
> > (#clock-cells = <1>) that we have to define some SW clock IDs for device
> > tree to reference. This may cause troubles if we want to use common
> > clock IDs for multi platforms support when the clock of those platforms
> > are mostly the same.
> > e.g. Current clock IDs name are defined with SS prefix.
> >
> > However the device may reside in different SS across CPUs, that means the
> > SS prefix may not valid anymore for a new SoC. Furthermore, the device
> > availability of those clocks may also vary a bit.
> >
> > For such situation, we want to eliminate the using of SW Clock IDs and
> > change to use a more close to HW one instead.
> > For SCU clocks usage, only two params required: Resource id + Clock Type.
>
> If this is how SCU firmware addresses the clock, I agree that it's worth
> witching to this new bindings, which describes the hardware (SCU
> firmware in this case) better, IMO.
>
> > Both parameters are platform independent. So we could use two cells binding
> > to pass those parameters,
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
> >  * Changed to two cells binding and register all clocks in driver
> >    instead of parse from device tree.
> > v1->v2:
> >  * changed to one cell binding inspired by arm,scpi.txt
> >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> >    Resource ID is encoded in 'reg' property.
> >    Clock type is encoded in generic clock-indices property.
> >    Then we don't have to search all the DT nodes to fetch
> >    those two value to construct clocks which is relatively
> >    low efficiency.
> >  * Add required power-domain property as well.
> > ---
> >  .../devicetree/bindings/arm/freescale/fsl,scu.txt       | 12 +++++++-----
> >  include/dt-bindings/firmware/imx/rsrc.h                 | 17 +++++++++++++++++
> >  2 files changed, 24 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index 5d7dbab..351d335 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -89,7 +89,10 @@ Required properties:
> >                         "fsl,imx8qm-clock"
> >                         "fsl,imx8qxp-clock"
> >                       followed by "fsl,scu-clk"
> > -- #clock-cells:              Should be 1. Contains the Clock ID value.
> > +- #clock-cells:              Should be either
> > +                     2: Contains the Resource and Clock ID value.
> > +                     or
> > +                     1: Contains the Clock ID value. (DEPRECATED)
> >  - clocks:            List of clock specifiers, must contain an entry for
> >                       each required entry in clock-names
> >  - clock-names:               Should include entries "xtal_32KHz", "xtal_24MHz"
> > @@ -162,7 +165,7 @@ firmware {
> >
> >               clk: clk {
> >                       compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
> > -                     #clock-cells = <1>;
> > +                     #clock-cells = <2>;
> >               };
> >
> >               iomuxc {
> > @@ -192,8 +195,7 @@ serial@5a060000 {
> >       ...
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&pinctrl_lpuart0>;
> > -     clocks = <&clk IMX8QXP_UART0_CLK>,
> > -              <&clk IMX8QXP_UART0_IPG_CLK>;
> > -     clock-names = "per", "ipg";
> > +     clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
> > +     clock-names = "ipg";
> >       power-domains = <&pd IMX_SC_R_UART_0>;
> >  };
> > diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
> > index 4e61f64..fbeaca7 100644
> > --- a/include/dt-bindings/firmware/imx/rsrc.h
> > +++ b/include/dt-bindings/firmware/imx/rsrc.h
> > @@ -547,4 +547,21 @@
> >  #define IMX_SC_R_ATTESTATION         545
> >  #define IMX_SC_R_LAST                        546
> >
> > +/*
> > + * Defines for SC PM CLK
> > + */
> > +#define IMX_SC_PM_CLK_SLV_BUS                0       /* Slave bus clock */
> > +#define IMX_SC_PM_CLK_MST_BUS                1       /* Master bus clock */
> > +#define IMX_SC_PM_CLK_PER            2       /* Peripheral clock */
> > +#define IMX_SC_PM_CLK_PHY            3       /* Phy clock */
> > +#define IMX_SC_PM_CLK_MISC           4       /* Misc clock */

This is for typical device resource.

> > +#define IMX_SC_PM_CLK_MISC0          0       /* Misc 0 clock */
> > +#define IMX_SC_PM_CLK_MISC1          1       /* Misc 1 clock */
> > +#define IMX_SC_PM_CLK_MISC2          2       /* Misc 2 clock */
> > +#define IMX_SC_PM_CLK_MISC3          3       /* Misc 3 clock */
> > +#define IMX_SC_PM_CLK_MISC4          4       /* Misc 4 clock */

This is for some special clock types which do not belong to above
normal clock types.
Used very rare in SCU firmware.
e.g.
enet0_mac0_rxclk SC_R_ENE T_0 / SC_PM_CL K_MISC0

> > +#define IMX_SC_PM_CLK_CPU            2       /* CPU clock */
> > +#define IMX_SC_PM_CLK_PLL            4       /* PLL */
> > +#define IMX_SC_PM_CLK_BYPASS         4       /* Bypass clock */

They're for specific clock types for CPU/PLL/BYPASS only.

>
> It seems that there are several sets of clock type which apply to
> different resources/devices?  If so, can you separate them a bit with
> some comments to make the list easier for readers?
>

Yes, i could add comments as above.
Thanks for the suggestions.

Aisheng

> Shawn
>
> > +
> >  #endif /* __DT_BINDINGS_RSCRC_IMX_H */
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
