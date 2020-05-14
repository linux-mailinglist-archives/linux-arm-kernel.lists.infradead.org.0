Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F157B1D2B1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 11:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZ7MOXwXw6gdAx6mtsrXMcfEIexlg7cRz3ocWlZk0bk=; b=pQbmjAfq6JaUTX
	/Dbxpw37xNjgS+ZUwh67zSZPAahM49H7ZA+02Y7b22+Ie7oNaDyBnQbfEsbrp7zZ0IRRKsrYS6JUi
	E+hBlVWlFtIUIgyleo+ws1HUvxxwoHaGmHZdeyTPGqoLA01c35OyA1/7S/JYHXVz6OeiacZe1bPMz
	PynFlWGu163dvBdzNYbc/jgsJi9LSOBEn7y6ZLDhCRUEfDFcLOTJNKbdoFgm8y4LIoVnVM5KGEGdd
	oAp+CwRn30YIoOpvYXWj0c72ffnPgVGEyMIXvsGQBVH4NwLzV3Evv2dPYKlJAJFb0Lrdr219e7784
	v7UgcJUV0ljVsFvaJvtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZA0e-0000Dd-Sc; Thu, 14 May 2020 09:18:32 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZA0T-0000DC-7Z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 09:18:22 +0000
Received: by mail-il1-x143.google.com with SMTP id r2so2591315ilo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 02:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ydoBtyjQkZ71HME1rY9/L3edxtQ8UTZXOUoGaJuGgqs=;
 b=ZYqSa8L/3MIGZtdjLm0uDEAUX9qw4WfHyEd/Xw3RGOzYb1CkiCmu64wr9INtmjvKAv
 emNDZI8PC9mqxdaFO/x+7iDPFrRBkDTofku3oFwDsonyzK71UUmM/f2Ph34IYVB1ePui
 TRYJEkf6+HZ5dpJwh+khw4qEqdRQ1Yz4UtEMkaULjMFHZPky5finqqVyz2JPi5d/Mocq
 Ga+oJmmuDjPRydwsVFRhLCydvb7MAqHM/hyGTEJ+1CxinGcEilDhOARv4nY1Mia/4k5g
 0CjcHoE1TsdomFZGSZaCa096y7nxhGm4PrO3r+27z96mUV9fH7IfZq7KcSOXdK64+inC
 4q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ydoBtyjQkZ71HME1rY9/L3edxtQ8UTZXOUoGaJuGgqs=;
 b=lJ7HfGq9eApBMgyqBDm9UvxOpYLqH5PLvVJnqbLZPcikxSMxejmS2Ou/7A3E04Etvu
 4+vny9mGT1QEFGIjkaMab8D4r69teBBK5/d/hV/uKw2GnodmfNZO5vgpJLawEOw2gDp3
 eGIREBi8qcuvOQk72Qb+hzQOjGqUk6aDLL4rW0cdp8jWbyryB7I4jvoMUXylHrI3oNy6
 IuSzlmXOVrpEB0fCJmedSrI3F/HGXQL6aN3in9/YnIxcz1KeWRFR244rf7+79wYET3ap
 mS2BEC2gKT64hTdcWbIM93wJl9nDZl06ICcG4lQg22wv9XQwM7QXoWgF9t/leTZWn2ki
 04KQ==
X-Gm-Message-State: AOAM5325rvuZFfBcV522YOICMrzrKplGDnh/pHa6Cul3mYxNiiJ1iYU4
 JQCVX/dFD7hjIW+vdGREi5dGTBEm2fi9CjNhp/Q=
X-Google-Smtp-Source: ABdhPJx7BSQgQE4F6HtJZDnTuhUIhxQY0EfiByegZhfXtsPPqB/OWed28lLtaW/x8ef7ztWZ46mbWs3Tdl5vZCAZRP0=
X-Received: by 2002:a92:3556:: with SMTP id c83mr3346133ila.218.1589447900002; 
 Thu, 14 May 2020 02:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
In-Reply-To: <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Thu, 14 May 2020 17:17:42 +0800
Message-ID: <CAL9mu0JZdgJ0yjULUHkXzU0CyKeMi0dcA1L7PxPiZucpuuyQ9Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341
 on stm32429-disco board
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_021821_295559_FB27CCA4 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Linus,

thanks for reviewing.

On Thu, May 14, 2020 at 4:24 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
>
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > Enable the ltdc & ili9341 on stm32429-disco board.
> >
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
>
> This mostly looks good but...
>
> > +&spi5 {
> > +       status = "okay";
> > +       pinctrl-0 = <&spi5_pins>;
> > +       pinctrl-names = "default";
> > +       #address-cells = <1>;
> > +       #size-cells = <0>;
> > +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> > +       dmas = <&dma2 3 2 0x400 0x0>,
> > +              <&dma2 4 2 0x400 0x0>;
> > +       dma-names = "rx", "tx";
>
> These DMA assignments seem to be SoC things and should
> rather be in the DTS(I) file where &spi5 is defined, right?
> stm32f429.dtsi I suppose?
>
> It is likely the same no matter which device is using spi5.
>
> Yours,
> Linus Walleij

Yes, the dma assignments can be moved to stm32f429.dtsi file.
i will change it.

thanks.

best regards.

dillon,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
