Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05667CCF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTuiLaECydK2jdkj/iVGby2lVTl6gCz0lC6e8imzVok=; b=XqjQgNpPXO8udm
	EIuDiEi07o6cwC+OtkvVQRpXINFg7soEfKNu/FAbr5VoAO4RHS5le1ZuFPn9psUJ4VNoE9sbfXpW6
	0NDe0IzId2UhJnmXAj60wyz2R460fsphI+jevfq7XVNr9KVZWjeJvza9dhuUAOVlnwpkDGOkWz11g
	rT7t/b9Ebqn2yVFPeXdPqlCRfJjrjftRK2G2S9yAgt1f1uxJSlEuWRciBURMfUi7ytIZmR6POp88E
	1P3ko5/fqlanQQkvza//dkSIDgW/+rtpnAlXRvp7VE6Z8egNS+zxRcWiE4opycLWWompBRGOrEHnp
	Xvn0jhP5XGA+623EGDQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuRu-0000yH-CH; Wed, 31 Jul 2019 19:39:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuRm-0000xA-Pv; Wed, 31 Jul 2019 19:39:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1BF22289F21
Message-ID: <869dd8b894883715378ba681c7dd26934284bdff.camel@collabora.com>
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>, Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 31 Jul 2019 16:39:13 -0300
In-Reply-To: <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
 <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
 <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_123939_106003_5537FAE1 
