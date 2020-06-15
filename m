Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1759F1F9449
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J+VOnZuaaZ3fkhNjIXxujS7Y9/mhO9Y2VzYqBeLBGU=; b=mYl21sX+1qt5eZ
	l6wctIdPiX+uT+xbb+0TY64DMrVkh5mA4hscs9JYazETXPk/l1oYoZ71eBGli2lE9WjS0DvNLFWVw
	9tEusWNEXUZpcCtyAztL+MwTsmP2HE9CGJqbFvvPeXQuxjylsoK8KECVGHXLFTWNBaNtUwHpeJ7QN
	eNWQVhbvm+L2qUC78Czi+V425yDvr6vTlYY/bCrY2kqYmqVBvELCY09W/n5mneWVRyql0E8zkNlTK
	5FHklkbFPuHGR44IN4zihWxbA++uXmV8mqamMrSguzeXKs8YwOMv+7D70TrONJazTdtaTe+ueA8ct
	FBfvEHHi8Na+ftybdqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkm0o-0006RA-1u; Mon, 15 Jun 2020 10:06:42 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkm0f-0006Qh-Ux
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:06:35 +0000
Received: by mail-il1-x143.google.com with SMTP id 9so14672646ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 03:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V4ilhIOGf08PxKYEnKjQV/fXI0rSU5dBatEgVzDPnAc=;
 b=P0cRrsg3JH6SfJ4oLMqbykTLO/eOgi7Euj53OY7iTtxCNRxChA79rSj5NkQ2Edupqx
 N7INsfzKBCOM3rgdAyGAIDdyshNxznnV8Xz3osw7SQF6gmzqOFC5uX9LoirJnCP6U6JC
 O2AjzpCtuTlytgLZXF5kTpv3q+9IF2SrQFdsuMDSPP6G6GaDAaR7Jog8iCmO0u6hXKwp
 Y1S4ZPY0aDWg/GcIFKpoe65TJRjHAvoSf2rduaUbd1v7PpynsqSrwAhMOGcl95m0oV+B
 tgZwVsAsOQmTp2hnW18vdQXnCZ+ecuBp9aBzFXlJLNH7OG4L8xZkidwnaQBikC6pkoob
 Q9FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V4ilhIOGf08PxKYEnKjQV/fXI0rSU5dBatEgVzDPnAc=;
 b=BVyrmvDY7plB5z2QeQfc5k/aQcDGz+Xam18VvjxR+wXAWqqzvMHb8Lay+KWEX3YRl4
 oCY5YOhJgIkTkoKp3PncrfezRW8XzjEgEYmv44r8i1fGs79k7SyHZ8NwQ0GpmrBWHEAg
 DmtCIObqd0piWcEh+0cMUlKuo3arVGiq364TtDJIPuHnZskrkJVCxMeQKUKih1crlrIv
 9stYDf4KhSRDldt1+rGLbDdnIz3XMJ4k4NTg1fyEM/0IkHZXCOCK1ckZIAzMVz7bxgkk
 +S5zIzfFJnRH9r9gcAIqzd0AugVYLfWjLK+r23rXla3XEkVGHb0Jg3WfJbbfhWxTqkcm
 xEXw==
X-Gm-Message-State: AOAM530FdHTYhwwGEWghpzgXz8KEvQ4VWY2TieJBTuA+0gI2EV2SkLQ4
 NfzM/0HzHdJ6/ZvWl+rdlA+hKmU3vhABjQwNgJU=
X-Google-Smtp-Source: ABdhPJy7MG4dIBMDcK+E97dM8L8Kkqqke6SfX/trPu5MYMPHvmU2jZK0syr68+bQImnrTKFXitAZyACYHc7TzBxR/TA=
X-Received: by 2002:a92:5bd2:: with SMTP id c79mr23408564ilg.218.1592215593037; 
 Mon, 15 Jun 2020 03:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-3-git-send-email-dillon.minfei@gmail.com>
 <2273a168-7b14-9e28-5904-b9d2c2e2d9d3@st.com>
In-Reply-To: <2273a168-7b14-9e28-5904-b9d2c2e2d9d3@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Mon, 15 Jun 2020 18:05:56 +0800
Message-ID: <CAL9mu0LyFPjf+RLwet43zgcEnO9zhJJ=v1BsQqN8KxYta7Q=DQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/9] ARM: dts: stm32: Add pin map for ltdc & spi5 on
 stm32f429-disco board
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_030634_015546_99CA2CA2 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Hua Dillon <dillonhua@gmail.com>, p.zabel@pengutronix.de,
 linux-clk <linux-clk@vger.kernel.org>, Dave Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 thierry.reding@gmail.com, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 5:45 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi Dillon
