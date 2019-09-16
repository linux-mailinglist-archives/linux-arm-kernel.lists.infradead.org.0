Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBBBB385A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdDRBhD3zVIQqXoYmhc7jL3gl5LRia2WpsUBMrp1cQo=; b=Nu+LaF6EQX9XI5
	NYlWePEtprBKMaPLPTodzSUwtwV9ilvFCScMig/caXuc5TVQn5KsrL9N0+3XQdaFhBpOCChHD1MkF
	uPwTGp08wnhylkEHY2mlWwSbn1FrIQ97eiiTOjzRJ/s+9izarwKjHxSMt/SbTsoEZ/u/nWYdQqBPp
	2iIo7U8U660Rr5iIAO+nfzz6dwwfWilVB3voi2kpjVY36WyKcIRcfGIh5MJJYdrzSw6/H9ITPIC14
	pm0etkhNL0jfS0H2Nyh4BUrNzQ0Hyc/6GK8TijjTFlyitdGxeymDnRXqAbrn1Ytp/4U4g953JKCco
	96w+HW6YKlRsq58o6Ubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oQj-00081z-Ks; Mon, 16 Sep 2019 10:40:25 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oQR-0007em-AZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:40:09 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id BA7C13E8F9;
 Mon, 16 Sep 2019 10:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1568630406;
 bh=wtwhbwzLFX1hOxjHI6Km7YJYGl4UdbLbrZnDLLvMrxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZCbe4Dvg00xGUQPAJF2/aulQkpQnoxQ9lj5hlCcH+yDvWz62utM+p5k/NFiRgU5g7
 ejeE3yaBaSO72f5dG0dLexNQgj3mUW/ZcK9AIHSwI0LwXFUiGBSvVZMgPYYx4dpRRy
 Q2xqU7xpuIY37lxivUDxElfp7rj2ouOFcdwdZimc=
Date: Mon, 16 Sep 2019 06:40:04 -0400
From: Brian Masney <masneyb@onstation.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
Message-ID: <20190916104004.GB1644@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <98199a9b-f7e0-ef95-62d7-401273457692@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98199a9b-f7e0-ef95-62d7-401273457692@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034007_443817_8CCE63AD 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, jonas@kwiboo.se, agross@kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 Andrzej Hajda <a.hajda@samsung.com>, robdclark@gmail.com, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:36:19PM +0200, Enric Balletbo i Serra wrote:
> Hi Andrzej and Brian
> =

> On 16/9/19 12:02, Andrzej Hajda wrote:
> > On 15.08.2019 02:48, Brian Masney wrote:
> >> When attempting to configure this driver on a Nexus 5 phone (msm8974),
> >> setting up the dummy i2c bus for TX_P0 would fail due to an -EBUSY
> >> error. The downstream MSM kernel sources [1] shows that the proper val=
ue
> >> for TX_P0 is 0x78, not 0x70, so correct the value to allow device
> >> probing to succeed.
> >>
> >> [1] https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/drivers/vi=
deo/slimport/slimport_tx_reg.h
> >>
> >> Signed-off-by: Brian Masney <masneyb@onstation.org>
> >> ---
> >>  drivers/gpu/drm/bridge/analogix-anx78xx.h | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/d=
rm/bridge/analogix-anx78xx.h
> >> index 25e063bcecbc..bc511fc605c9 100644
> >> --- a/drivers/gpu/drm/bridge/analogix-anx78xx.h
> >> +++ b/drivers/gpu/drm/bridge/analogix-anx78xx.h
> >> @@ -6,7 +6,7 @@
> >>  #ifndef __ANX78xx_H
> >>  #define __ANX78xx_H
> >>  =

> >> -#define TX_P0				0x70
> >> +#define TX_P0				0x78
> > =

> > =

> > This bothers me little. There are no upstream users, grepping android
> > sources suggests that both values can be used [1][2]=A0 (grep for "#def=
ine
> > TX_P0"), moreover there is code suggesting both values can be valid [3].
> > =

> > Could you verify datasheet which i2c slave addresses are valid for this
> > chip, if both I guess this patch should be reworked.
> > =

> =

> On my case the valid i2c slave address is 0x70 (from datasheet, very sorr=
y I
> can't share it) and the bridge used is an ANX7814, it could be that ANX78=
08 or
> ANX7812 have different slave addresses?

I haven't been able to find any of the datasheets for these devices
online. Product briefs are online (such as =

https://www.analogix.com/en/system/files/ANX7808_product_brief.pdf), but
they don't provide this type of information.

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
