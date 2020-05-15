Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD381D4974
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQBSuVBS1xt+1omp/P7bvsHjr9zjQf2rSlAzRLemVXE=; b=Ky925bfCfYEZ+m
	zmMGnpM8+i10u5lpbk6uJghw5ukGrPyjQ0V3qauLYTuUX+a+bAJWeMRV5+V9+68Oya3+T9RWXRa11
	L6Q4DGEr+FErS87ztTqdG5SNlsBOydm+nmef0Gum38vA6OMsorI2LcYBP59Y5ON/tHuwhN/hXX7WS
	S588ggzMFjg6EyswvCpwVlJ7XmdQzC1InMk1RGP2Nh2L3y3TfrD8P/VAsNsNxnmlwrdbNpK5IruFN
	79wVhV/Gsqk3nDQWqC+RAkivRP/vrmt3IFn1VOHCk71Dt8cPYBOansJ655mrFoagwId3W8QdgUTPV
	dHgugUWCylQQ5sMEWzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWay-0005Dw-71; Fri, 15 May 2020 09:25:32 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWaa-0003yn-DV
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:25:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id o5so1854295iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 02:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cc4MG6c747g2GpEAJm056wqMJo63ltnWhdsdBk/YjvU=;
 b=ScyKUI9YtsU9p9A901j1O1w7H7TdnTlwcnuWzKYRo3T+bqoIZc8vOQ9X95sdz82tnm
 urIdlt/GUp9Yfq/9xFWZj8mjEJR05XCX47NoY/P6Qt0R26F6a4+luq3nyePE1nmFInMi
 6BAfAKoBoWEhG6za8fIQD/VCbuJv1yUxDeWf/yoarFgULSJjRsGjQawtvMMXahIIItR+
 KspUduc8eOvKKZ1LH2ZaKUn870ew37S9JgdauJkgRN1oLquW5K4IJPZ6HqXyZzq+NGxx
 sE/WbC8Y9Ybw+RAytAcJEnTXxxp56g590pE4tr+7ttn7UIBYdlYCf8fDbzQ8qu7KV+M1
 0QRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cc4MG6c747g2GpEAJm056wqMJo63ltnWhdsdBk/YjvU=;
 b=PnYKSk85F5qCk9VQrQ6LzLDu3WOMUrA9wP06EYOFAN7xyYx3Tdcslkc76VUbFQIxlx
 Vcu471+O4oz8xW7du1SdHXrKfQxfJ/VFtlVX0Vcwy4u67mTWNMTw0Edq8u9ewM+e3Hy7
 HvBbHTzZWMOJ/rvDEHin1JY+jpzCYFzP1diaJNk0ZbrAiJ/r6yxyVVjr39APae8mdfK3
 4XEbr29ohL4xhxv3jeTMbbk6B9krgAe1pfck6CWbm5+bD59XT8bFheiQNH/FGuLc/Hrs
 ll26lU3ALlbRwRasuIsUaJ/N+1HLevSDIGgo9HupRt5t+ae1NNoaTHVIFMFcEcGM3lk8
 reFw==
X-Gm-Message-State: AOAM530oh1FWdwi98TL+4ZUwK8ShN3+/faZwjKbk5BjZnvaLBswiPZrN
 04nXTufTG/EMKmIRFru4lLhIPpWR8KV0ppii83w=
X-Google-Smtp-Source: ABdhPJyr7Q+WoA1oeyUp1TGmDyNR7js+O5d1aEorqbluWDehBMJqofjEnccsNnqBusTGHRHYyHOE+n76LGnfJ7BM2as=
X-Received: by 2002:a05:6638:1121:: with SMTP id
 f1mr2281062jar.62.1589534706577; 
 Fri, 15 May 2020 02:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
 <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
 <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
 <818b93b4-4431-8338-cd90-ed125ecac615@st.com>
In-Reply-To: <818b93b4-4431-8338-cd90-ed125ecac615@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 15 May 2020 17:24:29 +0800
Message-ID: <CAL9mu0L6d2V5qypPfOSeMdhc=DdHkcsaF4GysNG-vfDe5npkhw@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding
 with ili9341 on stm32429-disco board
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_022508_477639_1AFFCD94 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Michael Turquette <mturquette@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

thanks for reply.

On Fri, May 15, 2020 at 4:31 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
>
> On 5/14/20 3:07 PM, dillon min wrote:
> > Hi Alexandre,
> >
> > On Thu, May 14, 2020 at 8:53 PM Alexandre Torgue
> > <alexandre.torgue@st.com> wrote:
> >>
> >>
> >> On 5/14/20 10:24 AM, Linus Walleij wrote:
> >>> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
> >>>
> >>>> From: dillon min <dillon.minfei@gmail.com>
> >>>>
> >>>> Enable the ltdc & ili9341 on stm32429-disco board.
> >>>>
> >>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> >>> This mostly looks good but...
> >>>
> >>>> +&spi5 {
> >>>> +       status = "okay";
> >>>> +       pinctrl-0 = <&spi5_pins>;
> >>>> +       pinctrl-names = "default";
> >>>> +       #address-cells = <1>;
> >>>> +       #size-cells = <0>;
> >>>> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> >>>> +       dmas = <&dma2 3 2 0x400 0x0>,
> >>>> +              <&dma2 4 2 0x400 0x0>;
> >>>> +       dma-names = "rx", "tx";
> >>> These DMA assignments seem to be SoC things and should
> >>> rather be in the DTS(I) file where &spi5 is defined, right?
> >>> stm32f429.dtsi I suppose?
> >> I agree with Linus, DMA have to be defined in SoC dtsi. And if a board
> >> doesn't want to use it, we use the "delete-property".
> > Yes, will move to Soc dtsi in next submits.
> >
> > i'm working on write a v4l2-m2m driver for dma2d of stm32 to support
> > pixel conversion
> > alpha blending between foreground and background graphics.
> >
> > as you know, some soc's engineer trying to add this function to drm system.
> >
> > do you know st's planning about soc's hardware accelerator driver on stm32mp?
> > such as chrom-art, will add to drm subsystem via ioctl to access, or to v4l2,
> On stm32mp we do not plan to use chrom-art in drm or v4l2 because it
> does fit
> with userland way of working. We use the GPU to do conversion, scaling,
> blending
> and composition in only one go.
> As explain here [1] DRM subsytem it isn't a solution and v4l2-m2m isn't
> used in any
> mainline compositors like Weston or android surfaceflinger.
>
> Benjamin
>

After check stm32mp's datasheets, they don't have chrom-art ip inside. sorry for
didn't check it yet.

for stm32h7 series with chrom-art, jpeg hardware accelerator inside.
does st has plan to
setup a driver to support it ? i prefer v4l2-m2m should be easier to
implement it.
co work with dcmi, fbdev.

thanks.

best regards.

Dillon
> [1]
> https://www.phoronix.com/scan.php?page=news_item&px=Linux-DRM-No-2D-Accel-API
> >
> > thanks.
> >
> >>> It is likely the same no matter which device is using spi5.
> >>>
> >>> Yours,
> >>> Linus Walleij
> >>>
> > _______________________________________________
> > Linux-stm32 mailing list
> > Linux-stm32@st-md-mailman.stormreply.com
> > https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
