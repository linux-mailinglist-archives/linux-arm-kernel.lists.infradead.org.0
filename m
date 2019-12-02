Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58B10F1C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhfyfuryvQgC06nUmtfembOsQ8ExJYxFGLR/liCCVM0=; b=R1gruPAi9i9NSX
	RXhaUCRN9vFms2wfhvNO92Iw5zqbRuM7bthmZPkEOkVTd4uszvVgpPP0cDvm+py7KPiFr+9iorwHN
	18ys3U262OZS0DxaoJFu5Xnm74v5HxI81U8+NeTVcAS+FftMbRaK3/cNcluI7KxW0Devjoj+Uz5gU
	lFT/9gy3MCuaW5079KdCg95bJ097tTN4VONqLuVYoHQqth+3udU7w3eLPYz6WwmKM410X5awSeVhv
	PJ6ZnUwvHDOu9Hz4gMmDu6ty+4hINZL//pdbkDg7nCYQIFISHY8HmXVTF/JT/cQVp8Dc6S+6MrswU
	J0C+BXivREuwKRHTnT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsgA-0006Io-6M; Mon, 02 Dec 2019 20:52:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsft-0006F5-DV; Mon, 02 Dec 2019 20:52:07 +0000
Received: by mail-io1-xd42.google.com with SMTP id i11so927791iol.13;
 Mon, 02 Dec 2019 12:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yKoJSkDsfIMrRW3jw85HKe2BQZ9NViBue+DgpdqXPJk=;
 b=jn5nPOdzEW+w5jzVGwuZ5oFeYEJf8WBlojzcbzo0FpQpz8lU3xlwetOymXe33RV0vU
 rZIUB8uzWSed5dAOZ1mQV8JCVBog+b8KG4/DzRaXJXK6jqkoWbOhqSlwP5HgyP7tpA1F
 sZOxbnADrE1RzNLnPdosncLvIUYhSNdiY5DzW7oxY59mP20Eg/u0Prwm4gBh32Q/n4J9
 GV8x5s3ajEkkySKLDzpqU3t0idoZb/hk/zqyucuqOWZLmopIcohvyGZ0mCdu/5Fjm4V6
 91n5ODv3rGa/fc60puo1AB0cc1S+Tf15xJgp0UInowtD9CGErLbGPkAFEeLQiB55Jmxs
 HKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yKoJSkDsfIMrRW3jw85HKe2BQZ9NViBue+DgpdqXPJk=;
 b=UfjDp/BTmkm29hldXeYlwfy49yOR7ntcqd0xU1SaFj7X0tMGsFKWvqWNvwLKMpWYGJ
 O3xFNSaUUYmvh11NqsgspL1hpHyeT6eh4X7s7l/aX8lwnTQ5oVxyZtjUfc28ndFqHHgM
 fxszwGCcXyY6zBkMCZwgJSjVy4+mierCTKmvGpXE13tsYpjqx+x1VhQCZcefQSEsQ0Xu
 2wei1ryJBPBlGtuKQEfJvXRs5NwDfLG7n13IcYSQzXC1Ltu9IJC/FICBk+ZlWkeBnL0B
 UOnd8GbsoPdZd0Bb0uigHJA9+t+dRcH93V/4aiWqa6yyhhqrqRxG60EX8nmdLcMWLof1
 3QUw==
X-Gm-Message-State: APjAAAVnAHOqJcpRl6Ds2iH4wA+aasGDYQNJii4csL15WHCqtMqmCdH/
 p/hIjrRd2XrmK0FGuUS+C8+ipcNf/ZDs5llqxRg=
X-Google-Smtp-Source: APXvYqzWJF+0Ki7M75FXoNw5UEUbhPWmgMVsemvAdnlzFn4gnf/vkOuGYX8u/xhrshBT2ODP7R8nZZfzmzkVwC/iQMQ=
X-Received: by 2002:a6b:5914:: with SMTP id n20mr744400iob.42.1575319924442;
 Mon, 02 Dec 2019 12:52:04 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <CAOCk7NoKPoxcETLYQ4CyAtYGnPwvYapdSavZM=aRdswDydTLEA@mail.gmail.com>
 <20191202204802.GA23600@ravnborg.org>
In-Reply-To: <20191202204802.GA23600@ravnborg.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Mon, 2 Dec 2019 13:51:53 -0700
Message-ID: <CAOCk7NogV39X2QMabv1naso4r7T_EkdzajcbtoPzQnJQ5T7WoQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/26] drm/panel infrastructure + backlight update
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_125205_482176_413851FE 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
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
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Abhinav Kumar <abhinavk@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-tegra@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 1:48 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Jeffrey.
>
> > >  drivers/gpu/drm/msm/dsi/dsi_manager.c              |   2 +-
> >
> > How come the diff stat in the cover letter here indicates a change to
> > this file, yet I cannot find a change to this file in any of the
> > patches?  What am I missing?
>
> This file is patched in "[PATCH v1 06/26] drm/panel: decouple connector
> from drm_panel"
>
> See: https://lists.freedesktop.org/archives/dri-devel/2019-December/247186.html
>
> The above patch touches a lot of files/drivers so it was cc: to
> a lot of people. Maybe is was considered as spam?

Interesting.  I missed that I didn't have patch 6 in the series in my
inbox.  Its also not in my spam box.  I wonder where it went.

Thanks for the direct link to the patch.  I saw no concerns.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
