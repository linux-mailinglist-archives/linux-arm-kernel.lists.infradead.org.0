Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECD8BDCC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVJsaJJZaMTFNIUTtaLWsRko4wJHlh3NfclcwkUmdn8=; b=H6UdSjRpD1Nyij
	PqpZJA0RMI7gXV/siNAQK3ZE0pqb0iquCDRmhFJ5a5qNod8g1KSXjfpSAGo95svpPgXGk9LhLO19y
	FUSNF/PuGGlvBPQnnLuZ5O26ZcowDy5yULiDQqbp/QwSaK0Gp1BDC/57d1X4uON1jaK2pgJVMeE4q
	ui29vaRwJ/wj1dOLrHr0b+iDQp8f2RBfYOGKktA4mVnk4STtC0++J2bCHMJBDe0rdFChOc55LnFAN
	5V7+ZPmhSHIypSlLWcKueUH2OwxI47SIhYvhb/y9arU3tYwhW8imV8LrPDFfkRUpBSpbrKct/byhw
	J7juxvEep7Bt8/w1tuog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5EC-0003VK-Tw; Wed, 25 Sep 2019 11:13:01 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5Db-0003Ij-NP
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:12:25 +0000
Received: by mail-oi1-x242.google.com with SMTP id e18so4530757oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 04:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nK4+x6lokMutnpcniLtp2w1s9sxjgIUbmeSBDjckPgQ=;
 b=LHn/dys4PfNl9wue6fYnxHYPwoRCurdRU9BwevjKhDB38q+FV1zLeuS5e5mMu2sFDA
 JVhUWUlZp/PtXuttke2u+ahvT9u+215JBP5fJ/elvb3E6+csp08rad5w4WQSAgc9wmiO
 VXHE0rquCe8KQcpTdAIpjPQvQyqkfy7ahYVfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nK4+x6lokMutnpcniLtp2w1s9sxjgIUbmeSBDjckPgQ=;
 b=FhW0Nqn7FNoq9zp+drgLHwcK2oMEKP0rKtNCu28XhlJ07nrLyHqrx08pizNe4bKyVG
 Tcmz/hWPyTbcTZJA+cl5DHcKl79KHJsIS4A3GHxvKKZm57WlAoJZroQ2BCtpsxUQYcm4
 IQmFZEJN5SuZMerAiEdPEG5Mny1JPcoGeTmD7JTraBbr3o0zKcf15EYYLa4Rn1r22CG7
 QmXTpugQ2pfmzVH/vX2bjFcVeJIsuh9j7Mm8nmZSGxUUHzfccBjyiy8ARA4eJLBH6fXP
 gxUk2eXyubHQAsEyNmcHjQv8qfAq6MCUzudBh5bBaoKt6/0AU4n2WfFz3dDXKY2wncEf
 j5OQ==
X-Gm-Message-State: APjAAAXT+UU2QmCrvZAtRBo/Mc+SQQ2sDeiFVIQ2/ISzvpM5zQvzh4CL
 +tYELjaHSohWnjejhnR5PnTSEJ+W7S0nD4V3HrQfVQ==
X-Google-Smtp-Source: APXvYqwoG+SKCDFOo/04Y90Wn3zpm3anGFBDWIOL3ZiA+Cyrnc6PHY5jDvKjYzLX0StOUtOmXEx1WslEWAhPcYhQcK8=
X-Received: by 2002:aca:5c45:: with SMTP id q66mr3924785oib.132.1569409937811; 
 Wed, 25 Sep 2019 04:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <20190925093500.GB21018@arm.com>
