Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4AB71B78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq3jtbym7fpLszHrLhenLnRUNXV7xx3olIxNcGpGmcc=; b=Zx9/BJODBC5YXC
	MD+3rmRPSYaNdjjuOKokV/fjX4LBn2nY0zH7iOYFBc+Q0MJ00twAZS5GG/TPgs0vTwr6ajx68CWJt
	iai9n57D9604LxLUV8JGo+0kEPT6l/wHVYhsOELDUhubLtuXOdUYws5CSlJ9VhSn/RxeR49tPUI7Z
	7Qn0T45mSDFiGX8ifJejTG1saymWOjxo99j5UwQYYl/eYPvFoJytc/Efw1OW1QVJnovEtV6o5KCQz
	N+L4xBT0Wv4XVIwajVWAMzjsXmFgz6KldNJnaLqw594YCKaN9ZSlwMnnLw2NqgbDNEOwU7QU6n1jQ
	bcswFbi/GnaovpBvr81A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwaM-000425-Ru; Tue, 23 Jul 2019 15:20:14 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwZy-00041L-GU; Tue, 23 Jul 2019 15:19:52 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 54655200D5;
 Tue, 23 Jul 2019 17:19:41 +0200 (CEST)
Date: Tue, 23 Jul 2019 17:19:39 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
Message-ID: <20190723151939.GA13718@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
 <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=QX4gbG5DAAAA:8
 a=6mu-9OIm9KcVJ4iDVDwA:9 a=wPNLvfGTeEIA:10 a=AbAUZ8qAyYyZVLSsDulk:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_081950_894590_03A25196 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrej.

On Tue, Jul 23, 2019 at 02:44:50PM +0200, Andrzej Pietrasiewicz wrote:
> Hi Sam,
> =

> W dniu 23.07.2019 o=A011:05, Sam Ravnborg pisze:
> > Hi Andrzej
> > =

> > On Thu, Jul 11, 2019 at 01:26:41PM +0200, Andrzej Pietrasiewicz wrote:
> > > Use the ddc pointer provided by the generic connector.
> > > =

> > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > ---
> > >   drivers/gpu/drm/tilcdc/tilcdc_tfp410.c | 1 +
> > >   1 file changed, 1 insertion(+)
> > > =

> > > diff --git a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c b/drivers/gpu/drm=
/tilcdc/tilcdc_tfp410.c
> > > index 62d014c20988..c373edb95666 100644
> > > --- a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > +++ b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > @@ -219,6 +219,7 @@ static struct drm_connector *tfp410_connector_cre=
ate(struct drm_device *dev,
> > >   	tfp410_connector->mod =3D mod;
> > >   	connector =3D &tfp410_connector->base;
> > > +	connector->ddc =3D mod->i2c;
> > >   	drm_connector_init(dev, connector, &tfp410_connector_funcs,
> > >   			DRM_MODE_CONNECTOR_DVID);
> > =

> > When reading this code, it looks strange that we set connector->ddc
> > *before* the call to init the connector.
> > One could risk that drm_connector_init() used memset(..) to clear all
> > fields or so, and it would break this order.
> =

> I verified the code of drm_connector_init() and cannot find any memset()
> invocations there. What is your actual concern?
My concern is that drm_connector_init() maybe sometime in the future
will init all fileds in drm_connector, so we loose any assingments
done to drm_connector from *before* we called the init function.

Moving the assignment to after drm_connector_init() would not
let us depend on the actual implmentation of drm_connector_init().

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
