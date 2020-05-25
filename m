Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CEA1E0D6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dgcpNe9vQh6mYPrY3mXmXD/VF1i+jHFrVFvMaB3qHc=; b=rah8SmkHscoa+u
	s2efnykneGJycZTlv/d/1YJWjr8buINI59IcVKAP+1IQDw4Q9qNplgfKzIzdkXTgVG+47vw1y2R52
	9jHtVEI8JY8hDl2+tVVAsBZsz98tMOIHhOv49BP8EgqBem5HIK/FcffjqiCnzSaM2O4rTocn6BrMG
	/RbFxjLW0l+7XrKJ235DIUToIY2CdBIJFOKqQT0SIB0JKoNEQ91eaos+HMCmeFjrESfVvTkUrYhk/
	gt7fitbd3AKkWRDoxr8xHunC+o0A+0/4GDPXwsy9JcOYyokwTQ+jrt8mEQAUjd+4OSAAzxMTcge5g
	qMdEC/MMD8M3JOqNtPqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBPp-0006ag-Ar; Mon, 25 May 2020 11:37:09 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBPe-0006aH-7R
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:36:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id w10so20461815ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3cboEB9A0EUD0Sv3wBdqVD29b2uLspYFAQ/E57S2GG8=;
 b=VkCGlEZwMw5lm6CNbpgySDuYqUdWf+cRkRKofFCWXFvRVKpc6Vsc5vQ/8F/4GsExxJ
 lhCHCI+zivKuTs5e6l8Szn1UBKGCbE6jvRGQ7W8YfblN9kpWDmIf3dhMphgvz2k5dhp6
 ZS7uvP/BM9bde4ruwDkjNN1euNy2Nzus59C02FYxzlDmREU7LJFoYM35eJMHpryViVta
 s1IuqJQZfpFaple5z0DuvY7g74aqEGQt/7bnwozuTwLJbU6LVJnLa/qi610rTIysaY9d
 o1F7PCaJgwh7uWOqGgMvTqdAmS9DqBTP3RKlpWiwD5VnjVXCHl3F1nwGlIJK4TcVmTG4
 f8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3cboEB9A0EUD0Sv3wBdqVD29b2uLspYFAQ/E57S2GG8=;
 b=IeKq2pxlbqCt0fuKQqYobwvX96knCjmJ8clTNo4BQv8UT4vab5yIGpr3KZkYCKdklD
 wVvs2E1D+o4Tiyq05I6//FyYQ4I6TTK9QYAFwDmBbu0dmUWbQLxF+BBqv4+Pg0AtzmR4
 2/Kx8a98fkuQnCdUab/K4OpkrfPHxuTFAc0gN262vFfHeNXu46ZDUIavvYaiSVlgIaOi
 KinS1MhihR/KBsZIqv0XV+epSQpH5oYWNg0/fEIPT95SwpArQzCJB2dpKozR9D8XamsE
 4bq/uVqD3iTO8xVS9bHUP+qtn9yUnxCBnh3LD0tJMVDBompYKtkvV3mOYqV6LVcnevm0
 YP/w==
X-Gm-Message-State: AOAM530GhPVwvaJry8EsnR7Bs8IkCQ3SkkOB3LzNySvRmIBnDODHiw2v
 XdNZobaaCCSdhUO01pDkg6CJvE7J8wJ1+tY6KXEvvA==
X-Google-Smtp-Source: ABdhPJzgI/S59SwkD29DsR9IgbvO+abZQXZ3sBQEMZnc5AXKk35gsnIKyiA5MxieXb4auAQ3g79w+lr1xZl/NNQBAoU=
X-Received: by 2002:a2e:b5b0:: with SMTP id f16mr1252357ljn.100.1590406614483; 
 Mon, 25 May 2020 04:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-21-tzimmermann@suse.de>
In-Reply-To: <20200522135246.10134-21-tzimmermann@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:36:43 +0200
Message-ID: <CACRpkdacQd71UqyU5QcnSemfR7M+fA9hf-tahzTtyKgK4wV9Sg@mail.gmail.com>
Subject: Re: [PATCH 20/21] drm/tv200: Use GEM CMA object functions
To: Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_043658_273717_91890F39 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Stefan Agner <stefan@agner.ch>,
 Philippe Cornu <philippe.cornu@st.com>, Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Marek Vasut <marex@denx.de>,
 Fabio Estevam <festevam@gmail.com>, abrodkin@synopsys.com,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 k00278426 <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, james.qian.wang@arm.com,
 Joel Stanley <joel@jms.id.au>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "Chenfeng \(puck\)" <puck.chen@hisilicon.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Jyri Sarha <jsarha@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Vincent Abriou <vincent.abriou@st.com>, Sascha Hauer <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Boris Brezillon <bbrezillon@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Kevin Hilman <khilman@baylibre.com>,
 Rongrong Zou <zourongrong@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:53 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:

> The tve200 driver uses the default implementation for CMA functions. The
> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct drm_driver.
> All remaining operations are provided by CMA GEM object functions.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
