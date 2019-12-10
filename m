Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903AB119794
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuzI8QNakEwLOWw/tWzhDmbezH8hDYCro03hPVdaMQ8=; b=CM+SRtiVpDAPdR
	teQwDPuAtIphySogyxFKyZPdCYvctiY+w1Q/kaDdXbcF60CFB4KMpiNy+sTnX+O8AvMLLzQJsj2k/
	A2mpkCHEp+piSmyCkG/izdA8GV/oos1WhGtPkS0l4Lzhv1q32qKoTvdGAtNnUSoibWgWHsLWNbpyG
	Z0AhnUz7wm1/023cROlsM6enoQJHufzDM5ay9gsjes+JcvcOdaWraH4CVrgA4cqyypoHG0BoBpxbr
	dw+54Sxzffp6TuMIJdwwuzP7BMAD/MaEwt26oMHRJsuZEIG4zDs3CmW7at+vqCK3KejbsUZlkQVDT
	7e68YvfQsxi0fxYoZw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ien9H-0002Tg-Kv; Tue, 10 Dec 2019 21:34:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ien8r-0002JV-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:34:02 +0000
Received: by mail-lj1-x244.google.com with SMTP id h23so21553154ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 13:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sfwPNW+0w7SYOVN5vzqnBaCzSrm1enkZiO9HCQzgqjc=;
 b=ELDYffyPwLTppPAGsVU3YxNSQOLOcATsg+IC8f7KpshW1lI8HVOS/LPhBAsT3ufSID
 fT8v7xNJc4kv0wTGrieBMQqsRE05FMAqAlQlWeqPYjlA6ow0ox6lVlQeD3a0gHQCNpvO
 UQuarskxChn5qju4s1+DdsIwkp9B7GHuVeF6VYnrRLMyisteUJaHFhFjU/S8KbDGs+wP
 PxqBkBxPJ4ttyp+Sef34gOKwQPC9beuKUBnoGOn5XjUWMEO9A2EEJEl1u9PnSr5O44Lx
 VMiuT+azPKHva2915rPrbzbWb1+RwsYjjYQJPUWnIZz+Df5kMzfE10XKxc8RFFUbhxa5
 icmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sfwPNW+0w7SYOVN5vzqnBaCzSrm1enkZiO9HCQzgqjc=;
 b=KnscFxQAqQYw4nI9BujFCIICzB0v+bvuPM9PVRRuJDoReAKhzbh/xXjHFwhTMcUgb8
 ha8kQY5kYpTLIfBHYDSTSjtKYYDPp75f1HW2uPk8eEHOzkR09akZxV1d4Ed5huyz1/tZ
 5teaeqM3V3j5lcB0hA78+ylirccL24fgEae9UqIcggRyXpQfWWiDENipzWod10F6w/mu
 CaLpQi3IWRmdvhTQYAiOm/FgoOsf4iw1kOGrRuM02xHVoJW6qtL98y9lUC6XU2QIdjJx
 kN9MFH3e/Az8a+a7QWtTSreUPPSPZlTYZIOw10gZauuQx5UWcym/6v9as+i8nKj19iwV
 whUA==
X-Gm-Message-State: APjAAAUrdchsbPZ2iURhq5zg2Y+yMETviI25qaMyPi65xmG2IOtvQmag
 buG+6nKUzGIbiPd6ff+VAp0Xy5UoRJhA/g/4uUcPxQ==
X-Google-Smtp-Source: APXvYqxlNtTXCGGpW9eRPgRQxUIXYH1CqIcL6wpo3KqsA4rHt7y1htGJhYXnIDuRbtBsJbNT4EJP7YmxbMU5QzD97u0=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr21298405ljh.42.1576013639357; 
 Tue, 10 Dec 2019 13:33:59 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-8-sam@ravnborg.org>
 <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
 <CACRpkdZrReQs08+bXS7s7eJ-K76nMGvRgQ-L-1-baunEtiF40g@mail.gmail.com>
 <20191204081650.4n4ehbub4n7pxdom@gilmour.lan>
In-Reply-To: <20191204081650.4n4ehbub4n7pxdom@gilmour.lan>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Dec 2019 22:33:48 +0100
Message-ID: <CACRpkdZ7jg7JwNk12m9pGXOVBxHRta8nBWmpdqFvfQHB=8LptA@mail.gmail.com>
Subject: Re: [PATCH v1 07/26] drm/panel: remove get_timings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_133401_387538_909B7BCF 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 9:16 AM Maxime Ripard <mripard@kernel.org> wrote:
> On Tue, Dec 03, 2019 at 04:20:24PM +0100, Linus Walleij wrote:

> > On the DSI displays in video mode there is also this EOL area
> > which seems to be where the logic is normally just idling for a
> > while, that can be adjusted on some hardware as well, but
> > I don't quite understand it admittedly. Sometimes I wonder if
> > anyone really understands DSI... :/
>
> I'm not aware of any EOL area in MIPI-DSI that would make the hardware
> idle, don't you mean LP-11?

I think in the spec the bubble used for this is tagged "BLLP"
Blanking-Line-Low-Power or something.

IIUC it is possible for displays to either receive continuous NULL
packets or blanking packets or go to LP mode in this area.

And since that is not there for e.g. DPI displays I feel it adds
another layer of confusion to timings.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
