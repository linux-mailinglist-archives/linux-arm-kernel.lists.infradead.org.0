Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4EB8F73D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 00:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5b2u8uslBkYDu/U6j1UXzoYVAQ9+DTEj+qgpY9dct8=; b=PElDzWa0r0NzAv
	dL9vuou+GirgBv9WUCkr+XMpt1iedYjRInsFTPipMLnUiQOfHVoi0oWte7j25hmEVN4m9GwJp/t/0
	HTM/QDfyqz6T26WoSKxMdEUbGflDFMKTHwZ2BHxeZyoe1XKw8ywZIl9TLQDmLpC9Ilh+fEXy3pYMr
	FVbReV1Uwn7nl7r8kAqwgRq1MuHfFwFuUe8QU/fFNRjLoPmqf3ABjlZhAQastASZ9DDmyQbknWUna
	xpJdGzvoYUU6tguvsS/FswbqutS5kC6ssIYKP7NsGQVKnBGIWmBYDiuv664TMkkrMD87TMQidq9eF
	+Az1Y54s/d7gh+e80XzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOaX-0003j9-Bt; Thu, 15 Aug 2019 22:51:21 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyOaJ-0003iS-Tr
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 22:51:09 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id D89F23E998;
 Thu, 15 Aug 2019 22:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565909466;
 bh=GlErRnlbnhtp3xOCD8QDuEBNzdpIzm/CEjl/t+YePi4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kbBRmB2Ag3E2vXFKqyIe3P3JBKnDCf2Gw4yfO4jcxecQTEdBlDWG3wDJ+vxPQ+XQN
 a1BNwFsIm8w50ApVariWEfK20tN4ggz3LwN3Ya5I93TAxtpu1h1nThdsONxNN6uX7o
 QkSapavjafeT34+PmnZN/YYXcO0hocqwBz5MLwfA=
Date: Thu, 15 Aug 2019 18:51:04 -0400
From: Brian Masney <masneyb@onstation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH RFC 06/11] drm/bridge: analogix-anx78xx: add support for
 avdd33 regulator
Message-ID: <20190815225104.GB32072@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-7-masneyb@onstation.org>
 <CACRpkdYdQa+FVfpSjLi0SsBMDT4QC667z1P1dnapz7PXgRoB5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYdQa+FVfpSjLi0SsBMDT4QC667z1P1dnapz7PXgRoB5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_155108_029783_148529BE 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Thu, Aug 15, 2019 at 10:22:45AM +0200, Linus Walleij wrote:
> On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:
> 
> > Add support for the avdd33 regulator to the analogix-anx78xx driver.
> > Note that the regulator is currently enabled during driver probe and
> > disabled when the driver is removed. This is currently how the
> > downstream MSM kernel sources do this.
> >
> > Let's not merge this upstream for the mean time until I get the external
> > display fully working on the Nexus 5 and then I can submit proper
> > support then that powers down this regulator in the power off function.
> >
> > Signed-off-by: Brian Masney <masneyb@onstation.org>
> 
> > +static void anx78xx_disable_regulator_action(void *_data)
> > +{
> > +       struct anx78xx_platform_data *pdata = _data;
> > +
> > +       regulator_disable(pdata->avdd33);
> > +}
> (...)
> > +       err = devm_add_action(dev, anx78xx_disable_regulator_action,
> > +                             pdata);
> 
> Clever idea. Good for initial support, probably later on it would
> need to be reworked using runtime PM so it's not constantly
> powered up.

Yes, that's my plan. I suspect that I may have a regulator disabled
somewhere so I was planning to leave this on all the time for the time
being to match the downstream behavior until I get the hot plug detect
GPIO working.

> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks,

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
