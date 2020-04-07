Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0E51A0881
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HS20yoSknm6uPGsDyGHxDbfC7gCVdsopxTUAE0++Q+w=; b=TnUA1EGfvrGxXC
	Y2xxeLqxmWRLhyROTWlFjBTXcx2a0JEjU6DIK4D7ajAOZ73/hJlT+CBRni9tZyZgtg4w0O47PxBpx
	AXcVmM6bHFhKP+lM+pzdgJn5gEOfG2jApp2gzv9NQj+BEHf2A2tXWSY8pktywwMmJrjka3MKlvpVV
	VcoQpNU8KT7md9sICgUVAycVgv+SW45ssrY5Ns1rYGVZ2WvVAlfGhBWx3AmUBnGPruFh4Er1dLaAd
	dlXfNgEJEpfFC/hcZa7LOzpU5JWWjjT3LuWo2yUebSkmlCQco/cUpBhGWVZhbbC9xNogpA0IIhZnt
	rXATR6MXWjp5uENj0sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiqe-0004Eg-HS; Tue, 07 Apr 2020 07:40:40 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiqY-0004Dp-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:40:36 +0000
Received: by mail-ot1-x342.google.com with SMTP id 111so737378oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wxx6OlhiR+h9ms32GkBM7ZWBPZ4G+uFx6VWz+Zv0PTA=;
 b=D9gztiIVWfLTyMwY9pRqGBK81vBdNlLpluKWmhYh0n69JJQ0RSrlPCzrCmGtfkygcp
 8wqCMEQ6VaUShxIpKWCiZlUx3+MqmfZ5UY0qoVnTwxE8A+4ZgECIh491lbEyvX18oGyT
 9DDSo0G0yhaasTNXbUhk8fk07SdBIYaAm4uvwfCaPf/dDhCiUbKqPWhnkjGn6MSz7dSQ
 AiaCuolC7Qv6FCYDHngg+kUPBv41ImdVWFsDFVV7Ani27T2lGgUtW+yVSeQpbZd6jb0T
 RRJKKU1J9HjCeVVfsgJJmnr43vBVc9Bc1GX+9W8ngaP0LNP39/nun/tEvngE/cJO+QJ3
 xC9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wxx6OlhiR+h9ms32GkBM7ZWBPZ4G+uFx6VWz+Zv0PTA=;
 b=lg55o7xF81pebSO8rAsDkvZZdlOaLjY2jS/7fkP6ifXJyHkfrdl56M6AYVpx2LVPwa
 7Je2BthLn8voHsmbOUHM08dOwTuA5U8WCvFdKEMe/i7qJ8SNYwuS4/8gP6rclhFkp61c
 7/C2GuJL7wjngA4A4g4QIlsTHERXnBnVN1a5lAZvL8hzMNj5NlKPT7oYo6ilfoSe2NvN
 CwA5RqlZPR5R9Q9giRDy0B8kYgyizz4FfT/2dZViXTD3XHQ4FWfU0NPJ2dma61zASF97
 zq4luZxPWWvZWyOx6/kadHXiavKK89BgNuai2r/bIWVZMZA7y+4gLDPrv2ORcXCzd8X9
 Or2A==
X-Gm-Message-State: AGi0Pua+q4yOxID52BRDkpihQ+NpmwwTmsxsawHUo4YXdpZh8wQ5t0y/
 AHex7FSu8UYU941B8WoHsgcfAnOlFkLEz83dMEI=
X-Google-Smtp-Source: APiQypK8SGsEPq42GhfF0Dfe/vf+FBubxyorRMxV73nV35Eh0GJOOxbn8GdFE9fSkj1azHzzH6p7KtGVItJOhKwXWdM=
X-Received: by 2002:a9d:220e:: with SMTP id o14mr504851ota.88.1586245232626;
 Tue, 07 Apr 2020 00:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWiVLt23a0JBDX6ZiKDiru9-ecgt3XF4Y5qzVOWXhLcCw@mail.gmail.com>
In-Reply-To: <CAMuHMdWiVLt23a0JBDX6ZiKDiru9-ecgt3XF4Y5qzVOWXhLcCw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 7 Apr 2020 08:40:06 +0100
Message-ID: <CA+V-a8tHb1OomhfdsWV5duyuypTKC_EWT4o=mMjWVsxu+aOnBQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_004034_674740_9548FD17 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Tue, Apr 7, 2020 at 8:17 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Mon, Apr 6, 2020 at 6:43 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > 24MHz. So instead making clock-frequency as dt-property just let the
> > driver enforce the required clock frequency.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> However, still wondering about the "xvclk" name above and in the definition
> below.  Is this the naming from the datasheet?
> The DT bindings nor the driver use the "xvclk" naming.
>
xvclk naming is from the datasheet, although the 0v5645 datasheet on
publicly available I have referred [1]/[2].
If I am not wrong all the ov sensors have the same naming convention as xvclk.

[1] https://cdn.sparkfun.com/datasheets/Sensors/LightImaging/OV5640_datasheet.pdf
[2] https://www.ovt.com/download/sensorpdf/126/OmniVision_OV5645.pdf

Cheers,
--Prabhakar

> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -61,6 +61,8 @@
> >  #define OV5645_SDE_SAT_U               0x5583
> >  #define OV5645_SDE_SAT_V               0x5584
> >
> > +#define OV5645_XVCLK_FREQ              24000000
> > +
>
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
