Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198A3159864
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:21:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9WltrdPjJgOKDnjqgx4ZxqSG688d4/zFP0c7iLqELg=; b=RXtcIy+RRFp3Ds
	NqErY44452MRVkAlM89pZj+P+lsaJZG+nFYiJxPsvP+kO7Nvb8lTkDurcTVI/oW9ON/At0XLQJYhm
	CjYqv7fsu/rktzqbMvQ//HXjPHLOIpvs7ry+QNkxr3L+ocUQOH6hHV87Fw5siksHVBrtULlJ8qjzf
	MHGD51fIMkJohLBOIS1VOWvPPf4Pb7Tk5AsuiCNLc1tlBVNBc97bTr1z8xlisku+ITv3QTam2h1fg
	UsfxBwJMkfZRhcIXU/y4P2lCGNnQSY5LE9g9bPbMqmBSIHZ9l6TSioo1F7/JaIEQc1RLuXhbMZFid
	u6YekEMy9pGqZiKsOwgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aA7-0008H3-MF; Tue, 11 Feb 2020 18:21:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1a2G-0008Pd-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:13:26 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C3E520870
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581444803;
 bh=3riax90X3cB1LTgwegasbmXkNo83BsShz5HQj87AsSg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vKBQdf7sq8abEa5O+/jfAR/LrlO09VRq0Z8A4pR8a4/sVqTwKbBjz0b+jF4mKUjJz
 cbaIxk3EQNVW6V0EEQQtrPeEUrmfiWllfOzuhSsW7m9ur/R0BZ0zlVs25gOQg+kvxl
 W33tqbKqHX0dSPBeI6mowsfPGrsH3gclSmBnKwmI=
Received: by mail-qk1-f176.google.com with SMTP id q15so10997301qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 10:13:23 -0800 (PST)
X-Gm-Message-State: APjAAAUZj4DktLbd+eoB9rh/ktIft7J4qA8rLmd9OogR9pCrfcZbPt6W
 bwsUzlXa+ad4Hm4pHv1ShWfvfcyN8pz7bNKhYQ==
X-Google-Smtp-Source: APXvYqwRNNy+ur96m7q6c3i3fkxvIT/TIzcSWdajVPSiLV011854FY1lIs7P3ivinO4cTTgIv5XuOleMFRvHINxetz0=
X-Received: by 2002:a37:6042:: with SMTP id u63mr6765137qkb.119.1581444802651; 
 Tue, 11 Feb 2020 10:13:22 -0800 (PST)
MIME-Version: 1.0
References: <20200130135040.22575-1-olivier.moysan@st.com>
 <20200206182125.GA23274@bogus>
 <843b9213-99c0-ec9f-bde6-4745a9cb6221@st.com>
