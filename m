Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B87613B2D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr6iMJQLu+UqcG84hXnqYqn5FvlBTIFHLrvWEvf1Ydk=; b=Se96wbVZeFO1/8
	SCg1UeUcV0Se9cXPbrBkuBvJbfqWHvBc9TA3MFNyBNbc7Q+PRIICMpMrFFOn98eWmhh6WaU0o/vgG
	HMW3sLVGiEpsfxd0qpSCnRMT6rdE9k/3o8wGp99gdrHc7fi7jWM0w7ijJvT0iYad0jeVnlpbk40+k
	XEqOmlkagrWF965XNgwExZGiwo0neVQYkYgpA01cBZMGnDtSP7GMI/9QZyz2wfrx/JnVy59XZlbYt
	kd5k/p2mQkIyiCTGBwpE4d9dsHjaoUQVfdbinF9r9TVm9qlmTCa4ouEo71UEMGYysctfRBZqx0odf
	lhbqCF+MGnj3fwUOhwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRjv-0003rJ-RB; Tue, 14 Jan 2020 19:20:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRjk-0003py-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:20:29 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0397224673
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 19:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579029624;
 bh=51mPKvKOvFBPcyebnpeFfrpdOAPyvnnFW5SZb3BDz5A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0AzsTqV+6NRVdOwYlop8UGvirDY6l6CFWTp76WjFI/3G25rUyinXv5ASQPgWsOVJB
 GomQpKA16rlD6ylSIvLNc5VHnSKssm/NbO/8Yw2Fo/Z0klQ0VVy4HF3/DXH09v5NM9
 gg5eboqH985MWFANNYfhEI/QvEHQa1j0DAYBFmCs=
Received: by mail-qt1-f169.google.com with SMTP id v25so13491079qto.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:20:23 -0800 (PST)
X-Gm-Message-State: APjAAAUsMD63Un9AdimEQzjPpZXBKhB+8F/jQzAnGnbBIvp+/EFJjNIa
 yZ/qcF8l1oeJpLKyn3UJSd6D0rKzBkkNIEMVfw==
X-Google-Smtp-Source: APXvYqxtoC7YzVsJSq0poDkCvJI/CcjPKwVkad6yKqrUxD2hA8j7iTo4qnjLsj9KT03fSLGDVtvDkqcYswDEUHsVCD0=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr128832qtp.224.1579029623073;
 Tue, 14 Jan 2020 11:20:23 -0800 (PST)
MIME-Version: 1.0
References: <1575649028-10909-1-git-send-email-fabrice.gasnier@st.com>
 <20191217234345.GA7738@bogus> <cadc76a7-7e9d-1f0a-21fd-2d7942dbe5c9@st.com>
In-Reply-To: <cadc76a7-7e9d-1f0a-21fd-2d7942dbe5c9@st.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 Jan 2020 13:20:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJdw=WzMhp1d9E3131AuyO7in7bgR5X4NM1n7Ox4X0YXw@mail.gmail.com>
Message-ID: <CAL_JsqJdw=WzMhp1d9E3131AuyO7in7bgR5X4NM1n7Ox4X0YXw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
To: Fabrice Gasnier <fabrice.gasnier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_112024_740551_44EB1FFD 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, olivier moysan <olivier.moysan@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Peter Meerwald <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:02 AM Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
>
> On 12/18/19 12:43 AM, Rob Herring wrote:
> > On Fri, Dec 06, 2019 at 05:17:08PM +0100, Fabrice Gasnier wrote:
> >> Convert the STM32 ADC binding to DT schema format using json-schema
> >>
> >> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> >> ---
> >> Note: this applies on top of IIO tree currently (iio-for-5.5c).
> >>
> >> Changes in V2:
> >> - Take almost all of Rob suggestions (removed reg generic description,
> >>   added minItems, maxItems, st,max-clk-rate-hz range, drop some pipes,
> >>   simplify clock-names, remove unneeded allOfs)
> >> - For now, keep all in one file despite there are lots of if/thens in the
> >>   bindings
> >> ---
> >>  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
> >>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 454 +++++++++++++++++++++
> >>  2 files changed, 454 insertions(+), 149 deletions(-)
> >>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
> >>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> >
> >
>
>
> [snip]
>
> >> +
> >> +      st,adc-channels:
> >> +        description: |
> >> +          List of single-ended channels muxed for this ADC. It can have up to:
> >> +            - 16 channels, numbered from 0 to 15 (for in0..in15) on stm32f4
> >> +            - 20 channels, numbered from 0 to 19 (for in0..in19) on stm32h7 and
> >> +              stm32mp1.
> >> +        allOf:
> >> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> >> +
>
> [snip]
>
> >> +
> >> +    allOf:
> >> +      - if:
> >> +          properties:
> >> +            compatible:
> >> +              contains:
> >> +                const: st,stm32f4-adc
> >> +
> >> +        then:
> >> +          properties:
> >> +            reg:
> >> +              enum:
> >> +                - 0x0
> >> +                - 0x100
> >> +                - 0x200
> >> +
> >> +            interrupts:
> >> +              minimum: 0
> >> +              maximum: 2
> >> +
> >> +            assigned-resolution-bits:
> >> +              enum: [6, 8, 10, 12]
> >> +              default: 12
> >> +
> >> +            st,adc-channels:
> >> +              minItems: 1
> >> +              maxItems: 16
> >> +              minimum: 0
> >> +              maximum: 15
> >
> > You are mixing array and scalar constraints here. You need:
> >
> > minItems: 1
> > maxItems:16
> > items:
> >   minimum: 0
> >   maximum: 15
> >
> > Update dtschema. It will now catch this. There's a few others too.
>
> Hi Rob,
>
> Sorry for the late reply. I updated dtschema. Now it catches it.
>
> I've tried your suggestion, but when I test it, I don't get any error on
> maxItems.
>
> In the example: "st,adc-channels = <0>, <1>, ... more than 16 items;"
>
> Is it possible I face some other issue with dtschema ?

The problem is how "<0>, <1>" vs. "<0 1>" gets encoded. While those
are the same in the dtb, in yaml we have "[[0], [1]]" vs. "[[0, 1]]".
Making the brackets significant is helpful for some things like
phandle+args and 'reg' where we have a matrix of values, but for
arrays it just gets in the way. I think as I suggested is the right
form for the binding schema, and we need to either decide what's the
correct way for brackets or improve the tool to accept both ways.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
