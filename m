Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD5B8F72C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 00:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIwSk9W143gr12gl4YojvI1emLe2l0QImTgVvEDkeYY=; b=W79tJjy8S72JQk
	IMtzwZv6YqBzVRKkofTTFxrY/PN1jlWuCszgZ19apkM0hjJZqyOx1UirbGYTf2C46WSkEC5t+d8FF
	44dH4q31Z4dwRoVFnDvPtrYMa89qZYnftrEv+vPXvbfATyHnAuxIWN1a31T400kSrT6BFbdyWJpyr
	dyfh/7Mb1L+NqH4EDv3dKlKPDJuC26s/NV/8KmGIAvuc9cg3tQntggpI6igz6R+qAMl8gpTdnlvfs
	Kxe6rcC+c8/qic0H7FL0tyMJAb6BQD2oS3PctdsFj2aODkKCxVyj0hvgA8wqoCAp0ZEa9DR8d1S2i
	fvRmPGCUAe8J208Tmi/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOTw-0000d4-Ef; Thu, 15 Aug 2019 22:44:32 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyOTl-0000cJ-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 22:44:22 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id B4B0B3E998;
 Thu, 15 Aug 2019 22:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565909059;
 bh=czM1Vfno+UFHpzvoNlZgvzbIsi/W/guZt8ysTusqBg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z707lNUjzuIsbtPXSccR8bANmWJFP6d0utJUK+yc8rOPnV4fltz0acMoPYc0Gth9O
 9UmsjR4gMyWahWR+mUwz0JP9vIZHWTzezy6ZO8awAhHdaSSFZsP5nzvVceVqRxtZ6G
 FF0g1ay6/KWQatmMJPp2UFMvfQyb5QJEn8UXok28=
Date: Thu, 15 Aug 2019 18:44:17 -0400
From: Brian Masney <masneyb@onstation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 09/11] ARM: dts: qcom: pm8941: add 5vs2 regulator node
Message-ID: <20190815224417.GA32072@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-10-masneyb@onstation.org>
 <CACRpkdYU-6LvFKRkj0yMMCmAnX0XtGe7rMwbXbhf2GCp77Ciyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYU-6LvFKRkj0yMMCmAnX0XtGe7rMwbXbhf2GCp77Ciyw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_154421_147996_DCF6CA71 
X-CRM114-Status: GOOD (  16.31  )
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

On Thu, Aug 15, 2019 at 10:34:17AM +0200, Linus Walleij wrote:
> On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:
> 
> > pm8941 is missing the 5vs2 regulator node so let's add it since its
> > needed to get the external display working. This regulator was already
> > configured in the interrupts property on the parent node.
> >
> > Note that this regulator is referred to as mvs2 in the downstream MSM
> > kernel sources.
> 
> When I looked at it it seemed like this convention is used for power
> supplies that appear on both the main PMIC and the "extra (boot? basic?
> low power?) PMIC that the main 80xx PMIC has mvs1 and the
> other 89xx PMIC has mvs2.

According to the downstream MSM sources, the 5vs1 and 5vs2 rails are
both on the second pm8941 PMIC:

https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/arch/arm/boot/dts/msm8974-regulator.dtsi#L18

> I suppose it is named "mvs" on both PMICs and this is just a rail
> name so as not to confuse the schematic?

That sounds reasonable.

> > Signed-off-by: Brian Masney <masneyb@onstation.org>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thank you!

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