X-CRM114-Status: GOOD (  29.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 freedreno@lists.freedesktop.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jyri Sarha <jsarha@ti.com>, Alexios Zavras <alexios.zavras@intel.com>,
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm glad to see this work moving forward!

On Wed, 2019-07-24 at 10:01 +0200, Thomas Zimmermann wrote:
> Hi
> 
> Am 23.07.19 um 14:44 schrieb Andrzej Pietrasiewicz:
> > Hi Sam,
> > 
> > W dniu 23.07.2019 o 11:05, Sam Ravnborg pisze:
> > > Hi Andrzej
> > > 
> > > On Thu, Jul 11, 2019 at 01:26:41PM +0200, Andrzej Pietrasiewicz wrote:
> > > > Use the ddc pointer provided by the generic connector.
> > > > 
> > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > > ---
> > > >   drivers/gpu/drm/tilcdc/tilcdc_tfp410.c | 1 +
> > > >   1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > > b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > > index 62d014c20988..c373edb95666 100644
> > > > --- a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > > +++ b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> > > > @@ -219,6 +219,7 @@ static struct drm_connector
> > > > *tfp410_connector_create(struct drm_device *dev,
> > > >       tfp410_connector->mod = mod;
> > > >         connector = &tfp410_connector->base;
> > > > +    connector->ddc = mod->i2c;
> > > >         drm_connector_init(dev, connector, &tfp410_connector_funcs,
> > > >               DRM_MODE_CONNECTOR_DVID);
> > > 
> > > When reading this code, it looks strange that we set connector->ddc
> > > *before* the call to init the connector.
> > > One could risk that drm_connector_init() used memset(..) to clear all
> > > fields or so, and it would break this order.
> > 
> > I verified the code of drm_connector_init() and cannot find any memset()
> > invocations there. What is your actual concern?
> 
> I think this echoes my concern about the implicit order of operation. It
> seems too easy to get this wrong. If you don't want to add an additional
> interface for setting the ddc field, why not add a dedicated initializer
> function that sets the ddc field? Something like this.
> 
> int drm_connector_init_with_ddc(connector, funcs, ..., ddc)
> {
> 	ret = drm_connector_init(connector, funcs, ...);
> 	if (ret)
> 		return ret;
> 
> 	if (!ddc)
> 		return 0;
> 
> 	connector->ddc = ddc;
> 	/* set up sysfs */
> 

I know this comment comes late to the party, but I'm a slightly
suprised to see the above instead of implementing drm_connector_init
in terms of drm_connector_init_with_ddc, as we typically do.

Namely, something along these lines (code might not even build!):

--------------------------------------8<-----------------------------
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index d49e19f3de3a..dbd095933175 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -179,11 +179,12 @@ void drm_connector_free_work_fn(struct work_struct *work)
 }
 
 /**
- * drm_connector_init - Init a preallocated connector
+ * drm_connector_init_with_ddc - Init a preallocated connector
  * @dev: DRM device
  * @connector: the connector to init
  * @funcs: callbacks for this connector
  * @connector_type: user visible type of the connector
+ * @ddc: pointer to the associated ddc adapter (optional)
  *
  * Initialises a preallocated connector. Connectors should be
  * subclassed as part of driver connector objects.
@@ -191,10 +192,11 @@ void drm_connector_free_work_fn(struct work_struct *work)
  * Returns:
  * Zero on success, error code on failure.
  */
-int drm_connector_init(struct drm_device *dev,
-		       struct drm_connector *connector,
-		       const struct drm_connector_funcs *funcs,
-		       int connector_type)
+int drm_connector_init_with_ddc(struct drm_device *dev,
+				struct drm_connector *connector,
+				const struct drm_connector_funcs *funcs,
+				int connector_type,
+				struct i2c_adapter *ddc)
 {
 	struct drm_mode_config *config = &dev->mode_config;
 	int ret;
@@ -215,6 +217,9 @@ int drm_connector_init(struct drm_device *dev,
 	connector->dev = dev;
 	connector->funcs = funcs;
 
+	/* provide ddc symlink in sysfs */
+	connector->ddc = ddc;
+
 	/* connector index is used with 32bit bitmasks */
 	ret = ida_simple_get(&config->connector_ida, 0, 32, GFP_KERNEL);
 	if (ret < 0) {
@@ -295,41 +300,6 @@ int drm_connector_init(struct drm_device *dev,
 
 	return ret;
 }
-EXPORT_SYMBOL(drm_connector_init);
-
-/**
- * drm_connector_init_with_ddc - Init a preallocated connector
- * @dev: DRM device
- * @connector: the connector to init
- * @funcs: callbacks for this connector
- * @connector_type: user visible type of the connector
- * @ddc: pointer to the associated ddc adapter
- *
- * Initialises a preallocated connector. Connectors should be
- * subclassed as part of driver connector objects.
- *
- * Ensures that the ddc field of the connector is correctly set.
- *
- * Returns:
- * Zero on success, error code on failure.
- */
-int drm_connector_init_with_ddc(struct drm_device *dev,
-				struct drm_connector *connector,
-				const struct drm_connector_funcs *funcs,
-				int connector_type,
-				struct i2c_adapter *ddc)
-{
-	int ret;
-
-	ret = drm_connector_init(dev, connector, funcs, connector_type);
-	if (ret)
-		return ret;
-
-	/* provide ddc symlink in sysfs */
-	connector->ddc = ddc;
-
-	return ret;
-}
 EXPORT_SYMBOL(drm_connector_init_with_ddc);
 
 /**
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fc5d08438333..1884abf61a86 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1408,10 +1408,6 @@ struct drm_connector {
 
 #define obj_to_connector(x) container_of(x, struct drm_connector, base)
 
-int drm_connector_init(struct drm_device *dev,
-		       struct drm_connector *connector,
-		       const struct drm_connector_funcs *funcs,
-		       int connector_type);
 int drm_connector_init_with_ddc(struct drm_device *dev,
 				struct drm_connector *connector,
 				const struct drm_connector_funcs *funcs,
@@ -1425,6 +1421,16 @@ int drm_connector_attach_encoder(struct drm_connector *connector,
 
 void drm_connector_cleanup(struct drm_connector *connector);
 
+static inline int
+drm_connector_init(struct drm_device *dev,
+		   struct drm_connector *connector,
+		   const struct drm_connector_funcs *funcs,
+		   int connector_type);
+{
+	return drm_connector_init_with_ddc(dev, connector, funcs,
+					   connector_type, NULL);
+}
+
 static inline unsigned int drm_connector_index(const struct drm_connector *connector)
 {
 	return connector->index;
-------------------------------------->8-----------------------------

This might be seen as bikeshed but it seems there's value keeping all the init
code in the same place, as opposed to scattered.

Unless there are reasons for the current code, that I'm missing?

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
