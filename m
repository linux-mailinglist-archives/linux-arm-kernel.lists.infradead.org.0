Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD87C10B7E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 21:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yyZUBfCkfnh4LTOMGg+Jagl9OK+uldyK4Fr4bIcovc=; b=qiVbu7DEQA/kDl
	ygcW0eIjfcpYdsYD0/xQ5y6sXFveadID80qt3iGF/cb8OzSdlb1ObFpOC4AQY9k58WKMfpOl/F8IY
	AlElt9JvfwshobHOLC3t1Tf2j4E04Em95vJkrAJS7sG2j5Xnywn+ZivuSXYfD/Xip/7yQAibKwyf/
	sp4ZTTenyCpi2MbkUtpjqEsWkY3lQ58ZJ3timsj3RCdKZvhTSb63RQ+WRkkq7K0sqCpCAnfpJVNiW
	MOha0KY8UoW7nlscIeysx4/AfDGJY45qatYfQBa3vWxChlUtLTZJIqkbZtTwZD3eYOEqBKhTE4wnn
	6WY8IVims3CSnky1Ifvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia44i-00052n-Sg; Wed, 27 Nov 2019 20:38:12 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia44Y-00051Q-RJ; Wed, 27 Nov 2019 20:38:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id w11so20335705ote.1;
 Wed, 27 Nov 2019 12:37:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=14vyCpwlco5dNMekZ671HzsQ/qD/jZMl32Sz5ULoC/U=;
 b=TbtDokcVXJefsEWMvSaPzEh5dIurBybvR0zu9LHr6h97ze16YLVDTrniApvEHX06bu
 o8q2SjPfXxkcJ73egrrskyTQmQidaOmFymWFwAkswfexeNUUNsiY4X8VVBvTZAUPthSx
 Vr2J4heSrCrGcb9rWOGO7KIMPAcTr5bpG7cZy97P2ql3dlkuUfNY2KAsWwm7FM2Ys439
 lVe9Ne+MSmsg9hzAWISygWYfiGR/DnIW6EtGRxJHQGj90On1447mNZysvgDHQM4+LyOR
 2WWyBF+Daq5/bJRNS9o509EJDWU7zKjDn/uS2Mx8oFBzSlOscPo22RooaQjLYzgKJtEP
 BMUQ==
X-Gm-Message-State: APjAAAVbBPxsG0cWg6QsyelVd31pUSkx0Hp7utOslIEF5TYMr6zbv7Dc
 igc1HLekxy+YvLfGy3Mt4twQA/550CYg44kzG+I=
X-Google-Smtp-Source: APXvYqyekyFnyyTzxDAaVF4lh76x3pVg0AJcETDtG/R5UDB8kyib7ugeAakdgVvr7ZJMAAkTJwIUv0P5kqimosEUmPw=
X-Received: by 2002:a9d:2073:: with SMTP id n106mr5117337ota.145.1574887078997; 
 Wed, 27 Nov 2019 12:37:58 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
In-Reply-To: <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Nov 2019 21:37:47 +0100
Message-ID: <CAMuHMdUqfRioTBV27AKx9zv9YuSqEod6x+A4aguf=h20TDXr6w@mail.gmail.com>
Subject: Re: [PATCH 4/5] pinctrl: sh-pfc: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_123802_882710_FFC7754A 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nishad,

On Wed, Nov 27, 2019 at 5:46 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:
> This patch corrects the SPDX License Identifier style in
> header files related to Reneses Soc pinctrl driver.
> It assigns explicit block comment for the SPDX License Identifier.

Is it incorrect to not have an explicit block comment?
Other recommendations have been to integrate the SPDX comment line
into an existing comment header, if it exists....

> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> ---
>  drivers/pinctrl/sh-pfc/core.h   | 4 ++--
>  drivers/pinctrl/sh-pfc/sh_pfc.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pinctrl/sh-pfc/core.h b/drivers/pinctrl/sh-pfc/core.h
> index b5b1d163e98a..5ad0ab8f9e14 100644
> --- a/drivers/pinctrl/sh-pfc/core.h
> +++ b/drivers/pinctrl/sh-pfc/core.h
> @@ -1,5 +1,5 @@
> -/* SPDX-License-Identifier: GPL-2.0
> - *
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
>   * SuperH Pin Function Controller support.
>   *
>   * Copyright (C) 2012  Renesas Solutions Corp.
> diff --git a/drivers/pinctrl/sh-pfc/sh_pfc.h b/drivers/pinctrl/sh-pfc/sh_pfc.h
> index 640d2a4cb838..fff9cbb7a0f8 100644
> --- a/drivers/pinctrl/sh-pfc/sh_pfc.h
> +++ b/drivers/pinctrl/sh-pfc/sh_pfc.h
> @@ -1,5 +1,5 @@
> -/* SPDX-License-Identifier: GPL-2.0
> - *
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
>   * SuperH Pin Function Controller Support
>   *
>   * Copyright (c) 2008 Magnus Damm

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
