Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF8B10FE8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ip7s9mWSwE5U5TJ+Vr2/taLY0w66CcTyhMhTvygJp6c=; b=KAZfB0VuCN0AXm
	CSl/a05WG54k0rk62EGlkuQ42kLHMwuQwfIToZzF70ygyjjK24jrKaOGBpO99hrAvWnAd1sPwJu0a
	Tw8oMHmz0oSW/OVX7Id3YgIcMlHWp18Pc0tWxepdnQw41mKd786S/2brW55XLo/6sj1QDb9ifv1Gv
	6jDxYj4YmfRyR2NxpAkLqb9MOI0u9mG0CaEogKcQwul0RMlkcnAK4cJ+XRUAfVSz8DLomMUjY2Tfx
	UB09okNHUY8Brvvp2Fhe+mKtiYiomQiF+79XlbKGIyO630jEUQf8F1o+kNyA4lm0javOJXabLFVKD
	99emQfiv0QwVswsOXWIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic86f-0005y2-SE; Tue, 03 Dec 2019 13:20:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic86Y-0005wj-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:20:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id z17so3726022ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dM7DxIKsuRuWaeq1kSkAx5tZP4LQ1yRPP8TIc6mxOpk=;
 b=ZrU6IFrNs/v9Z2rJ1KSkzGUV8fZWcRdhMKoXG6DN0M3+iAn1ApiRmE3ZgJ94Uo+9wZ
 DzuzeCNox0Z3xZRWRhWq9NS7Kq69iqJ360qMic+xi3WSoWvVfcJIHPlubUEr1YqjPC6n
 SXn0dfovwrRDvRAR6nMb9zlsIw6BuH674zeFIB8i/F1/gIumJJ3bD7wOLIyyAD+Ch5OE
 m/5UDp46mghUjs7ZT/ryJZOV8cAlXyc2Lu2UOO2gh5yc7puCj66NVcdtTPnHrWtBY2u6
 W3zW+ts6HbCNkFX+sFqM/OCNNJVzIuEg+uhrXbWD/7147S61i6ovPikcw7eFS0ik9JEC
 sNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dM7DxIKsuRuWaeq1kSkAx5tZP4LQ1yRPP8TIc6mxOpk=;
 b=Xhy+riN6TVnx7CM7Io7k+jP/ozPXmV/b1DQTMOcI/AfPE5RwlWu2EPyIu5vx1q9iSf
 O0xEYKSxHOfIKtjH+pEyMKcMb7tg6PusCxPQ2AC3qf7z8P0F49lmq4rBo4Z86WIRwga+
 a1DdJIFLNSLdQuuooXjDQaIoGziSJqZ6MytP+YLr/ByCGMDelsgLRxRABsoWWxqdBGvL
 vodcOlm+TtTVNdTMRBICA9tjf4VB0bcHZVZlSojJdICGGS4dVmwwuQOqz0mvsBuAocIj
 tbrF+rMV44aZ3+94deJ+ONd6jjnv4ssyb5uJJHKffrFiqxOmR31bWS1MYTzIIM8711b/
 vlww==
X-Gm-Message-State: APjAAAWTd6yY24qr5qMpPyskMoXkQUG/pv6M54Cx4/a+EQQrQcj08qzT
 uBUlr7p54ukVnGe3qDPiiVHj10AGa/D0PL6IgPf6Tg==
X-Google-Smtp-Source: APXvYqzTzhKdgwJ8WJIcY2A5WR+ez0+zwm8p5MUMtgC+M9HuNmXbczoLdnQOw0NdPlAjvpjtAI7gsHbZmOicQtBst1Q=
X-Received: by 2002:a2e:8045:: with SMTP id p5mr2556134ljg.251.1575379236563; 
 Tue, 03 Dec 2019 05:20:36 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-27-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-27-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 14:20:25 +0100
Message-ID: <CACRpkdZcLeJuOiPPa81qj17ifi3T0YxPq0zPP0oqNv-8pvzeKg@mail.gmail.com>
Subject: Re: [PATCH v1 26/26] drm/panel: tpo-tpg110: use drm_panel backlight
 support
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052038_329362_05678E89 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 8:33 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> Use the backlight support in drm_panel to simplify the driver
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for cleaning all of this up!

Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
