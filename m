Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAF1F22B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66Hi8G5PtzPg769Gprb5CbE26An8YR9mCsOOzA4d9Hk=; b=kjKjBNPdnKtxHo
	2BAlj+Hk5Y8FfJAx8X+dIBbN2IdpuDkQ3Xn5HQikXUi1+N1s6tWk96SLR2tFs5E3a2VdkYkKovY+8
	cNGX+tej4nH/3KMqIZMl7nZBpvgGetDjMlLjnt0wxqb6Y8HS6YqBQh6Gvm27JvTxkO0Yr16P3hMX9
	RWHDegy2NPcukXx9sBqwUEheXa24X+LHOrUZt7syqRUSktUewTzw9oVb72EsUhk2B27IwSMv0Ma4x
	P/hiZj8sBLDKTBkXo/zn6ihLAfC6TsLKih3vkT7AGdLYHxkeG2l7wKS+psAFVKVkjiAsjQkEGelLb
	awv7glBc+ySY+FrIBMqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUnn-0005Kj-P0; Wed, 06 Nov 2019 23:33:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUnf-0005K6-ID
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:33:21 +0000
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F7AF21929
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 Nov 2019 23:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573083198;
 bh=kXuPSKl+d3N16AWU48reQZ1zuDSoKWcH8SnXbdsyG1Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jtHyhFkWE3pKHvdd83jG7hT7NyR376eTuEr9ERzYU/cLPUMq8jfmu4Pc3AwMwAOfA
 Ta5bhoJh9cqN3cZVa6vzhyOfspGH5C9cbvPH9vfe7rCAYdmt5ayL69+QublnfxuRyj
 LKVoZnM3aCaTH+YQzn0GMYdakODsvG+TlLgH+QUU=
Received: by mail-qv1-f45.google.com with SMTP id x14so99649qvu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:33:18 -0800 (PST)
X-Gm-Message-State: APjAAAWqKamt/uKvHnG4JHLaQcBjL59QcM/JyvrgIVcAS9wjhkHkQLOJ
 g+evXyB6iAuy1UiCzgoTSxKJq+o1W4UEjYatLg==
X-Google-Smtp-Source: APXvYqyC3A2flD/nPROb9ThjRdJKDCsiLA48Ab5fS1yM/Zg798U/Sn7jNMdhWcJ4s8JZjQWG/fXn9qcpyqj9go+/rgA=
X-Received: by 2002:a0c:ca06:: with SMTP id c6mr490409qvk.136.1573083197450;
 Wed, 06 Nov 2019 15:33:17 -0800 (PST)
MIME-Version: 1.0
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-5-benjamin.gaignard@st.com>
 <20191106041518.GC5294@bogus>
 <41c43d09-9371-8b23-a3dd-e43f5df5c5bc@st.com>
In-Reply-To: <41c43d09-9371-8b23-a3dd-e43f5df5c5bc@st.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Nov 2019 17:33:05 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+eFew_8ULDOwL5GXUDxLRB9e+b+ZsMdWLKUO8i9Lk7AQ@mail.gmail.com>
Message-ID: <CAL_Jsq+eFew_8ULDOwL5GXUDxLRB9e+b+ZsMdWLKUO8i9Lk7AQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_153319_642529_55DB29C4 
X-CRM114-Status: GOOD (  24.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 "lars@metafoo.de" <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 1:57 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
> On 11/6/19 5:15 AM, Rob Herring wrote:
> > On Thu, Oct 31, 2019 at 01:30:40PM +0100, Benjamin Gaignard wrote:
> >> Convert the STM32 timers binding to DT schema format using json-schema
> >>
> >> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> >> ---
> >>   .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 91 ++++++++++++++++++++++
> >>   .../devicetree/bindings/mfd/stm32-timers.txt       | 73 -----------------
> >>   2 files changed, 91 insertions(+), 73 deletions(-)
> >>   create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> >>   delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> >> new file mode 100644
> >> index 000000000000..3f0a65fb2bc0
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> >> @@ -0,0 +1,91 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mfd/st,stm32-timers.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: STMicroelectronics STM32 Timers bindings
> >> +
> >> +description: |
> >> +  This hardware block provides 3 types of timer along with PWM functionality: \
> > Don't need the \
> ok
> >
> >> +    - advanced-control timers consist of a 16-bit auto-reload counter driven by a programmable \
> >> +      prescaler, break input feature, PWM outputs and complementary PWM ouputs channels. \
> >> +    - general-purpose timers consist of a 16-bit or 32-bit auto-reload counter driven by a \
> >> +      programmable prescaler and PWM outputs.\
> >> +    - basic timers consist of a 16-bit auto-reload counter driven by a programmable prescaler.
> >> +
> >> +maintainers:
> >> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> >> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> >> +
> >> +allOf:
> >> +  - $ref: "../pwm/st,stm32-pwm.yaml#"
> >> +  - $ref: "../iio/timer/st,stm32-timer-trigger.yaml#"
> >> +  - $ref: "../counter/st,stm32-timer-cnt.yaml#"
> > This works, but I prefer the child node names be listed under properties
> > here with a ref:
> >
> > counter:
> >    $ref: "../counter/st,stm32-timer-cnt.yaml#"
> If I wrote everything in one file I guess what won't be needed anymore
> >
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: st,stm32-timers
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  clocks:
> >> +    maxItems: 1
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: int
> >> +
> >> +  reset:
> >> +    maxItems: 1
> >> +
> >> +  dmas: true
> > How many?
>
> from 0 up to 8, but I don't know the syntax for that. minItems = 0 isn't
> accepted.
>
> Any hints for me ?

0 is not accepted because the property is never 0 items. 0 is not
present. So just:

minItems: 1
maxItems: 8


> >> +
> >> +  dma-names: true
> > What are the names?
>
> it could be ch1 ... ch8, "trig" or "up" in any order.

Why does it need to be in any order? Normally we don't want to have that.

>
> Again I haven't be able to find a syntax that allow to list the names
> and use them in any orders.

dma-names:
  items:
    enum: [ ch1, ch2, ..., trig, up ]

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
