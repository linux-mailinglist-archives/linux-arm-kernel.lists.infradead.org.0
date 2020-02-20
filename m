Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F1C1669F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IBfU5Vt/SXLHtaDLdWxrtVkAZ0EmlS3ua/eSjxr/XI=; b=MHBBsbo47z6Bbb
	WAp8KalXSsmrLqX1FgAuyoRq+okmkZUe98RnGowgG2t9JLdWyA1KOBSi37s4Cgv3NLJ5qudmLtDhP
	Y3gZBIOQpusGMezFWAC395NmyWUemp4R8iUpYRkgV10dLbJ4K/ncbgvE8fIjd5CYDboYYfhBkk/ey
	67Pln5/4KqPdykhlO06F8Wio+V+FaJfkdk+c89EmyPPYh21mI8Mk0aw010IoWsGUMveOlfcqei5/B
	xQmw6aXtj4cKolBv4zq6VaTDwGdoUjir+9PQabFAGGq66mS7Qre+Q0BWLpA1bxM4iCwNYxMn0a3FR
	xOSntMAY4UwuvrIb9ubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tVj-0006tY-6G; Thu, 20 Feb 2020 21:37:31 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tVT-0006qj-MI
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:37:17 +0000
Received: by mail-qk1-x741.google.com with SMTP id z19so5051895qkj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TvOgxeV6q/hz2jhw1BkYuFW6F6UgnXyc569e2Apg3tI=;
 b=Q19syPFVhTWGp6aA8lun7A2sKPtueu+qDwkZzlHsVmpLdjYgwB91YcQG/QrVmDN1Sn
 +6b+40av8D746PqIyCMbOjNcm+rHX8lhkgtuILyQPRf3wyWUC/mXsCliywHmhQz4FOHs
 qaN4tU6vq7eTotiGTpgvTd+SxZ55u6/LLf4rmBwtFFuzGEOhLOoVl/YhpoD9cibv6m8V
 0myYdFJ5oN8kLfUTjXAJgA0BIdP+3s7L6MV9NMA7n4xuNhq3nwa2XaG5bcbcxDCl8SnC
 WwUYOhGdacD7XtVU82PQAMiDwpgLSFIwkAgEwvePPoIo+Pkwzkq8Rd4K5AhJqzDY9cwo
 //xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TvOgxeV6q/hz2jhw1BkYuFW6F6UgnXyc569e2Apg3tI=;
 b=r8ef+PcpmfwtSm/OtNRWJllpRruHNF+I0ZyzSb6tHvc91TjkMOR9GEiIBxgffpzdkJ
 6lBipTE/k/f6RXCdzfVzRdtcgQR5FeSmxCOHYFDO3TLOdHKaVmwWdtUBE7utSXEAJNUm
 2KrODiRpzfr0BluRG7E1YN0IGHJifeVsezFeMiEj+JH9RjfRpWqrMKTbY3YCagUrxQEP
 Fhz19uOiYBPsAjZL8t5CyrS56xP4XtsKFlAn5qaeRdr4kZg3kbftdJeRtHhGNj+tm93L
 D26o1t5eVrnNaK0yIMP/RRDRclM4Kotq03PyAxxNRpiakCgLkQ//0nxp9H6iXT3aqLdS
 vIrQ==
X-Gm-Message-State: APjAAAXg9oCdlDhXArDMN/OoRvKJGotOWGKLO3ZgUryCVjgS7A+iEp9w
 ug7PR47FAye9TlverOaIWIEJ9LvJdgAaKkiZXp8=
X-Google-Smtp-Source: APXvYqwuaNU/g8DZUMOkoTNKLgQBVvRTS4yLUHrZxtp6GWR40atVUC4MMgB8849+KTbNIVrCXT1WjazgLPyKD1Pt5zY=
X-Received: by 2002:a37:b285:: with SMTP id b127mr3341955qkf.413.1582234634423; 
 Thu, 20 Feb 2020 13:37:14 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-3-anarsoul@gmail.com>
 <20200220135259.GC4998@pendragon.ideasonboard.com>
In-Reply-To: <20200220135259.GC4998@pendragon.ideasonboard.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:37:01 -0800
Message-ID: <CA+E=qVeJfFZudSfM_U8n1r543oyYf+oGCma_fH-vNEQ9vZUP2w@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm/bridge: anx6345: Clean up error handling in
 probe()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133715_744024_B7674181 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 5:53 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Vasily,

Hi Laurent,

> Thank you for the patch.
>
> On Thu, Feb 20, 2020 at 12:35:04AM -0800, Vasily Khoruzhick wrote:
> > devm_regulator_get() returns either a dummy regulator or -EPROBE_DEFER,
> > we don't need to print scary message in either case.
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > index 0d8d083b0207..0204bbe4f0a0 100644
> > --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > @@ -713,17 +713,13 @@ static int anx6345_i2c_probe(struct i2c_client *client,
> >
> >       /* 1.2V digital core power regulator  */
> >       anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
> > -     if (IS_ERR(anx6345->dvdd12)) {
> > -             DRM_ERROR("dvdd12-supply not found\n");
> > +     if (IS_ERR(anx6345->dvdd12))
> >               return PTR_ERR(anx6345->dvdd12);
> > -     }
>
> There could be other errors such as -EBUSY or -EPERM. The following
> would ensure a message gets printed in those cases, while avoiding
> spamming the kernel log in the EPROBE_DEFER case.
>
>         if (IS_ERR(anx6345->dvdd12)) {
>                 if (PTR_ERR(anx6345->dvdd12) != -EPROBE_DEFER)
>                         DRM_ERROR("Failed to get dvdd12 supply (%d)\n",
>                                   PTR_ERR(anx6345->dvdd12));
>                 return PTR_ERR(anx6345->dvdd12);
>         }
>
> But maybe it's overkill ? With or without that change (for the second
> regulator below too),

Thanks, I'll do as you suggested.



> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> >       /* 2.5V digital core power regulator  */
> >       anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
> > -     if (IS_ERR(anx6345->dvdd25)) {
> > -             DRM_ERROR("dvdd25-supply not found\n");
> > +     if (IS_ERR(anx6345->dvdd25))
> >               return PTR_ERR(anx6345->dvdd25);
> > -     }
> >
> >       /* GPIO for chip reset */
> >       anx6345->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
