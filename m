Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C4B3844
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lWSK0LaGplIt/C12+Q848h0sDo+YfBT06G37LNks1I=; b=bwYtaBXFFxumFu
	RnwmH1g5byZWU2MN6wqP2gHqDG1did8SV7zpCSbKM9V4Ap7h0jwpwG46eitW8PO56N3+Gr4re4H7e
	HemQxX6bcGZvnZANhqyl16j/LIHDgUhvPwpHFh3ex4PhiRutTEu9MxXRPb+1YNsEzZqNEZHEpTkXv
	e+ZX6v3Is/53P/Xez/HSZPYmHKHWHcGEh3PfbTprQYd3ToXdIQMiwMCAyvzJ8eh9e0t7EQH41U/By
	8x+Ac9UAgmw9QNnHj3vJkQ5iOHdlTNejwq9EHZYyLy+v8hRa32xzJjyo6mCeYrMjyfC8tQfuAeUCw
	nXI6OH90XUkCr5IrduWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oNJ-0005Ns-Ph; Mon, 16 Sep 2019 10:36:54 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oMl-0005N2-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:36:21 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 35DF83E8F9;
 Mon, 16 Sep 2019 10:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1568630176;
 bh=4KQmgz71YU3A68V+Z3HaVPiT+RBIQPuGE3xqAmSJ6fE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mYdC2Jostpc6JnzwEQKwLhjI7/uhjM7Lt0RJ5HB20fuJn1eObXMqrg4rMz0NWQAha
 9mZxUJPUj3+2M4JFGaGm27QPrkXQDLGJNiBeRsEplRktcZoLHydxXxBglCpX5+wd9L
 fPvoREGjrIlTtEyAFeXHDspo9m5N2e4aerYO4rDQ=
Date: Mon, 16 Sep 2019 06:36:14 -0400
From: Brian Masney <masneyb@onstation.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
Message-ID: <20190916103614.GA1644@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_033619_925254_1F4E38BF 
X-CRM114-Status: GOOD (  20.11  )
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
 robdclark@gmail.com, robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, linux-arm-msm@vger.kernel.org, enric.balletbo@collabora.com,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:02:09PM +0200, Andrzej Hajda wrote:
> On 15.08.2019 02:48, Brian Masney wrote:
> > When attempting to configure this driver on a Nexus 5 phone (msm8974),
> > setting up the dummy i2c bus for TX_P0 would fail due to an -EBUSY
> > error. The downstream MSM kernel sources [1] shows that the proper value
> > for TX_P0 is 0x78, not 0x70, so correct the value to allow device
> > probing to succeed.
> >
> > [1] https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/drivers/vid=
eo/slimport/slimport_tx_reg.h
> >
> > Signed-off-by: Brian Masney <masneyb@onstation.org>
> > ---
> >  drivers/gpu/drm/bridge/analogix-anx78xx.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/dr=
m/bridge/analogix-anx78xx.h
> > index 25e063bcecbc..bc511fc605c9 100644
> > --- a/drivers/gpu/drm/bridge/analogix-anx78xx.h
> > +++ b/drivers/gpu/drm/bridge/analogix-anx78xx.h
> > @@ -6,7 +6,7 @@
> >  #ifndef __ANX78xx_H
> >  #define __ANX78xx_H
> >  =

> > -#define TX_P0				0x70
> > +#define TX_P0				0x78
> =

> =

> This bothers me little. There are no upstream users, grepping android
> sources suggests that both values can be used [1][2]=A0 (grep for "#define
> TX_P0"), moreover there is code suggesting both values can be valid [3].
> =

> Could you verify datasheet which i2c slave addresses are valid for this
> chip, if both I guess this patch should be reworked.
> =

> =

> [1]:
> https://android.googlesource.com/kernel/msm/+/android-msm-flo-3.4-jb-mr2/=
drivers/misc/slimport_anx7808/slimport_tx_reg.h
> =

> [2]:
> https://github.com/AndroidGX/SimpleGX-MM-6.0_H815_20d/blob/master/drivers=
/video/slimport/anx7812/slimport7812_tx_reg.h
> =

> [3]:
> https://github.com/commaai/android_kernel_leeco_msm8996/blob/master/drive=
rs/video/msm/mdss/dp/slimport_custom_declare.h#L73

This address is 0x78 on my Nexus 5. Given [3] above it looks like we
need to support both addresses. What do you think about moving these
addresses into device tree?

The downstream and upstream kernel sources divide these addresses by two
to get the i2c address. Here's the code in upstream:

https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/analo=
gix-anx78xx.c#L1353
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/analo=
gix-anx78xx.c#L41

I'm not sure why the actual i2c address isn't used in this code.

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