In-Reply-To: <20190925093500.GB21018@arm.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 25 Sep 2019 13:12:06 +0200
Message-ID: <CAKMK7uEkr8YWLxBkd4TdO0m2BjLTZ1G+9rFe_aiY6Ek9Jbb-ng@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
To: Ayan Halder <Ayan.Halder@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_041223_768246_390C97B4 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kernel@collabora.com" <kernel@collabora.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>, nd <nd@arm.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 11:35 AM Ayan Halder <Ayan.Halder@arm.com> wrote:
>
> On Mon, Sep 23, 2019 at 02:20:13PM +0200, Andrzej Pietrasiewicz wrote:
> > From: Ezequiel Garcia <ezequiel@collabora.com>
> >
> > AFBC is a proprietary lossless image compression protocol and format.
> > It helps reduce memory bandwidth of the graphics pipeline operations.
> > This, in turn, improves power efficiency.
> >
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > [locking improvements]
> > Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > [squashing the above, commit message and Rockchip AFBC modifier]
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 27 ++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 94 ++++++++++++++++++++-
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 12 +++
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 ++++
> >  include/uapi/drm/drm_fourcc.h               |  3 +
> >  5 files changed, 151 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > index 64ca87cf6d50..5178939a9c29 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -24,6 +24,27 @@ static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> >       .dirty         = drm_atomic_helper_dirtyfb,
> >  };
> >
> > +static int
> > +rockchip_verify_afbc_mod(struct drm_device *dev,
> > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > +{
> > +     if (mode_cmd->modifier[0] &
> > +         ~DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> > +             DRM_DEV_ERROR(dev->dev,
> > +                           "Unsupported format modifier 0x%llx\n",
> > +                           mode_cmd->modifier[0]);
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (mode_cmd->width > 2560) {
> > +             DRM_DEV_ERROR(dev->dev,
> > +                           "Unsupported width %d\n", mode_cmd->width);
> > +             return -EINVAL;
> > +     }
> > +
> I think you are missing one additional check here.
> framebuffer width and height should be aligned to 16 pixels as you are
> using AFBC_FORMAT_MOD_BLOCK_SIZE_16x16.
> Please have a look at malidp_verify_afbc_framebuffer_caps()

Maybe time to extract that into a helper, so that there's only one
copy of the code that validates a buffer with afbc modifier set?
-Daniel

>
> > +     return 0;
> > +}
> > +
> >  static struct drm_framebuffer *
> >  rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cmd,
> >                 struct drm_gem_object **obj, unsigned int num_planes)
> > @@ -32,6 +53,12 @@ rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cm
> >       int ret;
> >       int i;
> >
> > +     if (mode_cmd->modifier[0]) {
> > +             ret = rockchip_verify_afbc_mod(dev, mode_cmd);
> > +             if (ret)
> > +                     return ERR_PTR(ret);
> > +     }
> > +
> >       fb = kzalloc(sizeof(*fb), GFP_KERNEL);
> >       if (!fb)
> >               return ERR_PTR(-ENOMEM);
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index 21b68eea46cc..50bf214d21da 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -46,6 +46,13 @@
> >               vop_reg_set(vop, &win->phy->scl->ext->name, \
> >                           win->base, ~0, v, #name)
> >
> > +#define VOP_AFBC_SET(x, name, v) \
> > +     do { \
> > +             if (vop->data->afbc) \
> > +                     vop_reg_set(vop, &vop->data->afbc->name, \
> > +                             0, ~0, v, #name); \
> > +     } while (0)
> > +
> >  #define VOP_WIN_YUV2YUV_SET(vop, win_yuv2yuv, name, v) \
> >       do { \
> >               if (win_yuv2yuv && win_yuv2yuv->name.mask) \
> > @@ -123,6 +130,8 @@ struct vop {
> >       struct drm_device *drm_dev;
> >       bool is_enabled;
> >
> > +     struct vop_win *afbc_win;
> > +
> >       struct completion dsp_hold_completion;
> >
> >       /* protected by dev->event_lock */
> > @@ -245,6 +254,30 @@ static bool has_rb_swapped(uint32_t format)
> >       }
> >  }
> >
> > +#define AFBC_FMT_RGB565        0x0
> > +#define AFBC_FMT_U8U8U8U8      0x5
> > +#define AFBC_FMT_U8U8U8        0x4
> > +
> > +static int vop_convert_afbc_format(uint32_t format)
> > +{
> > +     switch (format) {
> > +     case DRM_FORMAT_XRGB8888:
> > +     case DRM_FORMAT_ARGB8888:
> > +     case DRM_FORMAT_XBGR8888:
> > +     case DRM_FORMAT_ABGR8888:
> > +             return AFBC_FMT_U8U8U8U8;
> > +     case DRM_FORMAT_RGB888:
> > +     case DRM_FORMAT_BGR888:
> > +             return AFBC_FMT_U8U8U8;
> > +     case DRM_FORMAT_RGB565:
> > +     case DRM_FORMAT_BGR565:
> > +             return AFBC_FMT_RGB565;
> > +     default:
> > +             DRM_ERROR("unsupported afbc format[%08x]\n", format);
> > +             return -EINVAL;
> > +     }
> > +}
> > +
> >  static enum vop_data_format vop_convert_format(uint32_t format)
> >  {
> >       switch (format) {
> > @@ -587,10 +620,16 @@ static int vop_enable(struct drm_crtc *crtc)
> >
> >               vop_win_disable(vop, win);
> >       }
> > -     spin_unlock(&vop->reg_lock);
> > +
> > +     if (vop->data->afbc) {
> > +             VOP_AFBC_SET(vop, enable, 0);
> > +             vop->afbc_win = NULL;
> > +     }
> >
> >       vop_cfg_done(vop);
> >
> > +     spin_unlock(&vop->reg_lock);
> > +
> >       /*
> >        * At here, vop clock & iommu is enable, R/W vop regs would be safe.
> >        */
> > @@ -719,6 +758,32 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
> >               return -EINVAL;
> >       }
> >
> > +     if (fb->modifier & DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> > +             struct vop *vop = to_vop(crtc);
> > +
> > +             if (!vop->data->afbc) {
> > +                     DRM_ERROR("VOP does not support AFBC\n");
> > +                     return -EINVAL;
> > +             }
> > +
> > +             ret = vop_convert_afbc_format(fb->format->format);
> > +             if (ret < 0)
> > +                     return ret;
> > +
> > +             if (state->src.x1 || state->src.y1) {
> > +                     DRM_ERROR("AFBC does not support offset display\n");
> > +                     DRM_ERROR("xpos=%d, ypos=%d, offset=%d\n",
> > +                             state->src.x1, state->src.y1, fb->offsets[0]);
> > +                     return -EINVAL;
> > +             }
> > +
> > +             if (state->rotation && state->rotation != DRM_MODE_ROTATE_0) {
> > +                     DRM_ERROR("AFBC does not support rotation\n");
> > +                     DRM_ERROR("rotation=%d\n", state->rotation);
> > +                     return -EINVAL;
> > +             }
> > +     }
> > +
> >       return 0;
> >  }
> >
> > @@ -732,6 +797,9 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
> >       if (!old_state->crtc)
> >               return;
> >
> > +     if (vop->afbc_win == vop_win)
> > +             vop->afbc_win = NULL;
> > +
> >       spin_lock(&vop->reg_lock);
> >
> >       vop_win_disable(vop, win);
> > @@ -774,6 +842,9 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
> >       if (WARN_ON(!vop->is_enabled))
> >               return;
> >
> > +     if (vop->afbc_win == vop_win)
> > +             vop->afbc_win = NULL;
> > +
> >       if (!state->visible) {
> >               vop_plane_atomic_disable(plane, old_state);
> >               return;
> > @@ -808,6 +879,20 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
> >
> >       spin_lock(&vop->reg_lock);
> >
> > +     if (fb->modifier & DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> > +             int afbc_format = vop_convert_afbc_format(fb->format->format);
> > +
> > +             VOP_AFBC_SET(vop, format, afbc_format | 1 << 4);
> > +             VOP_AFBC_SET(vop, hreg_block_split, 0);
> > +             VOP_AFBC_SET(vop, win_sel, win_index);
> > +             VOP_AFBC_SET(vop, hdr_ptr, dma_addr);
> > +             VOP_AFBC_SET(vop, pic_size, act_info);
> > +
> > +             vop->afbc_win = vop_win;
> > +
> > +             pr_info("AFBC on plane %s\n", plane->name);
> > +     }
> > +
> >       VOP_WIN_SET(vop, win, format, format);
> >       VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
> >       VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
> > @@ -1163,6 +1248,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
> >
> >       spin_lock(&vop->reg_lock);
> >
> > +     VOP_AFBC_SET(vop, enable, vop->afbc_win ? 0x1 : 0);
> >       vop_cfg_done(vop);
> >
> >       spin_unlock(&vop->reg_lock);
> > @@ -1471,7 +1557,8 @@ static int vop_create_crtc(struct vop *vop)
> >                                              0, &vop_plane_funcs,
> >                                              win_data->phy->data_formats,
> >                                              win_data->phy->nformats,
> > -                                            NULL, win_data->type, NULL);
> > +                                            win_data->phy->format_modifiers,
> > +                                            win_data->type, NULL);
> >               if (ret) {
> >                       DRM_DEV_ERROR(vop->dev, "failed to init plane %d\n",
> >                                     ret);
> > @@ -1511,7 +1598,8 @@ static int vop_create_crtc(struct vop *vop)
> >                                              &vop_plane_funcs,
> >                                              win_data->phy->data_formats,
> >                                              win_data->phy->nformats,
> > -                                            NULL, win_data->type, NULL);
> > +                                            win_data->phy->format_modifiers,
> > +                                            win_data->type, NULL);
> >               if (ret) {
> >                       DRM_DEV_ERROR(vop->dev, "failed to init overlay %d\n",
> >                                     ret);
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > index 2149a889c29d..dc8b12025269 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > @@ -77,6 +77,16 @@ struct vop_misc {
> >       struct vop_reg global_regdone_en;
> >  };
> >
> > +struct vop_afbc {
> > +     struct vop_reg enable;
> > +     struct vop_reg win_sel;
> > +     struct vop_reg format;
> > +     struct vop_reg hreg_block_split;
> > +     struct vop_reg pic_size;
> > +     struct vop_reg hdr_ptr;
> > +     struct vop_reg rstn;
> > +};
> > +
> >  struct vop_intr {
> >       const int *intrs;
> >       uint32_t nintrs;
> > @@ -128,6 +138,7 @@ struct vop_win_phy {
> >       const struct vop_scl_regs *scl;
> >       const uint32_t *data_formats;
> >       uint32_t nformats;
> > +     const uint64_t *format_modifiers;
> >
> >       struct vop_reg enable;
> >       struct vop_reg gate;
> > @@ -169,6 +180,7 @@ struct vop_data {
> >       const struct vop_output *output;
> >       const struct vop_win_yuv2yuv_data *win_yuv2yuv;
> >       const struct vop_win_data *win;
> > +     const struct vop_afbc *afbc;
> >       unsigned int win_size;
> >
> >  #define VOP_FEATURE_OUTPUT_RGB10     BIT(0)
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > index 7b9c74750f6d..e9ff0c43c396 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > @@ -30,6 +30,12 @@
> >  #define VOP_REG_MASK_SYNC(off, _mask, _shift) \
> >               _VOP_REG(off, _mask, _shift, true, false)
> >
> > +static const uint64_t format_modifiers_afbc[] = {
> > +     DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP),
> > +     DRM_FORMAT_MOD_LINEAR,
> > +     DRM_FORMAT_MOD_INVALID
> > +};
> > +
> >  static const uint32_t formats_win_full[] = {
> >       DRM_FORMAT_XRGB8888,
> >       DRM_FORMAT_ARGB8888,
> > @@ -667,6 +673,7 @@ static const struct vop_win_phy rk3368_win01_data = {
> >       .scl = &rk3288_win_full_scl,
> >       .data_formats = formats_win_full,
> >       .nformats = ARRAY_SIZE(formats_win_full),
> > +     .format_modifiers = format_modifiers_afbc,
> >       .enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
> >       .format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
> >       .rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
> > @@ -758,6 +765,16 @@ static const struct vop_data rk3366_vop = {
> >       .win_size = ARRAY_SIZE(rk3368_vop_win_data),
> >  };
> >
> > +static const struct vop_afbc rk3399_afbc = {
> > +     .rstn = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 3),
> > +     .enable = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 0),
> > +     .win_sel = VOP_REG(RK3399_AFBCD0_CTRL, 0x3, 1),
> > +     .format = VOP_REG(RK3399_AFBCD0_CTRL, 0x1f, 16),
> > +     .hreg_block_split = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 21),
> > +     .hdr_ptr = VOP_REG(RK3399_AFBCD0_HDR_PTR, 0xffffffff, 0),
> > +     .pic_size = VOP_REG(RK3399_AFBCD0_PIC_SIZE, 0xffffffff, 0),
> > +};
> > +
> >  static const struct vop_output rk3399_output = {
> >       .dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0xf, 16),
> >       .rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
> > @@ -808,6 +825,7 @@ static const struct vop_data rk3399_vop_big = {
> >       .modeset = &rk3288_modeset,
> >       .output = &rk3399_output,
> >       .misc = &rk3368_misc,
> > +     .afbc = &rk3399_afbc,
> >       .win = rk3368_vop_win_data,
> >       .win_size = ARRAY_SIZE(rk3368_vop_win_data),
> >       .win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
> > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> > index 3feeaa3f987a..ba6caf06c824 100644
> > --- a/include/uapi/drm/drm_fourcc.h
> > +++ b/include/uapi/drm/drm_fourcc.h
> > @@ -742,6 +742,9 @@ extern "C" {
> >   */
> >  #define AFBC_FORMAT_MOD_BCH     (1ULL << 11)
> >
> > +#define AFBC_FORMAT_MOD_ROCKCHIP \
> > +     (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)
> > +
> >  /*
> >   * Allwinner tiled modifier
> >   *
> > --
> > 2.17.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
