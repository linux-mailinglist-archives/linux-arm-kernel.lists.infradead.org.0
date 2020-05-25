Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93F21E0F15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KsFZ0Oscbf7fBXvdaOyOjrc8+e2G09zg31eFNYQH8k=; b=K1F7Cu8buoHD/g
	8YBBZ4Hp6YR8Gqqe8aZA/W+Sk9jibEmdi9TpV6rrDfoVrlQWHWVMSiA9APnxu0KpkYmNByotpTMu3
	Hm/dvNK5DIbI2AH/3J3eFef9h7SQ973yEcMvjsLymm0CwOMiMg0o95JqXLgUnkSP8Ah5QwPE0ZMqe
	A9gnaorrQb/7F/N7dFaRUC0oaPmxmmT90gx/ciHyNSRuSUQrv4rjfpW9/NAewQJUY19/8tjlbTX7T
	gSlB6X8smA4PjGNdWveAdKMPRMkEKsRfF19wtYEnWZR01kZcR9aCbP4ttdmZ+Vo74evtEWoD/gn/f
	4fbe/YnGv1w5X9KW2b1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCqS-0002oh-Ua; Mon, 25 May 2020 13:08:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCqJ-0002oC-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:08:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id c12so10472132lfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 06:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WvvHGwLY6WlxeHfaDpvlPLhtKpGlM6SauV4sJLLHIzE=;
 b=jUoM4eZ9q1Me5iHo51ZEk5cNDXkjtqvC74gimSJ1Gv2/JEkc7miWdDX2y6Bt3Pw7wL
 ecy2be+BJGxDcfTWfCYLPVzIOSMc3qi1zsP8sGGhq+EOFDiyL2/uoKqQfSoC3GVXlUtd
 iP8IHqbOyAuuyALxmjoPYMzoSCyCF8BQJrCnY/Ba/dSwdAs5sFj9/8RdF65MNnZ5k4VR
 7QPQxh2+NhZ6xuPVfpsnrwumHLx036IyZDQM7VnD6z5EamObcE3JCNp3KvOunDrJXYjE
 fTS42pMOdLvyrjcBj5I285TbidtrC6WT8rdoB7FjquKlOl8C1O685AcMnMaoPnVcRObc
 CG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WvvHGwLY6WlxeHfaDpvlPLhtKpGlM6SauV4sJLLHIzE=;
 b=A8o+t311L3aKTnS0dAAwwFU+ckuhlViy7RP+mTT2touG0Pav4F5ymlX1bShdCplDuy
 3yBDVYIiDZm0YGVRahYa66XrRXN+Q0+uSghx50k/X+ItJCAoO1NLnkrNeiq/N/RR9IHz
 EeeIpSGqNM6ZnrvONVvkaQcaBe4fk+d0clK05Q3FV7VQYJb/33KtKQCAuuPtc+5MhsmM
 uw9QRRzp9hO3zubU8YljwGA+llHeVQ+tmSS3ye7qCXVCErDA7eLCrhgveXAUShjcJhgu
 BkPAMqHuFeVdX21nZemzgNPoCctpnPnvB1SIbsmM6IGbzQwuV5zQfL5nIQ1Dk8R51ylZ
 a9uA==
X-Gm-Message-State: AOAM5314pThZbpVpKDzYOdpVIN5HXygIxp3uFwCsnXBlsCOwn96oYpcJ
 dxAZo6Gx/lL9VAWwaMJZ8RU2KbSE2j4MorAER1bV+Q==
X-Google-Smtp-Source: ABdhPJzwr6YwueJ1MfLBnSadbaGpNl8oMrkUPmXWw+j9Iwbimy6Xfz92o6Qb8bIrDXn/hwWGzk89ShzwL/xztxiFHuc=
X-Received: by 2002:ac2:5cd1:: with SMTP id f17mr13456032lfq.4.1590412113648; 
 Mon, 25 May 2020 06:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-13-tzimmermann@suse.de>
 <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>
 <402b57b6-0827-2659-b676-dc633bf6c444@suse.de>
In-Reply-To: <402b57b6-0827-2659-b676-dc633bf6c444@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 15:08:22 +0200
Message-ID: <CACRpkdZVgbqLmqzvZBAzKvEkYmT=be=d2UxyRMwRXjYDp1mx3g@mail.gmail.com>
Subject: Re: [PATCH 12/21] drm/mcde: Use GEM CMA object functions
To: Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_060835_364479_B8A071E4 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

On Mon, May 25, 2020 at 2:51 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Am 25.05.20 um 13:36 schrieb Linus Walleij:
> > On Fri, May 22, 2020 at 3:52 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
> >
> >> The mcde driver uses the default implementation for CMA functions. The
> >> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct drm_driver.
> >> All remaining operations are provided by CMA GEM object functions.
> >>
> >> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Could you boot-test with the patchset applied?

Yes, if you have a git branch I can just build and boot I can
do it quickly!

I have no idea what this patch set is based on so it could be
hard to figure out the dependencies otherwise. Also many
patches.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
