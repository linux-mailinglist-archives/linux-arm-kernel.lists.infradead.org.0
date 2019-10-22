Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B20E0292
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMosRAbb6qcG2SKrjKa32hxesUW1rUFhCpNsJLS+4Ts=; b=DEalFLpwwlkLsu
	8HvGkF2vnZtvDMWylKIJ98HcsBePhPweeVmDOwhnCxxFw0UqECZ5OSKAAP8nqJSWj0qsWLQFnfZRs
	wzWTtcUJxEd7mwFLWCgOceoHgGheewzJ2zjLHJ/T35KJGr0hMRMUsY3BQufuC6/Xs9aS6KcFZyPKe
	9v+ilCBJ7h4kFypLp67ZG5R5XzZpAsKdWIP6/FlWWElx37IMYeXQlYZYm4SqTlHETvPZWMBhkGd6b
	E/ypOdIg/NqjcJkjUH5utdlHWAubV1A4CDHDccbcG/nlUx/i+NUoSNmVwtPZdxZ25mpZuKB2/oOhJ
	c8BO+pGh4Zk9O54uo5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMs89-0006w6-Ll; Tue, 22 Oct 2019 11:15:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMs7r-0006vS-JW; Tue, 22 Oct 2019 11:14:57 +0000
Received: from pendragon.ideasonboard.com (143.121.2.93.rev.sfr.net
 [93.2.121.143])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CDD2E2BA;
 Tue, 22 Oct 2019 13:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571742888;
 bh=Dj3Cz/n7yM2z3c1Y1pZ8ZtwXXwJMfegZmbgkXpatmh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=at9VuQVua6bJSsjxoq999Oh4fFDdbfhUDULTceOmzi44ViGtr3RQM5KOuUJYi6nsS
 qq51ZKr48Q1VGZ/hiT4PTS47om8/Ep8WkHxwBZsTWwU2Pn+RjAoxPzS4M1V+uHB+Ic
 Yva6JLUo6CpypxRc4qteWjt1ao8qq4ENIBbmUrto=
Date: Tue, 22 Oct 2019 14:14:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/6] drm: Introduce DRM_MODE_DUMB_KERNEL_MAP flag
Message-ID: <20191022111443.GE4756@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021214550.1461-3-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_041455_948194_8AD8EF3E 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thank you for the patch.

On Mon, Oct 21, 2019 at 04:45:46PM -0500, Rob Herring wrote:
> Introduce a new flag, DRM_MODE_DUMB_KERNEL_MAP, for struct
> drm_mode_create_dumb. This flag is for internal kernel use to indicate
> if dumb buffer allocation needs a kernel mapping. This is needed only for
> CMA where creating a kernel mapping or not has to be decided at allocation
> time because creating a mapping on demand (with vmap()) is not guaranteed
> to work. Several drivers are using CMA, but not the CMA helpers because
> they distinguish between kernel and userspace allocations to create a
> kernel mapping or not.
> 
> Update the callers of drm_mode_dumb_create() to set
> drm_mode_dumb_create.flags to appropriate defaults. Currently, flags can
> be set to anything by userspace, but is unused within the kernel. Let's
> force flags to zero (no kernel mapping) for userspace callers by default.
> For in kernel clients, set DRM_MODE_DUMB_KERNEL_MAP by default. Drivers
> can override this as needed.
> 
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Sean Paul <sean@poorly.run>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/gpu/drm/drm_client.c       | 1 +
>  drivers/gpu/drm/drm_dumb_buffers.c | 5 ++++-
>  include/uapi/drm/drm_mode.h        | 2 ++
>  3 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> index d9a2e3695525..dbfc8061b392 100644
> --- a/drivers/gpu/drm/drm_client.c
> +++ b/drivers/gpu/drm/drm_client.c
> @@ -264,6 +264,7 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
>  	dumb_args.width = width;
>  	dumb_args.height = height;
>  	dumb_args.bpp = info->cpp[0] * 8;
> +	dumb_args.flags = DRM_MODE_DUMB_KERNEL_MAP;
>  	ret = drm_mode_create_dumb(dev, &dumb_args, client->file);
>  	if (ret)
>  		goto err_delete;
> diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
> index d18a740fe0f1..74a13f14c173 100644
> --- a/drivers/gpu/drm/drm_dumb_buffers.c
> +++ b/drivers/gpu/drm/drm_dumb_buffers.c
> @@ -97,7 +97,10 @@ int drm_mode_create_dumb(struct drm_device *dev,
>  int drm_mode_create_dumb_ioctl(struct drm_device *dev,
>  			       void *data, struct drm_file *file_priv)
>  {
> -	return drm_mode_create_dumb(dev, data, file_priv);
> +	struct drm_mode_create_dumb *args = data;
> +
> +	args->flags = 0;

I would prefer returning an error if flags is set to a non-zero value,
to catch userspace errors early, but I'm also worried it would break
existing userspace by uncovering existing bugs. Still, if we later add
flags that userspace can set, those existing bugs will be triggered, so
we'll have to deal with them anyway, and we could already give it a try.

The patch otherwise looks good to me.

> +	return drm_mode_create_dumb(dev, args, file_priv);
>  }
>  
>  /**
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 735c8cfdaaa1..02712f46b94c 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -796,6 +796,8 @@ struct drm_mode_crtc_page_flip_target {
>  	__u64 user_data;
>  };
>  
> +#define DRM_MODE_DUMB_KERNEL_MAP	(1<<0)	/* For internal kernel use */
> +
>  /* create a dumb scanout buffer */
>  struct drm_mode_create_dumb {
>  	__u32 height;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