>
> On 5/27/20 9:27 AM, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > This patch adds the pin configuration for ltdc and spi5 controller
> > on stm32f429-disco board.
> >
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> >   arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 67 ++++++++++++++++++++++++++++++++++
> >   1 file changed, 67 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> > index 392fa143ce07..0eb107f968cd 100644
> > --- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> > @@ -316,6 +316,73 @@
> >                               };
> >                       };
> >
> > +                     ltdc_pins_f429_disco: ltdc-1 {
>
> Sorry I missed this issue during review. I changed ltdc_pins_f429_disco
> by ltdc_pins_b when I applied your patch.
Okay, thanks for reviewing.

Regrades,
Dillon,
>
>
> Regards
> alex
>
> > +                             pins {
> > +                                     pinmux = <STM32_PINMUX('C', 6,  AF14)>,
> > +                                             /* LCD_HSYNC */
> > +                                              <STM32_PINMUX('A', 4,  AF14)>,
> > +                                              /* LCD_VSYNC */
> > +                                              <STM32_PINMUX('G', 7,  AF14)>,
> > +                                              /* LCD_CLK */
> > +                                              <STM32_PINMUX('C', 10, AF14)>,
> > +                                              /* LCD_R2 */
> > +                                              <STM32_PINMUX('B', 0,  AF9)>,
> > +                                              /* LCD_R3 */
> > +                                              <STM32_PINMUX('A', 11, AF14)>,
> > +                                              /* LCD_R4 */
> > +                                              <STM32_PINMUX('A', 12, AF14)>,
> > +                                              /* LCD_R5 */
> > +                                              <STM32_PINMUX('B', 1,  AF9)>,
> > +                                              /* LCD_R6*/
> > +                                              <STM32_PINMUX('G', 6,  AF14)>,
> > +                                              /* LCD_R7 */
> > +                                              <STM32_PINMUX('A', 6,  AF14)>,
> > +                                              /* LCD_G2 */
> > +                                              <STM32_PINMUX('G', 10, AF9)>,
> > +                                              /* LCD_G3 */
> > +                                              <STM32_PINMUX('B', 10, AF14)>,
> > +                                              /* LCD_G4 */
> > +                                              <STM32_PINMUX('D', 6,  AF14)>,
> > +                                              /* LCD_B2 */
> > +                                              <STM32_PINMUX('G', 11, AF14)>,
> > +                                              /* LCD_B3*/
> > +                                              <STM32_PINMUX('B', 11, AF14)>,
> > +                                              /* LCD_G5 */
> > +                                              <STM32_PINMUX('C', 7,  AF14)>,
> > +                                              /* LCD_G6 */
> > +                                              <STM32_PINMUX('D', 3,  AF14)>,
> > +                                              /* LCD_G7 */
> > +                                              <STM32_PINMUX('G', 12, AF9)>,
> > +                                              /* LCD_B4 */
> > +                                              <STM32_PINMUX('A', 3,  AF14)>,
> > +                                              /* LCD_B5 */
> > +                                              <STM32_PINMUX('B', 8,  AF14)>,
> > +                                              /* LCD_B6 */
> > +                                              <STM32_PINMUX('B', 9,  AF14)>,
> > +                                              /* LCD_B7 */
> > +                                              <STM32_PINMUX('F', 10, AF14)>;
> > +                                              /* LCD_DE */
> > +                                     slew-rate = <2>;
> > +                             };
> > +                     };
> > +
> > +                     spi5_pins: spi5-0 {
> > +                             pins1 {
> > +                                     pinmux = <STM32_PINMUX('F', 7, AF5)>,
> > +                                             /* SPI5_CLK */
> > +                                              <STM32_PINMUX('F', 9, AF5)>;
> > +                                             /* SPI5_MOSI */
> > +                                     bias-disable;
> > +                                     drive-push-pull;
> > +                                     slew-rate = <0>;
> > +                             };
> > +                             pins2 {
> > +                                     pinmux = <STM32_PINMUX('F', 8, AF5)>;
> > +                                             /* SPI5_MISO */
> > +                                     bias-disable;
> > +                             };
> > +                     };
> > +
> >                       dcmi_pins: dcmi-0 {
> >                               pins {
> >                                       pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
