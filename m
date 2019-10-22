Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA54AE040C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyLWOv8FdBY0R9R29aSLUNIlVdgws57+M5KW2PboUKg=; b=SDCnXQny5JxgXd
	gYLZBBqHTSB2dQ6HshMZgHB4WVhxpaKST6KBme18Knh5K+mIr/XsKMEB+xLqWDbXCmTDeCIrnYCbt
	+p8XJ/JPyN51doPtjtV4ZkLfdY/1u+HXvlEpuRKLDdFz2ZBm1i6aZV+DMID5f6NHqm4tWzylMmtmB
	jK7mN5E3XKU782GQbinw5L5NsyvPeDR9UZ++A35cWFsM1iwkiXAnGn9HjsBJg3pR3GxZcEJGD4VF3
	dwr9nDAtm1UK+LNfnjF1mVNpOvR40TgzgktmAWbh5b0/s0UlFWXwZWj+RHdxYRODkCOvzm49BKkqV
	AHbC+GlySunQIsGjEMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtUc-0000D3-CA; Tue, 22 Oct 2019 12:42:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtUS-0000CJ-4H; Tue, 22 Oct 2019 12:42:21 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 596D7222C2;
 Tue, 22 Oct 2019 12:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571748139;
 bh=EM5Hd+W+Xbp28U+Qeo5Lp8facOPIzhF6X+VJbmFVCFE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=w/zX1/Tg4kUp8ZsraDAtrm6nTJHzeZRRAQyBnvhIoxWOH+70wbRChvFYoclQzrAyx
 t3pce/y+Pd+Gz2n8TXgw3ysqSr9+h3cV75SfJ1htirf+jlAvk1lKLvT4TRTokOffrM
 DrmpGkHFokoIFCfb2flUsdsxd6OuxQnF7je6KEvA=
Received: by mail-qt1-f170.google.com with SMTP id o49so18655106qta.7;
 Tue, 22 Oct 2019 05:42:19 -0700 (PDT)
X-Gm-Message-State: APjAAAXHJacavpAp9SIAG7tv6EmSny2pQNrtzJTiJeG1G1XhMv9UbbCO
 z8EmvUdyjHELetUkpsPxm/NIYp3t3QaJUGNmWA==
X-Google-Smtp-Source: APXvYqxf6MiuQdiT7Kz6alYW3lLAiryxko/xUIhWeHE6cCzheQDLOsAyk0cPSV/+Iz0r0zq3dgDPP+/dTRg57i4n7U8=
X-Received: by 2002:a0c:add6:: with SMTP id x22mr781981qvc.79.1571748138355;
 Tue, 22 Oct 2019 05:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-3-robh@kernel.org>
 <20191022111443.GE4756@pendragon.ideasonboard.com>
In-Reply-To: <20191022111443.GE4756@pendragon.ideasonboard.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 22 Oct 2019 07:42:06 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+kyLZ8LAVN-5UDJUy9nMLiAjN452HWg5WYAfLS7QD=Yw@mail.gmail.com>
Message-ID: <CAL_Jsq+kyLZ8LAVN-5UDJUy9nMLiAjN452HWg5WYAfLS7QD=Yw@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm: Introduce DRM_MODE_DUMB_KERNEL_MAP flag
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_054220_205288_035841CC 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
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

On Tue, Oct 22, 2019 at 6:14 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> Thank you for the patch.
>
> On Mon, Oct 21, 2019 at 04:45:46PM -0500, Rob Herring wrote:
> > Introduce a new flag, DRM_MODE_DUMB_KERNEL_MAP, for struct
> > drm_mode_create_dumb. This flag is for internal kernel use to indicate
> > if dumb buffer allocation needs a kernel mapping. This is needed only for
> > CMA where creating a kernel mapping or not has to be decided at allocation
> > time because creating a mapping on demand (with vmap()) is not guaranteed
> > to work. Several drivers are using CMA, but not the CMA helpers because
> > they distinguish between kernel and userspace allocations to create a
> > kernel mapping or not.
> >
> > Update the callers of drm_mode_dumb_create() to set
> > drm_mode_dumb_create.flags to appropriate defaults. Currently, flags can
> > be set to anything by userspace, but is unused within the kernel. Let's
> > force flags to zero (no kernel mapping) for userspace callers by default.
> > For in kernel clients, set DRM_MODE_DUMB_KERNEL_MAP by default. Drivers
> > can override this as needed.
> >
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Sean Paul <sean@poorly.run>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/gpu/drm/drm_client.c       | 1 +
> >  drivers/gpu/drm/drm_dumb_buffers.c | 5 ++++-
> >  include/uapi/drm/drm_mode.h        | 2 ++
> >  3 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> > index d9a2e3695525..dbfc8061b392 100644
> > --- a/drivers/gpu/drm/drm_client.c
> > +++ b/drivers/gpu/drm/drm_client.c
> > @@ -264,6 +264,7 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
> >       dumb_args.width = width;
> >       dumb_args.height = height;
> >       dumb_args.bpp = info->cpp[0] * 8;
> > +     dumb_args.flags = DRM_MODE_DUMB_KERNEL_MAP;
> >       ret = drm_mode_create_dumb(dev, &dumb_args, client->file);
> >       if (ret)
> >               goto err_delete;
> > diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
> > index d18a740fe0f1..74a13f14c173 100644
> > --- a/drivers/gpu/drm/drm_dumb_buffers.c
> > +++ b/drivers/gpu/drm/drm_dumb_buffers.c
> > @@ -97,7 +97,10 @@ int drm_mode_create_dumb(struct drm_device *dev,
> >  int drm_mode_create_dumb_ioctl(struct drm_device *dev,
> >                              void *data, struct drm_file *file_priv)
> >  {
> > -     return drm_mode_create_dumb(dev, data, file_priv);
> > +     struct drm_mode_create_dumb *args = data;
> > +
> > +     args->flags = 0;
>
> I would prefer returning an error if flags is set to a non-zero value,
> to catch userspace errors early, but I'm also worried it would break
> existing userspace by uncovering existing bugs. Still, if we later add
> flags that userspace can set, those existing bugs will be triggered, so
> we'll have to deal with them anyway, and we could already give it a try.

I would like that too, but the comment just above this code tells me
that's likely to break things:

        /*
         * handle, pitch and size are output parameters. Zero them out to
         * prevent drivers from accidentally using uninitialized data. Since
         * not all existing userspace is clearing these fields properly we
         * cannot reject IOCTL with garbage in them.
         */

Maybe userspace does correctly zero out input params.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
