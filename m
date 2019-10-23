Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A357E1E2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58alWx+RXz7qvHEMXUZKxP6ZHTaZ3zkc9nEKX+KDGWY=; b=EWyyfBbLHyAOoi
	s8CSqQ3Xb7DeWX+vhMDqcoJlyjhPmphxqojpmfysmz+2gwOYYtP3UnuMnPOTmHWpuCscIEcwaEgiQ
	kppkQwQz6n6sq5UaMmIeEvULiR21unipNJZf8zFg5PSh2rSwvR604a6JuN0dYJROxqK84X04+Elva
	Mmlc5zDys4xKBzs6/CZe74gyxMamW94Pd78xuee+Xrbt87dlGRLbaQiiRUqavycE5BCTj/zatj7N+
	EQqFGbsyaTGB997Jlmf9jh9Oiy0+GIfgxndzrwVwmgKHVMrg8I7sO3sXNalyTRXeP1Prxzfqh30Op
	QKPDogmvor5VOx14yh4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHdH-0006oF-7q; Wed, 23 Oct 2019 14:29:03 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHd7-0006nc-JI; Wed, 23 Oct 2019 14:28:55 +0000
Received: from pendragon.ideasonboard.com (143.121.2.93.rev.sfr.net
 [93.2.121.143])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D86D02BA;
 Wed, 23 Oct 2019 16:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571840931;
 bh=t3Htp1XR/thYXTkpQ0rJ6aq37qeHWyJ+ms7lSKkK260=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rq44FFoUvSBNKU3dRccrJ+nNMAAqWTv+qKPcu7cFedWct514zocGwqunpV/T85zmY
 Y8M8cSDrAK1N8xXDzcdys8702EHJETXKYvCfgtGrMqAm2LEggVvi6fGSC0NzvGJQJv
 iExRoNQX3b60Bv2LNJUaza8GOGLwflH83hiLkKiI=
Date: Wed, 23 Oct 2019 17:28:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/6] drm: Introduce DRM_MODE_DUMB_KERNEL_MAP flag
Message-ID: <20191023142844.GC1904@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-3-robh@kernel.org>
 <20191022111443.GE4756@pendragon.ideasonboard.com>
 <CAL_Jsq+kyLZ8LAVN-5UDJUy9nMLiAjN452HWg5WYAfLS7QD=Yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+kyLZ8LAVN-5UDJUy9nMLiAjN452HWg5WYAfLS7QD=Yw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_072853_925603_445790D1 
X-CRM114-Status: GOOD (  26.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, Oct 22, 2019 at 07:42:06AM -0500, Rob Herring wrote:
> On Tue, Oct 22, 2019 at 6:14 AM Laurent Pinchart wrote:
> > On Mon, Oct 21, 2019 at 04:45:46PM -0500, Rob Herring wrote:
> > > Introduce a new flag, DRM_MODE_DUMB_KERNEL_MAP, for struct
> > > drm_mode_create_dumb. This flag is for internal kernel use to indicate
> > > if dumb buffer allocation needs a kernel mapping. This is needed only for
> > > CMA where creating a kernel mapping or not has to be decided at allocation
> > > time because creating a mapping on demand (with vmap()) is not guaranteed
> > > to work. Several drivers are using CMA, but not the CMA helpers because
> > > they distinguish between kernel and userspace allocations to create a
> > > kernel mapping or not.
> > >
> > > Update the callers of drm_mode_dumb_create() to set
> > > drm_mode_dumb_create.flags to appropriate defaults. Currently, flags can
> > > be set to anything by userspace, but is unused within the kernel. Let's
> > > force flags to zero (no kernel mapping) for userspace callers by default.
> > > For in kernel clients, set DRM_MODE_DUMB_KERNEL_MAP by default. Drivers
> > > can override this as needed.
> > >
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Maxime Ripard <mripard@kernel.org>
> > > Cc: Sean Paul <sean@poorly.run>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  drivers/gpu/drm/drm_client.c       | 1 +
> > >  drivers/gpu/drm/drm_dumb_buffers.c | 5 ++++-
> > >  include/uapi/drm/drm_mode.h        | 2 ++
> > >  3 files changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> > > index d9a2e3695525..dbfc8061b392 100644
> > > --- a/drivers/gpu/drm/drm_client.c
> > > +++ b/drivers/gpu/drm/drm_client.c
> > > @@ -264,6 +264,7 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
> > >       dumb_args.width = width;
> > >       dumb_args.height = height;
> > >       dumb_args.bpp = info->cpp[0] * 8;
> > > +     dumb_args.flags = DRM_MODE_DUMB_KERNEL_MAP;
> > >       ret = drm_mode_create_dumb(dev, &dumb_args, client->file);
> > >       if (ret)
> > >               goto err_delete;
> > > diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
> > > index d18a740fe0f1..74a13f14c173 100644
> > > --- a/drivers/gpu/drm/drm_dumb_buffers.c
> > > +++ b/drivers/gpu/drm/drm_dumb_buffers.c
> > > @@ -97,7 +97,10 @@ int drm_mode_create_dumb(struct drm_device *dev,
> > >  int drm_mode_create_dumb_ioctl(struct drm_device *dev,
> > >                              void *data, struct drm_file *file_priv)
> > >  {
> > > -     return drm_mode_create_dumb(dev, data, file_priv);
> > > +     struct drm_mode_create_dumb *args = data;
> > > +
> > > +     args->flags = 0;
> >
> > I would prefer returning an error if flags is set to a non-zero value,
> > to catch userspace errors early, but I'm also worried it would break
> > existing userspace by uncovering existing bugs. Still, if we later add
> > flags that userspace can set, those existing bugs will be triggered, so
> > we'll have to deal with them anyway, and we could already give it a try.
> 
> I would like that too, but the comment just above this code tells me
> that's likely to break things:
> 
>         /*
>          * handle, pitch and size are output parameters. Zero them out to
>          * prevent drivers from accidentally using uninitialized data. Since
>          * not all existing userspace is clearing these fields properly we
>          * cannot reject IOCTL with garbage in them.
>          */
> 
> Maybe userspace does correctly zero out input params.

But if that holds true, it means that we will never be able to add
userspace flags, as doing so could break applications for the same
reason. The flag field should thus be marked as deprecated for userspace
usage. I wonder how big the risk is.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
