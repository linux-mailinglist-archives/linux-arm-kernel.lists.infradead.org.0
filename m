Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176201A088D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz9XElQDuslbRbaA65whW67iJjQ3OwhJgjR8e6+ucR4=; b=pS0O+lbYsZCjMu
	ZnXTdIcGhm7UILfyQ59+3ttpFTKFctqSPxwjYAUbtpRqt6p5axGIkxhqH8V+A0t58LcJVzALN5TY0
	sXcSFV/n/pjyjeq7riqXZyqn7xof/AswJ5ve4exNF5+mFtv/zNFxjfDuYqMsw6mhI2KbI0mRUgynH
	TH3MUfIZqQ1tAtg6cA3hFtS7uoH1wf278RUO/3sk9UZIhP+ziR1IAHAQyrTFFZRs0IshIMJoXkNWQ
	P2AmSMIdgCFJc5lmIv9PR1C2Py+0OUqEQ/CBeD4bMjQTbdr8iXtsR3CF8gA9yZDLU1bQpf2ziC9gF
	zhPZaNodFZbX6FIuzYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLitk-0004uI-2b; Tue, 07 Apr 2020 07:43:52 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLitc-0004tP-JO
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:43:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id x11so2131603otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oE1P8brteBgNB/YCnZpMaazxZnoFoVLDlG5zmB4pDgo=;
 b=kcPLvyqhYQ50v8YhtUX8FFqSjQYiVcTka4/bJnGJOUbAyXhCnRpf/KmSHwtYhWoRgU
 WZ+byt8MVjKVf7dos+9PxzI2/x0kR/QuXmjP7a4DeiaKxZh+SA3A2oEoM/klr7CSHaBc
 2wS/XiJb4kqHOInxoY1czNpphTpZH5YxUg7NU778JzP7ht0g9nxjyMjGg+7a19EQCsE2
 zaiFKLpKMDviT5T67ApeAk76ESHZzP4yHILTJu+AmlWh4g4x/AhfAb1jd6YbJeKdKlp1
 NX+z0FD6vQrbPCwHWenptEq6pNTXGQVgzO/YBrJdfhfsfGUr7IC1vXduDxE9zycUBS6Z
 fWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oE1P8brteBgNB/YCnZpMaazxZnoFoVLDlG5zmB4pDgo=;
 b=DYAPJusZ/MrjYrMe8rAa4wsyS5S0LW5yMM0Gz8pvtT6KvcFIURTA+CnEkFwby8X95x
 fudI8M2dASLuxVPA/UTsX/vX0dQzxdwlMEZ02F5lZt4lxo1TjWykHbbHI0fhlzcLdGUy
 FCof2S5FBb+xJRkNDyfSc1QSI6BsqwfFI/X4ImPD6HZ21TzZD2wf4LB2luShVRFrO7Rc
 bi1TnBgsflTMbc5A7GUYjmIGHUbVx859qHjBANiEgOYPdNftP9z9w7bJsN+PEdVRpAnc
 ODYGIkL2PfRxh1W32CCnsW1avPHH1eUREm8bJzb6UFFvKtvJkOM+D7vOy4UWNdOWtXRt
 5onw==
X-Gm-Message-State: AGi0PuaQmTR/T+uOcBT9cK3gKI/2LoszUQZ2vR14jgrGIuQqbh8lHZNZ
 AKvPpiwPA+b9G+usM2Fpn/ZspgomVbi4EerKGBg=
X-Google-Smtp-Source: APiQypI2DyIIL0fcNOyS2Ap/cmRjpFvWT9aOUrsOGDAoZC8sUAs4Iyf5Mi2KOAKUvMSzfPs330HGeDMjEIH/ji0exyw=
X-Received: by 2002:a9d:220e:: with SMTP id o14mr510743ota.88.1586245423956;
 Tue, 07 Apr 2020 00:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdX4sGzVWPFYLBiySastZSR2afqMHxmaEh-WhRMAcXFeMQ@mail.gmail.com>
In-Reply-To: <CAMuHMdX4sGzVWPFYLBiySastZSR2afqMHxmaEh-WhRMAcXFeMQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 7 Apr 2020 08:43:18 +0100
Message-ID: <CA+V-a8uKf-poWO8XGKasnOESxOTYRGQs2dBLArMzq8+xT+1kOA@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] media: i2c: ov5645: Turn probe error into warning
 for xvclk frequency mismatch
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_004344_637229_4BD3285A 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thank you for the review.

On Tue, Apr 7, 2020 at 8:19 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Mon, Apr 6, 2020 at 6:43 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > PLL's on platforms might not be so accurate enough to generate the
> > required clock frequency, so instead of erroring out on xvlck frequency
>
> xvclk? (but see below)
>
> > mismatch just warn the user and continue ahead in probe.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Like for 2/5, what about the xvclk naming?
>
> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -1103,11 +1103,8 @@ static int ov5645_probe(struct i2c_client *client)
> >         }
> >         /* external clock must be 24MHz, allow 1% tolerance */
> >         xclk_freq = clk_get_rate(ov5645->xclk);
> > -       if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > -               dev_err(dev, "external clock frequency %u is not supported\n",
> > -                       xclk_freq);
> > -               return -EINVAL;
> > -       }
> > +       if (xclk_freq < 23760000 || xclk_freq > 24240000)
> > +               dev_warn(dev, "xvclk mismatched, modes are based on 24MHz\n");
>
> Calling it "xvclk" here will confuse the user, as the clock is named
> "xclk" in DT?
>
Agreed Ill replace it with xclk in the warning.

Cheers,
--Prabhakar

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
