Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A98E614
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7P35jsOmo9l3ij/S/HayyauLxyfOgs8VExlrTkejS4A=; b=JNXnZSlIpwaZXQ
	R+d7hplqJDCP3qlxEbEHUf/TJKU8WYn8sJQMCQoxa05nsElj1F3teIcBpN8d9QhauClItzL+uvViQ
	2qKmWqJfPQl5oiyqEqCdfVqwgYX4L5vT0vay/gS5mbPpNk5fyX1i9hXJ3KRqzUlnrIFmss44J0OYt
	R49ljsRXadZ7AI0HuoygtMGHke87Qu28umpeGrpGETKNlZrX7a78jKkr7flqSokZNdo/Pn1/gGgjL
	0chD8RVH+5WInSZRHvL7iNj992BMHMR3XWU6Li1iRW1XYKlNB7328W16njsP9aCKK3NDDR1f/16Wk
	v1Ap6hF1maNiomKQYrQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAxn-0001Yr-Gk; Thu, 15 Aug 2019 08:18:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAxY-0001Wr-IM
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:18:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id e24so1504422ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W7xfr16BH5ZJjmVp0865t1tdCv0TJfQQ8MOvl0IA0RI=;
 b=h/iE0ACwRL8YZpox9tiry6Y6F9AtQ6fulXq/U4nRshmUS5LIgMjgsMcGGCCmgSfY0J
 nglNTBQxeLzOt23t5VWv3b16qAW7RU72nYgfDHIc6rn/87aL9AlP5VRxR1gOtdNN2rzJ
 CE8Oaxl6PzFKEDehEhvT9xMnQ2BuRQKgGSacBPydzgzfPTcdrYIriDbFD0KYhisx/fYQ
 TfxHkfwUUu+WzgWKIvWBuJerhIihKrkXphGv+H3J2ktph4Au4Vf7P8one0DBq1AYscNq
 Ya5pxqW6o6aiYu+tmytDC5UQsm+gOAXmFAltlAlJRfVa6YAKIB8IWmHbMqFum5Xh0C62
 Y8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W7xfr16BH5ZJjmVp0865t1tdCv0TJfQQ8MOvl0IA0RI=;
 b=JiOCIDtRlxj1wUE1NNuD6atghE8B7uIKVbE0N7q4QcYPYkOGfAVZHLBetds2GfI23o
 M9CFC8Z7hfpPtfbwlVBPcV2FT4nYYiWMHIJwpv9p20hcYhwf+enIjF84bW8HEt2Y2rYa
 auk8AEGeuYOU0XdrTHbFLCTXRcY4nuFPTAiqOUHwzd1RyjQrfWGy6DdK0grcjAlae3D8
 fcuE7DmMZugezw/AZMnn4sSt9G4TV6hCiuJD9oDQ+NBnMt/NnlEVHWTrLhZIGgeszY57
 suQjmgdYtPlBnUMLdXojK1zoSu3GhRNJcTG6htCSeiBZLBP7gqUHA/wpAYTvOnbfzAlV
 ttLg==
X-Gm-Message-State: APjAAAUZ6Ef/mk8u4emuocZS467NR+4958pbnicpEwE3+MqDygmdGTus
 5hWTynKUoO1seIUXRZoOFqU7P3Cl3f566gJe0wNlxQ==
X-Google-Smtp-Source: APXvYqwlNuGYnM4syJ7wAaplZofwwfNvfLAdOC0xu1V73tUg0jS10SDexNQ4wMU3AxJ+Dtlu9zFGYve/VAiy/marM2E=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr2044788ljo.69.1565857090860; 
 Thu, 15 Aug 2019 01:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-3-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-3-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:17:59 +0200
Message-ID: <CACRpkdaDHoJvoH93Amzv2gSDGbgAsF-iNLiEFA3Fuov3D4uh5Q@mail.gmail.com>
Subject: Re: [PATCH 02/11] drm/bridge: analogix-anx78xx: add new variants
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_011812_628322_1E4A5FBD 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Gross <agross@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Clark <robdclark@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, MSM <linux-arm-msm@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 freedreno <freedreno@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add support for the 7808 variant. While we're here, the of match table
> was missing support for the 7812 and 7818 variants, so add them as well.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
