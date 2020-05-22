Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9541DEF0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ene2UOGMB7DYG3uVFNHfu79/dHQuC2g8k5Xya0UamE=; b=APSBDSOCoM7u2X
	6k+vmm7JD7sDFeufz4uQ1KiQyvKrvyQhFS+22cwwLC6AqTmW095An2hGYws5iBaiZKiCjRo3wFX/1
	lHimc0pgpQpuR6XYP0iw3e8KyzW7/gwxfvhS6N5R1MsrDYEmw4OCGCizA+3byYPy07stZrfgkpf0p
	UaIMeGOELqzPtawtybp+gyxVCkqVNJGKRoZW8b4FTKNiVMYnboIdAIxR5Eg2iZK1dSazSpnX8pM83
	4ZlQRuK2jXAgPSs4vzAN9LiPVNgZxlAlI4k+uEo3LCVjQXRqJAy5+Djh+AguRXX+SDfm0z39eRaLw
	o9Sn9c1rx7m9B0CO4ggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCFQ-0001J5-LN; Fri, 22 May 2020 18:18:20 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCFH-0001Ib-4C
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:18:12 +0000
Received: by mail-vs1-xe44.google.com with SMTP id o26so6540669vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 11:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PwXQ16I6Cp2tgFwIySqzt/G64hlPbh8xuNdm4rchjh4=;
 b=t/xBBcZ6O5/2xUet4xFV+IUG27uwEk7PUYFcckf192Tp2MyuY8B0DXdr96rOA13B0j
 /U0mcz2QsJq6wEyD+jG/VLOxi1JxIAjvbLaLGK3hfLWFMtNaGFdEnyhbRN5Yewnf7qHy
 maVP/Xh2HPoAegbriQFlRSP4oSIY4+Z01Hsoq3UPyKO9nSsuQT2/14nHEUAOqqUNglGu
 TQqf3dJf+wgdtg7oGqztDuNqFoXnub8XqcMVClftHonMR76pAFMJY2OI/kOnQFeLQvSZ
 UKIqM8eDIePrh+GAK4WtRGHgFV+7/ChPCy05Mz5s1SjfdyrKdgQzYx9n66CVjZzlduCW
 kRlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwXQ16I6Cp2tgFwIySqzt/G64hlPbh8xuNdm4rchjh4=;
 b=oEllXAwelLxzANyGM4EBc7LpZ3A7hXUy8OEISxcpETJvktX6Kj4ls5U0AXPWox+lh9
 qLkSBiNMR7MuZK+KZk9GubvG8JaXTt8GlVTErGZe7kURBMVUK8FPw4ZPlh5ZSJtW4Sur
 Lh1i0CLlQC7+dJeQp018F2YMxRhgOa3jiI+h6jmko/nad9XctzbU/K0Cw+NHC2pRdcO2
 v0ORH3R35B1H3dTesr42HXtlArdcGs15D6mAGfaFL7L6in/bfl0JcSdd2fpxu7Kh3k/l
 KfF5faeEixEXpYTBRDWnljdUjL9KBwQhGYu2S7w0mKrqi79KQ2RjqvLdFLoK625Tuxs7
 lU3Q==
X-Gm-Message-State: AOAM531mHpvFFOS8GSaF0wN4h6sqctnzt9VfYLCnUp80HAJ6QUlOGWP1
 RyQuBLHp0jxhQcGyahXw59ux4daaDo1xnJ86YZs=
X-Google-Smtp-Source: ABdhPJwVcoOuyG4xj6v7doBPjWJI5CgDAYK+frvnQUSyH9g309h6bcUom+gOtv4klrPgAnir7w1wtRTnZaAYYLLrXeE=
X-Received: by 2002:a67:71c2:: with SMTP id
 m185mr12122722vsc.186.1590171488867; 
 Fri, 22 May 2020 11:18:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-2-tzimmermann@suse.de>
 <20200522174835.GA1087580@ravnborg.org>
In-Reply-To: <20200522174835.GA1087580@ravnborg.org>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Fri, 22 May 2020 19:15:10 +0100
Message-ID: <CACvgo53YDOD1t4KYOWKiO-q8T639jNbMrZuyTXcbe1FBAfxP+Q@mail.gmail.com>
Subject: Re: [PATCH 01/21] drm/cma-helper: Rework DRM_GEM_CMA_VMAP_DRIVER_OPS
 macro
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111811_186616_5FC3E458 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>,
 =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marex@denx.de>, khilman@baylibre.com,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, ludovic.desroches@microchip.com,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 NXP Linux Team <linux-imx@nxp.com>, joel@jms.id.au,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>, Jyri Sarha <jsarha@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Vincent Abriou <vincent.abriou@st.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, bbrezillon@kernel.org,
 andrew@aj.id.au, Philippe Cornu <philippe.cornu@st.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rongrong Zou <zourongrong@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 at 18:48, Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Thomas.
>
> On Fri, May 22, 2020 at 03:52:26PM +0200, Thomas Zimmermann wrote:
> > Rename the macro to DRM_GEM_CMA_DRIVER_OPS to align with SHMEM
> > helpers.
> This part is fine, I like that the naming is somehow consistent.
>
> > An internal version is provided for drivers that override
> > the default .dumb_create callback. Adapt drivers to the changes.
> I loathe anything named __foo or __FOO. This __ signals to me
> that the author was clueless in naming - or some sort.
> I know that __ is used in some lib headers - but thats not the case
> here.
>
> But I love that we have a variant that takes a create function.
> So we do not have to escape from the nice macro.
> The macro is another way to tell me as rewiewer that this
> drivers uses all the default helpers for this.
>
Fwiw I share the sentiment, although I fear we're a little late. __
prefixed functions are widely common in core drm and it's helpers.

>
> So critizising the name I better suggest something that
> I personally like better:
>
> DRM_GEM_CMA_DRIVER_OPS_CREATE()
>
> It would look like this:
>         /* GEM Operations */
> -       DRM_GEM_CMA_VMAP_DRIVER_OPS,
> -       .dumb_create            = drm_sun4i_gem_dumb_create,
> +       DRM_GEM_CMA_DRIVER_OPS_CREATE(drm_sun4i_gem_dumb_create),
>
>
>
> Please fix zte/zx_drm_drv.c which also uses DRM_GEM_CMA_VMAP_DRIVER_OPS.
>
Isn't DRM_GEM_CMA_VMAP_DRIVER_OPS introduced to zte with the last
patch in the series?

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
