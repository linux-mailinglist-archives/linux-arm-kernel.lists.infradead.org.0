Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877F61E0D6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reofhJgHetzzDZuZ7rk5OkBdq9g+G35hIFQFs5l8kS4=; b=V/5sDlONcHs8N2
	eua7M0lzTouvv0G53SVYKuSOh1FYtrZu04LosML32LoyrScFrrzJRHcr+z8R0fHM7K+NWIbjVk8wX
	HURCJXKyW1L2FELQ8nSKo1v+EutHtL7DQmQ3n0eLydDJvfamtO5eRv7BosYdjGy4sELsIYCGpfDBA
	mIf3CGAP6I8d5KqNq8V+WpQcjDUt5oI+ydqUJpZvDRlmjKCQMRFBnETJM+28OGB5lCjWypm2FCveb
	j3HWs5QYPj3M6ujM8JkBs2rygVHTHqwZ6tl1SCX1CrUXTc2u5Z5aFurF2nLA9qWn4axpjaw0EN/OD
	fVqHPTrcQTw9FSRUQlQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBPE-0006M1-CT; Mon, 25 May 2020 11:36:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBP1-0006Lj-Kf
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:36:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id z6so20355279ljm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nKDCC31lVplkCK9g+FgDQZQbnR6/ibgQuMUIxivqeoI=;
 b=msWwjW/EFiYBpSB1PMKiHwxcanxFSHxlR+3X0sHZByPfiC2QSV4DoNmvT7O4dbXu9F
 0K9bv7UZXa2eMUBajN3+R926ssZDXZ/4HqHbV8XeovREkArzpsrSFXx4a7ext/EPVRHd
 fNmAsa+iZWRC9ex0j5yE9PYDrl3Og7MEYQY37N/hfOaWiX9xGaYly5dZ4I98mLJjwXQF
 pK2D04P8rIQ9akxA9woZ7kvew1MGPneHOQP6WnWKuTsLLGi2RWhM25v0qJsepXTtL83y
 V42s9XMFgLa6fDTWooh4pDl/GhkQlDJWBFwiXH2oKeNezpg6QfpaMxHtGt0u43VuLTjJ
 JMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nKDCC31lVplkCK9g+FgDQZQbnR6/ibgQuMUIxivqeoI=;
 b=DsJ5sk6rru/OG0JTPoWFx7hwBDHpb4sf/9pIrZ3ZXlfXAe0JUNgbQYKiTmEkVRFeKC
 i1oPR9xSK1sado+tk9htSoNPftOLvg+hkFGBMgbTEEc6QewoASsFqS+KqAyQoebP9uXw
 KqlTIAjz3E5YRaejKk+OmUOP+Tyh8z47aQo5BsjWglM7L85LSAaMYJ4HZqRPeWU1iCQW
 eINkcCQ/1rTM5uATMug5SPbq/8maJy+/DJT0fNabzL2LBXavTTIESEFud7dKGHWPPcSx
 VfpZ3O+oTE/7gX/SUTjdbvsYOIaue6yEJYQluEeAnBNxyaM4PfiUogH3mZrfwYRzZrKI
 QuTA==
X-Gm-Message-State: AOAM531rZTYkQUWsAOzhBoUkSFimtaGKz5gArbTsN9FMD3+u/McblorN
 j3cL9aOcygduzlSyiqpKTWwmnNw52RMC7OOy6zlTXg==
X-Google-Smtp-Source: ABdhPJyELBoCVpB94Iplz8KFaMRF/2lEgaAQXHjW8SGV8kykGm10bWXxaZ0x4DeivUuVphyNfbaVhr6s3rgjDJpmrME=
X-Received: by 2002:a2e:711c:: with SMTP id m28mr13365004ljc.104.1590406577281; 
 Mon, 25 May 2020 04:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-13-tzimmermann@suse.de>
In-Reply-To: <20200522135246.10134-13-tzimmermann@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:36:06 +0200
Message-ID: <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>
Subject: Re: [PATCH 12/21] drm/mcde: Use GEM CMA object functions
To: Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_043619_708846_2EB1F4C8 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Fri, May 22, 2020 at 3:52 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:

> The mcde driver uses the default implementation for CMA functions. The
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
