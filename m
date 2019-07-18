Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31106D339
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Abg2Jm+xAG3z72Zv5mmmsL/0xjvNaRjhZe7j5NvDRVE=; b=SktCAk/u5lHiPk
	eB3PW+Fc335cUGZSiWPHJbyieC9UuhOzaTZfimmO26p5n605FLFTW1pNCS+RwaHjRGFO7q6ht68sv
	Ecuhs2qXQjD0I0U1VXNyLxeq+QIAOEgTy/+kYJ1dpuxKv8gwwN34Bjqn94BrKrHTgVlHj90r2o1IV
	/NTWgTZRJ7dzZcMm4Qf3hlMWQGyTq9vEnpe4aa84ZP9YNEL3aZpeiLr4+AROvcnSx9Te7O47luJLj
	7oxsmmp0yY/uhgZp+72CAEKMK2cVgnZrERN7u+T00Ig1Nd6YVo13KAkrlbbcDsKS9HOS9EBtDq4YS
	mE+EL7v78SGluU9dvM1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAa9-0007qc-3Z; Thu, 18 Jul 2019 17:52:41 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAZ6-0007EG-Qi
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:51:39 +0000
Received: by mail-yb1-xb44.google.com with SMTP id j6so3059558ybm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=R8KExCR6tsJrTim++Ryx5yo6ikIJ+A/u4ncyAbhtn4Wxzsy58wFcAxGyFbtU8NPE3y
 MQkpqWvEX3jdW9WLswZJc3r3wEmI5tNMzVFCAL5JFYWRVMQu8suecQTALGLQdi3mip1z
 KRaoIW05bPSOIzkLasBgEWzjK6E+xNPBM4kZgeTGYA5Bj8XLRsXI2ZUXiwgXh6GkDhX2
 2nVtqnPdoBh/zUFxZkB3z3egqQ3w6chj8NBfJAkOJo9Liv0C6e7D/veVgvQP3bGsoADe
 iJT2wz2srtgn91Q+a+GA5Ed45CmxkqakUeXX6vHAhzmtcIHXeyZ14dvbpwKv5jzI/eEa
 nZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=C2ErC3hYGgZnCogh7JrQw3kRef148LynR3IiilBRBJts6HdzbkrVuJGtOGu1MbsquT
 RmYqc1u7VwXbGXYJdQHIMUY3CRApNEUoC03vCws51dRsS7x4+z6H4YaEOSbNc0hU8ZzH
 TEVEmNO/W1myW394w0QAMm1vSQYexHPmd+iOUvw2KTH3kbDzaDtD9uh34P721ilaPp1d
 Ok60cRwgZtA5J/ZdpcWfiv4bPQonaHtf5RwRYlxwBnWJwL8HjRsaqRhe+XGc61RQGDOg
 9+ssU6B4NUOIT6XxJTqHybT6InSuC/eIa9nu6A8LFaprwQR5rWjKzhCfSAT9vWCRLsJw
 b4Aw==
X-Gm-Message-State: APjAAAWHR8h1ocLFOS1nPKbaI6oQ4QY6dh3W/AB5qUWA57fArMH7dFzd
 06zFhxnMnytTAbJkrzZ8xQ+5og==
X-Google-Smtp-Source: APXvYqybP2QsImtTSUle+eZSIYAuEzV0EjVFHNNLVcuKDMCRvGgB3XkmsXzS/KQ48cXti671TGXCDQ==
X-Received: by 2002:a25:7288:: with SMTP id
 n130mr30203880ybc.171.1563472295711; 
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id x138sm6563253ywg.4.2019.07.18.10.51.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:34 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 08/11] drm: direct include of drm.h in drm_prime.c
Message-ID: <20190718175134.GK31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-9-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-9-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105137_059841_2C02E1E7 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:04PM +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> =

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Eric Anholt <eric@anholt.net>
> ---
>  drivers/gpu/drm/drm_prime.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 189d980402ad..eca484106cc2 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -30,6 +30,7 @@
>  #include <linux/dma-buf.h>
>  #include <linux/rbtree.h>
>  =

> +#include <drm/drm.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_framebuffer.h>
> -- =

> 2.20.1
> =


-- =

Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
