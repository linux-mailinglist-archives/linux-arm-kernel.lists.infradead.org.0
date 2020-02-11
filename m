Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD482159C10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWMgthXUObCisM6wmvDxD1uc8rrv35drpIb18XI6BDA=; b=exWZxJlMCtwnzA
	7MdUCzllAKWPbETzKPcgRlesZHakhUYpn70+lnSQqC9GihKVXBACAUbVtyXk+Ifr/XJVU/abcpVlX
	fzR4v4UPiJ7DRf99i+bjdTgBJ66DxPnKrJNjtjXSc+4AhTt7aWmCrC9u1aEWQbQVjA0hPcg1uHqJt
	IXGfjkzkRW/LNVgVGaF4x0RsLCzFet4ucHXy+rktLkbUtsaUPFSaioMg25bSERL20sgC2RBMpfbR2
	CafFuRcKxTmeHxFdpTkvOgdVjwKpzpLOcb5HR0BHEy50TL8h5B0gyOfs63iIkKuM58hmm0cTRznys
	JF9DeX45ckurD9VmOhvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1duS-0007OD-FK; Tue, 11 Feb 2020 22:21:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1duK-0007Mf-JF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:21:30 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F370F2082F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 22:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581459685;
 bh=q+rSFqo9elU7WRH3thbFoGn3yP+yIz3kC3wdjvUcEw4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rV/nGp0DMw+OM4GyyfCZOEQrjZosAwguf7FJnjGVtcTwNFmezygvg8I4St45yyY2i
 liF0fymRuqTIZY9te73bnT2DidMZonbQr1Jux4BdVLPu1WX5Z4qLQbbFGynBOlkYzy
 YFpfu1tEgo6e7pGXCddgcRnLVzn6mRYQ1x3G2D/4=
Received: by mail-qk1-f173.google.com with SMTP id q15so107938qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 14:21:24 -0800 (PST)
X-Gm-Message-State: APjAAAUee+I7gMY0YWEi0ShSvDt075ISSdo51PYoUzTiCP1EIsobDZs8
 PtsN3LEnDVD4E1BraA0v94OS9w0mrjNsJOlDAg==
X-Google-Smtp-Source: APXvYqz63AEggW2LNGCOGY6poWM+6h8Md6Kh6G+Jq5ZCRemvNqvsOiXJhjYbYxk7LX/OKgDB4G6e6KML6WclOT/ISxg=
X-Received: by 2002:a37:6042:: with SMTP id u63mr7617189qkb.119.1581459683937; 
 Tue, 11 Feb 2020 14:21:23 -0800 (PST)
MIME-Version: 1.0
References: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
 <20200121223807.GA24850@bogus>
 <DB3PR0402MB3916ED6C3FCA9BCA224A5936F5180@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916ED6C3FCA9BCA224A5936F5180@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 11 Feb 2020 16:21:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKqQdRZC08-BGJqTjzJZ8aWA41LHMbv0QyyVePVm0co7A@mail.gmail.com>
