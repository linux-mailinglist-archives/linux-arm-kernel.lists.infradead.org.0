Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F9AB39EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ThZGx3rwgKOMZWJx0hlm1bikw4xRZtMPYeWbzlvXY0=; b=loi0Pw47sDWhpM
	q9T5/d8RkjofefpIPAgUyI2qjYU4Np/98lVRHrFYUbAvzpz//Iu2/usByDIWdPg5+V7tbFIptJymc
	IB5DCTgmURGgEiaNFsPps9N6XkUuC14IcFaRrqSWR7nQvpj8szxSwVbEpyvtYmvVNEbfGMdu11rEc
	6gMSMblxT1PbuWt5hj70uVbuoePk5eLFfxm4fapY3L8NMmUpBlMf4LZtUWPOOT6GpeDlcNjmNqf/u
	T6Xp62NB9jlf8BOh0EtCg53e8S22Z0hDHBSOd83jIE9UmVYOtxLQrJk7iRL3qC8Lqd5oeW2JreHaQ
	v4RyTzjcLaGkBLj1bQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9piT-0002yd-8Z; Mon, 16 Sep 2019 12:02:49 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9piB-0002wX-CA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:02:33 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id E4DA83E8F9;
 Mon, 16 Sep 2019 12:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1568635349;
 bh=eoTNUlu644MNIklCssrNsvr6sIUHd71byT/D9gn4Vj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U9fS2nuNXlcVY8TaTbIAnY+2sufosKEONRg5Un1snIXLewL5Qp7nM8dN22Tw4muPm
 1e986OyHxZAyvFaUbvBcQ7ofTXA7IE93Nghy6nVXw5o1/Ru6BlGlpGIP0uEny0fqR7
 WZruNn6xwJ9/FyjjP33WT3zxPbdxLz0cOMCVyIa8=
Date: Mon, 16 Sep 2019 08:02:28 -0400
From: Brian Masney <masneyb@onstation.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
Message-ID: <20190916120228.GA3045@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <20190916103614.GA1644@onstation.org>
 <20190916104907.GB4734@pendragon.ideasonboard.com>
 <3ec4f0bc-f3c5-aebf-8213-bc4f80915902@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ec4f0bc-f3c5-aebf-8213-bc4f80915902@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_050231_576349_755F2E70 
X-CRM114-Status: GOOD (  29.75  )
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
 dri-devel@lists.freedesktop.org, narmstrong@baylibre.com, airlied@linux.ie,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, jonas@kwiboo.se,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 Andrzej Hajda <a.hajda@samsung.com>, robdclark@gmail.com, agross@kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, daniel@ffwll.ch,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 01:32:58PM +0200, Enric Balletbo i Serra wrote:
> Hi,
> =

> On 16/9/19 12:49, Laurent Pinchart wrote:
> > Hi Brian,
> > =

> > On Mon, Sep 16, 2019 at 06:36:14AM -0400, Brian Masney wrote:
> >> On Mon, Sep 16, 2019 at 12:02:09PM +0200, Andrzej Hajda wrote:
> >>> On 15.08.2019 02:48, Brian Masney wrote:
> >>>> When attempting to configure this driver on a Nexus 5 phone (msm8974=
),
> >>>> setting up the dummy i2c bus for TX_P0 would fail due to an -EBUSY
> >>>> error. The downstream MSM kernel sources [1] shows that the proper v=
alue
> >>>> for TX_P0 is 0x78, not 0x70, so correct the value to allow device
> >>>> probing to succeed.
> >>>>
> >>>> [1] https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/drivers/=
video/slimport/slimport_tx_reg.h
> >>>>
> >>>> Signed-off-by: Brian Masney <masneyb@onstation.org>
> >>>> ---
> >>>>  drivers/gpu/drm/bridge/analogix-anx78xx.h | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu=
/drm/bridge/analogix-anx78xx.h
> >>>> index 25e063bcecbc..bc511fc605c9 100644
> >>>> --- a/drivers/gpu/drm/bridge/analogix-anx78xx.h
> >>>> +++ b/drivers/gpu/drm/bridge/analogix-anx78xx.h
> >>>> @@ -6,7 +6,7 @@
> >>>>  #ifndef __ANX78xx_H
> >>>>  #define __ANX78xx_H
> >>>>  =

