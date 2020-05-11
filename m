Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83BB1CD477
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmV7RyvR+Y6f3vKbskELXtrmAsZ4JLT5EkaUzv0pK64=; b=nGMvGORpkSeCQr
	eI8/VmHDV68OfmLP9AKo448mSAX4wHfBBGHn4NKEF246WjdO4/XGl30C967V1d9uE3bOejjvPU4j7
	jUn4lju0fHIhV0Hloune5CuwVr7XzirAtQgxQYYpufXfAy9AJuLYqlyqhixcd9LPBq9IE7SwgTpUN
	66crX20fCEoPR7wdnIbKiOZ08SJq1EfdmKrYRSSlu9mxzqie8zCt9RDx2Z/qy8tvhPs+eQAEfIA2d
	2tSPkvey97yiLm18H2qcsxGFOq9X0RDl7rFLBEU/7AVTmWuW4kYDPRKMH5dwI0Cfz1BPu1SsLU95K
	iPN/uRt7J7YlMNIwqafA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4O9-000113-Ch; Mon, 11 May 2020 09:06:17 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4Nt-0000qH-BW
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:06:03 +0000
Received: by mail-il1-x143.google.com with SMTP id n11so7709501ilj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KXPQ8oL1xKkz5N/1TA82hvXaOeCuVTJr1m04oqy4j94=;
 b=QQCg4mUX+wQSt9HJ5j0qgOn36rHY+87ZROvttm9Pa4pxhRgqIoB+DGF613qUhKHRQt
 H7L2MAbI9i0x6oxqXk8aB9lVAJuhwZPxftcdY+6+Hxe3SF9yVatTdtd5zdBTcAiYpEZ7
 0cXXftjo38Hv1w15ZeWjTTLAKEtl6DQVyksD1tXQ5u8lO86y9szmheVmCsODRIQXUfQb
 ssgeZsR+jpJd9xGQALPQg/ZzfnATi+JPXIqUidFbf3WSZDHQ3MCybXqws+iEsv1rS4wW
 Os+41ItdlZu00mg0xVudeuIg834QhX9wM4Q+DCodtzjvjTjlAryTAJduavjzUy44zZib
 +UhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KXPQ8oL1xKkz5N/1TA82hvXaOeCuVTJr1m04oqy4j94=;
 b=sFQ7691iG6zxBUelQkO+YVgRwitym97NWDZfTvVg5TBdo7VqVye5u/TfWtEbZ7Fg/v
 +DJWEhSTgnGbsduRkEO9XrUN+H1kNuYryi7jTYeXxBdUCpAxtyeauxK0vPsKj2RNE8PS
 bPJYxN3TGlJF/NHL98n8SAU1Ryz7CkpPuAWaqBX9zHsOtClVZxvwsHjjjxTam7EVdQDF
 hLKRU7mxFAUcMPo5iZJ8aDE4yeVbnAH5t1WJgnbYT6BRbl2P8dL2JTF9Zht3cU+lnVRA
 Tq1tjefonkJS8pBde9t9swhfPxUfYe/1XNb0KMvOGd77CubWSp9KzHfQPsnTduIlpd8O
 kS1Q==
X-Gm-Message-State: AGi0PuaaqwWJ420Uh/3Ra4VnW/krVmDFdwvx/P7gJIeAkJK3FmGp0Rtq
 dsukVLNel9onP8+xdNUpqXxcq4jF+oMSr+yNLpU=
X-Google-Smtp-Source: APiQypLnjwDCTOoTp7cg995FVjGSfRMddjPCiRtwufCtIHvwd/5nPCOyL6yw+XfWN/gd71cdELN5CvnqJnAptBslxQQ=
X-Received: by 2002:a92:607:: with SMTP id x7mr13744092ilg.218.1589187959912; 
 Mon, 11 May 2020 02:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
 <1589007503-9523-3-git-send-email-dillon.minfei@gmail.com>
 <404e7f47-9c0f-44b1-aedb-a8d3af832d40@st.com>
In-Reply-To: <404e7f47-9c0f-44b1-aedb-a8d3af832d40@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Mon, 11 May 2020 17:05:23 +0800
Message-ID: <CAL9mu0+5T3q8V8Ng_1jfPGfBxDWzgd7T1hzcdUXj23-rEtOgfg@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco board
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_020601_481989_5B02E3F8 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Hua Dillon <dillonhua@gmail.com>,
 mcoquelin.stm32@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Alexandre,

Thanks for review.

On Mon, May 11, 2020 at 3:17 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi
>
> On 5/9/20 8:58 AM, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > Enable l3gd20 on stm32429-disco board.
>
> You could add some words about l3gd20
ok, thanks, i will add some description about l3gd20.
>
> >
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> >   arch/arm/boot/dts/stm32f429-disco.dts | 24 ++++++++++++++++++++++++
> >   1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
> > index 30c0f67..d365358 100644
> > --- a/arch/arm/boot/dts/stm32f429-disco.dts
> > +++ b/arch/arm/boot/dts/stm32f429-disco.dts
> > @@ -49,6 +49,8 @@
> >   #include "stm32f429.dtsi"
> >   #include "stm32f429-pinctrl.dtsi"
> >   #include <dt-bindings/input/input.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/gpio/gpio.h>
> >
> >   / {
> >       model = "STMicroelectronics STM32F429i-DISCO board";
> > @@ -127,3 +129,25 @@
> >       pinctrl-names = "default";
> >       status = "okay";
> >   };
> > +
> > +&spi5 {
> > +     status = "okay";
> > +     pinctrl-0 = <&spi5_pins>;
> > +     pinctrl-names = "default";
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> > +     cs-gpios = <&gpioc 1 GPIO_ACTIVE_LOW>;
> > +     dmas = <&dma2 3 2 0x400 0x0>,
> > +            <&dma2 4 2 0x400 0x0>;
> > +     dma-names = "rx", "tx";
>
> Insert blank line here.
ok
>
> > +     l3gd20: l3gd20@0 {
> > +             compatible = "st,l3gd20-gyro";
> > +             spi-max-frequency = <10000000>;
> > +             st,drdy-int-pin = <2>;
> > +             interrupt-parent = <&gpioa>;
> > +             interrupts = <1 IRQ_TYPE_EDGE_RISING>,
> > +                             <2 IRQ_TYPE_EDGE_RISING>;
> > +             reg = <0>;
> > +             status = "okay";
> > +     };
> > +};
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
