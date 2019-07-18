Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B976D33F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VPesESezOAcGvurxFqP7Bo122hY3qzKmgZ53V+n5PA=; b=Y0rrIckGrAphPF
	+6dFfoo2/n1pE1wq/qiTMqIX6sykEaaM8cax/wwLWfALzHUZKazjxdnIk9e/XYAZmBg8cLfZCX2zi
	0LW1my8xtja6bzD+1797+q08xX6ChU5kse5JtRMbrikxKotXcjP+sxZYiICMDGPm8CTK7Ujj/Jmb1
	6i77y4Hi6Z7JkM/KVMujk42vW3zhHgXedT9tETok1yWdkubHt+1989FLILM6B2bPAKtq6tfSVGl0/
	7FJ0LaBF/A04jfjPp5rumS8b7WUg8fWtBO7MNPPpjKa1rmmwDnLJ2QQYiHmgeS5dgHICLoNfqoUO7
	++VZvySn2frmXHE3D+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAar-0008V0-IW; Thu, 18 Jul 2019 17:53:25 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAZY-0007am-13
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:52:08 +0000
Received: by mail-yb1-xb44.google.com with SMTP id j199so11585094ybg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ytxi1J+6NWcdsuePHv1vEGWkQEmEFR4ovcBSii3Z5X4=;
 b=SWBkUNwOZudBXbT2gOLHDVwoeLAF4gW7eRLWLc8RCpBbf8UkED2HAwTr+JEJjeMHJk
 aeS0epOZWz7f4ug7ZVRqDNf00V/5XvUD2U/agsp/8L1Fdc6UX60pnsjZZ2jrksV1xj6M
 ZZj1NlbdD1INB2bcNpUsvambY4bJ+u4xMf4l5CgirZeeOuiAMDewiSgYMD0WrxzBnAFu
 7wjx0g3iA0FWkrSixn7pB+WD4HBQx3HTVn3H+NZuo5d1piEbfzy8FtDfa5q3uiKUvBN0
 TigWYr+dfiODy3UimTvgkQ8gxUX4y8L6oZ4JN34/unRs9FDQZG9cxfpgX5c9q3ZbHUm7
 qFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ytxi1J+6NWcdsuePHv1vEGWkQEmEFR4ovcBSii3Z5X4=;
 b=YlB8HEDMIxERd/+lPFvuqz4jxbe1WBXUtGHY/g0GRByIt7A30Ixcdh0EHqL0OmFgph
 4yl2ARIgPcfyX7Mm6LuWb14bhTkzRl82Jb0gAO2h/bVLbzkYEp+72C0WTBS2eyiu8puw
 v7JNvepLGyrfPP8yEBH1sCdnSF2UwfdPSz5KWp3Y5D/zi4UchhfGdAcGA7gQPbIBKLYE
 Wk/+I5/dF3bszGom2f/EU0lhae64bmcS9y4lt74AjNdMif47kNMeZkk661qyAiDLvbgd
 xWlS9WCeYQ2am8jEpFJVqsYPmfvMzgWnhVUFFWZBr0BlLcAqUNfLt6eZ3YvNHWnNLQy9
 86vA==
X-Gm-Message-State: APjAAAWRayb6RiCvHpVehRB89ULn8yWsrlkxWjp1hQpjM57n3FBkIf1Q
 A/mC8cBpVAU7Uw+1f6ChU5ZqCw==
X-Google-Smtp-Source: APXvYqxXc2uyAAgBufPnLgYEUBonLIhhaICqxLwpJsNNFgCh2Xf1KYBy6azPnl6WFiy0oNc1vYPG0Q==
X-Received: by 2002:a25:b284:: with SMTP id k4mr31241127ybj.118.1563472322962; 
 Thu, 18 Jul 2019 10:52:02 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p128sm6929475ywp.24.2019.07.18.10.52.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:52:02 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:52:01 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 10/11] drm/mediatek: direct include of drm.h in
 mtk_drm_gem.c
Message-ID: <20190718175201.GM31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-11-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-11-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105204_137660_154057B2 
X-CRM114-Status: GOOD (  15.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:06PM +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> index 9434f88c6341..ca672f1d140d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/dma-buf.h>
>  
> +#include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_prime.h>
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
