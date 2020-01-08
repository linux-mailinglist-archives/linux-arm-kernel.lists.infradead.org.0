Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8099B1343DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CU/hrJYmLIRRd2aWHiLcWfz2zrI6MdNVbBZ6eMd8e4I=; b=kjrK0u5wzo5At6
	Jo2yY2DfawHWtl7wPjOjYHf1VH59fbqVDYJsI1I3EzuflD/UVUHZ3+ldKaSCnH3X6MTx3VdJT7K2O
	Sl7K3McEz65Vem6z9boGR5rAx5ObDbD8fkrYiZS4moqZvIdzWPdqa+iqodwldJ+chaJI/JW65zQYu
	fd64qnkq+LQhNq+iNESfL1mrlHfAINIsvjUeD9vL1ACI6p9QG95QQKRSSS5SwNOE48G01ZGh82dKE
	XXHThOrcp/cZaq0avyz2vwNagY3d5L+14/TgAu5JBNT375I8zIQ3vDUq159b9snewyw6dSnHvAoQ1
	V//r8iTN2BQVxkMnoZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBRp-0001af-QR; Wed, 08 Jan 2020 13:32:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBRe-0001aB-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:32:23 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38BBA2067D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 Jan 2020 13:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578490341;
 bh=VcONW9GbuCF27LwlMLUJpVLQ8pUaOf/yKfcR06idb6s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cMUCzkHH8l69mwaD/nGw6sTeAPM/t7+SZ0DWD9HEhadZWciK8PWrPMnOBJ/YG07rM
 4Qi5s3ehGDQ5g0pmvTff+LLB7gzxmnWMfgl2/HAFc0Fu8EZCjWDb0IT+PY0ISi1PUl
 dH7Be++a9SXd9KyBbptOcqVjAmZuu/9QpsYKVtns=
Received: by mail-qk1-f170.google.com with SMTP id x1so2541049qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 05:32:21 -0800 (PST)
X-Gm-Message-State: APjAAAWD3pXfeAtzv5fXU8Ku89WdcA7sa3yWmyVB/zN2nKBLaibkO0SI
 IidzdXxneTvWRgSon0ibFVZbG3HUJkQcoiJPTw==
X-Google-Smtp-Source: APXvYqz/X1U8NMj3Iv076A9wnrKOXCNBeZWJV5pvd1/KUv6bNiJ2ND6vyZmndtFtfAcLrrZTlGQcEo1+jY2bafbAvCs=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr4263840qke.393.1578490340276; 
 Wed, 08 Jan 2020 05:32:20 -0800 (PST)
MIME-Version: 1.0
References: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
 <20200106221246.GA17055@bogus>
 <DB3PR0402MB39161890A510346EBA8EF881F53F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39161890A510346EBA8EF881F53F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Jan 2020 07:32:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLn8F2aoYgnTpd+k0JEbpC_Aq-AVpj=niM4w591qjRhfg@mail.gmail.com>
Message-ID: <CAL_JsqLn8F2aoYgnTpd+k0JEbpC_Aq-AVpj=niM4w591qjRhfg@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_053222_236521_7440AB8B 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maxime@cerno.tech" <maxime@cerno.tech>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 12:01 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Rob
>
> > Subject: Re: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
> > i.MX8MP
> >
> > On Mon, Jan 06, 2020 at 05:29:50PM +0800, Anson Huang wrote:
> > > Add binding doc for i.MX8MP pinctrl driver.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > > ---
> > > Changes since V2:
> > >     - use DT schema instead of txt for binding doc.
> > > ---
> > >  .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       |  65 ++
> > >  arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h     | 931
> > +++++++++++++++++++++
> > >  2 files changed, 996 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> > > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> > > new file mode 100644
> > > index 0000000..cdb6c21
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yam
> > > +++ l
> > > @@ -0,0 +1,65 @@
> > > +# SPDX-License-Identifier: GPL-2.0-or-later %YAML 1.2
> > > +---
> > > +$id:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mp-
> > pinctrl.yaml%23&amp;dat
> > >
> > +a=02%7C01%7Canson.huang%40nxp.com%7Cfacd4426e6e54bc5416b08d79
> > 2f59319%
> > >
> > +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63713945576195750
> > 5&amp;s
> > >
> > +data=0O3w1U6vs9xVq6B%2BhyT4Nz5HdKuk6XDymPUg7wQy0lM%3D&amp;
> > reserved=0
> > > +$schema:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fmeta-
> > schemas%2Fcore.yaml%23&amp;data=02%7C01%7Canson.hua
> > >
> > +ng%40nxp.com%7Cfacd4426e6e54bc5416b08d792f59319%7C686ea1d3bc2b
> > 4c6fa92
> > >
> > +cd99c5c301635%7C0%7C0%7C637139455761957505&amp;sdata=XUN%2BG
> > zMOqpVNRj
> > > +UM1CO6CXPOMT72DtdefLs%2Bs%2BGPaGI%3D&amp;reserved=0
> > > +
> > > +title: Freescale IMX8MP IOMUX Controller
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
> > > +    const: fsl,imx8mp-iomuxc
> > > +
> > > +# Client device subnode's properties
> > > +patternProperties:
> > > +  '-grp$':
> > > +    type: object
> > > +    description:
> > > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > > +      Client device subnodes use below standard properties.
> > > +
> > > +    properties:
> > > +      fsl,pins:
> > > +        $ref: /schemas/types.yaml#/definitions/string
> >
> > string or...
> >
> > > +        description:
> > > +          each entry consists of 6 integers and represents the mux
> > > + and config
> >
> > integers?
>
> I think it should be uint32-array
>
> >
> > > +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> > > +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which
> > can
> > > +          be found in <arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h>.
> > The last
> > > +          integer CONFIG is the pad setting value like pull-up on this pin.
> > Please
> > > +          refer to i.MX8M Plus Reference Manual for detailed CONFIG settings.
> > > +
> > > +    required:
> > > +      - fsl,pins
> > > +
> > > +    additionalProperties: false
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  # Pinmux controller node
> > > +  - |
> > > +    iomuxc: pinctrl@30330000 {
> > > +        compatible = "fsl,imx8mp-iomuxc";
> > > +        reg = <0x30330000 0x10000>;
> > > +
> > > +        pinctrl_uart2: uart2grp {
> > > +            fsl,pins = <
> > > +                MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX       0x49
> > > +                MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX       0x49
> >
> > Run 'make dt_binding_check'. Doesn't build:
> >
> > Error: Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-
> > pinctrl.example.dts:23.21-22 syntax error FATAL ERROR: Unable to parse
> > input tree
>
> I fix it by NOT using Macro Definition as below, but still have some build error which looks like
> my environment issue, please help review V4, thanks.
>
>              fsl,pins = <
>                  0x228 0x488 0x5F0 0x0 0x6       0x49
>                  0x228 0x488 0x000 0x0 0x0       0x49
>              >;
>
>
>   CHKDT   Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
>   DTC     Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dt.yaml
> FATAL ERROR: Unknown output format "yaml"

You need dtc built with yaml enabled. Make sure you have libyaml,
libyaml-dev and pkg-config.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
