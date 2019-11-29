Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4118D10D2DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 09:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yu9BPV1wxUfnQvR5X7461NYsjKOtijOsIuMepOdV7gc=; b=gjUTmEdlPCkUvY
	XeXMxZBZ3DZF0RH1nEuMY7GvWlQLBxqB20tFi2qej9Bt2HuFDsRby2pQ6/p9a09t0CfLLm3doiRfs
	clceC5SqC1hMt+VQh2CtHHxazZN6JDSHxqpq3ZcNJ1+E6VGsnifbBvZY/oIG7ZYVL4VN+/E9YV8q2
	1pZ1FM3kKWSaIVqklXaoBnv92Oh6M93gpN/Xj6nEkE+yPogYTW5oB335UKDWN+7uR6EjKjtKDMMdm
	cB92AzgMzsc+ZiEzNXwnrySQtF1/XrL5af5cFHUBMqMdL3/K9AjTR3kZYX9VPw0lOvhkM5QPJKZZP
	zzbX9qFvBli5fYWZgSCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iac7z-0007an-UH; Fri, 29 Nov 2019 08:59:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iac7p-0007ZZ-2W
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 08:59:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so34086928wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 00:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=u5GY8FgVPiZfsADMBptn3Y6PSbHCbO3IRQ/RMArSlbg=;
 b=WaCYvfhUMHlkOs2je3sgX3kWq4LOuqCfcM5C5gvjPVtvqIQZBs2SGsgN26tSVAC5pA
 45DGd7TCHuA21oZRc0enj8T0z5E40dDifh218um9W0nmFpQX4e/IG7V9eEQna4mxXdfR
 qZ9h41L0d0UCr1jSeEgYsCuBmmsCFNBh5NSY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=u5GY8FgVPiZfsADMBptn3Y6PSbHCbO3IRQ/RMArSlbg=;
 b=IkaNaFojYtzivz7kBxMYG4j15ph4mZqnpBvpf79jKmWlzfXFu+WRmGaXO5LbV4qb2h
 FAJjstdB/DVpI7USgspa8zcDJo273ho+th5lDvuoqo5RmwbY5npcUA9o9GrGxp2XhxLc
 so7ZIoiNYeK2ED5KB+qcQ2bNYzKEuXJjwt2HhYj6SpWaFLYUz1BhFU6Rmh7dMZCvuA1u
 JSPXSsvSBx+BwEXOBqik86DNJVIkE2iSfBZWHaNqUATiYuiZq19XXc2W2Hqxa6KHfpsR
 J9LCSfkWhsPV9I4gp5+KUWVSE89szSH9GxOjgtT6dW9r8gpzyXG2LdObwyDS+LIRSDrl
 OmyQ==
X-Gm-Message-State: APjAAAX979hSvitmoz/A6hAOMYdMP/kF4p5jToQidUvSTw2JF0skuH5t
 aJtIdlZB7+fGqKoAPTyNXF9zAA==
X-Google-Smtp-Source: APXvYqxQxH1gF2m+ItBF4B/ib1eQZiH7CXfgDp23jK65swYScFaH+kUNYyu9PdJjwH0Lm+PBowyTPg==
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr12905084wre.156.1575017977410; 
 Fri, 29 Nov 2019 00:59:37 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id m3sm26197924wrw.20.2019.11.29.00.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 00:59:36 -0800 (PST)
Date: Fri, 29 Nov 2019 09:59:34 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 1/3] drm/rockchip: Use drm_gem_fb_create_with_dirty
Message-ID: <20191129085934.GB406127@phenom.ffwll.local>
References: <20191127180035.416209-1-daniel.vetter@ffwll.ch>
 <0b2b352c-c7fe-1629-3117-f245ed27d4c2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b2b352c-c7fe-1629-3117-f245ed27d4c2@collabora.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_005941_167576_F320D994 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 04:58:26PM +0100, Andrzej Pietrasiewicz wrote:
> W dniu 27.11.2019 o=A019:00, Daniel Vetter pisze:
> > If rockchip would switch over to the generic fbdev setup we could
> > grabage collect even more of all this code (all of the remaining fb
> > handling code really).
> > =

