Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3E0E9C21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwDikdK/uwHMmXFxmQwZ/C0cMaXKK/1JKErD0Kn8Q3o=; b=n72hZEELk9qBra
	7E7tLnbTTJO3qJak1hP1vyGG0t+EaC1Lx1uf9B7g2EULa55X9ZWaEe2vTOv8fmLjwsNdFBnB9vJhT
	oDgECdq7D4LY7v160Abs7XXYRnvRc8vnz7dBnoZlj5evyK+lBsFkcqiYn6zDZQXl4QFgBVKu0t+cZ
	oYDljptXfPils3iIdWZhtS9+9x7+STYAsozWl+88UGuyQH3xFkG3/2yjdd1Y9Nxq+LYhI5puVI4FV
	nKLVM8OEj+WkxrzKN2XXUGAxo8Iq7WdbXU4cXb4h/W5xDd7T+TMcFXey9i+LiMxzHuxPLSjUWSOua
	2PfOoq/6/f2FKv9D5IRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnpB-00039c-BH; Wed, 30 Oct 2019 13:15:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnp1-000396-Ky
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:15:37 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EBE32087E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 13:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572441334;
 bh=ZQ8wXuUMbmLF+7iLilvz7470uxzp4fCYgdwJ46q8UDw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CjVGGXICTSUHgFntIBYl9dCBlQYAW+MolJ+bc1cEfg4Qk0KN9at+PlKX7SqdVumfF
 k6zoOIVFcoxtZDQlEjFYfxgQ7E/uHptP/kZPhdNoHmjchsJyUkLWmdV0o06LoHfmfi
 O6nYN/6WmOpqvJL9mz+aHTeYX2sAX0D96pdDA894=
Received: by mail-qk1-f178.google.com with SMTP id q70so2595531qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 06:15:34 -0700 (PDT)
X-Gm-Message-State: APjAAAVBmn5rIXYedKEafXBotEWzlfiB+JaMmJPf3oXb8CS2YlT7VJX6
 5HMuFB6lNE3UAogII/5+8xU7kjDzxHhZcIVOZQ==
X-Google-Smtp-Source: APXvYqzQvkLpQpCNPJ6YqCXaJT5G04cRDIA6M11aMboAC3ocOQCkAOlN1aYPsgHKxhNaEZf9dV/Q6BaiEbwVRcswYl0=
X-Received: by 2002:a05:620a:226:: with SMTP id
 u6mr21719746qkm.393.1572441333508; 
 Wed, 30 Oct 2019 06:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191024172234.5267-1-codrin.ciubotariu@microchip.com>
 <20191029213757.GA8829@bogus>
 <20191030085305.uwrt5g3mmbwthwms@M43218.corp.atmel.com>
In-Reply-To: <20191030085305.uwrt5g3mmbwthwms@M43218.corp.atmel.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 30 Oct 2019 08:15:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLuPb357uaiyR3N0QOBkcfXOAm57VbWbhaC=90aFmUVkg@mail.gmail.com>
Message-ID: <CAL_JsqLuPb357uaiyR3N0QOBkcfXOAm57VbWbhaC=90aFmUVkg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: at91: Enable slewrate by default on SAM9X60
To: Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_061535_726375_85604CC5 
X-CRM114-Status: GOOD (  19.99  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 3:53 AM Ludovic Desroches
<ludovic.desroches@microchip.com> wrote:
>
> On Tue, Oct 29, 2019 at 04:37:57PM -0500, Rob Herring wrote:
> > On Thu, Oct 24, 2019 at 08:22:34PM +0300, Codrin Ciubotariu wrote:
> > > On SAM9X60, slewrate should be enabled on pins with a switching frequency
> > > below 50Mhz. Since most of our pins do not exceed this value, we enable
> > > slewrate by default. Pins with a switching value that exceeds 50Mhz will
> > > have to explicitly disable slewrate.
> > >
> > > Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > > Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> > > ---
> > >  drivers/pinctrl/pinctrl-at91.c     | 4 ++--
> > >  include/dt-bindings/pinctrl/at91.h | 4 ++--
> > >  2 files changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> > > index 117075b5798f..c135149e84e9 100644
> > > --- a/drivers/pinctrl/pinctrl-at91.c
> > > +++ b/drivers/pinctrl/pinctrl-at91.c
> > > @@ -85,8 +85,8 @@ enum drive_strength_bit {
> > >                                      DRIVE_STRENGTH_SHIFT)
> > >
> > >  enum slewrate_bit {
> > > -   SLEWRATE_BIT_DIS,
> > >     SLEWRATE_BIT_ENA,
> > > +   SLEWRATE_BIT_DIS,
> > >  };
> > >
> > >  #define SLEWRATE_BIT_MSK(name)             (SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
> > > @@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
> > >  {
> > >     unsigned int tmp;
> > >
> > > -   if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
> > > +   if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
> > >             return;
> > >
> > >     tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
> > > diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
> > > index 3831f91fb3ba..e8e117306b1b 100644
> > > --- a/include/dt-bindings/pinctrl/at91.h
> > > +++ b/include/dt-bindings/pinctrl/at91.h
> > > @@ -27,8 +27,8 @@
> > >  #define AT91_PINCTRL_DRIVE_STRENGTH_MED                    (0x2 << 5)
> > >  #define AT91_PINCTRL_DRIVE_STRENGTH_HI                     (0x3 << 5)
> > >
> > > -#define AT91_PINCTRL_SLEWRATE_DIS  (0x0 << 9)
> > > -#define AT91_PINCTRL_SLEWRATE_ENA  (0x1 << 9)
> > > +#define AT91_PINCTRL_SLEWRATE_ENA  (0x0 << 9)
> > > +#define AT91_PINCTRL_SLEWRATE_DIS  (0x1 << 9)
> >
> > This is an ABI. You can't just change the definition.
>
> There is no DT using these definitions. They have been introduced for our new
> SoC but its DT is not submitted yet. I assume it's not too late to do this
> change as nothing will be broken.

Okay, then state this in the commit message.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
