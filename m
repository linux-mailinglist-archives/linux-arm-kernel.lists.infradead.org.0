Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691A118CA0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4S08DiWCzngb/evV6ghfYJT0IK8cy+PnPUb6nQj4AI=; b=oH2nGJwiqyhhXS
	Vq2S8gko6lAGLzDgr2Q6+FUaIVoZL6Kq/uF4x6MevjYjTijEF1lDvhCQjHdQhGhKsrOLKadSDGaOz
	cFgOHxv90OYBNn3DEXP5GQTQcdze0Njy/2WS28PxSBlI3G/AfT07n8Kv1oHuMI3e6FXoXoNmwZNmM
	RIJVx/bmUfR3XTOEeGvgzHcfj41NLvRdkGxb47tImFnhqE+AMOmjqvxWT3TsV3Aktpsr1ZxrsBMNl
	LcbPD7xPr2nBDxrOOiOgdsBen+sUPz70TZ3tB1Nj02RjPWUR5zC8PFz5VXuAtuFZ11JRX9HA9tpqP
	izIdcxsLx9L3CpbzO5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDns-00032k-AX; Fri, 20 Mar 2020 09:18:56 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDnh-00031s-N2
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:18:49 +0000
Received: by mail-vk1-xa43.google.com with SMTP id n198so339236vkc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ISVSnKmF/MakKn5Kt0SsXbF6hSdLTpfQPG8zF5GUvw=;
 b=rq2K7aZqr5ZlhOCPpZDpZZiXqSl7sFlboUSiiy7sgodjfwz6wWG+P0EVz8CZ/UOzxa
 U0ZfibIhlKx+gZUKS8l6/75yq9SVgK0fbSTixwbezuj2CpY69I03yIgXTsdnPdhUO4Qs
 sZLenYxULnV9MLchiMUHXbkcD503elboyjYY/AHedah/zjCh9jGyjs5iRi5rpys+pweK
 196yoqvVJbB9zapDDPEiny07lhgx4MKp6VgxRDcKht3JthA8nAY7idDdkUh3i0wVlYZ9
 C7JMu/jb/gzm8L3cQRU/qAcXRyUybgZ/9+W4qWY2QZ5uuKq8+xnVAQ1aSV2XvL0II9+s
 0OXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ISVSnKmF/MakKn5Kt0SsXbF6hSdLTpfQPG8zF5GUvw=;
 b=Dm7Gq2qAFi2ueT88im8IRli2pDvDmICrd7MhrSyqUo2eoMcW16jqEQw42hpGfs+OiS
 zHtTQyDErnoXpnJGESKVjyliff7qtm0CoJ68iYbQnO6wnimG1j1gL3mL3Id1aZTCD5hD
 8yi/uTO3eqWC3qowCIIym3uFHQBJ0BCG1V9a/Ktk/JedrbzkpxtPB1vII1sW5FMWqp87
 4LhrewNRh2NlTqexD5iK2TKP1i0rJubMIo6A1gm5mBPCEfK40UpU8J05rZWVR4Lx28JQ
 iabCb9Gr72URvKzjnvP8nv5Mnks2+gmINKkPfLqCBbrz/PBa5qZ9TfC0qu4YIE6zr9Ue
 Uc4g==
X-Gm-Message-State: ANhLgQ0eN3D3kZmaAHqvcLDfmDjDP6Siu9gZyxOyM6Lwtb2w8zaGSSIm
 uXWPj79xQtQCy9UKkRRXeEmIZkLIDYBHl1YMvwwTLQ==
X-Google-Smtp-Source: ADFU+vubD841oKMXD9X/IHF/SwMMr59cNF12qIJGQC98Ru0PzxwUkbXhLRuj3tsujKYP/IY02djiUsWk8Nnpg/XpzVE=
X-Received: by 2002:a1f:e9c1:: with SMTP id g184mr4605100vkh.30.1584695923452; 
 Fri, 20 Mar 2020 02:18:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-4-icenowy@aosc.io>
 <CACRpkdahrHmXWpdqoApFEq6cW2gatMfds9SMZGwsUnNHt+J0aQ@mail.gmail.com>
In-Reply-To: <CACRpkdahrHmXWpdqoApFEq6cW2gatMfds9SMZGwsUnNHt+J0aQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Mar 2020 10:18:31 +0100
Message-ID: <CACRpkdZnTf2jPrPV++1HDk4tf2BK2NJnv5gkd-1Nc5KT3pu0NQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] drm: panel: add Xingbangda XBD599 panel
To: Icenowy Zheng <icenowy@aosc.io>, Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021845_749754_3EF71093 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So following up on this:

We should state in the commit message that this driver is for all
displays using the Sitronix ST770x display controllers.
The driver should be named panel-sitronix-st770x.c.

On Thu, Mar 19, 2020 at 3:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> > +/* Manufacturer specific Commands send via DSI */
> > +#define ST7703_CMD_ALL_PIXEL_OFF 0x22
> > +#define ST7703_CMD_ALL_PIXEL_ON         0x23
> > +#define ST7703_CMD_SETDISP      0xB2
> > +#define ST7703_CMD_SETRGBIF     0xB3
> > +#define ST7703_CMD_SETCYC       0xB4
> > +#define ST7703_CMD_SETBGP       0xB5
> > +#define ST7703_CMD_SETVCOM      0xB6
> > +#define ST7703_CMD_SETOTP       0xB7
> > +#define ST7703_CMD_SETPOWER_EXT         0xB8
> > +#define ST7703_CMD_SETEXTC      0xB9
> > +#define ST7703_CMD_SETMIPI      0xBA
> > +#define ST7703_CMD_SETVDC       0xBC
> > +#define ST7703_CMD_SETSCR       0xC0
> > +#define ST7703_CMD_SETPOWER     0xC1
> > +#define ST7703_CMD_UNK_C6       0xC6
> > +#define ST7703_CMD_SETPANEL     0xCC
> > +#define ST7703_CMD_SETGAMMA     0xE0
> > +#define ST7703_CMD_SETEQ        0xE3
> > +#define ST7703_CMD_SETGIP1      0xE9
> > +#define ST7703_CMD_SETGIP2      0xEA

I should have seen the ST7703 prefix shouldn't I...

> This actually looks very much like an Ilitek display controller.
> Some commands are clearly identical to Ilitek ILI9342:
> http://www.ampdisplay.com/documents/pdf/ILI9342_DS_V008_20100331.pdf

I'm still wondering about the apparent similarity between
ST770x and Ilitek ILI9342, haha :D

> 1. Try to determine what the actual display controller
>   is. I think it is some Ilitek.

OK so this is Sitronix ST770x.

> 2. Write a panel-ilitek-ili9342.c (if that is the actual controller)
>   and parameterize it for this display controller the same
>   way we do in e.g. panel-novatek-nt35510.c or
>   panel-ilitek-ili9322.c, so you use the compatible string
>   to set up the actual per-display settings for this display
>   controller.

This should be panel-sitronix-st770x.c

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