> >>>> -#define TX_P0				0x70
> >>>> +#define TX_P0				0x78
> >>>
> >>>
> >>> This bothers me little. There are no upstream users, grepping android
> >>> sources suggests that both values can be used [1][2]=A0 (grep for "#d=
efine
> >>> TX_P0"), moreover there is code suggesting both values can be valid [=
3].
> >>>
> >>> Could you verify datasheet which i2c slave addresses are valid for th=
is
> >>> chip, if both I guess this patch should be reworked.
> >>>
> >>>
> >>> [1]:
> >>> https://android.googlesource.com/kernel/msm/+/android-msm-flo-3.4-jb-=
mr2/drivers/misc/slimport_anx7808/slimport_tx_reg.h
> >>>
> >>> [2]:
> >>> https://github.com/AndroidGX/SimpleGX-MM-6.0_H815_20d/blob/master/dri=
vers/video/slimport/anx7812/slimport7812_tx_reg.h
> >>>
> >>> [3]:
> >>> https://github.com/commaai/android_kernel_leeco_msm8996/blob/master/d=
rivers/video/msm/mdss/dp/slimport_custom_declare.h#L73
> >>
> >> This address is 0x78 on my Nexus 5. Given [3] above it looks like we
> >> need to support both addresses. What do you think about moving these
> >> addresses into device tree?
> > =

> > Assuming that the device supports different addresses (I can't validate
> > that as I don't have access to the datasheet), and different addresses
> > need to be used on different systems, then the address to be used needs
> > to be provided by the firmware (DT in this case). Two options are
> > possible, either specifying the address explicitly in the device's DT
> > node, or specifying free addresses (in the form of a white list or black
> > list) and allocating an address from that pool. The latter has been
> > discussed in a BoF at the Linux Plumbers Conference last week,
> > https://linuxplumbersconf.org/event/4/contributions/542/.
> > =

> >> The downstream and upstream kernel sources divide these addresses by t=
wo
> >> to get the i2c address. Here's the code in upstream:
> >>
> >> https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/=
analogix-anx78xx.c#L1353
> >> https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/=
analogix-anx78xx.c#L41
> >>
> >> I'm not sure why the actual i2c address isn't used in this code.
> > =

> =

> The ANX7802/12/14/16 has a slave I2C bus that provides the interface to a=
ccess
> or control the chip from the AP. The I2C slave addresses used to control =
the
> ANX7802/12/14/16 are 70h, 72h, 7Ah, 7Eh and 80h. Every address allows you=
 to
> access to different registers of the chip and AFAICS is not configurable.
> =

> I don't think these addresses should be configured via DT but for the dri=
ver itself.
> =

> My wild guess is that the ANX7808 has different addresses, but I don't ha=
ve the
> datasheet of this version.

I'm able to communicate with the 7808 on my Nexus 5 using the 0x78
address. Given that the addresses appear to be fixed per model, maybe it
makes sense to drop the address #defines and add the addresses to the
data pointer in the driver's of_match_table like so:

static const struct of_device_id anx78xx_match_table[] =3D {
        { .compatible =3D "analogix,anx7808", .data =3D PTR_TO_7808_ADDRS },
        { .compatible =3D "analogix,anx7812", .data =3D PTR_TO_781X_ADDRS },
        { .compatible =3D "analogix,anx7814", .data =3D PTR_TO_781X_ADDRS },
        { .compatible =3D "analogix,anx7818", .data =3D PTR_TO_781X_ADDRS },
        { /* sentinel */ },
};

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