> > v2: Actually use _with_dirty like the patch subject promised (Andrzej)
> > =

> > Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sandy Huang <hjc@rock-chips.com>
> > Cc: "Heiko St=FCbner" <heiko@sntech.de>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-rockchip@lists.infradead.org
> =

> I understand that computing min_size is changing as per
> =

> 042bf753842dd
> drm/fourcc: Add char_per_block, block_w and block_h in drm_format_info.

Yeah it's the more flexible computation, but for everything that rockchip
actually supports it should be the same.

> With other questions I had before answered in your previous reply the cur=
rent
> version of this patch is
> =

> Reviewed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Thanks for your review, patch applied.
-Daniel

> =

> > ---
> >   drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 54 +---------------------
> >   1 file changed, 1 insertion(+), 53 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_fb.c
> > index ca01234c037c..221e72e71432 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -53,64 +53,12 @@ rockchip_fb_alloc(struct drm_device *dev, const str=
uct drm_mode_fb_cmd2 *mode_cm
> >   	return fb;
> >   }
> > -static struct drm_framebuffer *
> > -rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_=
priv,
> > -			const struct drm_mode_fb_cmd2 *mode_cmd)
> > -{
> > -	const struct drm_format_info *info =3D drm_get_format_info(dev,
> > -								 mode_cmd);
> > -	struct drm_framebuffer *fb;
> > -	struct drm_gem_object *objs[ROCKCHIP_MAX_FB_BUFFER];
> > -	struct drm_gem_object *obj;
> > -	int num_planes =3D min_t(int, info->num_planes, ROCKCHIP_MAX_FB_BUFFE=
R);
> > -	int ret;
> > -	int i;
> > -
> > -	for (i =3D 0; i < num_planes; i++) {
> > -		unsigned int width =3D mode_cmd->width / (i ? info->hsub : 1);
> > -		unsigned int height =3D mode_cmd->height / (i ? info->vsub : 1);
> > -		unsigned int min_size;
> > -
> > -		obj =3D drm_gem_object_lookup(file_priv, mode_cmd->handles[i]);
> > -		if (!obj) {
> > -			DRM_DEV_ERROR(dev->dev,
> > -				      "Failed to lookup GEM object\n");
> > -			ret =3D -ENXIO;
> > -			goto err_gem_object_unreference;
> > -		}
> > -
> > -		min_size =3D (height - 1) * mode_cmd->pitches[i] +
> > -			mode_cmd->offsets[i] +
> > -			width * info->cpp[i];
> > -
> > -		if (obj->size < min_size) {
> > -			drm_gem_object_put_unlocked(obj);
> > -			ret =3D -EINVAL;
> > -			goto err_gem_object_unreference;
> > -		}
> > -		objs[i] =3D obj;
> > -	}
> > -
> > -	fb =3D rockchip_fb_alloc(dev, mode_cmd, objs, i);
> > -	if (IS_ERR(fb)) {
> > -		ret =3D PTR_ERR(fb);
> > -		goto err_gem_object_unreference;
> > -	}
> > -
> > -	return fb;
> > -
> > -err_gem_object_unreference:
> > -	for (i--; i >=3D 0; i--)
> > -		drm_gem_object_put_unlocked(objs[i]);
> > -	return ERR_PTR(ret);
> > -}
> > -
> >   static const struct drm_mode_config_helper_funcs rockchip_mode_config=
_helpers =3D {
> >   	.atomic_commit_tail =3D drm_atomic_helper_commit_tail_rpm,
> >   };
> >   static const struct drm_mode_config_funcs rockchip_drm_mode_config_fu=
ncs =3D {
> > -	.fb_create =3D rockchip_user_fb_create,
> > +	.fb_create =3D drm_gem_fb_create_with_dirty,
> >   	.output_poll_changed =3D drm_fb_helper_output_poll_changed,
> >   	.atomic_check =3D drm_atomic_helper_check,
> >   	.atomic_commit =3D drm_atomic_helper_commit,
> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