Message-ID: <CAL_JsqKqQdRZC08-BGJqTjzJZ8aWA41LHMbv0QyyVePVm0co7A@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_142128_674639_7320C259 
X-CRM114-Status: GOOD (  30.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:20 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Rob
>
> > Subject: Re: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to json-
> > schema
> >
> > On Wed, Jan 15, 2020 at 09:30:43AM +0800, Anson Huang wrote:
> > > Convert the i.MX8MQ pinctrl binding to DT schema format using
> > > json-schema
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V2:
> > >     - the lisence should be GPL-2.0.
> > > ---
> > >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
> > >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69
> > ++++++++++++++++++++++
> > >  2 files changed, 69 insertions(+), 36 deletions(-)  delete mode
> > > 100644
> > > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > deleted file mode 100644
> > > index 66de750..0000000
> > > --- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > +++ /dev/null
> > > @@ -1,36 +0,0 @@
> > > -* Freescale IMX8MQ IOMUX Controller
> > > -
> > > -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this
> > > directory -for common binding part and usage.
> > > -
> > > -Required properties:
> > > -- compatible: "fsl,imx8mq-iomuxc"
> > > -- reg: should contain the base physical address and size of the
> > > iomuxc
> > > -  registers.
> > > -
> > > -Required properties in sub-nodes:
> > > -- fsl,pins: each entry consists of 6 integers and represents the mux
> > > and config
> > > -  setting for one pin.  The first 5 integers <mux_reg conf_reg
> > > input_reg mux_val
> > > -  input_val> are specified using a PIN_FUNC_ID macro, which can be
> > > found in
> > > -  imx8mq-pinfunc.h under device tree source folder.  The last integer
> > > CONFIG is
> > > -  the pad setting value like pull-up on this pin.  Please refer to
> > > i.MX8M Quad
> > > -  Reference Manual for detailed CONFIG settings.
> > > -
> > > -Examples:
> > > -
> > > -&uart1 {
> > > -       pinctrl-names = "default";
> > > -       pinctrl-0 = <&pinctrl_uart1>;
> > > -};
> > > -
> > > -iomuxc: pinctrl@30330000 {
> > > -        compatible = "fsl,imx8mq-iomuxc";
> > > -        reg = <0x0 0x30330000 0x0 0x10000>;
> > > -
> > > -        pinctrl_uart1: uart1grp {
> > > -                fsl,pins = <
> > > -                        MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX             0x49
> > > -                        MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX             0x49
> > > -                >;
> > > -        };
> > > -};
> > > diff --git
> > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > > new file mode 100644
> > > index 0000000..e010808
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yam
> > > +++ l
> > > @@ -0,0 +1,69 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mq-
> > pinctrl.yaml%23&amp;dat
> > >
> > +a=02%7C01%7CAnson.Huang%40nxp.com%7C8471ec5c0f6848eafe0e08d79
> > ec297db%
> > >
> > +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63715243091635696
> > 3&amp;s
> > >
> > +data=3SEytaczKAQzAlgI3XJANKuxRjuZj0NzI8eemFoPMeU%3D&amp;reserve
> > d=0
> > > +$schema:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fmeta-
> > schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAnson.Hua
> > >
> > +ng%40nxp.com%7C8471ec5c0f6848eafe0e08d79ec297db%7C686ea1d3bc2b
> > 4c6fa92
> > >
> > +cd99c5c301635%7C0%7C0%7C637152430916356963&amp;sdata=V4ul%2Fq
> > CNNkKXmX
> > > +270HNbhYci4aTwOvTCTpD3NqQAUoQ%3D&amp;reserved=0
> > > +
> > > +title: Freescale IMX8MQ IOMUX Controller
> > > +
> > > +maintainers:
> > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > +
> > > +description:
> > > +  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in
> > > +this directory
> > > +  for common binding part and usage.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: fsl,imx8mq-iomuxc
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +# Client device subnode's properties
> > > +patternProperties:
> > > +  'grp$':
> > > +    type: object
> > > +    description:
> > > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > > +      Client device subnodes use below standard properties.
> > > +
> > > +    properties:
> > > +      fsl,pins:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        description:
> > > +          each entry consists of 6 integers and represents the mux and config
> > > +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> > > +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which
> > can
> > > +          be found in <arch/arm64/boot/dts/freescale/imx8mq-pinfunc.h>.
> > The last
> > > +          integer CONFIG is the pad setting value like pull-up on this pin.
> > Please
> > > +          refer to i.MX8M Quad Reference Manual for detailed CONFIG
> > settings.
> >
> > Based on the description, I think this should be an uint32-matrix type instead
> > with a schema like this:
> >
> > items:
> >   items:
> >     - description: mux_reg
> >     - description: conf_reg
> >     - description: input_reg
> >     - description: mux_val
> >     - description: input_val
> >     - description: pad setting
> >
> > (With better descriptions preferrably)
>
> I will use something like below:
>
> +          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +          - items:
> +              items:
> +                - description: |
> +                    "mux_reg" indicates the offset of mux register.
> +                - description: |
> +                    "conf_reg" indicates the offset of pad configuration register.
> +                - description: |
> +                    "input_reg" indicates the offset of select input register.
> +                - description: |
> +                    "mux_val" indicates the mux value to be applied.
> +                - description: |
> +                    "input_val" gives the select input value to be applied.
> +                - description: |
> +                    "pad_setting" gives the pad configuration value to be applied.
>
>
> >
> > The dts files should then be bracketed accordingly.
>
> Sorry, what do you mean of "dts files should then be bracketed accordingly"?
> Do you mean dts file needs to be updated? I saw below example already has "<>" for
> This matrix:
>
> +            fsl,pins = <
> +                0x234 0x49C 0x4F4 0x0 0x0      0x49
> +                0x238 0x4A0 0x4F4 0x0 0x0      0x49
> +            >;
>
> Can you please advise and provide a simple example, I think we should avoid changes
> In dts file.

Like this:

fsl,pins = <0x234 0x49C 0x4F4 0x0 0x0      0x49>,
           <0x238 0x4A0 0x4F4 0x0 0x0      0x49>;

The changes are unavoidable (though not something you're expected to
fix immediately). We simply can't just accept any bracketing in dts
files *and* have schema to validate them.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
