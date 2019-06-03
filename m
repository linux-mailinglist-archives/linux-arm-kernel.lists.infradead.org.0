Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D163532920
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6yCnho6cZfSr82zs7EyxC1ig1XYRFkaCoGiXpOhbkY=; b=vAI60H6XrVd8C2
	N5whaVJjkVcpsPrg8Aq3Efol/NC/kDYyKXp+cUP0hdxirELKzoGpru0vcNLAILA78wTS2Y7SSFZyX
	jpfobNrO9YeejdNOIBNwic1f/6qt7qvWQu/14QU+sy7Z9WYdHDYcV0Lr7ympb+Kw4zJFJomQwHB14
	2k+zQBeDiOM3gsP5MljCuPL9hcF4Ou3kuGHblfKCGMQMXOkmyxgF2QLQrk1F5b00SjvPYczHa/DgJ
	Tc8nMw1/5huBamUG/IuFl3la9EnsKV9Xwu7QM5jETTIKvZ6MmtVkQaTUKSetVjtjDx6fsQKvLcl+F
	THOGiwr4RsBMHPCwAauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXh4q-0002LL-Vf; Mon, 03 Jun 2019 07:08:17 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXh4j-0002Kh-KL
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:08:11 +0000
Received: by mail-lj1-f195.google.com with SMTP id a10so11868870ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 00:08:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WQJinh/xC2bOeYFsYlUlkNYdlsn0JSMzJ6+7ugAlLz8=;
 b=airqYKLeXAjzh5ocZ0xJ5JkOHgaLCDLNiWyLD61qv4InE+CmXpeyHDpB539zrotcdW
 Lw0zmcttS+cFRwfHPYIXTYQT3ulfE9TERrsC3XkF8r+wLOB3x/Wqph0yonusQ3Sob/qH
 vmBFdkHU8T04jA419sC27LmiCMeIIHSVqFpcDyIRA6B82woYPZDReT0k6mqdFE3j/mlK
 9EPppOIJZ10lxpb2jJ4arPkDqlpyggYYMsqlp3FW5ZE7JL+Ej20zk26tBDkVU2GBbcID
 BtRSwk6jfrw13JhlHiGoIUkDf4WY/6UNHPTY13FSuIfOXIgKUUa4i9AaxJJzs00FtXa9
 75Yg==
X-Gm-Message-State: APjAAAVZo1CHmRnyY8VLSNLpSI7/UD0+aSvI/9/FRqQPYKxis+0fyZqo
 xEe4myW9WnbH1n2nGpOMmpO9XvpDwvcO34ufD4w=
X-Google-Smtp-Source: APXvYqypxYOxQMw1wVILyzLBXGz+DJuPq5TH5W+toycfqpB93xioye3d2NaNp9HP84cOJVmXrpIamDZiegLE7qs7sEM=
X-Received: by 2002:a2e:91c5:: with SMTP id u5mr1410332ljg.65.1559545686497;
 Mon, 03 Jun 2019 00:08:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190601032242.10405-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190601032242.10405-1-yamada.masahiro@socionext.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 3 Jun 2019 09:07:54 +0200
Message-ID: <CAMuHMdXXbEr=oU0amKLbEkTm3cZ=jyQuk1-aZa5L4JL_dUmYMw@mail.gmail.com>
Subject: Re: [PATCH] treewide: fix typos of SPDX-License-Identifier
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_000809_670176_3187717A 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>,
 linux-stm32@st-md-mailman.stormreply.com, Russell King <linux@armlinux.org.uk>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Joe Perches <joe@perches.com>, linux-spdx@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yamada-san,

On Sat, Jun 1, 2019 at 5:24 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> Prior to the adoption of SPDX, it was difficult for tools to determine
> the correct license due to incomplete or badly formatted license text.
> The SPDX solves this issue, assuming people can correctly spell
> "SPDX-License-Identifier" although this assumption is broken in some
> places.
>
> Since scripts/spdxcheck.py parses only lines that exactly matches to
> the correct tag, it cannot (should not) detect this kind of error.
>
> If the correct tag is missing, scripts/checkpatch.pl warns like this:
>
>  WARNING: Missing or malformed SPDX-License-Identifier tag in line *
>
> So, people should notice it before the patch submission, but in reality
> broken tags sometimes slip in. The checkpatch warning is not useful for
> checking the committed files globally since large number of files still
> have no SPDX tag.
>
> Also, I am not sure about the legal effect when the SPDX tag is broken.
>
> Anyway, these typos are absolutely worth fixing. It is pretty easy to
> find suspicious lines by grep.
>
>   $ git grep --not -e SPDX-License-Identifier --and -e SPDX- -- \
>     :^LICENSES :^scripts/spdxcheck.py :^*/license-rules.rst
>   arch/arm/kernel/bugs.c:// SPDX-Identifier: GPL-2.0
>   drivers/phy/st/phy-stm32-usbphyc.c:// SPDX-Licence-Identifier: GPL-2.0
>   drivers/pinctrl/sh-pfc/pfc-r8a77980.c:// SPDX-Lincense-Identifier: GPL 2.0
>   lib/test_stackinit.c:// SPDX-Licenses: GPLv2
>   sound/soc/codecs/max9759.c:// SPDX-Licence-Identifier: GPL-2.0
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Thanks for your patch!

>  drivers/pinctrl/sh-pfc/pfc-r8a77980.c | 2 +-

For the sh-pfc change:
Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
