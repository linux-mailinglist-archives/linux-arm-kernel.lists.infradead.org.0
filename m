Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFDE76069
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0XWI/dbd+rA+jaO21AKz6Et1fjqektNW+9iWWC4Zrc=; b=O6ELdwsHY3gS/R
	aDxIKdTqr1H//P6B6ebWp6RZq/vmII7FBaIBE4E7WGf0Tdpg38SeqaZITwH3hogeQPZkAtihm9xX4
	kd/yAp0jLWDRhhfldeR5dpjqXP2mODi3PBWfe+pQphorDUVWdJnc4MHNhOcAPh+fl+S55a9WknEiD
	FW670Wbaaezgbn8poifXZcvYanimfo6AFx8q/ahV0YX0UUtJwIR3wlL0ucCquM1TNZ9F4EJvoLavv
	TN6dyIchttMpq7R0yMZLgRnZ6tbTemY1mWfnHf04gpgZ+lAyDIG6U7JAfNBcYLbKN6tox1PZ0nKrB
	cNeGCzpBuNQRPpeSYnRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvI2-00086z-D4; Fri, 26 Jul 2019 08:09:22 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvHk-00085j-9k; Fri, 26 Jul 2019 08:09:06 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 1040C803BB;
 Fri, 26 Jul 2019 10:08:56 +0200 (CEST)
Date: Fri, 26 Jul 2019 10:08:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v5 01/24] drm: Include ddc adapter pointer in struct
 drm_connector
Message-ID: <20190726080855.GA9143@ravnborg.org>
References: <cover.1563960855.git.andrzej.p@collabora.com>
 <e82d6aca4f8abc95834c8a36c101d153518bb1ac.1563960855.git.andrzej.p@collabora.com>
 <20190726063759.GB6443@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726063759.GB6443@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QX4gbG5DAAAA:8
 a=hD80L64hAAAA:8 a=e5mUnYsNAAAA:8 a=qxXKUbxsVWwuiIGZjhEA:9
 a=CjuIK1q_8ugA:10 a=AbAUZ8qAyYyZVLSsDulk:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_010904_697420_612460AC 
X-CRM114-Status: GOOD (  30.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-rockchip@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jyri Sarha <jsarha@ti.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Dave Airlie <airlied@redhat.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej.

After reading through the series a few more comments.

1) The subject of this patch could be improved.
   Consider something like:
   drm: add ddc link in sysfs created by drm_connector

   This spells out much better what the patch achieve.


2) The purpsoe of drm_connector.ddc is to provide drm_connector with
   info to create the symlink.
   Yet in many follow-up patches the drivers are changed so
   drm_connector.ddc is their only reference to struct i2c_adapter.

   But the ownership is not clear here.
   Who owns the reference to i2c_adapter - and who has the
   responsibility to call put() on the adapter.

   Looking at the conversions done then some drivers are converted
   so they only use drm_connector.ddc, and other drivers have their own
   reference to i2c_adapter.
   The latter looks like the correct solution as the ownership of the
   reference belongs to the driver and not drm_connector.

   In other words - a conversion where the drivers only assigned
   drm_connector.ddc (using drm_connector_init_with_ddc()),
   seems like a more clean design that does not mix up ownership.
   This is at least how I see it.
   I did not take this type of look at the patches before. Sorry
   for providing feedback this late.

	Sam

On Fri, Jul 26, 2019 at 08:37:59AM +0200, Sam Ravnborg wrote:
> Hi Andrzej.
> 
> Patch looks good, but one kernel-doc detail.
> 
> On Wed, Jul 24, 2019 at 03:59:23PM +0200, Andrzej Pietrasiewicz wrote:
> > Add generic code which creates symbolic links in sysfs, pointing to ddc
> > interface used by a particular video output. For example:
> > 
> > ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> > 	-> ../../../../soc/13880000.i2c/i2c-2
> > 
> > This makes it easy for user to associate a display with its ddc adapter
> > and use e.g. ddcutil to control the chosen monitor.
> > 
> > This patch adds an i2c_adapter pointer to struct drm_connector. Particular
> > drivers can then use it instead of using their own private instance. If a
> > connector contains a ddc, then create a symbolic link in sysfs.
> > 
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
> > ---
> >  drivers/gpu/drm/drm_sysfs.c |  8 ++++++++
> >  include/drm/drm_connector.h | 11 +++++++++++
> >  2 files changed, 19 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> > index ad10810bc972..e962a9d45f7e 100644
> > --- a/drivers/gpu/drm/drm_sysfs.c
> > +++ b/drivers/gpu/drm/drm_sysfs.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/err.h>
> >  #include <linux/export.h>
> >  #include <linux/gfp.h>
> > +#include <linux/i2c.h>
> >  #include <linux/kdev_t.h>
> >  #include <linux/slab.h>
> >  
> > @@ -294,6 +295,9 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
> >  	/* Let userspace know we have a new connector */
> >  	drm_sysfs_hotplug_event(dev);
> >  
> > +	if (connector->ddc)
> > +		return sysfs_create_link(&connector->kdev->kobj,
> > +				 &connector->ddc->dev.kobj, "ddc");
> >  	return 0;
> >  }
> >  
> > @@ -301,6 +305,10 @@ void drm_sysfs_connector_remove(struct drm_connector *connector)
> >  {
> >  	if (!connector->kdev)
> >  		return;
> > +
> > +	if (connector->ddc)
> > +		sysfs_remove_link(&connector->kdev->kobj, "ddc");
> > +
> >  	DRM_DEBUG("removing \"%s\" from sysfs\n",
> >  		  connector->name);
> >  
> > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > index 4c30d751487a..33a6fff85fdb 100644
> > --- a/include/drm/drm_connector.h
> > +++ b/include/drm/drm_connector.h
> > @@ -41,6 +41,7 @@ struct drm_property;
> >  struct drm_property_blob;
> >  struct drm_printer;
> >  struct edid;
> > +struct i2c_adapter;
> >  
> >  enum drm_connector_force {
> >  	DRM_FORCE_UNSPECIFIED,
> > @@ -1311,6 +1312,16 @@ struct drm_connector {
> >  	 * [0]: progressive, [1]: interlaced
> >  	 */
> >  	int audio_latency[2];
> > +
> > +	/**
> > +	 * @ddc: associated ddc adapter.
> > +	 * A connector usually has its associated ddc adapter. If a driver uses
> > +	 * this field, then an appropriate symbolic link is created in connector
> > +	 * sysfs directory to make it easy for the user to tell which i2c
> > +	 * adapter is for a particular display.
> > +	 */
> > +	struct i2c_adapter *ddc;
> 
> To help the reader could you add in the above a reference to
> drm_connector_init_with_ddc() sp the reader is told how to init this
> field.
> 
> Either add it in PATCH 2 - or merge patch 1 and 2.
> 
> 	Sam
> 
> > +
> >  	/**
> >  	 * @null_edid_counter: track sinks that give us all zeros for the EDID.
> >  	 * Needed to workaround some HW bugs where we get all 0s
> > -- 
> > 2.17.1
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
