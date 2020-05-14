Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160DA1D30AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7HKZzJsQ9wJRl59Y2hrdL7DIUDClYi0l6kZeFWOPxk=; b=DIE9fhlYoo2NNV
	rjuJuJc/xgEnNrOp6/VCxlJ6GsT7M5NYnEm+6pC6h4a2adRzdLi7glLnDLH+h0pmLmhz9TD7ppYXZ
	f5Z3gBYhrjIWEBGrT3pbC3zTENxKTorCqmIhxgA11PORMqcemXd4nU14f5Q5J6wZyXLzs6Rv9wLu0
	r5MTl7M421a5lYLicae0UnxuMsGSlNeXvwNUvQqIIottFstEROpDRPUrxghQgSHTuVrR6d5gWEeBT
	+uf4GCI6J3F3HPENGucQhdyKjGvmmNo3m6C0UWhVp669i7xsgXXsgqs8icQ7bVYlSVf6gBe1DSw9S
	evWe3cRsLLVAH2qiNcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDb7-0001tI-LA; Thu, 14 May 2020 13:08:25 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDaz-0001sy-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:08:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id f3so2928768ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 06:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TxjLQAmlgCmIbW66ttakmR+UHsu55ZGYYjiNgQ7pD60=;
 b=HQy57GttiwVxh24sQLfeiQngcOiErLC6lrc6A6arkVum1pGd0PXCrQaHvOCK4hPNEV
 b/059ZwlWVA1AS8FK1q2/gCJIeug5/mReyn6myQQGKj7Nqz7CVRv86DNFSRbqqL9jNJu
 tITMdAKorHxeF7YvlIBXB8sc7+tzC2Jw9Tf81bsZ6FJbcXdDfUt6nlqKXBjb5tQmn5MB
 gsR5CUzH/zKAUZsVkX976vv3QKAm1v8PnXFZ2eAaurKTEVbK4xwSxyYq0RD28bfWf5Cm
 c7yPr6SgCzeFtV1ZHtYdDrrDUR4DC+KkcElHzh4hDhUaeG4VHhyQV+JNQPmJwrKZiy5d
 Dj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TxjLQAmlgCmIbW66ttakmR+UHsu55ZGYYjiNgQ7pD60=;
 b=Aqy1S5TJMIuG/eyTpPXWwEbl4KQiB2n+vKJxfPbjHIzpl8wNdD7Wjf8ny6ShIuAJA3
 vvkSTOPer8UpxVH/eLV2fr9a4VUJwmjCMsYO9oTRB5qk4l3FEivN8/LcvF0zyTvFJHjt
 Jc7Q9fXhrTJY8sZ4mnsJL2p4Kz5aFmSPA7my7ENhwAZqgKhHm3eYsIhBP0dZta5ANZNG
 QddgnzwN5l8ftj/PGGf+Kwvi9lYJng7Y9Dw2k1LEJj4dZR9KJJBFLXo07hyIbo9k30Gl
 EMbNiRGY7z5fJZc/Fn+WIwZM93eOHTQ4/cdvQWhD+J39Q9xXFpMawyR30N/y09F4b3Qz
 XmZw==
X-Gm-Message-State: AOAM530QzlXYltlSt8HG0wk1dM9Iv2DGgEX3tDR8or7uokLfNvgQtLJN
 U1nV6w5hMPw9FzmM51T6OyQ7iEFI1E+hBr6rPiY=
X-Google-Smtp-Source: ABdhPJxFXm/snfV7f+PaeEk0/JpSTrHSkPZMuSqd6hBKK/zxQapVp8rf2U8UIu+qvc9Q33J56Hi8hFlnpuvp0XR2Wlk=
X-Received: by 2002:a5d:8b8e:: with SMTP id p14mr3979084iol.110.1589461696306; 
 Thu, 14 May 2020 06:08:16 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
 <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
In-Reply-To: <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Thu, 14 May 2020 21:07:40 +0800
Message-ID: <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341
 on stm32429-disco board
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_060817_694911_82C935B9 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dave Airlie <airlied@linux.ie>, Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Thu, May 14, 2020 at 8:53 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
>
>
> On 5/14/20 10:24 AM, Linus Walleij wrote:
> > On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
> >
> >> From: dillon min <dillon.minfei@gmail.com>
> >>
> >> Enable the ltdc & ili9341 on stm32429-disco board.
> >>
> >> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> >
> > This mostly looks good but...
> >
> >> +&spi5 {
> >> +       status = "okay";
> >> +       pinctrl-0 = <&spi5_pins>;
> >> +       pinctrl-names = "default";
> >> +       #address-cells = <1>;
> >> +       #size-cells = <0>;
> >> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> >> +       dmas = <&dma2 3 2 0x400 0x0>,
> >> +              <&dma2 4 2 0x400 0x0>;
> >> +       dma-names = "rx", "tx";
> >
> > These DMA assignments seem to be SoC things and should
> > rather be in the DTS(I) file where &spi5 is defined, right?
> > stm32f429.dtsi I suppose?
>
> I agree with Linus, DMA have to be defined in SoC dtsi. And if a board
> doesn't want to use it, we use the "delete-property".
Yes, will move to Soc dtsi in next submits.

i'm working on write a v4l2-m2m driver for dma2d of stm32 to support
pixel conversion
alpha blending between foreground and background graphics.

as you know, some soc's engineer trying to add this function to drm system.

do you know st's planning about soc's hardware accelerator driver on stm32mp?
such as chrom-art, will add to drm subsystem via ioctl to access, or to v4l2,

thanks.

>
> >
> > It is likely the same no matter which device is using spi5.
> >
> > Yours,
> > Linus Walleij
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
