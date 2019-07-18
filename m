Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258176D3D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnZqhg2duv1TML9h1Jj6LNqI94cR+u5HMYtP9C/wNBE=; b=GxX+u/aYFaQQPW
	4aKSC83ENUHV7sItmGABg4hE5JEWdR7lVRY3mQOPUH2+qyB9WZSMugmzd+Yfi/gtSR8PLwm/QkLsJ
	NplYPEg3/Ur79k9JVFYYxW9YZ5c4b04pAWn/34XwGW4P3rVZ9BxKi0NEm/NoaDknexMCrttgqpU3J
	lGnspR7ihxO29HYXPjko1wFKa+ZebyzyhnZu48enOAEplZaLjUdi/7/Mpi9QpDNX/jRt/Kldsjy1X
	oFrlPLoci+asCAE33OykPwskykqTOqBbjWnQD77+phlj1qMVL62+ljdB4CGJJDfKie3vzYNUn32p9
	94c8Cd7ekNjN8WAUarjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoB5O-0002z3-PO; Thu, 18 Jul 2019 18:24:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoB5D-0002yI-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 18:24:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so26534103wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 11:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O1MLsFyrIiqvStGeCSXekqChu7olGe+ghfPuNjb84x8=;
 b=FjNL/oukgm65Nil+7w8dcOOxwccuBKh63CXRVczAIPfM75Zl54MiGe1Z9uQiTxBUU4
 atUrfVS6UcxjtwAlHMlur0lFE7HnNutU5ra5ppuejfqjJMGZR8toKlCsBXxWTvC86DTu
 /+ysKj8yAeD0RBUY2oM/eLfV18qGmzIVqWL44Ceq0iIO+XiveK0Zo/G2R3v2+jKK5smY
 C0/zcSJHebPRYhBtSZ/UZnyrECB9ZjfRyn/ti7Tqnq22HQ/ExzOhn6W43o1GpbcEveP/
 Z3NqvfSJpAiSTw3PWJtCxXt4nP1NcQBDuV3cArPXokV5NWLdfhja69S0GurGicWD/94W
 D7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O1MLsFyrIiqvStGeCSXekqChu7olGe+ghfPuNjb84x8=;
 b=BeddTyYn2SYZGLmMb3Vdl+4AJhmc+a+FtuHMr9+8emv8/BhHnV7eQ0RiCuAdIdD0hl
 GfCyWbpc31dP8EKOVTrCCsknUFMEWVveTcHZZT7JfR7rMdg33S0X+2SuNAUstqWtJMWB
 rwB4IN3VOx1gDAF0/FzF+XXXY58hAOXP1shwGds7/d1+ZF+fXdkHNJz9R6avehkEOeY8
 uh8RlfBgawttnHlslB71cv23uCyY2maTC3J1Q10PvMVIFIaTVXJjXqSbIRsCizR0jyEg
 sN34i6LZ8Wux+KMiSBDOhk6MrT947jS+pXiVDur9155okijgxFbMwbwybE9wRQUxHMvn
 SZ4w==
X-Gm-Message-State: APjAAAXkQIdupZx8hMHUHpTI/RxZxV5jU+dS7SbqgMDhzUGO5HMnUhju
 LCbP3D/Xyk6oLZu5aqFSPglpP3A99JySik/cBP8=
X-Google-Smtp-Source: APXvYqwwcEOHikHbOz2la4SirUJmOhF3n2AoPZ7ouMvC4ShHI3jKSnpGRLPqufrOZdouzpDb7nl+mJjKrSjFA59b9tI=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr53051168wrs.93.1563474285527; 
 Thu, 18 Jul 2019 11:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
 <20190718151346.3523-4-daniel.baluta@nxp.com>
 <CAL_JsqJ6o9mTjLYjnfcYgfSFKb95W8FseZBBb8RLosB__GNBcw@mail.gmail.com>
In-Reply-To: <CAL_JsqJ6o9mTjLYjnfcYgfSFKb95W8FseZBBb8RLosB__GNBcw@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 18 Jul 2019 21:24:34 +0300
Message-ID: <CAEnQRZBubFz90Xf8irDwc=erTXmByXX4rkzZy9r8ymfAuQEsZA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: dsp: fsl: Add DSP core binding support
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_112447_573264_81C1C81F 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Frank Li <Frank.Li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, paul.olaru@nxp.com,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 7:41 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Jul 18, 2019 at 9:13 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> >
> > This describes the DSP device tree node.
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >  .../devicetree/bindings/dsp/fsl,dsp.yaml      | 87 +++++++++++++++++++
> >  1 file changed, 87 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> > new file mode 100644
> > index 000000000000..d112486eda0e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> > @@ -0,0 +1,87 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP i.MX8 DSP core
> > +
> > +maintainers:
> > +  - Daniel Baluta <daniel.baluta@nxp.com>
> > +
> > +description: |
> > +  Some boards from i.MX8 family contain a DSP core used for
> > +  advanced pre- and post- audio processing.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8qxp-dsp
> > +
> > +  reg:
> > +    description: Should contain register location and length
> > +
> > +  clocks:
> > +    items:
> > +      - description: ipg clock
> > +      - description: ocram clock
> > +      - description: core clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ipg
> > +      - const: ocram
> > +      - const: core
> > +
> > +  power-domains:
> > +    description:
> > +      List of phandle and PM domain specifier as documented in
> > +      Documentation/devicetree/bindings/power/power_domain.txt
>
> How many? 4?

Yes, 4 for i.MX8QXP. Also, the same number is for i.MX8QM. Anyhow, I didn't
added added a limit here because I really don't know how many will be
in upcoming
i.MX platforms.

>
> > +
> > +  mboxes:
> > +    description:
> > +      List of <&phandle type channel> - 2 channels for TXDB, 2 channels for RXDB
> > +      (see mailbox/fsl,mu.txt)
> > +    maxItems: 4
> > +
> > +  mbox-names:
> > +    items:
> > +      - const: txdb0
> > +      - const: txdb1
> > +      - const: rxdb0
> > +      - const: rxdb1
> > +
> > +  memory-region:
> > +    description:
> > +       phandle to a node describing reserved memory (System RAM memory)
> > +       used by DSP (see bindings/reserved-memory/reserved-memory.txt)
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - mboxes
> > +  - mbox-names
> > +  - memory-region
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/firmware/imx/rsrc.h>
> > +    #include <dt-bindings/clock/imx8-clock.h>
> > +    dsp@596e8000 {
> > +        compatbile = "fsl,imx8qxp-dsp";
> > +        reg = <0x596e8000 0x88000>;
> > +        clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
> > +                 <&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
> > +                 <&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
> > +        clock-names = "ipg", "ocram", "core";
> > +        power-domains = <&pd IMX_SC_R_MU_13A>,
> > +                        <&pd IMX_SC_R_MU_13B>,
> > +                        <&pd IMX_SC_R_DSP>,
> > +                        <&pd IMX_SC_R_DSP_RAM>;
> > +        mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
> > +        mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;
> > +    };
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
