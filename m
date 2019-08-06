Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7F1831EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECodSUEE18mDYqdXwkPxBRcrkKX32PaZCrBy31BhCfs=; b=OseCE3ksds8Cxw
	nNDTE2lCzqlHUXwaLcbJDjKQHJ2hv2EAJfeXzbJlEtVuQ5pGZp2FDRWEUN4XBOCCXwxqZM7lnPToU
	8x8eAzXqHJkhf4CwO83DGyg3Dg9IKuQvDS4USvTPQggbtZHduD3wG/k1JoE0BbSe1vXbTn90ilrf+
	0SXKMwCfSZlCcfvucgAWOahscYBfi86hENb3LqpFYT+RvvbvTjX80RXEvGqJVYfAJUPbvZBqAEzEv
	QPrbK4HWatkAp5N7Zr02M4glVC1cQEQRztezDBJ8AwTcUelqYjHn28XZNr13yDi6Q0fzIS6kihPoo
	0ZVgjcGY1Hi7SQcg3d+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huz17-0004os-H8; Tue, 06 Aug 2019 12:56:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz0w-0004oS-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:56:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so82097859ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hWkwxSekOFjOJkkiUvNS6vk1XTlC8GglcO/MoVG5QiU=;
 b=sHDErg1nel+qWZ6ii4Ow3da3HFj48RR7397s2QyeksX1iOni6fqeQTB3BqjhvnXymg
 iDZ9/asuSdIwLEQ5+ASOgIwa3KaYHYgffPLUz0DjarhoqXArAdSLVuCeimHCPEmQL82E
 estLVQyp/jfbd0YCA4DksvLMUL4+LXAC4feuCS6kGtz1OOY2ZNT0FLZ+LPKAkssy0/pu
 Lfv3LV7ZLljskBd/xxsMOK9/JcDO0QbOgrA9r4p7x1osSVLm64d75lQd7dEkiUbPCFWU
 Dm6ChuZWYqbu4VavYKXXv5UWiFoLLFsK1wv1UblaGU+WQIYDezjt/pURraKW1BTA3+if
 87kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hWkwxSekOFjOJkkiUvNS6vk1XTlC8GglcO/MoVG5QiU=;
 b=B8SymMtMv6r5H7EK46XiIaH+vkbXbRSdKwW2SzK/Uvl5Nb8QaYFEK+0ISHS57702TU
 ItUEsm9TvY4uibHapgV9auFIQBlUA5jbyuBSQbsTFqoL7G1o2+ZPb5OFx+E8I4UHOxt0
 pd4ctyrlTGnfSMmV9sNH6VYXkgKpykwr1WChrdwqg5KA9NBurIbJeq6NiiL9sGVeqHU8
 xzDG10gR4Xl1ombbLOp2XiN1XWY3ccmu2ikM19IoQFxvVJ6ZLEOXG3d6C/Eh+tT72sQk
 sdMaBXdW6sx189pNt/Nb8jXeu0OtZ4tFAb6Z3N5KG2MVNcmE9vTomBeaOV9zsKbub0zC
 XJ4w==
X-Gm-Message-State: APjAAAWEy1HPI7RiLgE4k1pWT9YbQkS62RDgiGfv+cDhyTovj8imxZOa
 sC3or8oSm9N37Mp0N7x6RYsQbLtdnDWfA8TEDvDuqw==
X-Google-Smtp-Source: APXvYqyubXEyA8qA2bp+bFUDFeaZYa6vFIsx3pnY8ux450GbZ0ztgW/G/BCVR2DhdbCt29loENRPoYWQh344coTndK4=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr1742815ljg.37.1565096189174;
 Tue, 06 Aug 2019 05:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-11-sam@ravnborg.org>
In-Reply-To: <20190804201637.1240-11-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 14:56:16 +0200
Message-ID: <CACRpkdYTaaxqhSSPx8KToVaiRJtzNmNynGCoGTMeJVgDUCsTnQ@mail.gmail.com>
Subject: Re: [PATCH v1 10/16] drm/panel: ili9322: move bus_flags to get_modes()
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055630_601790_00624789 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 10:17 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> To prepare the driver to receive drm_connector only in the get_modes()
> callback, move bus_flags handling to ili9322_get_modes().
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>

OK I don't see where this is going but I trust you so:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