In-Reply-To: <843b9213-99c0-ec9f-bde6-4745a9cb6221@st.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 11 Feb 2020 12:13:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJECUKkvZ1rt=4p5sMku3id973drEqLDvMZp8Fr+wx9tA@mail.gmail.com>
Message-ID: <CAL_JsqJECUKkvZ1rt=4p5sMku3id973drEqLDvMZp8Fr+wx9tA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: stm32: convert sai to json-schema
To: Olivier MOYSAN <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_101324_390512_396B844D 
X-CRM114-Status: GOOD (  24.38  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 7:42 AM Olivier MOYSAN <olivier.moysan@st.com> wrote:
>
> Hi Rob,
>
> On 2/6/20 7:21 PM, Rob Herring wrote:
> > On Thu, Jan 30, 2020 at 02:50:40PM +0100, Olivier Moysan wrote:
> >> Convert the STM32 SAI bindings to DT schema format using json-schema.
> >>
> >> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> >> ---
> >>   .../bindings/sound/st,stm32-sai.txt           | 107 ----------
> >>   .../bindings/sound/st,stm32-sai.yaml          | 193 ++++++++++++++++++
> >>   2 files changed, 193 insertions(+), 107 deletions(-)
> >>   delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.txt
> >>   create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> >
> >> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> >> new file mode 100644
> >> index 000000000000..33dca007fc86
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> >> @@ -0,0 +1,193 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/sound/st,stm32-sai.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: STMicroelectronics STM32 Serial Audio Interface (SAI)
> >> +
> >> +maintainers:
> >> +  - Olivier Moysan <olivier.moysan@st.com>
> >> +
> >> +description:
> >> +  The SAI interface (Serial Audio Interface) offers a wide set of audio
> >> +  protocols as I2S standards, LSB or MSB-justified, PCM/DSP, TDM, and AC'97.
> >> +  The SAI contains two independent audio sub-blocks. Each sub-block has
> >> +  its own clock generator and I/O lines controller.
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - st,stm32f4-sai
> >> +      - st,stm32h7-sai
> >> +
> >> +  reg:
> >> +    items:
> >> +      - description: Base address and size of SAI common register set.
> >> +      - description: Base address and size of SAI identification register set.
> >> +    minItems: 1
> >> +    maxItems: 2
> >> +
> >> +  ranges:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +  resets:
> >> +    maxItems: 1
> >> +
> >> +  "#address-cells":
> >> +    const: 1
> >> +
> >> +  "#size-cells":
> >> +    const: 1
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: pclk feeds the peripheral bus interface.
> >> +      - description: x8k, SAI parent clock for sampling rates multiple of 8kHz.
> >> +      - description: x11k, SAI parent clock for sampling rates multiple of 11.025kHz.
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      enum: [ pclk, x8k, x11k ]
> >> +    minItems: 3
> >> +    maxItems: 3
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - ranges
> >> +  - "#address-cells"
> >> +  - "#size-cells"
> >> +  - clocks
> >> +  - clock-names
> >> +
> >> +patternProperties:
> >> +  "^audio-controller@[0-9a-f]+$":
> >> +    type: object
> >> +    description:
> >> +      Two subnodes corresponding to SAI sub-block instances A et B
> >> +      can be defined. Subnode can be omitted for unsused sub-block.
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        description: Compatible for SAI sub-block A or B.
> >> +        enum:
> >> +          - st,stm32-sai-sub-a
> >> +          - st,stm32-sai-sub-b
> > pattern: 'st,stm32-sai-sub-[ab]'
> I will change this in v2
> >> +
> >> +      "#sound-dai-cells":
> >> +        const: 0
> >> +
> >> +      reg:
> >> +        maxItems: 1
> >> +
> >> +      clocks:
> >> +        items:
> >> +          - description: sai_ck clock feeding the internal clock generator.
> >> +          - description: MCLK clock from a SAI set as master clock provider.
> >> +        minItems: 1
> >> +        maxItems: 2
> >> +
> >> +      clock-names:
> >> +        items:
> >> +          - const: sai_ck
> >> +          - const: MCLK
> >> +        minItems: 1
> >> +        maxItems: 2
> >> +
> >> +      dmas:
> >> +        items:
> >> +          - description: SAI sub-block is configured as a capture DAI.
> >> +          - description: SAI sub-block is configured as a playback DAI.
> >> +        minItems: 1
> >> +        maxItems: 1
> > This is defining that dmas has 2 entries, but then limits it to the 1st
> > entry only.
> dma can be either "rx" or "tx", but not both.
> Maybe, the following syntax is more appropriate:
>
>        dmas:
>          maxItems: 1
>
>        dma-names:
>          description: |
>            rx: SAI sub-block is configured as a capture DAI.
>            tx: SAI sub-block is configured as a playback DAI.
>          items:
>            - enum: [ rx, tx ]

Yes, but for a single entry you can drop 'items'.

>
> >> +
> >> +      dma-names:
> >> +        items:
> >> +          - enum: [ rx, tx ]
> >> +
> >> +      st,sync:
> >> +        description:
> >> +          Configure the SAI sub-block as slave of another SAI sub-block.
> >> +          By default SAI sub-block is in asynchronous mode.
> >> +          Must contain the phandle and index of the SAI sub-block providing
> >> +          the synchronization.
> >> +        allOf:
> >> +          - $ref: /schemas/types.yaml#definitions/phandle-array
> >> +          - maxItems: 1
> >> +
> >> +      st,iec60958:
> >> +        description:
> >> +          If set, support S/PDIF IEC6958 protocol for playback.
> >> +          IEC60958 protocol is not available for capture.
> >> +          By default, custom protocol is assumed, meaning that protocol is
> >> +          configured according to protocol defined in related DAI link node,
> >> +          such as i2s, left justified, right justified, dsp and pdm protocols.
> >> +        allOf:
> >> +          - $ref: /schemas/types.yaml#definitions/flag
> >> +
> >> +      "#clock-cells":
> >> +        description: Configure the SAI device as master clock provider.
> >> +        const: 0
> >> +
> >> +    required:
> >> +      - compatible
> >> +      - "#sound-dai-cells"
> >> +      - reg
> >> +      - clocks
> >> +      - clock-names
> >> +      - dmas
> >> +      - dma-names
> >         additionalProperties: false.
> >
> >> +
> >> +allOf:
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: st,stm32f4-sai
> >> +
> >> +  - then:
> >> +      properties:
> >> +        clocks:
> >> +          minItems: 2
> >> +          maxItems: 2
> >> +
> >> +        clock-names:
> >> +          items:
> >> +            enum: [ x8k, x11k ]
> > Define the order.
> >
> Do you mean, adding in clocks property  :
>            items:
>              - description: x8k, SAI parent clock for sampling rates
> multiple of 8kHz.
>              - description: x11k, SAI parent clock for sampling rates
> multiple of 11.025kHz.

That too, but for clocks you need:

clock-names:
  items:
    - const: x8k
    - const: x11k

> But, it seems to me that this is redundant with previous definition of
> clocks property.

It's not because it's clocks in different positions.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
